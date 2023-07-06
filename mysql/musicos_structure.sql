-- MySQL Script generated by MySQL Workbench
-- Thu Jun 29 13:48:52 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema musica
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `musica` ;

-- -----------------------------------------------------
-- Schema musica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `musica` ;
USE `musica` ;

-- -----------------------------------------------------
-- Table `musica`.`genero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `musica`.`genero` ;

CREATE TABLE IF NOT EXISTS `musica`.`genero` (
  `genero_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`genero_id`),
  UNIQUE INDEX `nombre_UNIQUE` (`nombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `musica`.`cancion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `musica`.`cancion` ;

CREATE TABLE IF NOT EXISTS `musica`.`cancion` (
  `cancion_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `duracion` SMALLINT UNSIGNED NOT NULL,
  `genero_id` INT UNSIGNED NULL,
  PRIMARY KEY (`cancion_id`),
  INDEX `fk_cancion_genero_idx` (`genero_id` ASC) VISIBLE,
  CONSTRAINT `fk_cancion_genero`
    FOREIGN KEY (`genero_id`)
    REFERENCES `musica`.`genero` (`genero_id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `musica`.`grupo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `musica`.`grupo` ;

CREATE TABLE IF NOT EXISTS `musica`.`grupo` (
  `grupo_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `fecha_creacion` DATE NULL DEFAULT (CURRENT_DATE),
  `fecha_disolucion` DATE NULL,
  PRIMARY KEY (`grupo_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `musica`.`discografica`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `musica`.`discografica` ;

CREATE TABLE IF NOT EXISTS `musica`.`discografica` (
  `discografica_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `mayor` BIT NULL DEFAULT 0,
  PRIMARY KEY (`discografica_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `musica`.`album`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `musica`.`album` ;

CREATE TABLE IF NOT EXISTS `musica`.`album` (
  `album_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `fecha_creacion` DATE NOT NULL DEFAULT (CURRENT_DATE),
  `portada` VARCHAR(200) NULL,
  `grupo_id` INT UNSIGNED NOT NULL,
  `discografica_id` INT UNSIGNED NULL,
  PRIMARY KEY (`album_id`),
  INDEX `fk_album_grupo1_idx` (`grupo_id` ASC) VISIBLE,
  INDEX `fk_album_discografica1_idx` (`discografica_id` ASC) VISIBLE,
  CONSTRAINT `fk_album_grupo1`
    FOREIGN KEY (`grupo_id`)
    REFERENCES `musica`.`grupo` (`grupo_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_album_discografica1`
    FOREIGN KEY (`discografica_id`)
    REFERENCES `musica`.`discografica` (`discografica_id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `musica`.`cancion_has_album`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `musica`.`cancion_has_album` ;

CREATE TABLE IF NOT EXISTS `musica`.`cancion_has_album` (
  `cancion_id` INT UNSIGNED NOT NULL,
  `album_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`cancion_id`, `album_id`),
  INDEX `fk_cancion_has_album_album1_idx` (`album_id` ASC) VISIBLE,
  INDEX `fk_cancion_has_album_cancion1_idx` (`cancion_id` ASC) VISIBLE,
  CONSTRAINT `fk_cancion_has_album_cancion1`
    FOREIGN KEY (`cancion_id`)
    REFERENCES `musica`.`cancion` (`cancion_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cancion_has_album_album1`
    FOREIGN KEY (`album_id`)
    REFERENCES `musica`.`album` (`album_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `musica`.`artista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `musica`.`artista` ;

CREATE TABLE IF NOT EXISTS `musica`.`artista` (
  `artista_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(100) NOT NULL,
  `alias` VARCHAR(45) NULL,
  `fecha_nacimiento` DATE NOT NULL,
  `fecha_fallecimiento` DATE NULL,
  PRIMARY KEY (`artista_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `musica`.`rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `musica`.`rol` ;

CREATE TABLE IF NOT EXISTS `musica`.`rol` (
  `rol_id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`rol_id`),
  UNIQUE INDEX `nombre_UNIQUE` (`nombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `musica`.`grupo_has_artista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `musica`.`grupo_has_artista` ;

CREATE TABLE IF NOT EXISTS `musica`.`grupo_has_artista` (
  `grupo_id` INT UNSIGNED NOT NULL,
  `artista_id` INT UNSIGNED NOT NULL,
  `rol_rol_id` INT NOT NULL,
  PRIMARY KEY (`grupo_id`, `artista_id`, `rol_rol_id`),
  INDEX `fk_grupo_has_artista_artista1_idx` (`artista_id` ASC) VISIBLE,
  INDEX `fk_grupo_has_artista_grupo1_idx` (`grupo_id` ASC) VISIBLE,
  INDEX `fk_grupo_has_artista_rol1_idx` (`rol_rol_id` ASC) VISIBLE,
  CONSTRAINT `fk_grupo_has_artista_grupo1`
    FOREIGN KEY (`grupo_id`)
    REFERENCES `musica`.`grupo` (`grupo_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_grupo_has_artista_artista1`
    FOREIGN KEY (`artista_id`)
    REFERENCES `musica`.`artista` (`artista_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_grupo_has_artista_rol1`
    FOREIGN KEY (`rol_rol_id`)
    REFERENCES `musica`.`rol` (`rol_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
