USE `hospitales`;

CREATE TABLE `hospitales`.`dias_semana` (
  `id_dia_semana` INT NOT NULL AUTO_INCREMENT,
  `dia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_dia_semana`),
  UNIQUE INDEX `id_dia_semana_UNIQUE` (`id_dia_semana` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



DROP TABLE IF EXISTS `hospitales`.`pacientes`;
CREATE TABLE `hospitales`.`pacientes` (
  `id_paciente` INT NOT NULL AUTO_INCREMENT,
  `id_dni` INT NULL,
  `numero_historia_clinica` INT NOT NULL,
  `id_domicilio` INT NULL,
  `id_sexo` INT NULL,
  `fecha_nacimiento` DATE NULL,
  `id_nacionalidad` INT NULL,
  `hora_nacimiento` TIME NULL,
  `id_estado_civil` INT NOT NULL,
  `esta_fallecido` BIT NULL,
  `fecha_fallecimiento` DATETIME NULL,
  `telefono_fijo` VARCHAR(25) NULL,
  `telefono_celular` VARCHAR(25) NULL,
  `id_persona_responsable` INT NULL,
  `id_obra_social` INT NULL,
  `mail` VARCHAR(45) NULL,
  `red_social` VARCHAR(60) NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE INDEX `id_paciente_UNIQUE` (`id_paciente` ASC),
  UNIQUE INDEX `id_dni_UNIQUE` (`id_dni` ASC),
  UNIQUE INDEX `numero_historia_clinica_UNIQUE` (`numero_historia_clinica` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
/*
CREATE TABLE `hospitales`.`pacientes` (
  `id_paciente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE INDEX `id_paciente_UNIQUE` (`id_paciente` ASC));
*/


DROP TABLE IF EXISTS `oficinas`;
CREATE TABLE `hospitales`.`oficinas` (
  `id_oficina` INT NOT NULL,
  `id_domicilio` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_oficina`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
/*
CREATE TABLE `hospitales`.`oficinas` (
  `id_oficina` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL UNIQUE,
  PRIMARY KEY (`id_oficina`),
  UNIQUE INDEX `id_oficina_UNIQUE` (`id_oficina` ASC));
*/
DROP TABLE IF EXISTS `consultorios`;
CREATE TABLE `hospitales`.`consultorios` (
  `id_consultorio` INT NOT NULL,
  `id_oficina` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_consultorio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
/*
CREATE TABLE `hospitales`.`consultorios` (
  `id_consultorio` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  `id_oficina` INT NOT NULL,
	CONSTRAINT `id_oficina` FOREIGN KEY (`id_oficina`) REFERENCES `oficinas` (`id_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  PRIMARY KEY (`id_consultorio`),
  UNIQUE INDEX `id_consultorio_UNIQUE` (`id_consultorio` ASC));
*/
DROP TABLE IF EXISTS `especialidades`;
CREATE TABLE `hospitales`.`especialidades` (
  `id_especialidad` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL UNIQUE,
  PRIMARY KEY (`id_especialidad`),
  UNIQUE INDEX `id_especialidad_UNIQUE` (`id_especialidad` ASC));

  DROP TABLE IF EXISTS `especialistas`;
  CREATE TABLE `hospitales`.`especialistas` (
  `id_especialista` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`id_especialista`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

  DROP TABLE IF EXISTS `horarios_atencion`;
  CREATE TABLE `hospitales`.`horarios_atencion` (
  `id_horario_atencion` INT NOT NULL,
  `id_especialista` INT NOT NULL,
  `id_consultorio` INT NOT NULL,
  `horario_inicio` DATE NOT NULL,
  `horario_fin` DATE NOT NULL,
  `id_dia` INT NOT NULL,
  `duracion_turnos` TIME NOT NULL,
  `id_especialidad` INT NOT NULL,
  PRIMARY KEY (`id_horario_atencion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

  /*
  CREATE TABLE `hospitales`.`horarios_atencion` (
  `id_horario_atencion` INT NOT NULL AUTO_INCREMENT,
  `id_profesional` INT NULL,
  `id_consultorio` INT NULL,
  `dia` INT NULL,
  `hora_comienzo` DATETIME NULL,
  `hora_finalizacion` DATETIME NULL,
  `duracion_turnos` TIME NOT NULL,
  `id_especialidad` VARCHAR(45) NULL,
  CONSTRAINT `id_especialidad` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id_especialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  PRIMARY KEY (`id_horario_atencion`));
*/
DROP TABLE IF EXISTS `turnos`;
CREATE TABLE `hospitales`.`turnos` (
  `id_turno` INT NOT NULL,
  `id_paciente` INT NOT NULL,
  `id_especialista` INT NOT NULL,
  `id_consultorio` INT NOT NULL,
  `fecha_comienzo` DATETIME NOT NULL,
  `fecha_finalizacion` DATETIME NOT NULL,
  `id_especialidad` INT NOT NULL,
  PRIMARY KEY (`id_turno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
  
CREATE TABLE `hospitales`.`especialidades_x_especialista` (
  `id_especialidad_x_especialista` INT NOT NULL,
  `id_especialidad` INT NOT NULL,
  `id_especialista` INT NOT NULL,
  PRIMARY KEY (`id_especialidad_x_especialista`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



/*
DELIMITER |
CREATE PROCEDURE `insertar_persona` (nombre VARCHAR(45),apellido VARCHAR(45),id_sexo INT,id_estado_civil INT,dni VARCHAR(45),telefono_fijo BIGINT,telefono_celular BIGINT,objetivo_laboral VARCHAR(2000),pais VARCHAR(45),provincia VARCHAR(45),ciudad VARCHAR(45),calle VARCHAR(45),altura VARCHAR(45))
BEGIN
	
    
    INSERT INTO `jovenes_profesionales`.`personas`  (nombre,apellido,id_sexo,id_estado_civil,dni,telefono_fijo,telefono_celular,objetivo_laboral,pais,provincia,ciudad,calle,altura)
	VALUES (nombre,apellido,id_sexo,id_estado_civil,dni,telefono_fijo,telefono_celular,objetivo_laboral,pais,provincia,ciudad,calle,altura);
    select max(id_persona) from personas;
    
END;
|
DELIMITER ;
*/
