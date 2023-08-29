SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for year_vehiculos
-- ----------------------------
DROP TABLE IF EXISTS `2021_vehiculos`;
CREATE TABLE `2021_vehiculos`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `folio` int(11) NOT NULL,
  `numvehx` tinyint(4) NULL DEFAULT NULL,
  `caractx` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `marcax` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tipox` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `modelox` smallint(6) NULL DEFAULT NULL,
  `colorx` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `placasx` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `conductorx` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `generox` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `depositox` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `valuacionx` decimal(19, 2) NULL DEFAULT NULL,
  `responsablex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `rtx` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mecanicox` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `valpvmx` decimal(19, 2) NULL DEFAULT NULL,
  `condra` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `libveh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `fhliberacion` date NULL DEFAULT NULL COMMENT 'Fecha de liberación del vehiculo',
  `recofliberacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `hrsarrst` tinyint(4) NULL DEFAULT NULL,
  `multa` varchar(19) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'multa en pesos',
  `Edad` tinyint(4) NULL DEFAULT NULL,
  `asegurado` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'Si/No ¿Cuenta con Seguro?',
  `seguro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'Compañia de Seguro',
  `updatets` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Creación o actualización.',
  PRIMARY KEY (`Id`, `folio`) USING BTREE,
  INDEX `folio`(`folio`) USING BTREE,
  CONSTRAINT `2021_vehiculos_ibfk_1` FOREIGN KEY (`folio`) REFERENCES `2021_registro` (`folio`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
