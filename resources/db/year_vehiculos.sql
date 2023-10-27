SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for year_vehiculos
-- ----------------------------
DROP TABLE IF EXISTS vehiculos;
CREATE TABLE vehiculos  (
  year int NOT NULL,
  id int(11) NOT NULL,
  folio int(11) NOT NULL,
  numvehx tinyint(4) NULL DEFAULT NULL,
  caractx varchar(255) NULL DEFAULT NULL,
  marcax varchar(255) NULL DEFAULT NULL,
  tipox varchar(255) NULL DEFAULT NULL,
  modelox smallint(6) NULL DEFAULT NULL,
  colorx varchar(255) NULL DEFAULT NULL,
  placasx varchar(255) NULL DEFAULT NULL,
  conductorx varchar(255) NULL DEFAULT NULL,
  generox varchar(255) NULL DEFAULT NULL,
  depositox varchar(255) NULL DEFAULT NULL,
  valuacionx decimal(19, 2) NULL DEFAULT NULL,
  responsablex varchar(255) NULL DEFAULT NULL,
  rtx varchar(255) NULL DEFAULT NULL,
  mecanicox varchar(255) NULL DEFAULT NULL,
  valpvmx decimal(19, 2) NULL DEFAULT NULL,
  condra varchar(255) NULL DEFAULT NULL,
  libveh varchar(255) NULL DEFAULT NULL,
  fhliberacion date NULL DEFAULT NULL COMMENT 'Fecha de liberación del vehiculo',
  recofliberacion varchar(255) NULL DEFAULT NULL,
  hrsarrst tinyint(4) NULL DEFAULT NULL,
  multa varchar(19) NULL DEFAULT NULL COMMENT 'multa en pesos',
  Edad tinyint(4) NULL DEFAULT NULL,
  asegurado char(2) NULL DEFAULT NULL COMMENT 'Si/No ¿Cuenta con Seguro?',
  seguro varchar(255) NULL DEFAULT NULL COMMENT 'Compañia de Seguro',
  updatets timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Creación o actualización.',
  PRIMARY KEY (year, id, folio) USING BTREE,
  INDEX folio(folio) USING BTREE,
  CONSTRAINT vehiculos_ibfk_1 FOREIGN KEY (year, folio) REFERENCES registro (year, folio) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
