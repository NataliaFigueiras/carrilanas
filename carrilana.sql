SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `carrilana` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `carrilana` ;

-- -----------------------------------------------------
-- Table `carrilana`.`carrera`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `carrilana`.`carrera` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `fecha` DATETIME NOT NULL ,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `circuito` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NULL DEFAULT NULL ,
  `distancia` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `carrilana`.`categoria`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `carrilana`.`categoria` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `descripcion` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `carrilana`.`equipo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `carrilana`.`equipo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `vehiculo` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `carrilana`.`equipo_has_carrera`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `carrilana`.`equipo_has_carrera` (
  `equipo_id` INT(11) NOT NULL ,
  `carrera_id` INT(11) NOT NULL ,
  `categoria_id` INT(11) NOT NULL ,
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_equipo_has_carrera_carrera1` (`carrera_id` ASC) ,
  INDEX `fk_equipo_has_carrera_equipo1` (`equipo_id` ASC) ,
  INDEX `fk_equipo_has_carrera_categoria1` (`categoria_id` ASC) ,
  CONSTRAINT `fk_equipo_has_carrera_carrera1`
    FOREIGN KEY (`carrera_id` )
    REFERENCES `carrilana`.`carrera` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipo_has_carrera_categoria1`
    FOREIGN KEY (`categoria_id` )
    REFERENCES `carrilana`.`categoria` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipo_has_carrera_equipo1`
    FOREIGN KEY (`equipo_id` )
    REFERENCES `carrilana`.`equipo` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `carrilana`.`llegada`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `carrilana`.`llegada` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `tiempo` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `puesto` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `carrera_id` INT(11) NOT NULL ,
  `equipo_has_carrera_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id`, `carrera_id`) ,
  INDEX `fk_llegada_carrera1` (`carrera_id` ASC) ,
  INDEX `fk_llegada_equipo_has_carrera1` (`equipo_has_carrera_id` ASC) ,
  CONSTRAINT `fk_llegada_carrera1`
    FOREIGN KEY (`carrera_id` )
    REFERENCES `carrilana`.`carrera` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_llegada_equipo_has_carrera1`
    FOREIGN KEY (`equipo_has_carrera_id` )
    REFERENCES `carrilana`.`equipo_has_carrera` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `carrilana`.`noticia`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `carrilana`.`noticia` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `titular` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `texto` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `carrera_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_noticia_carrera` (`carrera_id` ASC) ,
  CONSTRAINT `fk_noticia_carrera`
    FOREIGN KEY (`carrera_id` )
    REFERENCES `carrilana`.`carrera` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `carrilana`.`piloto`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `carrilana`.`piloto` (
  `id` INT(11) NOT NULL ,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `nfederado` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `foto` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NULL DEFAULT NULL ,
  `equipo_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_piloto_equipo1` (`equipo_id` ASC) ,
  CONSTRAINT `fk_piloto_equipo1`
    FOREIGN KEY (`equipo_id` )
    REFERENCES `carrilana`.`equipo` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `carrilana`.`usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `carrilana`.`usuario` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `password` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `email` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `nivel` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Placeholder table for view `carrilana`.`noticiaconcarrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilana`.`noticiaconcarrera` (`id` INT, `titular` INT, `texto` INT, `fecha` INT, `nombre` INT, `circuito` INT, `distancia` INT);

-- -----------------------------------------------------
-- View `carrilana`.`noticiaconcarrera`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carrilana`.`noticiaconcarrera`;
USE `carrilana`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `carrilana`.`noticiaconcarrera` AS select `carrilana`.`noticia`.`id` AS `id`,`carrilana`.`noticia`.`titular` AS `titular`,`carrilana`.`noticia`.`texto` AS `texto`,`carrilana`.`carrera`.`fecha` AS `fecha`,`carrilana`.`carrera`.`nombre` AS `nombre`,`carrilana`.`carrera`.`circuito` AS `circuito`,`carrilana`.`carrera`.`distancia` AS `distancia` from (`carrilana`.`noticia` join `carrilana`.`carrera`) where (`carrilana`.`noticia`.`carrera_id` = `carrilana`.`carrera`.`id`);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;