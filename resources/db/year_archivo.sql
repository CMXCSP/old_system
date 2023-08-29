SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for year_archivo
-- ----------------------------
DROP TABLE IF EXISTS `2021_archivo`;
CREATE TABLE `2021_archivo`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `folio` int(11) NOT NULL,
  `bolcont` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nobolconst` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tparch` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `archivo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updatets` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Creación o actualización.',
  PRIMARY KEY (`Id`, `folio`) USING BTREE,
  INDEX `folio`(`folio`) USING BTREE,
  CONSTRAINT `2021_archivo_ibfk_1` FOREIGN KEY (`folio`) REFERENCES `2021_registro` (`folio`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'Indice del archivo dictamenes y numerosboletas de remision' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
