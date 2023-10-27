SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for year_archivo
-- ----------------------------
DROP TABLE IF EXISTS archivo;
CREATE TABLE archivo  (
  year int NOT NULL,
  id int(11) NOT NULL,
  folio int(11) NOT NULL,
  bolcont varchar(255) NULL DEFAULT NULL,
  nobolconst varchar(255) NULL DEFAULT NULL,
  tparch varchar(255) NULL DEFAULT NULL,
  archivo varchar(255) NULL DEFAULT NULL,
  updatets timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Creación o actualización.',
  PRIMARY KEY (year, id, folio) USING BTREE,
  INDEX folio(folio) USING BTREE,
  CONSTRAINT archivo_ibfk_1 FOREIGN KEY (year, folio) REFERENCES registro (year, folio) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = 'Indice del archivo dictamenes y numerosboletas de remision' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
