delete  from logtable;
drop procedure mostrarTurnosDisponibles;

select * from especialistas;
select * from especialidades;
select * from domicilios;
select * from horarios_atencion;
select * from logtable;

'25-01-2018 00:00:00'
'2017-12-10 13:00:00'

CALL mostrarTurnosDisponibles(4,NULL,NULL,'BARRIO','2018-01-26 13:00:00','2018-01-30 14:50:00');
/*
SET @var = NULL; select @var;
SELECT id_horario_atencion,id_especialista,id_oficina,horario_inicio,horario_finalizacion,id_dia,duracion_turnos,id_especialidad
	FROM horarios_atencion horario
	WHERE IF(@var IS NOT NULL, horario.id_horario_atencion = @var, 1) = 1;
*/

DELIMITER |
CREATE PROCEDURE mostrarTurnosDisponibles(id_especialidad_p int, id_especialista_p int, id_oficina_p INT, barrio_p VARCHAR(255), fecha_inicio_p DATETIME, fecha_fin_p DATETIME)
BEGIN

	DECLARE done INT DEFAULT FALSE;

	DECLARE c_id_horario_atencion INT;
    DECLARE c_id_especialista, c_id_oficina,c_id_dia,c_id_especialidad INT;
    DECLARE c_horario_inicio, c_horario_fin,c_duracion_turnos TIME;
    
	DECLARE cur1 CURSOR FOR 
		SELECT id_horario_atencion, id_especialista, id_oficina, horario_inicio, horario_finalizacion, id_dia, duracion_turnos, id_especialidad
		FROM horarios_atencion horario
		WHERE (horario_inicio < TIME(fecha_fin_p) OR horario_finalizacion > TIME(fecha_inicio_p))
            AND id_especialidad = id_especialidad_p
            AND IF(id_especialista_p IS NOT NULL, horario.id_especialista = id_especialista_p, 1)
            AND IF(id_oficina_p IS NOT NULL, horario.id_oficina = id_oficina_p, 1);
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    DROP TABLE IF EXISTS turnos_pedidos;
	CREATE TEMPORARY TABLE turnos_pedidos (
	  `id_turno` INT NOT NULL,
	  `id_consultorio` INT NOT NULL,
	  `id_especialidad` INT NOT NULL,
	  `id_especialista` INT NOT NULL,
	  `id_paciente` INT NOT NULL,
	  `fecha_comienzo` DATETIME NOT NULL,
	  `fecha_finalizacion` DATETIME NOT NULL,
      `id_oficina` INT NOT NULL,
	  PRIMARY KEY (`id_turno`))
	ENGINE = InnoDB
	DEFAULT CHARACTER SET = utf8;

	DROP TABLE IF EXISTS turnos_disponibles;
	CREATE TEMPORARY TABLE turnos_disponibles (
	  `id_turno` INT NOT NULL,
	  `id_consultorio` INT NOT NULL,
	  `id_especialidad` INT NOT NULL,
	  `id_especialista` INT NOT NULL,
	  `fecha_comienzo` DATETIME NOT NULL,
	  `fecha_finalizacion` DATETIME NOT NULL,
	  PRIMARY KEY (`id_turno`))
	ENGINE = InnoDB
	DEFAULT CHARACTER SET = utf8;

	INSERT INTO turnos_pedidos
	SELECT t.id_turno, t.id_consultorio, t.id_especialidad, t.id_especialista, t.id_paciente, t.fecha_comienzo, t.fecha_finalizacion, c.id_oficina
    FROM turnos t JOIN consultorios c ON (c.id_consultorio = t.id_consultorio)
	WHERE 
		t.id_especialidad = id_especialidad_p
        AND (
			(t.fecha_comienzo BETWEEN fecha_inicio_p AND fecha_fin_p) OR
			(t.fecha_finalizacion BETWEEN fecha_inicio_p AND fecha_fin_p) OR
            (t.fecha_comienzo < fecha_inicio_p AND t.fecha_finalizacion > fecha_fin_p)
        );

    #IF id_especialista_p IS NOT NULL THEN
    
	#	DELETE FROM turnos_pedidos
    #    WHERE turnos_pedidos.id_especialista != id_especialista_p;
		
    #END IF;

	SET @id_turno = 1;

	OPEN cur1;
	read_loop: LOOP    
    FETCH cur1 INTO c_id_horario_atencion,c_id_especialista,c_id_oficina,c_horario_inicio,c_horario_fin,c_id_dia,c_duracion_turnos,c_id_especialidad ;
		
        IF done THEN
		  LEAVE read_loop;
		END IF;
        
        IF ( TIME(fecha_inicio_p) > c_horario_inicio ) THEN
			SET @horario_actual = c_horario_inicio;
            WHILE ( TIME(fecha_inicio_p) > @horario_actual )
            DO
				SET @horario_actual = ADDTIME(@horario_actual,c_duracion_turnos);
                
            END WHILE;
            
        ELSE
            SET @horario_actual = c_horario_inicio;
        END IF;
                
        SET @fecha_actual = DATE(fecha_inicio_p);
        
        WHILE ( (SELECT dayofweek(@fecha_actual)) != c_id_dia )
        DO
        
			SET @fecha_actual =  DATE_ADD(@fecha_actual, INTERVAL 1 DAY);
            
        END WHILE;
        
        WHILE ( @fecha_actual <= DATE(fecha_fin_p))
        DO
        
			WHILE ( LEAST(c_horario_fin,TIME(fecha_fin_p)) > @horario_actual  )
			DO
				
                #call log_msg( concat('c_horario_fin : ', c_horario_fin, 'c_id_dia : ', c_id_dia,'@horario_actual: ',@horario_actual) );

				SET @cantidad_consultorios_totales = (SELECT COUNT(id_consultorio) 
														FROM consultorios 
                                                        WHERE id_oficina = c_id_oficina);
			
				SET @fecha_y_horario_actual = STR_TO_DATE(CONCAT(@fecha_actual, ' ', @horario_actual), '%Y-%m-%d %H:%i:%s');
                SET @fecha_y_horario_fin_turno = STR_TO_DATE(CONCAT(@fecha_actual, ' ', ADDTIME(@horario_actual,c_duracion_turnos)), '%Y-%m-%d %H:%i:%s');
     
				SET @cantidad_consultorios_ocupados_ese_intervalo = ( 

					SELECT COUNT( DISTINCT t.id_consultorio)
					FROM turnos_pedidos t
                    WHERE 						
						#(t.fecha_comienzo BETWEEN @fecha_y_horario_actual  AND @fecha_y_horario_fin_turno ) OR
                        #(t.fecha_finalizacion BETWEEN @fecha_y_horario_actual  AND @fecha_y_horario_fin_turno ) OR
                        
                        (t.fecha_comienzo = @fecha_y_horario_actual ) 
                        #(t.fecha_comienzo <= @fecha_y_horario_actual AND t.fecha_finalizacion  > @fecha_y_horario_actual ) OR
                        #(t.fecha_comienzo > @fecha_y_horario_actual AND t.fecha_comienzo > @fecha_y_horario_fin_turno  )
                        #(t.fecha_comienzo < @fecha_y_horario_actual AND t.fecha_finalizacion >= @fecha_y_horario_fin_turno ) OR
                        #(t.fecha_comienzo > @fecha_y_horario_actual AND t.fecha_comienzo < @fecha_y_horario_fin_turno ) 
						#(t.fecha_finalizacion > @fecha_y_horario_actual AND t.fecha_finalizacion < @fecha_y_horario_fin_turno) OR
						#(t.fecha_comienzo < @fecha_y_horario_actual  AND t.fecha_finalizacion >= @fecha_y_horario_actual) OR 
                        #(t.fecha_comienzo >= @fecha_y_horario_actual  AND t.fecha_comienzo < @fecha_y_horario_fin_turno ) 
                        #(t.fecha_comienzo <= @fecha_y_horario_actual  AND t.fecha_finalizacion >= @fecha_y_horario_fin_turno )
				);
    
	
                #call log_msg( concat(' cant consultorio ocupados ese intervalo: ', @cantidad_consultorios_ocupados_ese_intervalo, 
				#					 ' @fecha_actual: ', @fecha_actual,
				#					 ' @horario_actual: ',@horario_actual) );
    
                    #WHERE  DATE(t.fecha_comienzo) = @fecha_actual
                        #AND TIME(t.fecha_comienzo) >= @horario_actual
						#AND TIME(t.fecha_finalizacion) < ADDTIME( TIME(t.fecha_comienzo), c_duracion_turnos)
                
                
				IF (@cantidad_consultorios_totales > @cantidad_consultorios_ocupados_ese_intervalo AND c_id_especialista NOT IN (SELECT DISTINCT t.id_especialista FROM turnos_pedidos t WHERE (t.fecha_comienzo = @fecha_y_horario_actual ) )) THEN
                    
                    SET @fecha_comienzo = STR_TO_DATE(CONCAT(@fecha_actual, ' ', @horario_actual), '%Y-%m-%d %H:%i:%s');#ADDTIME(@fecha_actual,@horario_actual );
                    SET @fecha_finalizacion = ADDTIME(@fecha_comienzo,c_duracion_turnos);#STR_TO_DATE(CONCAT(@fecha_comienzo, ' ', c_duracion_turnos), '%Y-%m-%d %H:%i:%s');#ADDTIME(@fecha_comienzo , c_duracion_turnos );
                    
                    
                    SET @consultorio_libre = (
							SELECT c.id_consultorio
							FROM consultorios c
                            WHERE c.id_oficina = c_id_oficina 
								AND c.id_consultorio NOT IN (
									SELECT DISTINCT t.id_consultorio
									FROM turnos_pedidos t
									WHERE (
                                    #t.fecha_comienzo = @fecha_y_horario_actual AND t.fecha_finalizacion = @fecha_y_horario_fin_turno 
										(t.fecha_comienzo = @fecha_y_horario_actual ) 
                                    )
                                )
                            LIMIT 1				
					);
    /*
					call log_msg( concat(
                        ' @horario_actual: ', @horario_actual,
                        ' @fecha_actual: ',@fecha_actual,
                        ' @fecha_y_horario_actual: ', @fecha_y_horario_actual,
                        ' @fecha_y_horario_fin_turno: ', @fecha_y_horario_fin_turno,
                        ' @fecha_comienzo: ',@fecha_comienzo,
                        ' @fecha_finalizacion: ',@fecha_finalizacion,
                        ' @consultorio_libre: ',@consultorio_libre 
                    ));
    */
					INSERT INTO turnos_disponibles (id_turno, id_consultorio, id_especialidad, id_especialista, fecha_comienzo, fecha_finalizacion)
					VALUES (@id_turno, @consultorio_libre, c_id_especialidad, c_id_especialista, @fecha_comienzo , @fecha_finalizacion );

                END IF;
                
                SET @horario_actual = ADDTIME(@horario_actual , c_duracion_turnos);
				SET @id_turno = @id_turno + 1; 
			
			END WHILE;
		
			SET @fecha_actual = DATE_ADD(@fecha_actual, INTERVAL 7 DAY);
        
        END WHILE;
        
	END LOOP;

	CLOSE cur1;
/*
	IF ( id_especialista_p IS NOT NULL) THEN
		DELETE FROM turnos_disponibles WHERE id_especialista != id_especialista_p;
    END IF;

	IF ( id_oficina_p IS NOT NULL) THEN
		DELETE FROM turnos_disponibles WHERE id_consultorio NOT IN (SELECT distinct id_consultorio FROM consultorios WHERE id_oficina = id_oficina_p);
    END IF;

	IF (barrio_p is not null) THEN
		DELETE FROM turnos_disponibles WHERE id_consultorio in (
			SELECT 
				DISTINCT id_consultorio
                FROM oficinas o join consultorios c on (c.id_oficina = o.id_oficina) join domicilios d on (o.id_domicilio = d.id_domicilio)
                WHERE d.barrio = barrio_p
        );
    END IF;
  */
	SELECT * FROM turnos_disponibles order by fecha_comienzo;
     
END
| 
DELIMITER ;