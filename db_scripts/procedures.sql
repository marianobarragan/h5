/********************************************************/
drop procedure if exists mostrarTurnosDisponibles ;
select * from logtable;  
delete from logtable;

select * from turnos_disponibles;

select * from turnos order by fecha_comienzo;
CALL mostrarTurnosDisponibles(1,NULL,'2017-12-11 13:00:00','2017-12-11 14:50:00',1);
select * from horarios_atencion where id_dia = dayofweek('2017-12-11');
INSERT INTO turnos (id_paciente,id_especialista,id_consultorio,fecha_comienzo,fecha_finalizacion,id_especialidad)
VALUES (1,1,1,'2017-12-10 13:40:00','2017-12-10 14:00:00',1);

select * from turnos_disponibles order by fecha_comienzo;

DELIMITER |
CREATE PROCEDURE mostrarTurnosDisponibles(especialidad_p int, especialista_p int, inicio_p DATETIME, fin_p DATETIME, oficina_p INT)
BEGIN

	DECLARE done INT DEFAULT FALSE;

	DECLARE c_id_horario_atencion INT;
    DECLARE c_id_especialista, c_id_oficina,c_id_dia,c_id_especialidad INT;
    DECLARE c_horario_inicio, c_horario_fin,c_duracion_turnos TIME;
    
	DECLARE cur1 CURSOR FOR 
		SELECT id_horario_atencion,id_especialista,id_oficina,horario_inicio,horario_fin,id_dia,duracion_turnos,id_especialidad
		FROM horarios_atencion 
		WHERE (horario_inicio < TIME(fin_p) OR horario_fin > TIME(inicio_p))
            AND id_especialidad = especialidad_p;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    /*
	call log_msg( concat('cant h_a: ', (SELECT COUNT( DISTINCT id_horario_atencion)
										FROM horarios_atencion 
										WHERE (horario_inicio < TIME(fin_p) OR horario_fin > TIME(inicio_p))
										AND id_especialidad = especialidad_p)
    ));
    */
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
		t.id_especialidad = especialidad_p
        AND (
			(t.fecha_comienzo BETWEEN inicio_p AND fin_p) OR
			(t.fecha_finalizacion BETWEEN inicio_p AND fin_p) OR
            (t.fecha_comienzo < inicio_p AND t.fecha_finalizacion > fin_p)
        );

    IF especialista_p IS NOT NULL THEN
    
		DELETE FROM turnos_pedidos
        WHERE turnos_pedidos.id_especialista != especialista_p;
		
    END IF;

	SET @id_turno = 1;

	OPEN cur1;
	read_loop: LOOP    
    FETCH cur1 INTO c_id_horario_atencion,c_id_especialista,c_id_oficina,c_horario_inicio,c_horario_fin,c_id_dia,c_duracion_turnos,c_id_especialidad ;
		
        IF done THEN
		  LEAVE read_loop;
		END IF;
        
        IF ( TIME(inicio_p) > c_horario_inicio ) THEN
			SET @horario_actual = c_horario_inicio;
            WHILE ( TIME(inicio_p) > @horario_actual )
            DO
				SET @horario_actual = ADDTIME(@horario_actual,c_duracion_turnos);
            END WHILE;
            
        ELSE
            SET @horario_actual = c_horario_inicio;
        END IF;
                
        SET @fecha_actual = DATE(inicio_p);
        
        WHILE ( (SELECT dayofweek(@fecha_actual)) != c_id_dia )
        DO
        
			SET @fecha_actual =  DATE_ADD(@fecha_actual, INTERVAL 1 DAY);
            
        END WHILE;
        
        WHILE ( @fecha_actual <= DATE(fin_p))
        DO
        
			WHILE ( LEAST(c_horario_fin,TIME(fin_p)) > @horario_actual  )
			DO
				
                #call log_msg( concat('c_horario_fin : ', c_horario_fin, '@horario_actual: ',@horario_actual) );

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
    
				/*		
                call log_msg( concat(' cant consultorio ocupados ese intervalo: ', @cantidad_consultorios_ocupados_ese_intervalo, 
									 ' @fecha_actual: ', @fecha_actual,
									 ' @horario_actual: ',@horario_actual) );
    */
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

	IF ( especialista_p IS NOT NULL) THEN
		DELETE FROM turnos_disponibles WHERE id_especialista != especialista_p;
    END IF;

  
	IF ( oficina_p IS NOT NULL) THEN
		DELETE FROM turnos_disponibles WHERE id_consultorio NOT IN (SELECT distinct id_consultorio FROM consultorios WHERE id_oficina = oficina_p);
    END IF;
  
	SELECT * FROM turnos_disponibles order by fecha_comienzo;
     
END
| 
DELIMITER ;

drop procedure mostrarTurnosDisponibles;
delete from logtable;
CALL mostrarTurnosDisponibles(1,NULL,'2017-12-11 13:40:00','2017-12-11 14:10:00',1);
select * from turnos_pedidos