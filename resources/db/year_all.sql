SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for year_registro
-- ----------------------------
DROP TABLE IF EXISTS registro;
CREATE TABLE registro  (
  iyear int NOT NULL,
  folio int(11) NOT NULL,
  status varchar(255) NULL DEFAULT NULL,
  expediente varchar(255) NULL DEFAULT NULL,
  delegacion varchar(255) NULL DEFAULT NULL,
  juzgado varchar(20) NULL DEFAULT NULL,
  documento varchar(255) NULL DEFAULT NULL,
  intervencion varchar(255) NULL DEFAULT NULL,
  thecho varchar(255) NULL DEFAULT NULL,
  LSN varchar(255) NULL DEFAULT NULL,
  via1 varchar(255) NULL DEFAULT NULL,
  via2 varchar(255) NULL DEFAULT NULL,
  col varchar(255) NULL DEFAULT NULL,
  refer varchar(255) NULL DEFAULT NULL,
  lhdeleg varchar(255) NULL DEFAULT NULL COMMENT 'Lugar de los hechos del daño',
  resolucion varchar(255) NULL DEFAULT NULL,
  conciliacion varchar(255) NULL DEFAULT NULL,
  conc_monto decimal(19, 2) NULL DEFAULT NULL,
  paga varchar(255) NULL DEFAULT NULL,
  como varchar(255) NULL DEFAULT NULL,
  conclusiones longtext NULL,
  notas longtext NULL,
  notapvm longtext NULL,
  notapvbim longtext NULL,
  notasup longtext NULL,
  fhhechos datetime(0) NULL DEFAULT NULL,
  fhresguardo datetime(0) NULL DEFAULT NULL,
  fhinicio datetime(0) NULL DEFAULT NULL,
  fhpreventivo datetime(0) NULL DEFAULT NULL,
  fhdefinitivo datetime(0) NULL DEFAULT NULL,
  fhentrega datetime(0) NULL DEFAULT NULL,
  fhaudiencia datetime(0) NULL DEFAULT NULL,
  fhsol_mec datetime(0) NULL DEFAULT NULL,
  fhintera_pvm datetime(0) NULL DEFAULT NULL,
  fhrecdic_pvm datetime(0) NULL DEFAULT NULL,
  fhsol_pvbim datetime(0) NULL DEFAULT NULL,
  fhintera_pvbim datetime(0) NULL DEFAULT NULL,
  fhrecdic_pvbim datetime(0) NULL DEFAULT NULL,
  juez_sol varchar(255) NULL DEFAULT NULL,
  sup_sol varchar(255) NULL DEFAULT NULL,
  sup_res varchar(255) NULL DEFAULT NULL,
  juez_res varchar(255) NULL DEFAULT NULL,
  coor_sol varchar(255) NULL DEFAULT NULL,
  perito varchar(255) NULL DEFAULT NULL,
  coor_res varchar(255) NULL DEFAULT NULL,
  sup_sol_val varchar(255) NULL DEFAULT NULL,
  juez_sol_val varchar(255) NULL DEFAULT NULL,
  coor_sol_val varchar(255) NULL DEFAULT NULL,
  coor_res_val varchar(255) NULL DEFAULT NULL,
  permecasig varchar(255) NULL DEFAULT NULL,
  pervalasig varchar(255) NULL DEFAULT NULL,
  adsc varchar(255) NULL DEFAULT NULL,
  pvbim varchar(255) NULL DEFAULT NULL,
  dict varchar(255) NULL DEFAULT NULL,
  pvm varchar(255) NULL DEFAULT NULL,
  extt tinyint(4) NULL DEFAULT NULL COMMENT 'Extensión de tiempo',
  updatets timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Creación o actualización.',
  PRIMARY KEY (iyear, folio) USING BTREE
  -- ,UNIQUE INDEX folio(folio) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = DYNAMIC;


/** *********************** */
-- ----------------------------
-- Table structure for year_vehiculos
-- ----------------------------
DROP TABLE IF EXISTS vehiculos;
CREATE TABLE vehiculos  (
  iyear int NOT NULL,
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
  PRIMARY KEY (iyear, id, folio) USING BTREE,
  INDEX folio(folio) USING BTREE,
  CONSTRAINT vehiculos_ibfk_1 FOREIGN KEY (iyear, folio) REFERENCES registro (iyear, folio) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = DYNAMIC;


/** *********************** */
-- ----------------------------
-- Table structure for year_inmuebles
-- ----------------------------
DROP TABLE IF EXISTS inmuebles;
CREATE TABLE inmuebles  (
  iyear int NOT NULL,
  id int(11) NOT NULL,
  folio int(11) NOT NULL,
  cantidadpvbimx int(11) NULL DEFAULT NULL,
  objetopvbimx varchar(255) NULL DEFAULT NULL,
  montopvbimx decimal(19, 2) NULL DEFAULT NULL,
  duenopvbimx varchar(255) NULL DEFAULT NULL,
  updatets timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Creación o actualización.',
  PRIMARY KEY (iyear, id, folio) USING BTREE,
  INDEX folio(folio) USING BTREE,
  CONSTRAINT inmuebles_ibfk_1 FOREIGN KEY (iyear, folio) REFERENCES registro (iyear, folio) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = DYNAMIC;

/** *********************** */
-- ----------------------------
-- Table structure for year_archivo
-- ----------------------------
DROP TABLE IF EXISTS archivo;
CREATE TABLE archivo  (
  iyear int NOT NULL,
  id int(11) NOT NULL,
  folio int(11) NOT NULL,
  bolcont varchar(255) NULL DEFAULT NULL,
  nobolconst varchar(255) NULL DEFAULT NULL,
  tparch varchar(255) NULL DEFAULT NULL,
  archivo varchar(255) NULL DEFAULT NULL,
  updatets timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Creación o actualización.',
  PRIMARY KEY (iyear, id, folio) USING BTREE,
  INDEX folio(folio) USING BTREE,
  CONSTRAINT archivo_ibfk_1 FOREIGN KEY (iyear, folio) REFERENCES registro (iyear, folio) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 COMMENT = 'Indice del archivo dictamenes y numerosboletas de remision' ROW_FORMAT = DYNAMIC;


SET FOREIGN_KEY_CHECKS = 1;

