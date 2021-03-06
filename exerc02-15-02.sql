-- MySQL Script generated by MySQL Workbench
-- ter 16 fev 2021 13:11:05
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_pizzaria_legal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_pizzaria_legal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_pizzaria_legal` ;
USE `db_pizzaria_legal` ;

-- -----------------------------------------------------
-- Table `db_pizzaria_legal`.`tb_pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pizzaria_legal`.`tb_pizza` (
  `id_pizza` INT NOT NULL AUTO_INCREMENT,
  `valor` DOUBLE NOT NULL,
  `nome` VARCHAR(10) NOT NULL,
  `tipo` VARCHAR(10) NOT NULL,
  `tamanho` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id_pizza`))
ENGINE = InnoDB
COMMENT = 'tentando fazer uma tabela mer.';


-- -----------------------------------------------------
-- Table `db_pizzaria_legal`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pizzaria_legal`.`tb_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `valor` DOUBLE NOT NULL,
  `nome` VARCHAR(10) NOT NULL,
  `tipo` VARCHAR(10) NULL,
  `fk_id_pizza` INT NOT NULL,
  PRIMARY KEY (`id_categoria`),
  INDEX `fk_tb_categoria_tb_pizza_idx` (`fk_id_pizza` ASC) VISIBLE,
  CONSTRAINT `fk_tb_categoria_tb_pizza`
    FOREIGN KEY (`fk_id_pizza`)
    REFERENCES `db_pizzaria_legal`.`tb_pizza` (`id_pizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
-- tabela1
insert into db_pizzaria_legal.tb_pizza (valor,nome,tipo,tamanho)
values(50.00,"mussarela","salgado","medio");
insert into db_pizzaria_legal.tb_pizza (valor,nome,tipo,tamanho)
values(55.00,"portuguesa","salgado","medio");
insert into db_pizzaria_legal.tb_pizza (valor,nome,tipo,tamanho)
values(60.00,"calabreza","salgado","medio");
insert into db_pizzaria_legal.tb_pizza (valor,nome,tipo,tamanho)
values(70.00,"chocolate","doce","medio");
insert into db_pizzaria_legal.tb_pizza (valor,nome,tipo,tamanho)
values(80.00,"mussarela","salgado","grande");
insert into db_pizzaria_legal.tb_pizza (valor,nome,tipo,tamanho)
values(150.00,"portuguesa","salgado","grande");
insert into db_pizzaria_legal.tb_pizza (valor,nome,tipo,tamanho)
values(90.00,"calabresa","salgado","grande");
insert into db_pizzaria_legal.tb_pizza (valor,nome,tipo,tamanho)
values(150.00,"chocolate","doce","grande");
-- tabela2
insert into db_pizzaria_legal.tb_categoria(valor,nome,tipo,fk_id_pizza)
values(15,"mussarela","salgado",1);
insert into db_pizzaria_legal.tb_categoria(valor,nome,tipo,fk_id_pizza)
values(25,"portuguesa","salgado",2);
insert into db_pizzaria_legal.tb_categoria(valor,nome,tipo,fk_id_pizza)
values(35,"calabresa","salgado",3);
insert into db_pizzaria_legal.tb_categoria(valor,nome,tipo,fk_id_pizza)
values(45,"chocolate","salgado",4);
insert into db_pizzaria_legal.tb_categoria(valor,nome,tipo,fk_id_pizza)
values(55,"outros","salgado",5);

select * from tb_categoria;
select* from tb_categoria where valor > 45.00;
select* from tb_categoria where valor between 29.00 and 60.00;
select* from tb_categoria where nome like 'c%';
select * from tb_categoria INNER JOIN tb_pizza on tb_categoria.fk_id_pizza = tb_pizza.id_pizza;
select * from tb_categoria where tipo = "salgado"; 
select * from tb_pizza where tipo = "salgado"; 
