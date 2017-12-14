
INSERT INTO `hospitales`.`estados_civil` (estado_civil)
VALUES ('CASADO');

INSERT INTO `hospitales`.`estados_civil` (estados_civil.estado_civil)
VALUES ('SOLTERO');

INSERT INTO `hospitales`.`estados_civil` (estados_civil.estado_civil)
VALUES ('NO CONTESTA');

/********************************************************/

INSERT INTO `hospitales`.`pacientes` (numero_historia_clinica,nombre,pacientes.id_estado_civil)
VALUES (1,'massa',3);
INSERT INTO `hospitales`.`pacientes` (numero_historia_clinica,nombre,pacientes.id_estado_civil)
VALUES (2,'paz',3);
INSERT INTO `hospitales`.`pacientes` (numero_historia_clinica,nombre,pacientes.id_estado_civil)
VALUES (3,'el demo',3);

/********************************************************/

INSERT INTO hospitales.domicilios (domicilios.barrio)
VALUES ("CABALLITO");

INSERT INTO hospitales.domicilios (domicilios.barrio)
VALUES ("BOEDO");

/********************************************************/

INSERT INTO `hospitales`.`oficinas` (oficinas.descripcion,oficinas.id_domicilio)
VALUES ("OFI_1",1);

INSERT INTO `hospitales`.`oficinas` (oficinas.descripcion,oficinas.id_domicilio)
VALUES ("OFI_2",2);

/********************************************************/

INSERT INTO `hospitales`.`consultorios`  (consultorios.descripcion_consultorio,id_oficina)
VALUES ("OFI_1_C1",1);

INSERT INTO `hospitales`.`consultorios`  (consultorios.descripcion_consultorio,id_oficina)
VALUES ("OFI_1_C2",1);

INSERT INTO `hospitales`.`consultorios`  (consultorios.descripcion_consultorio,id_oficina)
VALUES ("OFI_1_C3",1);

INSERT INTO `hospitales`.`consultorios`  (consultorios.descripcion_consultorio,id_oficina)
VALUES ("OFI_2_C1",2);

INSERT INTO `hospitales`.`consultorios`  (consultorios.descripcion_consultorio,id_oficina)
VALUES ("OFI_2_C2",2);

/********************************************************/

INSERT INTO `hospitales`.`especialidades`  (descripcion)
VALUES ("ESP_1");

INSERT INTO `hospitales`.`especialidades`  (descripcion)
VALUES ("ESP_2");

/********************************************************/

INSERT INTO `hospitales`.`especialistas`  (especialistas.nombre)
VALUES ("especialista 1");

INSERT INTO `hospitales`.`especialistas`  (especialistas.nombre)
VALUES ("especialista 2");

/********************************************************/

INSERT INTO hospitales.especialidades_x_especialista (especialidades_x_especialista.id_especialidad, especialidades_x_especialista.id_especialista)
SELECT especialidad.id_especialidad, especialista.id_especialista
FROM hospitales.especialidades especialidad,hospitales.especialistas especialista
WHERE especialidad.descripcion_especialidad = "ESP_1" AND especialista.nombre = "especialista 1";

INSERT INTO hospitales.especialidades_x_especialista (especialidades_x_especialista.id_especialidad, especialidades_x_especialista.id_especialista)
SELECT especialidad.id_especialidad, especialista.id_especialista
FROM hospitales.especialidades especialidad,hospitales.especialistas especialista
WHERE especialidad.descripcion_especialidad = "ESP_2" AND especialista.nombre = "especialista 1";

INSERT INTO hospitales.especialidades_x_especialista (especialidades_x_especialista.id_especialidad, especialidades_x_especialista.id_especialista)
SELECT especialidad.id_especialidad, especialista.id_especialista
FROM hospitales.especialidades especialidad,hospitales.especialistas especialista
WHERE especialidad.descripcion_especialidad = "ESP_1" AND especialista.nombre = "especialista 2";

/********************************************************/
SET FOREIGN_KEY_CHECKS = 0; drop table dias_semana; SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO hospitales.dias_semana (dias_semana.dia)
VALUES ("DOMINGO");

INSERT INTO hospitales.dias_semana (dias_semana.dia)
VALUES ("LUNES");

INSERT INTO hospitales.dias_semana (dias_semana.dia)
VALUES ("MARTES");

INSERT INTO hospitales.dias_semana (dias_semana.dia)
VALUES ("MIERCOLES");

INSERT INTO hospitales.dias_semana (dias_semana.dia)
VALUES ("JUEVES");

INSERT INTO hospitales.dias_semana (dias_semana.dia)
VALUES ("VIERNES");

INSERT INTO hospitales.dias_semana (dias_semana.dia)
VALUES ("SABADO");

/********************************************************/

INSERT INTO hospitales.horarios_atencion (id_especialista,id_oficina,horario_inicio,horario_fin,id_dia,duracion_turnos,id_especialidad)
SELECT especialista.id_especialista,oficina.id_oficina,'13:00:00','14:30:00',ds.id_dia_semana,'00:20:00',especialidad.id_especialidad
FROM especialistas especialista,oficinas oficina,dias_semana ds,especialidades especialidad
WHERE especialista.nombre = "especialista 1" AND oficina.descripcion = "OFI_1" AND ds.dia = "LUNES" and especialidad.descripcion_especialidad = "ESP_1";

INSERT INTO hospitales.horarios_atencion (id_especialista,id_oficina,horario_inicio,horario_fin,id_dia,duracion_turnos,id_especialidad)
SELECT especialista.id_especialista,oficina.id_oficina,'13:00:00','14:40:00',ds.id_dia_semana,'00:30:00',especialidad.id_especialidad
FROM especialistas especialista,oficinas oficina,dias_semana ds,especialidades especialidad
WHERE especialista.nombre = "especialista 1" AND oficina.descripcion = "OFI_1" AND ds.dia = "MARTES" and especialidad.descripcion_especialidad = "ESP_1";

INSERT INTO hospitales.horarios_atencion (id_especialista,id_oficina,horario_inicio,horario_fin,id_dia,duracion_turnos,id_especialidad)
SELECT especialista.id_especialista,oficina.id_oficina,'13:00:00','14:40:00',ds.id_dia_semana,'00:30:00',especialidad.id_especialidad
FROM especialistas especialista,oficinas oficina,dias_semana ds,especialidades especialidad
WHERE especialista.nombre = "especialista 1" AND oficina.descripcion = "OFI_1" AND ds.dia = "MIERCOLES" and especialidad.descripcion_especialidad = "ESP_1";

INSERT INTO hospitales.horarios_atencion (id_especialista,id_oficina,horario_inicio,horario_fin,id_dia,duracion_turnos,id_especialidad)
SELECT especialista.id_especialista,oficina.id_oficina,'13:00:00','14:40:00',ds.id_dia_semana,'00:30:00',especialidad.id_especialidad
FROM especialistas especialista,oficinas oficina,dias_semana ds,especialidades especialidad
WHERE especialista.nombre = "especialista 1" AND oficina.descripcion = "OFI_1" AND ds.dia = "JUEVES" and especialidad.descripcion_especialidad = "ESP_1";

INSERT INTO hospitales.horarios_atencion (id_especialista,id_oficina,horario_inicio,horario_fin,id_dia,duracion_turnos,id_especialidad)
SELECT especialista.id_especialista,oficina.id_oficina,'13:00:00','14:40:00',ds.id_dia_semana,'00:30:00',especialidad.id_especialidad
FROM especialistas especialista,oficinas oficina,dias_semana ds,especialidades especialidad
WHERE especialista.nombre = "especialista 1" AND oficina.descripcion = "OFI_1" AND ds.dia = "VIERNES" and especialidad.descripcion_especialidad = "ESP_1";

INSERT INTO hospitales.horarios_atencion (id_especialista,id_oficina,horario_inicio,horario_fin,id_dia,duracion_turnos,id_especialidad)
SELECT especialista.id_especialista,oficina.id_oficina,'13:00:00','14:40:00',ds.id_dia_semana,'00:30:00',especialidad.id_especialidad
FROM especialistas especialista,oficinas oficina,dias_semana ds,especialidades especialidad
WHERE especialista.nombre = "especialista 1" AND oficina.descripcion = "OFI_1" AND ds.dia = "SABADO" and especialidad.descripcion_especialidad = "ESP_1";

INSERT INTO hospitales.horarios_atencion (id_especialista,id_oficina,horario_inicio,horario_fin,id_dia,duracion_turnos,id_especialidad)
SELECT especialista.id_especialista,oficina.id_oficina,'13:00:00','14:40:00',ds.id_dia_semana,'00:30:00',especialidad.id_especialidad
FROM especialistas especialista,oficinas oficina,dias_semana ds,especialidades especialidad
WHERE especialista.nombre = "especialista 1" AND oficina.descripcion = "OFI_1" AND ds.dia = "DOMINGO" and especialidad.descripcion_especialidad = "ESP_1";

INSERT INTO hospitales.horarios_atencion (id_especialista,id_oficina,horario_inicio,horario_fin,id_dia,duracion_turnos,id_especialidad)
SELECT especialista.id_especialista,oficina.id_oficina,'13:00:00','14:30:00',ds.id_dia_semana,'00:20:00',especialidad.id_especialidad
FROM especialistas especialista,oficinas oficina,dias_semana ds,especialidades especialidad
WHERE especialista.nombre = "especialista 2" AND oficina.descripcion = "OFI_1" AND ds.dia = "LUNES" and especialidad.descripcion_especialidad = "ESP_1";

/********************************************************/
drop procedure if exists mostrarTurnosDisponibles ;
select * from logtable;  
delete from logtable;

select * from turnos_pedidos;
select * from turnos_disponibles;

select * from turnos order by fecha_comienzo;
CALL mostrarTurnosDisponibles(1,NULL,'2017-12-11','2017-12-11','13:30:00','14:00:00',1);
select * from horarios_atencion where id_dia = dayofweek('2017-12-11');
INSERT INTO turnos (id_paciente,id_especialista,id_consultorio,fecha_comienzo,fecha_finalizacion,id_especialidad)
VALUES (1,1,1,'2017-12-10 13:40:00','2017-12-10 14:00:00',1);



DELIMITER |
CREATE PROCEDURE mostrarTurnosDisponibles(especialidad_p int, especialista_p int, fecha_inicio_p DATE, fecha_fin_p DATE, hora_inicio_p TIME, hora_fin_p TIME, oficina_p INT)
BEGIN

	DECLARE done INT DEFAULT FALSE;

	DECLARE c_id_horario_atencion INT;
    DECLARE c_id_especialista, c_id_oficina,c_id_dia,c_id_especialidad INT;
    DECLARE c_horario_inicio, c_horario_fin,c_duracion_turnos TIME;
    
	DECLARE cur1 CURSOR FOR 
		SELECT id_horario_atencion,id_especialista,id_oficina,horario_inicio,horario_fin,id_dia,duracion_turnos,id_especialidad
		FROM horarios_atencion 
		WHERE (horario_inicio < hora_fin_p OR horario_fin > hora_inicio_p)
            AND id_especialidad = especialidad_p;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
	call log_msg( concat('cant h_a: ', (SELECT COUNT( DISTINCT id_horario_atencion)
										FROM horarios_atencion 
										WHERE (horario_inicio < hora_fin_p OR horario_fin > hora_inicio_p)
										AND id_especialidad = especialidad_p)
    ));
    
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
		t.id_especialidad = especialidad_p AND (
			 t.fecha_comienzo BETWEEN 
				    (STR_TO_DATE(CONCAT(fecha_inicio_p, ' ', hora_inicio_p), '%Y-%m-%d %H:%i:%s')) 
                AND (STR_TO_DATE(CONCAT(fecha_fin_p, ' ', hora_fin_p), '%Y-%m-%d %H:%i:%s'))
                 #OR
			#( t.fecha_finalizacion BETWEEN fecha_inicio_p AND fecha_fin_p ) 
			#( t.fecha_comienzo < (STR_TO_DATE(CONCAT(fecha_inicio_p, ' ', hora_inicio_p), '%Y-%m-%d %H:%i:%s')) AND t.fecha_finalizacion > (STR_TO_DATE(CONCAT(fecha_inicio_p, ' ', hora_inicio_p), '%Y-%m-%d %H:%i:%s')))
        );
        SELECT * from turnos_pedidos;
#	WHERE t.fecha_comienzo >= (STR_TO_DATE(CONCAT(fecha_inicio_p, ' ', hora_inicio_p), '%Y-%m-%d %H:%i:%s')) 
#		AND t.fecha_finalizacion <= (STR_TO_DATE(CONCAT(fecha_fin_p, ' ', hora_fin_p), '%Y-%m-%d %H:%i:%s'))
#        AND t.id_especialidad = especialidad_p;
# 			(t.fecha_comienzo = @fecha_y_horario_actual AND t.fecha_finalizacion = @fecha_y_horario_fin_turno )  
#https://articulo.mercadolibre.com.ar/MLA-669323080-ssd-samsung-960-evo-500-gb-nvme-m2-_JM
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
        
        IF (hora_inicio_p > c_horario_inicio ) THEN
			SET @horario_actual = c_horario_inicio;
            WHILE ( hora_inicio_p > @horario_actual )
            DO
				SET @horario_actual = ADDTIME(@horario_actual,c_duracion_turnos);
            END WHILE;
            
        ELSE
            SET @horario_actual = c_horario_inicio;
        END IF;
        
        #call log_msg( concat(' hora_inicio_p ', hora_inicio_p, ' c_horario_inicio ',c_horario_inicio  ));
        
        SET @fecha_actual = fecha_inicio_p;
        
        WHILE ( (SELECT dayofweek(@fecha_actual)) != c_id_dia )
        DO
        
			SET @fecha_actual =  DATE_ADD(@fecha_actual, INTERVAL 1 DAY);
            
        END WHILE;
        
        WHILE ( @fecha_actual <= fecha_fin_p)
        DO
        
			WHILE ( LEAST(c_horario_fin,hora_fin_p) > @horario_actual  )
			DO
				
                call log_msg( concat('c_horario_fin : ', c_horario_fin, '@horario_actual: ',@horario_actual) );

				SET @cantidad_consultorios_totales = (SELECT COUNT(id_consultorio) 
														FROM consultorios 
                                                        WHERE id_oficina = c_id_oficina);
			
				SET @fecha_y_horario_actual = STR_TO_DATE(CONCAT(@fecha_actual, ' ', @horario_actual), '%Y-%m-%d %H:%i:%s');
                SET @fecha_y_horario_fin_turno = STR_TO_DATE(CONCAT(@fecha_actual, ' ', ADDTIME(@horario_actual,c_duracion_turnos)), '%Y-%m-%d %H:%i:%s');
     
				SET @cantidad_consultorios_ocupados_ese_intervalo = ( 

					SELECT COUNT( DISTINCT t.id_consultorio)
					FROM turnos_pedidos t
                    WHERE t.fecha_comienzo = @fecha_y_horario_actual
                    #FROM turnos_pedidos t
					#WHERE (
					#	(t.fecha_comienzo = @fecha_y_horario_actual AND t.fecha_finalizacion = @fecha_y_horario_fin_turno ) 
                        #(t.fecha_comienzo <= @fecha_y_horario_actual AND t.fecha_finalizacion > @fecha_y_horario_actual) 
						#( (t.fecha_comienzo < @fecha_y_horario_actual) AND (t.fecha_finalizacion > @fecha_y_horario_actual) ) OR
                        #( (t.fecha_comienzo >= @fecha_y_horario_actual) AND (t.fecha_finalizacion <= @fecha_y_horario_fin_turno ) ) OR
                        #( (t.fecha_comienzo >= @fecha_y_horario_actual) AND (t.fecha_finalizacion > @fecha_y_horario_fin_turno ) )
                    #)
				);
                call log_msg( concat(' cant consultorio ocupados ese intervalo: ', @cantidad_consultorios_ocupados_ese_intervalo, 
									 ' @fecha_actual: ', @fecha_actual,
									 ' @horario_actual: ',@horario_actual) );
             /*
                    '  @fecha_y_horario_fin_turno:  '
                    SELECT COUNT( DISTINCT t.id_consultorio)
					FROM turnos_pedidos t
					WHERE (
						(t.fecha_comienzo > '2017-12-10 13:00:00' AND t.fecha_finalizacion < '2017-12-10 13:30:00' ) OR
                        (t.fecha_comienzo <= '2017-12-10 13:00:00' AND t.fecha_finalizacion > '2017-12-10 13:00:00') 
						#(t.fecha_comienzo < (STR_TO_DATE(CONCAT(@fecha_actual, ' ', @horario_actual), '%Y-%m-%d %H:%i:%s'))) OR 
						#(t.fecha_finalizacion > (STR_TO_DATE(CONCAT(@fecha_actual, ' ', ADDTIME(@horario_actual,c_duracion_turnos)), '%Y-%m-%d %H:%i:%s'))) 
                    )
               */     
                    #WHERE  DATE(t.fecha_comienzo) = @fecha_actual
                        #AND TIME(t.fecha_comienzo) >= @horario_actual
						#AND TIME(t.fecha_finalizacion) < ADDTIME( TIME(t.fecha_comienzo), c_duracion_turnos)
                
                
				IF (@cantidad_consultorios_totales > @cantidad_consultorios_ocupados_ese_intervalo) THEN
                    
                    SET @fecha_comienzo = STR_TO_DATE(CONCAT(@fecha_actual, ' ', @horario_actual), '%Y-%m-%d %H:%i:%s');#ADDTIME(@fecha_actual,@horario_actual );
                    SET @fecha_finalizacion = ADDTIME(@fecha_comienzo,c_duracion_turnos);#STR_TO_DATE(CONCAT(@fecha_comienzo, ' ', c_duracion_turnos), '%Y-%m-%d %H:%i:%s');#ADDTIME(@fecha_comienzo , c_duracion_turnos );
                    
                    SET @consultorio_libre = (
							SELECT c.id_consultorio
							FROM consultorios c
                            WHERE c.id_oficina = c_id_oficina 
								AND c.id_consultorio NOT IN (
									SELECT DISTINCT t.id_consultorio
									FROM turnos_pedidos t
									WHERE (t.fecha_comienzo = @fecha_y_horario_actual AND t.fecha_finalizacion = @fecha_y_horario_fin_turno )
                                )
                            LIMIT 1				
					);
    
					call log_msg( concat(
                        ' @horario_actual: ', @horario_actual,
                        ' @fecha_actual: ',@fecha_actual,
                        ' @fecha_y_horario_actual: ', @fecha_y_horario_actual,
                        ' @fecha_y_horario_fin_turno: ', @fecha_y_horario_fin_turno,
                        ' @fecha_comienzo: ',@fecha_comienzo,
                        ' @fecha_finalizacion: ',@fecha_finalizacion,
                        ' @consultorio_libre: ',@consultorio_libre 
                    ));
    
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
  
	#SELECT * FROM turnos_disponibles;
     
END
| 
DELIMITER ;

drop procedure mostrarTurnosDisponibles;
delete from logtable;
CALL mostrarTurnosDisponibles(1,1,'2017-12-10','2017-12-10','13:00:00','14:00:00',NULL);

select * from logtable;
/*
    INSERT INTO turnos_pedidos (id_turno,id_consultorio,id_especialidad,id_especialista,id_paciente,fecha_comienzo,fecha_finalizacion)
    VALUES (1,1,3,4,5,'01-01-01','01-01-01');
    INSERT INTO turnos_pedidos(id_turno,id_consultorio,id_especialidad,id_especialista,id_paciente,fecha_comienzo,fecha_finalizacion)
    VALUES (2,1,3,4,5,'01-01-01','01-01-01');
   */ 









/**********************************************************************/
CREATE TABLE `hospitales`.`logtable` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `log_msg` VARCHAR(245) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



drop procedure if exists log;
delimiter |
CREATE PROCEDURE `log`(msg VARCHAR(255))
BEGIN
    insert into logtable select 0, msg;
END
| 
DELIMITER ;


/********************************************************/

SELECT * FROM hospitales.horarios_atencion ORDER BY horarios_atencion.id_dia;

/* SUMAR TIEMPO */
/*  select *, ADDTIME(hora_comienzo,'00:10:00') from horarios_atencion;  
*/

/* OBTENER TIME DE UN DATETIME*/
/*
SELECT DATE_FORMAT('2000-01-01 1:00:00','%H:%i:%s') TIMEONLY
INTO @hora_del_datetime;
SELECT time_to_sec(@hora_del_datetime);
*/
/* OBTENER CANTIDAD DE TURNOS*/
/*
select  floor(abs(time_to_sec( timediff(hora_finalizacion,hora_comienzo))/ time_to_sec(duracion_turnos))) as 'cantidad de turnos en ese horario de atencion'
from horarios_atencion;
*/


/* turnos libres disponibles*/
select floor(abs(time_to_sec( timediff(ha.hora_finalizacion,ha.hora_comienzo))/ time_to_sec(duracion_turnos)))
into @cantidad_de_turnos
from horarios_atencion ha
where ha.id_horario_atencion = 6;


