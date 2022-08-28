-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema porfolio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema porfolio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `porfolio` DEFAULT CHARACTER SET utf8 ;
USE `porfolio` ;

-- -----------------------------------------------------
-- Table `porfolio`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio`.`persona` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `domicilio` VARCHAR(45) NOT NULL,
  `fechaNac` DATE NOT NULL,
  `telefono` VARCHAR(25) NOT NULL,
  `correo` VARCHAR(16) NOT NULL,
  `sobre_mi` VARCHAR(45) NOT NULL,
  `url_foto` VARCHAR(100) NOT NULL,
  `slogan` VARCHAR(250) NOT NULL,
  `titulo` VARCHAR(45) NULL,
  `Informacion_profesional_resumida` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio`.`tipo_empleo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio`.`tipo_empleo` (
  `id` INT NOT NULL,
  `nombre_tipo` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio`.`experiencia_laboral`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio`.`experiencia_laboral` (
  `id` INT NOT NULL,
  `nombreEmpesa` VARCHAR(45) NULL,
  `esTrabajoActual` TINYINT NULL,
  `fechaInicio` DATE NULL,
  `fechaFin` DATE NULL,
  `descripcion` VARCHAR(200) NULL,
  `persona_id` INT NOT NULL,
  `tipo_empleo_id` INT NOT NULL,
  PRIMARY KEY (`id`, `persona_id`, `tipo_empleo_id`),
  INDEX `fk_experiencia_laboral_persona_idx` (`persona_id` ASC) VISIBLE,
  INDEX `fk_experiencia_laboral_tipo_empleo1_idx` (`tipo_empleo_id` ASC) VISIBLE,
  CONSTRAINT `fk_experiencia_laboral_persona`
    FOREIGN KEY (`persona_id`)
    REFERENCES `porfolio`.`persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_experiencia_laboral_tipo_empleo1`
    FOREIGN KEY (`tipo_empleo_id`)
    REFERENCES `porfolio`.`tipo_empleo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio`.`Educacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio`.`Educacion` (
  `id` INT NOT NULL,
  `Institucion` VARCHAR(45) NULL,
  `Titulo_obtenido` VARCHAR(45) NULL,
  `fechaini` DATE NULL,
  `fechafin` DATE NULL,
  `Finalizado` TINYINT NULL,
  `ubicacion` VARCHAR(45) NULL,
  `comentario` VARCHAR(45) NULL,
  `persona_id` INT NOT NULL,
  PRIMARY KEY (`id`, `persona_id`),
  INDEX `fk_Educacion_persona1_idx` (`persona_id` ASC) VISIBLE,
  CONSTRAINT `fk_Educacion_persona1`
    FOREIGN KEY (`persona_id`)
    REFERENCES `porfolio`.`persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio`.`Proyectos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio`.`Proyectos` (
  `id` INT NOT NULL,
  `Nombre_Proyecto` VARCHAR(45) NULL,
  `Entorno` VARCHAR(45) NULL,
  `Marco` VARCHAR(45) NULL,
  `Funcion` VARCHAR(45) NULL,
  `Aprendisaje_obtenido` VARCHAR(45) NULL,
  `Resultado` VARCHAR(45) NULL,
  `Fecha_ini` DATE NULL,
  `Fecha_fin` DATE NULL,
  `link` VARCHAR(45) NULL,
  `imagen` VARCHAR(45) NULL,
  `persona_id` INT NOT NULL,
  PRIMARY KEY (`id`, `persona_id`),
  INDEX `fk_Proyectos_persona1_idx` (`persona_id` ASC) VISIBLE,
  CONSTRAINT `fk_Proyectos_persona1`
    FOREIGN KEY (`persona_id`)
    REFERENCES `porfolio`.`persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio`.`Skills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio`.`Skills` (
  `id` INT NOT NULL,
  `Hard_o_Soft` TINYINT NULL,
  `Nombre_skill` VARCHAR(45) NULL,
  `Descripcion_skill` VARCHAR(45) NULL,
  `Porcentaje` INT NULL,
  `persona_id` INT NOT NULL,
  PRIMARY KEY (`id`, `persona_id`),
  INDEX `fk_Skills_persona1_idx` (`persona_id` ASC) VISIBLE,
  CONSTRAINT `fk_Skills_persona1`
    FOREIGN KEY (`persona_id`)
    REFERENCES `porfolio`.`persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
