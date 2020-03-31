-- MySQL Script generated by MySQL Workbench
-- Tue Mar 31 14:18:47 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`POSTE UTILISATEUR`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`POSTE UTILISATEUR` ;

CREATE TABLE IF NOT EXISTS `mydb`.`POSTE UTILISATEUR` (
  `idPOSTE_UTILISATEUR` INT NOT NULL,
  `intitulÚPOSTE_UTILISATEUR` VARCHAR(45) NULL,
  `indicePOSTE_UTILISATEUR` VARCHAR(45) NULL,
  PRIMARY KEY (`idPOSTE_UTILISATEUR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UTILISATEUR`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`UTILISATEUR` ;

CREATE TABLE IF NOT EXISTS `mydb`.`UTILISATEUR` (
  `idUTILISATEUR` INT ZEROFILL NOT NULL,
  `nomUTILISATEUR` VARCHAR(45) NOT NULL,
  `prenomUTILISATEUR` VARCHAR(45) NOT NULL,
  `idADRESSE` INT NOT NULL,
  `idPOSTE_UTILISATEUR` INT NOT NULL,
  `POSTE UTILISATEUR_idPOSTE_UTILISATEUR` INT NOT NULL,
  PRIMARY KEY (`idUTILISATEUR`, `nomUTILISATEUR`, `prenomUTILISATEUR`, `idADRESSE`, `idPOSTE_UTILISATEUR`, `POSTE UTILISATEUR_idPOSTE_UTILISATEUR`),
  UNIQUE INDEX `idUTILISATEUR_UNIQUE` (`idUTILISATEUR` ASC),
  UNIQUE INDEX `nomUTILISATEUR_UNIQUE` (`nomUTILISATEUR` ASC),
  UNIQUE INDEX `prenomUTILISATEUR_UNIQUE` (`prenomUTILISATEUR` ASC),
  UNIQUE INDEX `idADRESSE_UNIQUE` (`idADRESSE` ASC),
  UNIQUE INDEX `posteUTILISATEUR_UNIQUE` (`idPOSTE_UTILISATEUR` ASC),
  INDEX `fk_UTILISATEUR_POSTE UTILISATEUR1_idx` (`POSTE UTILISATEUR_idPOSTE_UTILISATEUR` ASC),
  CONSTRAINT `fk_UTILISATEUR_POSTE UTILISATEUR1`
    FOREIGN KEY (`POSTE UTILISATEUR_idPOSTE_UTILISATEUR`)
    REFERENCES `mydb`.`POSTE UTILISATEUR` (`idPOSTE_UTILISATEUR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`GAMME`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`GAMME` ;

CREATE TABLE IF NOT EXISTS `mydb`.`GAMME` (
  `idGAMME` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `nomGAMME` VARCHAR(45) NOT NULL,
  `dispoGAMME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idGAMME`, `nomGAMME`, `dispoGAMME`),
  UNIQUE INDEX `idGAMME_UNIQUE` (`idGAMME` ASC),
  UNIQUE INDEX `nomGAMME_UNIQUE` (`nomGAMME` ASC),
  UNIQUE INDEX `dispoGAMME_UNIQUE` (`dispoGAMME` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PRODUIT`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`PRODUIT` ;

CREATE TABLE IF NOT EXISTS `mydb`.`PRODUIT` (
  `idPRODUIT` INT ZEROFILL NOT NULL,
  `nomPRODUIT` VARCHAR(45) NOT NULL,
  `idFOURNISSEUR` INT ZEROFILL NOT NULL,
  `dateSortie` DATE NOT NULL,
  `idGAMME` INT ZEROFILL NOT NULL,
  `idPOINTURE` INT ZEROFILL NOT NULL,
  `dateDISPO` DATE NOT NULL,
  `dureeGarantieFOURNISSEUR` VARCHAR(45) NOT NULL,
  `dureeGarantieMagasin` VARCHAR(45) NOT NULL,
  `idCouleur` INT ZEROFILL NOT NULL,
  `GAMME_idGAMME` INT ZEROFILL NOT NULL,
  `GAMME_nomGAMME` VARCHAR(45) NOT NULL,
  `GAMME_dispoGAMME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPRODUIT`, `nomPRODUIT`, `idFOURNISSEUR`, `dateSortie`, `idGAMME`, `idPOINTURE`, `dateDISPO`, `dureeGarantieFOURNISSEUR`, `dureeGarantieMagasin`, `idCouleur`, `GAMME_idGAMME`, `GAMME_nomGAMME`, `GAMME_dispoGAMME`),
  UNIQUE INDEX `nomProduit_UNIQUE` (`nomPRODUIT` ASC),
  UNIQUE INDEX `idFOURNISSEUR_UNIQUE` (`idFOURNISSEUR` ASC),
  UNIQUE INDEX `dateSortie_UNIQUE` (`dateSortie` ASC),
  UNIQUE INDEX `idGAMME_UNIQUE` (`idGAMME` ASC),
  UNIQUE INDEX `idPOINTURE_UNIQUE` (`idPOINTURE` ASC),
  UNIQUE INDEX `dateDISPO_UNIQUE` (`dateDISPO` ASC),
  UNIQUE INDEX `dureeGarantieFOURNISSEUR_UNIQUE` (`dureeGarantieFOURNISSEUR` ASC),
  UNIQUE INDEX `dureeGarantieMagasin_UNIQUE` (`dureeGarantieMagasin` ASC),
  UNIQUE INDEX `PRODUITcol_UNIQUE` (`idCouleur` ASC),
  INDEX `fk_PRODUIT_GAMME1_idx` (`GAMME_idGAMME` ASC, `GAMME_nomGAMME` ASC, `GAMME_dispoGAMME` ASC),
  CONSTRAINT `fk_PRODUIT_GAMME1`
    FOREIGN KEY (`GAMME_idGAMME` , `GAMME_nomGAMME` , `GAMME_dispoGAMME`)
    REFERENCES `mydb`.`GAMME` (`idGAMME` , `nomGAMME` , `dispoGAMME`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`FOURNISSEUR`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`FOURNISSEUR` ;

CREATE TABLE IF NOT EXISTS `mydb`.`FOURNISSEUR` (
  `idFOURNISSEUR` INT NOT NULL,
  `nomFOURNISSEUR` VARCHAR(45) NOT NULL,
  `idADRESSE_SiegeSocial_FOURNISSEUR` INT NOT NULL,
  `id_Entrepot_FOURNISSEUR` INT NOT NULL,
  `PRODUIT_idPRODUIT` INT ZEROFILL NOT NULL,
  `PRODUIT_nomPRODUIT` VARCHAR(45) NOT NULL,
  `PRODUIT_idFOURNISSEUR` INT ZEROFILL NOT NULL,
  `PRODUIT_dateSortie` DATE NOT NULL,
  `PRODUIT_idGAMME` INT ZEROFILL NOT NULL,
  `PRODUIT_idPOINTURE` INT ZEROFILL NOT NULL,
  `PRODUIT_dateDISPO` DATE NOT NULL,
  `PRODUIT_dureeGarantieFOURNISSEUR` VARCHAR(45) NOT NULL,
  `PRODUIT_dureeGarantieMagasin` VARCHAR(45) NOT NULL,
  `PRODUIT_idCouleur` INT ZEROFILL NOT NULL,
  `PRODUIT_GAMME_idGAMME` INT ZEROFILL NOT NULL,
  `PRODUIT_GAMME_nomGAMME` VARCHAR(45) NOT NULL,
  `PRODUIT_GAMME_dispoGAMME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFOURNISSEUR`, `id_Entrepot_FOURNISSEUR`, `nomFOURNISSEUR`, `idADRESSE_SiegeSocial_FOURNISSEUR`, `PRODUIT_idPRODUIT`, `PRODUIT_nomPRODUIT`, `PRODUIT_idFOURNISSEUR`, `PRODUIT_dateSortie`, `PRODUIT_idGAMME`, `PRODUIT_idPOINTURE`, `PRODUIT_dateDISPO`, `PRODUIT_dureeGarantieFOURNISSEUR`, `PRODUIT_dureeGarantieMagasin`, `PRODUIT_idCouleur`, `PRODUIT_GAMME_idGAMME`, `PRODUIT_GAMME_nomGAMME`, `PRODUIT_GAMME_dispoGAMME`),
  UNIQUE INDEX `nomFOURNISSEUR_UNIQUE` (`nomFOURNISSEUR` ASC),
  INDEX `fk_FOURNISSEUR_PRODUIT1_idx` (`PRODUIT_idPRODUIT` ASC, `PRODUIT_nomPRODUIT` ASC, `PRODUIT_idFOURNISSEUR` ASC, `PRODUIT_dateSortie` ASC, `PRODUIT_idGAMME` ASC, `PRODUIT_idPOINTURE` ASC, `PRODUIT_dateDISPO` ASC, `PRODUIT_dureeGarantieFOURNISSEUR` ASC, `PRODUIT_dureeGarantieMagasin` ASC, `PRODUIT_idCouleur` ASC, `PRODUIT_GAMME_idGAMME` ASC, `PRODUIT_GAMME_nomGAMME` ASC, `PRODUIT_GAMME_dispoGAMME` ASC),
  CONSTRAINT `fk_FOURNISSEUR_PRODUIT1`
    FOREIGN KEY (`PRODUIT_idPRODUIT` , `PRODUIT_nomPRODUIT` , `PRODUIT_idFOURNISSEUR` , `PRODUIT_dateSortie` , `PRODUIT_idGAMME` , `PRODUIT_idPOINTURE` , `PRODUIT_dateDISPO` , `PRODUIT_dureeGarantieFOURNISSEUR` , `PRODUIT_dureeGarantieMagasin` , `PRODUIT_idCouleur` , `PRODUIT_GAMME_idGAMME` , `PRODUIT_GAMME_nomGAMME` , `PRODUIT_GAMME_dispoGAMME`)
    REFERENCES `mydb`.`PRODUIT` (`idPRODUIT` , `nomPRODUIT` , `idFOURNISSEUR` , `dateSortie` , `idGAMME` , `idPOINTURE` , `dateDISPO` , `dureeGarantieFOURNISSEUR` , `dureeGarantieMagasin` , `idCouleur` , `GAMME_idGAMME` , `GAMME_nomGAMME` , `GAMME_dispoGAMME`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ADRESSE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ADRESSE` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ADRESSE` (
  `NumRue` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `nomRue` VARCHAR(45) NOT NULL,
  `CodePostal` VARCHAR(45) NOT NULL,
  `nomVille` VARCHAR(45) NOT NULL,
  `nomPAYS` VARCHAR(45) NOT NULL,
  `UTILISATEUR_idUTILISATEUR` INT ZEROFILL NOT NULL,
  `UTILISATEUR_nomUTILISATEUR` VARCHAR(45) NOT NULL,
  `UTILISATEUR_prenomUTILISATEUR` VARCHAR(45) NOT NULL,
  `UTILISATEUR_idADRESSE` INT NOT NULL,
  `UTILISATEUR_idPOSTE_UTILISATEUR` INT NOT NULL,
  `FOURNISSEUR_idFOURNISSEUR` INT NOT NULL,
  `FOURNISSEUR_id_Entrepot_FOURNISSEUR` INT NOT NULL,
  `FOURNISSEUR_nomFOURNISSEUR` VARCHAR(45) NOT NULL,
  `FOURNISSEUR_idADRESSE_SiegeSocial_FOURNISSEUR` INT NOT NULL,
  PRIMARY KEY (`NumRue`, `nomRue`, `CodePostal`, `nomVille`, `nomPAYS`, `UTILISATEUR_idUTILISATEUR`, `UTILISATEUR_nomUTILISATEUR`, `UTILISATEUR_prenomUTILISATEUR`, `UTILISATEUR_idADRESSE`, `UTILISATEUR_idPOSTE_UTILISATEUR`, `FOURNISSEUR_idFOURNISSEUR`, `FOURNISSEUR_id_Entrepot_FOURNISSEUR`, `FOURNISSEUR_nomFOURNISSEUR`, `FOURNISSEUR_idADRESSE_SiegeSocial_FOURNISSEUR`),
  UNIQUE INDEX `idADRESSE_UNIQUE` (`NumRue` ASC),
  UNIQUE INDEX `nomRue_UNIQUE` (`nomRue` ASC),
  UNIQUE INDEX `CodePostal_UNIQUE` (`CodePostal` ASC),
  UNIQUE INDEX `nomVille_UNIQUE` (`nomVille` ASC),
  UNIQUE INDEX `nomPAYS_UNIQUE` (`nomPAYS` ASC),
  INDEX `fk_ADRESSE_UTILISATEUR1_idx` (`UTILISATEUR_idUTILISATEUR` ASC, `UTILISATEUR_nomUTILISATEUR` ASC, `UTILISATEUR_prenomUTILISATEUR` ASC, `UTILISATEUR_idADRESSE` ASC, `UTILISATEUR_idPOSTE_UTILISATEUR` ASC),
  INDEX `fk_ADRESSE_FOURNISSEUR1_idx` (`FOURNISSEUR_idFOURNISSEUR` ASC, `FOURNISSEUR_id_Entrepot_FOURNISSEUR` ASC, `FOURNISSEUR_nomFOURNISSEUR` ASC, `FOURNISSEUR_idADRESSE_SiegeSocial_FOURNISSEUR` ASC),
  CONSTRAINT `fk_ADRESSE_UTILISATEUR1`
    FOREIGN KEY (`UTILISATEUR_idUTILISATEUR` , `UTILISATEUR_nomUTILISATEUR` , `UTILISATEUR_prenomUTILISATEUR` , `UTILISATEUR_idADRESSE` , `UTILISATEUR_idPOSTE_UTILISATEUR`)
    REFERENCES `mydb`.`UTILISATEUR` (`idUTILISATEUR` , `nomUTILISATEUR` , `prenomUTILISATEUR` , `idADRESSE` , `idPOSTE_UTILISATEUR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ADRESSE_FOURNISSEUR1`
    FOREIGN KEY (`FOURNISSEUR_idFOURNISSEUR` , `FOURNISSEUR_id_Entrepot_FOURNISSEUR` , `FOURNISSEUR_nomFOURNISSEUR` , `FOURNISSEUR_idADRESSE_SiegeSocial_FOURNISSEUR`)
    REFERENCES `mydb`.`FOURNISSEUR` (`idFOURNISSEUR` , `id_Entrepot_FOURNISSEUR` , `nomFOURNISSEUR` , `idADRESSE_SiegeSocial_FOURNISSEUR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`COMMANDE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`COMMANDE` ;

CREATE TABLE IF NOT EXISTS `mydb`.`COMMANDE` (
  `idCOMMANDE` INT NOT NULL,
  `idCLIENT` INT NOT NULL,
  `idARTICLE` INT NOT NULL,
  `PRODUIT_idPRODUIT` INT ZEROFILL NOT NULL,
  `PRODUIT_nomPRODUIT` VARCHAR(45) NOT NULL,
  `PRODUIT_idFOURNISSEUR` INT ZEROFILL NOT NULL,
  `PRODUIT_dateSortie` DATE NOT NULL,
  `PRODUIT_idGAMME` INT ZEROFILL NOT NULL,
  `PRODUIT_idPOINTURE` INT ZEROFILL NOT NULL,
  `PRODUIT_dateDISPO` DATE NOT NULL,
  `PRODUIT_dureeGarantieFOURNISSEUR` VARCHAR(45) NOT NULL,
  `PRODUIT_dureeGarantieMagasin` VARCHAR(45) NOT NULL,
  `PRODUIT_idCouleur` INT ZEROFILL NOT NULL,
  `PRODUIT_GAMME_idGAMME` INT ZEROFILL NOT NULL,
  `PRODUIT_GAMME_nomGAMME` VARCHAR(45) NOT NULL,
  `PRODUIT_GAMME_dispoGAMME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCOMMANDE`, `idCLIENT`, `idARTICLE`, `PRODUIT_idPRODUIT`, `PRODUIT_nomPRODUIT`, `PRODUIT_idFOURNISSEUR`, `PRODUIT_dateSortie`, `PRODUIT_idGAMME`, `PRODUIT_idPOINTURE`, `PRODUIT_dateDISPO`, `PRODUIT_dureeGarantieFOURNISSEUR`, `PRODUIT_dureeGarantieMagasin`, `PRODUIT_idCouleur`, `PRODUIT_GAMME_idGAMME`, `PRODUIT_GAMME_nomGAMME`, `PRODUIT_GAMME_dispoGAMME`),
  INDEX `fk_COMMANDE_PRODUIT1_idx` (`PRODUIT_idPRODUIT` ASC, `PRODUIT_nomPRODUIT` ASC, `PRODUIT_idFOURNISSEUR` ASC, `PRODUIT_dateSortie` ASC, `PRODUIT_idGAMME` ASC, `PRODUIT_idPOINTURE` ASC, `PRODUIT_dateDISPO` ASC, `PRODUIT_dureeGarantieFOURNISSEUR` ASC, `PRODUIT_dureeGarantieMagasin` ASC, `PRODUIT_idCouleur` ASC, `PRODUIT_GAMME_idGAMME` ASC, `PRODUIT_GAMME_nomGAMME` ASC, `PRODUIT_GAMME_dispoGAMME` ASC),
  CONSTRAINT `fk_COMMANDE_PRODUIT1`
    FOREIGN KEY (`PRODUIT_idPRODUIT` , `PRODUIT_nomPRODUIT` , `PRODUIT_idFOURNISSEUR` , `PRODUIT_dateSortie` , `PRODUIT_idGAMME` , `PRODUIT_idPOINTURE` , `PRODUIT_dateDISPO` , `PRODUIT_dureeGarantieFOURNISSEUR` , `PRODUIT_dureeGarantieMagasin` , `PRODUIT_idCouleur` , `PRODUIT_GAMME_idGAMME` , `PRODUIT_GAMME_nomGAMME` , `PRODUIT_GAMME_dispoGAMME`)
    REFERENCES `mydb`.`PRODUIT` (`idPRODUIT` , `nomPRODUIT` , `idFOURNISSEUR` , `dateSortie` , `idGAMME` , `idPOINTURE` , `dateDISPO` , `dureeGarantieFOURNISSEUR` , `dureeGarantieMagasin` , `idCouleur` , `GAMME_idGAMME` , `GAMME_nomGAMME` , `GAMME_dispoGAMME`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CLIENT`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`CLIENT` ;

CREATE TABLE IF NOT EXISTS `mydb`.`CLIENT` (
  `idCLIENT` INT NOT NULL,
  `nomCLIENT` VARCHAR(45) NOT NULL,
  `prenomCLIENT` VARCHAR(45) NOT NULL,
  `idADRESSEdeLivraison` INT NOT NULL,
  `historiqueCOMMANDE` INT NOT NULL,
  `idADRESSEdeFacturation` INT NOT NULL,
  `ADRESSE_NumRue` INT ZEROFILL NOT NULL,
  `ADRESSE_nomRue` VARCHAR(45) NOT NULL,
  `ADRESSE_CodePostal` VARCHAR(45) NOT NULL,
  `ADRESSE_nomVille` VARCHAR(45) NOT NULL,
  `ADRESSE_nomPAYS` VARCHAR(45) NOT NULL,
  `COMMANDE_idCOMMANDE` INT NOT NULL,
  `COMMANDE_idCLIENT` INT NOT NULL,
  `COMMANDE_idARTICLE` INT NOT NULL,
  `COMMANDE_PRODUIT_idPRODUIT` INT ZEROFILL NOT NULL,
  `COMMANDE_PRODUIT_nomPRODUIT` VARCHAR(45) NOT NULL,
  `COMMANDE_PRODUIT_idFOURNISSEUR` INT ZEROFILL NOT NULL,
  `COMMANDE_PRODUIT_dateSortie` DATE NOT NULL,
  `COMMANDE_PRODUIT_idGAMME` INT ZEROFILL NOT NULL,
  `COMMANDE_PRODUIT_idPOINTURE` INT ZEROFILL NOT NULL,
  `COMMANDE_PRODUIT_dateDISPO` DATE NOT NULL,
  `COMMANDE_PRODUIT_dureeGarantieFOURNISSEUR` VARCHAR(45) NOT NULL,
  `COMMANDE_PRODUIT_dureeGarantieMagasin` VARCHAR(45) NOT NULL,
  `COMMANDE_PRODUIT_idCouleur` INT ZEROFILL NOT NULL,
  `COMMANDE_PRODUIT_GAMME_idGAMME` INT ZEROFILL NOT NULL,
  `COMMANDE_PRODUIT_GAMME_nomGAMME` VARCHAR(45) NOT NULL,
  `COMMANDE_PRODUIT_GAMME_dispoGAMME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCLIENT`, `historiqueCOMMANDE`, `idADRESSEdeLivraison`, `prenomCLIENT`, `nomCLIENT`, `idADRESSEdeFacturation`, `ADRESSE_NumRue`, `ADRESSE_nomRue`, `ADRESSE_CodePostal`, `ADRESSE_nomVille`, `ADRESSE_nomPAYS`, `COMMANDE_idCOMMANDE`, `COMMANDE_idCLIENT`, `COMMANDE_idARTICLE`, `COMMANDE_PRODUIT_idPRODUIT`, `COMMANDE_PRODUIT_nomPRODUIT`, `COMMANDE_PRODUIT_idFOURNISSEUR`, `COMMANDE_PRODUIT_dateSortie`, `COMMANDE_PRODUIT_idGAMME`, `COMMANDE_PRODUIT_idPOINTURE`, `COMMANDE_PRODUIT_dateDISPO`, `COMMANDE_PRODUIT_dureeGarantieFOURNISSEUR`, `COMMANDE_PRODUIT_dureeGarantieMagasin`, `COMMANDE_PRODUIT_idCouleur`, `COMMANDE_PRODUIT_GAMME_idGAMME`, `COMMANDE_PRODUIT_GAMME_nomGAMME`, `COMMANDE_PRODUIT_GAMME_dispoGAMME`),
  UNIQUE INDEX `nomCLIENT_UNIQUE` (`nomCLIENT` ASC),
  UNIQUE INDEX `prenomCLIENT_UNIQUE` (`prenomCLIENT` ASC),
  UNIQUE INDEX `idADRESSE_UNIQUE` (`idADRESSEdeLivraison` ASC),
  UNIQUE INDEX `historiqueCOMMANDE_UNIQUE` (`historiqueCOMMANDE` ASC),
  UNIQUE INDEX `idCLIENT_UNIQUE` (`idCLIENT` ASC),
  UNIQUE INDEX `idADRESSEdeFacturation_UNIQUE` (`idADRESSEdeFacturation` ASC),
  INDEX `fk_CLIENT_ADRESSE_idx` (`ADRESSE_NumRue` ASC, `ADRESSE_nomRue` ASC, `ADRESSE_CodePostal` ASC, `ADRESSE_nomVille` ASC, `ADRESSE_nomPAYS` ASC),
  INDEX `fk_CLIENT_COMMANDE1_idx` (`COMMANDE_idCOMMANDE` ASC, `COMMANDE_idCLIENT` ASC, `COMMANDE_idARTICLE` ASC, `COMMANDE_PRODUIT_idPRODUIT` ASC, `COMMANDE_PRODUIT_nomPRODUIT` ASC, `COMMANDE_PRODUIT_idFOURNISSEUR` ASC, `COMMANDE_PRODUIT_dateSortie` ASC, `COMMANDE_PRODUIT_idGAMME` ASC, `COMMANDE_PRODUIT_idPOINTURE` ASC, `COMMANDE_PRODUIT_dateDISPO` ASC, `COMMANDE_PRODUIT_dureeGarantieFOURNISSEUR` ASC, `COMMANDE_PRODUIT_dureeGarantieMagasin` ASC, `COMMANDE_PRODUIT_idCouleur` ASC, `COMMANDE_PRODUIT_GAMME_idGAMME` ASC, `COMMANDE_PRODUIT_GAMME_nomGAMME` ASC, `COMMANDE_PRODUIT_GAMME_dispoGAMME` ASC),
  CONSTRAINT `fk_CLIENT_ADRESSE`
    FOREIGN KEY (`ADRESSE_NumRue` , `ADRESSE_nomRue` , `ADRESSE_CodePostal` , `ADRESSE_nomVille` , `ADRESSE_nomPAYS`)
    REFERENCES `mydb`.`ADRESSE` (`NumRue` , `nomRue` , `CodePostal` , `nomVille` , `nomPAYS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CLIENT_COMMANDE1`
    FOREIGN KEY (`COMMANDE_idCOMMANDE` , `COMMANDE_idCLIENT` , `COMMANDE_idARTICLE` , `COMMANDE_PRODUIT_idPRODUIT` , `COMMANDE_PRODUIT_nomPRODUIT` , `COMMANDE_PRODUIT_idFOURNISSEUR` , `COMMANDE_PRODUIT_dateSortie` , `COMMANDE_PRODUIT_idGAMME` , `COMMANDE_PRODUIT_idPOINTURE` , `COMMANDE_PRODUIT_dateDISPO` , `COMMANDE_PRODUIT_dureeGarantieFOURNISSEUR` , `COMMANDE_PRODUIT_dureeGarantieMagasin` , `COMMANDE_PRODUIT_idCouleur` , `COMMANDE_PRODUIT_GAMME_idGAMME` , `COMMANDE_PRODUIT_GAMME_nomGAMME` , `COMMANDE_PRODUIT_GAMME_dispoGAMME`)
    REFERENCES `mydb`.`COMMANDE` (`idCOMMANDE` , `idCLIENT` , `idARTICLE` , `PRODUIT_idPRODUIT` , `PRODUIT_nomPRODUIT` , `PRODUIT_idFOURNISSEUR` , `PRODUIT_dateSortie` , `PRODUIT_idGAMME` , `PRODUIT_idPOINTURE` , `PRODUIT_dateDISPO` , `PRODUIT_dureeGarantieFOURNISSEUR` , `PRODUIT_dureeGarantieMagasin` , `PRODUIT_idCouleur` , `PRODUIT_GAMME_idGAMME` , `PRODUIT_GAMME_nomGAMME` , `PRODUIT_GAMME_dispoGAMME`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ARTICLE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ARTICLE` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ARTICLE` (
  `idARTICLE` INT NOT NULL,
  `nomPRODUIT` VARCHAR(45) NOT NULL,
  `pointurePRODUIT` INT NOT NULL,
  `couleurPRODUIT` VARCHAR(45) NOT NULL,
  `PRODUIT_idPRODUIT` INT ZEROFILL NOT NULL,
  `PRODUIT_nomPRODUIT` VARCHAR(45) NOT NULL,
  `PRODUIT_idFOURNISSEUR` INT ZEROFILL NOT NULL,
  `PRODUIT_dateSortie` DATE NOT NULL,
  `PRODUIT_idGAMME` INT ZEROFILL NOT NULL,
  `PRODUIT_idPOINTURE` INT ZEROFILL NOT NULL,
  `PRODUIT_dateDISPO` DATE NOT NULL,
  `PRODUIT_dureeGarantieFOURNISSEUR` VARCHAR(45) NOT NULL,
  `PRODUIT_dureeGarantieMagasin` VARCHAR(45) NOT NULL,
  `PRODUIT_idCouleur` INT ZEROFILL NOT NULL,
  `PRODUIT_GAMME_idGAMME` INT ZEROFILL NOT NULL,
  `PRODUIT_GAMME_nomGAMME` VARCHAR(45) NOT NULL,
  `PRODUIT_GAMME_dispoGAMME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pointurePRODUIT`, `nomPRODUIT`, `idARTICLE`, `couleurPRODUIT`, `PRODUIT_idPRODUIT`, `PRODUIT_nomPRODUIT`, `PRODUIT_idFOURNISSEUR`, `PRODUIT_dateSortie`, `PRODUIT_idGAMME`, `PRODUIT_idPOINTURE`, `PRODUIT_dateDISPO`, `PRODUIT_dureeGarantieFOURNISSEUR`, `PRODUIT_dureeGarantieMagasin`, `PRODUIT_idCouleur`, `PRODUIT_GAMME_idGAMME`, `PRODUIT_GAMME_nomGAMME`, `PRODUIT_GAMME_dispoGAMME`),
  UNIQUE INDEX `nomPRODUIT_UNIQUE` (`nomPRODUIT` ASC),
  UNIQUE INDEX `couleurPRODUIT_UNIQUE` (`couleurPRODUIT` ASC),
  INDEX `fk_ARTICLE_PRODUIT1_idx` (`PRODUIT_idPRODUIT` ASC, `PRODUIT_nomPRODUIT` ASC, `PRODUIT_idFOURNISSEUR` ASC, `PRODUIT_dateSortie` ASC, `PRODUIT_idGAMME` ASC, `PRODUIT_idPOINTURE` ASC, `PRODUIT_dateDISPO` ASC, `PRODUIT_dureeGarantieFOURNISSEUR` ASC, `PRODUIT_dureeGarantieMagasin` ASC, `PRODUIT_idCouleur` ASC, `PRODUIT_GAMME_idGAMME` ASC, `PRODUIT_GAMME_nomGAMME` ASC, `PRODUIT_GAMME_dispoGAMME` ASC),
  CONSTRAINT `fk_ARTICLE_PRODUIT1`
    FOREIGN KEY (`PRODUIT_idPRODUIT` , `PRODUIT_nomPRODUIT` , `PRODUIT_idFOURNISSEUR` , `PRODUIT_dateSortie` , `PRODUIT_idGAMME` , `PRODUIT_idPOINTURE` , `PRODUIT_dateDISPO` , `PRODUIT_dureeGarantieFOURNISSEUR` , `PRODUIT_dureeGarantieMagasin` , `PRODUIT_idCouleur` , `PRODUIT_GAMME_idGAMME` , `PRODUIT_GAMME_nomGAMME` , `PRODUIT_GAMME_dispoGAMME`)
    REFERENCES `mydb`.`PRODUIT` (`idPRODUIT` , `nomPRODUIT` , `idFOURNISSEUR` , `dateSortie` , `idGAMME` , `idPOINTURE` , `dateDISPO` , `dureeGarantieFOURNISSEUR` , `dureeGarantieMagasin` , `idCouleur` , `GAMME_idGAMME` , `GAMME_nomGAMME` , `GAMME_dispoGAMME`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
