SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for year_inmuebles
-- ----------------------------
DROP TABLE IF EXISTS inmuebles;
CREATE TABLE inmuebles  (
  year int NOT NULL,
  id int(11) NOT NULL,
  folio int(11) NOT NULL,
  cantidadpvbimx int(11) NULL DEFAULT NULL,
  objetopvbimx varchar(255) NULL DEFAULT NULL,
  montopvbimx decimal(19, 2) NULL DEFAULT NULL,
  duenopvbimx varchar(255) NULL DEFAULT NULL,
  updatets timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Creación o actualización.',
  PRIMARY KEY (year, id, folio) USING BTREE,
  INDEX folio(folio) USING BTREE,
  CONSTRAINT inmuebles_ibfk_1 FOREIGN KEY (year, folio) REFERENCES registro (year, folio) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
