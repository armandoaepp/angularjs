/*
Navicat MySQL Data Transfer

Source Server         : LOCAL
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : bd_rastreo

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-01-09 19:05:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acceso_sistema
-- ----------------------------
DROP TABLE IF EXISTS `acceso_sistema`;
CREATE TABLE `acceso_sistema` (
  `idaccesosistema` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `idcontrol` int(11) NOT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idaccesosistema`,`idcontrol`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='	';

-- ----------------------------
-- Records of acceso_sistema
-- ----------------------------
INSERT INTO `acceso_sistema` VALUES ('1', '10', '1', 'Ubicación actual', '1');
INSERT INTO `acceso_sistema` VALUES ('2', '10', '2', 'Ubicación por zona', '1');
INSERT INTO `acceso_sistema` VALUES ('3', '10', '3', 'Geocerca', '1');
INSERT INTO `acceso_sistema` VALUES ('4', '10', '4', 'Reportes', '1');
INSERT INTO `acceso_sistema` VALUES ('5', '10', '5', 'Zona norte', '1');
INSERT INTO `acceso_sistema` VALUES ('6', '10', '6', 'Zona centro', '1');
INSERT INTO `acceso_sistema` VALUES ('7', '10', '7', 'Zona sur', '1');
INSERT INTO `acceso_sistema` VALUES ('8', '10', '8', 'Consumo de combustible', '1');
INSERT INTO `acceso_sistema` VALUES ('9', '10', '9', 'Recorrido por horas', '1');
INSERT INTO `acceso_sistema` VALUES ('10', '10', '10', 'Botón de pánico', '1');
INSERT INTO `acceso_sistema` VALUES ('11', '10', '11', 'Herramientas', '1');
INSERT INTO `acceso_sistema` VALUES ('12', '10', '12', '1', '1');
INSERT INTO `acceso_sistema` VALUES ('13', '10', '13', '2', '1');
INSERT INTO `acceso_sistema` VALUES ('14', '10', '14', '3', '1');
INSERT INTO `acceso_sistema` VALUES ('15', '10', '15', '4', '1');
INSERT INTO `acceso_sistema` VALUES ('16', '10', '16', '-', '1');

-- ----------------------------
-- Table structure for acceso_vehiculo
-- ----------------------------
DROP TABLE IF EXISTS `acceso_vehiculo`;
CREATE TABLE `acceso_vehiculo` (
  `idaccesovehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `idvehiculo` int(11) NOT NULL,
  `observacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idaccesovehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of acceso_vehiculo
-- ----------------------------

-- ----------------------------
-- Table structure for activar
-- ----------------------------
DROP TABLE IF EXISTS `activar`;
CREATE TABLE `activar` (
  `idactivar` int(11) NOT NULL AUTO_INCREMENT,
  `idgps` int(11) NOT NULL,
  `idchip` int(11) NOT NULL,
  `registro` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idactivar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of activar
-- ----------------------------

-- ----------------------------
-- Table structure for bitacora
-- ----------------------------
DROP TABLE IF EXISTS `bitacora`;
CREATE TABLE `bitacora` (
  `idbitacora` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `idtipooperacion` int(11) DEFAULT NULL,
  `registro` datetime NOT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idbitacora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of bitacora
-- ----------------------------

-- ----------------------------
-- Table structure for cambio
-- ----------------------------
DROP TABLE IF EXISTS `cambio`;
CREATE TABLE `cambio` (
  `idcambio` int(11) NOT NULL AUTO_INCREMENT,
  `idmoneda` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `valor` decimal(10,0) NOT NULL COMMENT 'http://www.sbs.gob.pe/',
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idcambio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cambio
-- ----------------------------

-- ----------------------------
-- Table structure for caracteristica
-- ----------------------------
DROP TABLE IF EXISTS `caracteristica`;
CREATE TABLE `caracteristica` (
  `idcaracteristica` int(11) NOT NULL AUTO_INCREMENT,
  `idtipocaracteristica` int(11) NOT NULL,
  `idtipoentidad` int(11) NOT NULL,
  `identidad` int(11) NOT NULL,
  `caracteristica` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `referencia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idcaracteristica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of caracteristica
-- ----------------------------

-- ----------------------------
-- Table structure for cellocator
-- ----------------------------
DROP TABLE IF EXISTS `cellocator`;
CREATE TABLE `cellocator` (
  `idrastreo` int(11) NOT NULL AUTO_INCREMENT,
  `RMUId` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `CellDateTime` datetime DEFAULT NULL,
  `GPSX` int(11) DEFAULT NULL,
  `GPSY` int(11) DEFAULT NULL,
  `GPSDateTime` datetime DEFAULT NULL,
  `Speed` int(11) DEFAULT NULL,
  `Direction` int(11) DEFAULT NULL,
  `NumOfSat` int(11) DEFAULT NULL,
  `LocQuality` int(11) DEFAULT NULL,
  `EngineOn` int(11) DEFAULT NULL,
  `ExtInputA` int(11) DEFAULT NULL,
  `ExtInputB` int(11) DEFAULT NULL,
  `ExtInputC` int(11) DEFAULT NULL,
  `ExtInputD` int(11) DEFAULT NULL,
  `ExtInputE` int(11) DEFAULT NULL,
  `ExtInputF` int(11) DEFAULT NULL,
  `VersionNum` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `InputVoltage` int(11) DEFAULT NULL,
  `BackBatVoltage` int(11) DEFAULT NULL,
  `GPSPDOP` smallint(6) DEFAULT NULL,
  `GPSHEIGHT` int(11) DEFAULT NULL,
  `NetworkTypeId` smallint(6) DEFAULT NULL,
  `InsertDate` datetime DEFAULT NULL,
  `UTCTime` datetime DEFAULT NULL,
  `DriverId` mediumtext COLLATE utf8_spanish_ci,
  `TxReasonId` int(11) DEFAULT NULL,
  `AlertReason` int(11) DEFAULT NULL,
  `Hibernation` int(11) DEFAULT NULL,
  `HRNetwork` int(11) DEFAULT NULL,
  `MileCounter` int(11) DEFAULT NULL,
  `GPSMode1` int(11) DEFAULT NULL,
  `GPSMode2` int(11) DEFAULT NULL,
  `OutputA` int(11) DEFAULT NULL,
  `OutputB` int(11) DEFAULT NULL,
  `OutputC` int(11) DEFAULT NULL,
  `OutputD` int(11) DEFAULT NULL,
  `OptionalInput` int(11) DEFAULT NULL,
  `GPSCommStatus` int(11) DEFAULT NULL,
  `RawData` varchar(2000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `PLMN` int(11) DEFAULT NULL,
  `SN` int(11) DEFAULT NULL,
  `MessageType` int(11) DEFAULT NULL,
  `MsgProtocol` smallint(6) DEFAULT NULL,
  `TripId` int(11) DEFAULT NULL,
  `ManeuverId` int(11) DEFAULT NULL,
  `ManeuverUsage` smallint(6) DEFAULT NULL,
  `AccidentBuffer` int(11) DEFAULT NULL,
  `ItemId` mediumtext COLLATE utf8_spanish_ci,
  PRIMARY KEY (`idrastreo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cellocator
-- ----------------------------

-- ----------------------------
-- Table structure for chip
-- ----------------------------
DROP TABLE IF EXISTS `chip`;
CREATE TABLE `chip` (
  `idchip` int(11) NOT NULL AUTO_INCREMENT,
  `idplan` int(11) DEFAULT NULL,
  `idpersonajuridica` int(11) NOT NULL COMMENT 'codigo de la persona que es el operador movil',
  `simcard` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `numero` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idchip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of chip
-- ----------------------------

-- ----------------------------
-- Table structure for comprobante
-- ----------------------------
DROP TABLE IF EXISTS `comprobante`;
CREATE TABLE `comprobante` (
  `idcomprobante` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonajuridica` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idcomprobante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of comprobante
-- ----------------------------

-- ----------------------------
-- Table structure for conductor
-- ----------------------------
DROP TABLE IF EXISTS `conductor`;
CREATE TABLE `conductor` (
  `idconductor` int(11) NOT NULL AUTO_INCREMENT,
  `idvehiculo` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idtiporelacion` int(11) NOT NULL,
  `registro` datetime NOT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idconductor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of conductor
-- ----------------------------

-- ----------------------------
-- Table structure for configuracion
-- ----------------------------
DROP TABLE IF EXISTS `configuracion`;
CREATE TABLE `configuracion` (
  `idconfiguracion` int(11) NOT NULL AUTO_INCREMENT,
  `idtipoobjeto` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ayuda` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(2) NOT NULL,
  PRIMARY KEY (`idconfiguracion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of configuracion
-- ----------------------------
INSERT INTO `configuracion` VALUES ('1', '1', 'Clave por defecto', 'Ingrese valores alfanumericos', '123+-*', 'Contraseña por defecto que se asigna a usuarios', '1');
INSERT INTO `configuracion` VALUES ('2', '2', 'Empresa principal', 'Codigo de la empresa', '1', 'Codigo de la empresa principal', '1');

-- ----------------------------
-- Table structure for control
-- ----------------------------
DROP TABLE IF EXISTS `control`;
CREATE TABLE `control` (
  `idcontrol` int(11) NOT NULL AUTO_INCREMENT,
  `idcontrolpadre` int(11) DEFAULT NULL,
  `idtipocontrol` int(11) DEFAULT NULL,
  `jerarquia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcontrol`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of control
-- ----------------------------
INSERT INTO `control` VALUES ('1', '0', '2', '1001', 'Ubicación actual', '/administracion/usuario', 'icon-location', '1');
INSERT INTO `control` VALUES ('2', '0', '2', '1002', 'Ubicación por zona', '/administracion/vehiculo', 'icon-earth', '1');
INSERT INTO `control` VALUES ('3', '0', '2', '1003', 'Geocerca', '/administracion/menu3', 'icon-podcast', '1');
INSERT INTO `control` VALUES ('4', '0', '2', '1004', 'Reportes', '/administracion/menu4', 'icon-file-pdf', '1');
INSERT INTO `control` VALUES ('5', '2', '2', '100201', 'Zona norte', 'alert(\'ubicacion1\');', ' ', '1');
INSERT INTO `control` VALUES ('6', '2', '2', '100202', 'Zona centro', 'alert(\'ubicacion2\');', ' ', '1');
INSERT INTO `control` VALUES ('7', '2', '2', '100203', 'Zona sur', 'alert(\'ubicacion3\');', ' ', '1');
INSERT INTO `control` VALUES ('8', '4', '2', '100401', 'Consumo de combustible', 'alert(\'reporte1\');', ' ', '1');
INSERT INTO `control` VALUES ('9', '4', '2', '100402', 'Recorrido por horas', 'alert(\'reporte2\');', ' ', '1');
INSERT INTO `control` VALUES ('10', '4', '2', '100403', 'Botón de pánico', 'alert(\'reporte3\');', ' ', '1');
INSERT INTO `control` VALUES ('12', '0', '4', '100501', 'Mis Vehiculos', '#/vehiculo/listar', 'icon-truck', '1');
INSERT INTO `control` VALUES ('13', '0', '4', '100502', 'Mis Usuarios', '#/usuario/nuevo', 'icon-user', '1');
INSERT INTO `control` VALUES ('14', '0', '4', '100503', 'Aside nro 03', '#/', 'icon-cogs', '1');
INSERT INTO `control` VALUES ('15', '0', '4', '100504', 'Aside nro 04', '#/', 'icon-database', '1');

-- ----------------------------
-- Table structure for control_cerca
-- ----------------------------
DROP TABLE IF EXISTS `control_cerca`;
CREATE TABLE `control_cerca` (
  `idcontrolcerca` int(11) NOT NULL AUTO_INCREMENT,
  `idgeocerca` int(11) NOT NULL,
  `idvehiculo` int(11) NOT NULL,
  `notificar` int(11) NOT NULL,
  `registro` datetime NOT NULL COMMENT 'indicar la fecha y hora en que el vehiculo salio o ingreso de la geocerca',
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL COMMENT 'indicar si el vehiculo ingreso(1) o salio(0) de la geocerca',
  PRIMARY KEY (`idcontrolcerca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of control_cerca
-- ----------------------------

-- ----------------------------
-- Table structure for ctacte
-- ----------------------------
DROP TABLE IF EXISTS `ctacte`;
CREATE TABLE `ctacte` (
  `idctacte` int(11) NOT NULL AUTO_INCREMENT,
  `idcuenta` int(11) DEFAULT NULL,
  `idmoneda` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL COMMENT 'Contador de cuotas',
  `cuotas` int(11) DEFAULT NULL COMMENT 'Numero de cuotas en que se fraccionara el pago',
  `importe` decimal(10,0) DEFAULT NULL,
  `fechavencimiento` datetime DEFAULT NULL,
  `fechapago` datetime DEFAULT NULL,
  `fechaemision` datetime DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  `glosa` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idctacte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of ctacte
-- ----------------------------

-- ----------------------------
-- Table structure for ctactecomprobante
-- ----------------------------
DROP TABLE IF EXISTS `ctactecomprobante`;
CREATE TABLE `ctactecomprobante` (
  `idctactecomprobante` int(11) NOT NULL AUTO_INCREMENT,
  `idctacte` int(11) DEFAULT NULL,
  `idcomprobante` int(11) DEFAULT NULL,
  `numero` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idctactecomprobante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of ctactecomprobante
-- ----------------------------

-- ----------------------------
-- Table structure for ctactedetalle
-- ----------------------------
DROP TABLE IF EXISTS `ctactedetalle`;
CREATE TABLE `ctactedetalle` (
  `idctactedetalle` int(11) NOT NULL AUTO_INCREMENT,
  `idctacte` int(11) NOT NULL,
  `idservicio` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `costo` decimal(10,0) NOT NULL,
  `igv` decimal(10,0) NOT NULL,
  `importe` decimal(10,0) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idctactedetalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of ctactedetalle
-- ----------------------------

-- ----------------------------
-- Table structure for ctactenumeracion
-- ----------------------------
DROP TABLE IF EXISTS `ctactenumeracion`;
CREATE TABLE `ctactenumeracion` (
  `idctactenumeracion` int(11) NOT NULL AUTO_INCREMENT,
  `idcomprobante` int(11) NOT NULL,
  `serie` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `numero` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idctactenumeracion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of ctactenumeracion
-- ----------------------------

-- ----------------------------
-- Table structure for ctactepago
-- ----------------------------
DROP TABLE IF EXISTS `ctactepago`;
CREATE TABLE `ctactepago` (
  `idctactepago` int(11) NOT NULL AUTO_INCREMENT,
  `idctacte` int(11) DEFAULT NULL,
  `idformapago` int(11) DEFAULT NULL,
  `nrooperacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechapago` datetime DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  `importe` decimal(10,0) DEFAULT NULL,
  `glosa` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idctactepago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of ctactepago
-- ----------------------------

-- ----------------------------
-- Table structure for ctacteproducto
-- ----------------------------
DROP TABLE IF EXISTS `ctacteproducto`;
CREATE TABLE `ctacteproducto` (
  `idctacteproducto` int(11) NOT NULL AUTO_INCREMENT,
  `importe` decimal(10,0) DEFAULT NULL,
  `afectoigv` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idctacteproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of ctacteproducto
-- ----------------------------

-- ----------------------------
-- Table structure for cuenta
-- ----------------------------
DROP TABLE IF EXISTS `cuenta`;
CREATE TABLE `cuenta` (
  `idcuenta` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) NOT NULL,
  `idtiporelacion` int(11) NOT NULL,
  `numero` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idcuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cuenta
-- ----------------------------
INSERT INTO `cuenta` VALUES ('18', '24', '2', '20480678592', '1');

-- ----------------------------
-- Table structure for forma_pago
-- ----------------------------
DROP TABLE IF EXISTS `forma_pago`;
CREATE TABLE `forma_pago` (
  `idformapago` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idformapago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of forma_pago
-- ----------------------------

-- ----------------------------
-- Table structure for geocerca
-- ----------------------------
DROP TABLE IF EXISTS `geocerca`;
CREATE TABLE `geocerca` (
  `idgeocerca` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) NOT NULL COMMENT 'Codigo de la persona que crea la geocerca, para este caso será el código del cliente del servicio de rastreo',
  `idtiporelacion` int(11) NOT NULL COMMENT 'Tipo de relacion de la persona con la empresa de rastreo, para este caso sera cliente',
  `coordenadas` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `referencia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idgeocerca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of geocerca
-- ----------------------------

-- ----------------------------
-- Table structure for gps
-- ----------------------------
DROP TABLE IF EXISTS `gps`;
CREATE TABLE `gps` (
  `idgps` int(11) NOT NULL AUTO_INCREMENT,
  `idmodelo` int(11) NOT NULL,
  `idchip` int(11) NOT NULL,
  `serie` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `hardware` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `software` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modem` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `idpersona` int(11) DEFAULT NULL COMMENT 'codigo de la persona que es cliente del servicio',
  `idtiporelacion` int(11) DEFAULT NULL COMMENT 'tipo de relacion cliente',
  PRIMARY KEY (`idgps`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='			';

-- ----------------------------
-- Records of gps
-- ----------------------------

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca` (
  `idmarca` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idmarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of marca
-- ----------------------------

-- ----------------------------
-- Table structure for modelo
-- ----------------------------
DROP TABLE IF EXISTS `modelo`;
CREATE TABLE `modelo` (
  `idmodelo` int(11) NOT NULL AUTO_INCREMENT,
  `idmarca` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idmodelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of modelo
-- ----------------------------

-- ----------------------------
-- Table structure for moneda
-- ----------------------------
DROP TABLE IF EXISTS `moneda`;
CREATE TABLE `moneda` (
  `idmoneda` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idmoneda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of moneda
-- ----------------------------

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=5953 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO `persona` VALUES ('1', 'INNOVA TI GROUP S.A.C', '2013-08-05', '2', '1');
INSERT INTO `persona` VALUES ('24', 'CATMEDIA SAC', '0000-00-00', '2', '1');
INSERT INTO `persona` VALUES ('25', 'Jose Luis', '0000-00-00', '1', '1');
INSERT INTO `persona` VALUES ('26', 'Jose Luis Damian Saavedra', '0000-00-00', '1', '1');
INSERT INTO `persona` VALUES ('27', 'Jose Alberto Damian Saavedra', '0000-00-00', '1', '1');
INSERT INTO `persona` VALUES ('28', 'Armando Enrique  Pisfil Puemape', '2009-08-12', '1', '1');
INSERT INTO `persona` VALUES ('29', 'PlaneaTec PlaneaTec', '2010-02-09', '1', '1');
INSERT INTO `persona` VALUES ('30', 'CRISTIAN CAMILO RODRIGUEZ GARCIA', '2010-09-07', '2', '1');
INSERT INTO `persona` VALUES ('31', 'MEYLIN VIVIANA GARCIA FERNANDEZ', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('32', 'YEFERSON RIKI GONZALEZ MARTINEZ', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('33', 'MAURICIO JAVIER ok LOPEZ GONZALEZ', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('34', 'MONICA ANDREA PEREZ PEREZ', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('35', 'RENE ALBERTO MARTINEZ LOPEZ', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('36', 'OSCAR JAVIER SANCHEZ RODRIGUEZ', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('37', 'LUIS FELIPE FERNANDEZ SANCHEZ', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('38', 'TATIANA GOMEZ JIMENEZ', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('39', 'JUAN CARLOS HERNANDEZ RUIZ', '2010-02-16', '2', '1');
INSERT INTO `persona` VALUES ('40', 'DIANA STEFANIA DIAZ GOMEZ', '2010-05-22', '2', '1');
INSERT INTO `persona` VALUES ('41', 'CLAUDIA SOCORRO RAMIREZ MARTIN', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('42', 'ELKIN ALVAREZ ALONSO', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('43', 'LILIANA STEFANNY CHEN DIAZ', '2009-11-19', '2', '1');
INSERT INTO `persona` VALUES ('44', 'CARLOS ESTEBAN JIMENEZ HERNANDEZ', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('45', 'JUAN MANUEL TORRES MORENO', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('46', 'CHRISTIAN MIGUEL SINGH GUTIERREZ', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('47', 'HECTOR GENTIL RUIZ AGUIRRE', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('48', 'NELLY YAZMIN ROJAS ALVAREZ', '2009-06-26', '2', '1');
INSERT INTO `persona` VALUES ('49', 'DAMARIS ROMERO GIL', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('50', 'AMANDA CASTRO SALAZAR', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('51', 'ANGIE LORENA FLORES IBAÑEZ', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('52', 'JOSE DENIS MUÑOZ MUÑOZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('53', 'KAROL JOE GUTIERREZ URIARTE', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('54', 'CARLOS ALBEIRO VARGAS BLANCO', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('55', 'HERNAN ALEXIS DA SILVA PINEDO', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('56', 'JORGE ALIRIO MORALES SAEZ', '2009-11-17', '2', '1');
INSERT INTO `persona` VALUES ('57', 'YESNARDA NAIROBI CASTILLO ORTIZ DE ZARATE', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('58', 'DIANA CAROLINA MARTIN ORTIZ', '2009-09-26', '2', '1');
INSERT INTO `persona` VALUES ('59', 'HAROLD ORLANDO MORENO ANGULO', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('60', 'ZULLY JOHANA SILVA UGARTE', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('61', 'JULIAN CAMILO ORTIZ DIEZ', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('62', 'MARIA PEREIRA RAMOS', '2010-08-23', '2', '1');
INSERT INTO `persona` VALUES ('63', 'FLOR REYES SAENZ', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('64', 'JUAN RAMOS QUINTANA', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('65', 'ARMANDO SUAREZ MARQUINEZ', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('66', 'ENRIQUE MEDINA ROMERO', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('67', 'VERONICA LIN ORTEGA', '2010-06-27', '2', '1');
INSERT INTO `persona` VALUES ('68', 'MARIA WANG SANTAMARIA', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('69', 'FLORES HERRERA DOMINGUEZ', '2009-12-28', '2', '1');
INSERT INTO `persona` VALUES ('70', 'TOMASA CRUZ RUIZ DE AZUA', '2009-07-20', '2', '1');
INSERT INTO `persona` VALUES ('71', 'CRISTIAN CAMILO MENDEZ SANZ', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('72', 'MEYLIN VIVIANA MARIN ARMENTIA', '2009-08-23', '2', '1');
INSERT INTO `persona` VALUES ('73', 'YEFERSON RIKI FERREIRA OCHOA', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('74', 'MAURICIO JAVIER MENDOZA DELGADO', '2010-02-13', '2', '1');
INSERT INTO `persona` VALUES ('75', 'MONICA ANDREA VASQUEZ RAMIREZ', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('76', 'RENE ALBERTO CABRERA SANTOS', '2010-03-03', '2', '1');
INSERT INTO `persona` VALUES ('77', 'OSCAR JAVIER ZHANG LANDA', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('78', 'LUIS FELIPE NUÑEZ ELORZA', '2009-06-25', '2', '1');
INSERT INTO `persona` VALUES ('79', 'TATIANA DOS SANTOS CASTILLO', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('80', 'JUAN CARLOS PISFIL SANZ', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('81', 'DIANA STEFANIA PUEMAPE ARMENTIA', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('82', 'CLAUDIA SOCORRO FLORES OCHOA', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('83', 'ELKIN VARGAS DELGADO', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('84', 'LILIANA STEFANNY GONZALES RAMIREZ', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('85', 'CARLOS ESTEBAN VERA SANTOS', '2009-08-11', '2', '1');
INSERT INTO `persona` VALUES ('86', 'JUAN MANUEL MONSALVE LANDA', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('87', 'CRISTIAN CAMILO PEREZ ELORZA', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('88', 'MEYLIN VIVIANA BENAVIDES CASTILLO', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('89', 'ENRIQUE PISFIL PUEMAPE', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('90', 'MARY FLORES VARGAS', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('91', 'CRISTIAN CAMILO RODRIGUEZ GARCIA', '2010-07-26', '2', '1');
INSERT INTO `persona` VALUES ('92', 'MEYLIN VIVIANA GARCIA FERNANDEZ', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('93', 'YEFERSON RIKI GONZALEZ MARTINEZ', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('94', 'MAURICIO JAVIER 1 LOPEZ GONZALEZ', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('95', 'MONICA ANDREA PEREZ PEREZ', '2009-06-27', '2', '1');
INSERT INTO `persona` VALUES ('96', 'RENE ALBERTO MARTINEZ LOPEZ', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('97', 'OSCAR JAVIER SANCHEZ RODRIGUEZ', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('98', 'LUIS FELIPE FERNANDEZ SANCHEZ', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('99', 'TATIANA GOMEZ JIMENEZ', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('100', 'JUAN CARLOS HERNANDEZ RUIZ', '2010-01-30', '2', '1');
INSERT INTO `persona` VALUES ('101', 'DIANA STEFANIA DIAZ GOMEZ', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('102', 'CLAUDIA SOCORRO RAMIREZ MARTIN', '2010-05-02', '2', '1');
INSERT INTO `persona` VALUES ('103', 'ELKIN ALVAREZ ALONSO', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('104', 'LILIANA STEFANNY CHEN DIAZ', '2010-07-26', '2', '1');
INSERT INTO `persona` VALUES ('105', 'CARLOS ESTEBAN JIMENEZ HERNANDEZ', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('106', 'JUAN MANUEL TORRES MORENO', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('107', 'CHRISTIAN MIGUEL SINGH GUTIERREZ', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('108', 'HECTOR GENTIL RUIZ AGUIRRE', '2010-06-14', '2', '1');
INSERT INTO `persona` VALUES ('109', 'NELLY YAZMIN ROJAS ALVAREZ', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('110', 'DAMARIS ROMERO GIL', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('111', 'AMANDA CASTRO SALAZAR', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('112', 'ANGIE LORENA FLORES IBAÑEZ', '2010-03-06', '2', '1');
INSERT INTO `persona` VALUES ('113', 'JOSE DENIS MUÑOZ MUÑOZ', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('114', 'KAROL JOE GUTIERREZ URIARTE', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('115', 'CARLOS ALBEIRO VARGAS BLANCO', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('116', 'HERNAN ALEXIS DA SILVA PINEDO', '2010-07-01', '2', '1');
INSERT INTO `persona` VALUES ('117', 'JORGE ALIRIO MORALES SAEZ', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('118', 'YESNARDA NAIROBI CASTILLO ORTIZ DE ZARATE', '2010-06-09', '2', '1');
INSERT INTO `persona` VALUES ('119', 'DIANA CAROLINA MARTIN ORTIZ', '2010-05-21', '2', '1');
INSERT INTO `persona` VALUES ('120', 'HAROLD ORLANDO MORENO ANGULO', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('121', 'ZULLY JOHANA SILVA UGARTE', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('122', 'JULIAN CAMILO ORTIZ DIEZ', '2009-12-31', '2', '1');
INSERT INTO `persona` VALUES ('123', 'MARIA PEREIRA RAMOS', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('124', 'FLOR REYES SAENZ', '2009-10-12', '2', '1');
INSERT INTO `persona` VALUES ('125', 'JUAN RAMOS QUINTANA', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('126', 'ARMANDO SUAREZ MARQUINEZ', '2010-08-30', '2', '1');
INSERT INTO `persona` VALUES ('127', 'ENRIQUE MEDINA ROMERO', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('128', 'VERONICA LIN ORTEGA', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('129', 'MARIA WANG SANTAMARIA', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('130', 'FLORES HERRERA DOMINGUEZ', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('131', 'TOMASA CRUZ RUIZ DE AZUA', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('132', 'CRISTIAN CAMILO MENDEZ SANZ', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('133', 'MEYLIN VIVIANA MARIN ARMENTIA', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('134', 'YEFERSON RIKI FERREIRA OCHOA', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('135', 'MAURICIO JAVIER MENDOZA DELGADO', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('136', 'MONICA ANDREA VASQUEZ RAMIREZ', '2010-04-28', '2', '1');
INSERT INTO `persona` VALUES ('137', 'RENE ALBERTO CABRERA SANTOS', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('138', 'OSCAR JAVIER ZHANG LANDA', '2010-02-06', '2', '1');
INSERT INTO `persona` VALUES ('139', 'LUIS FELIPE NUÑEZ ELORZA', '2009-08-18', '2', '1');
INSERT INTO `persona` VALUES ('140', 'TATIANA DOS SANTOS CASTILLO', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('141', 'JUAN CARLOS PISFIL SANZ', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('142', 'DIANA STEFANIA PUEMAPE ARMENTIA', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('143', 'CLAUDIA SOCORRO FLORES OCHOA', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('144', 'ELKIN VARGAS DELGADO', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('145', 'LILIANA STEFANNY GONZALES RAMIREZ', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('146', 'CARLOS ESTEBAN VERA SANTOS', '2009-06-18', '2', '1');
INSERT INTO `persona` VALUES ('147', 'JUAN MANUEL MONSALVE LANDA', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('148', 'CRISTIAN CAMILO PEREZ ELORZA', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('149', 'MEYLIN VIVIANA BENAVIDES CASTILLO', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('150', 'ENRIQUE PISFIL PUEMAPE', '2010-05-10', '2', '1');
INSERT INTO `persona` VALUES ('151', 'MARY FLORES VARGAS', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('152', 'CRISTIAN CAMILO RODRIGUEZ GARCIA', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('153', 'MEYLIN VIVIANA GARCIA FERNANDEZ', '2009-06-13', '2', '1');
INSERT INTO `persona` VALUES ('154', 'YEFERSON RIKI GONZALEZ MARTINEZ', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('155', 'MAURICIO JAVIER 3 LOPEZ GONZALEZ', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('156', 'MONICA ANDREA PISFIL PUEMAPE', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('157', 'RENE ALBERTO FLORES VARGAS', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('158', 'OSCAR JAVIER RODRIGUEZ GARCIA', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('159', 'LUIS FELIPE GARCIA FERNANDEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('160', 'TATIANA GONZALEZ MARTINEZ', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('161', 'JUAN CARLOS LOPEZ GONZALEZ', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('162', 'DIANA STEFANIA PEREZ PEREZ', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('163', 'CLAUDIA SOCORRO MARTINEZ LOPEZ', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('164', 'ELKIN SANCHEZ RODRIGUEZ', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('165', 'LILIANA STEFANNY FERNANDEZ SANCHEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('166', 'CARLOS ESTEBAN GOMEZ JIMENEZ', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('167', 'JUAN MANUEL HERNANDEZ RUIZ', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('168', 'CHRISTIAN MIGUEL DIAZ GOMEZ', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('169', 'HECTOR GENTIL RAMIREZ MARTIN', '2009-11-15', '2', '1');
INSERT INTO `persona` VALUES ('170', 'NELLY YAZMIN ALVAREZ ALONSO', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('171', 'DAMARIS CHEN DIAZ', '2010-08-04', '2', '1');
INSERT INTO `persona` VALUES ('172', 'AMANDA JIMENEZ HERNANDEZ', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('173', 'ANGIE LORENA TORRES MORENO', '2009-08-23', '2', '1');
INSERT INTO `persona` VALUES ('174', 'JOSE DENIS SINGH GUTIERREZ', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('175', 'KAROL JOE RUIZ AGUIRRE', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('176', 'CARLOS ALBEIRO ROJAS ALVAREZ', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('177', 'HERNAN ALEXIS ROMERO GIL', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('178', 'JORGE ALIRIO CASTRO SALAZAR', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('179', 'YESNARDA NAIROBI FLORES IBAÑEZ', '2009-08-25', '2', '1');
INSERT INTO `persona` VALUES ('180', 'DIANA CAROLINA MUÑOZ MUÑOZ', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('181', 'HAROLD ORLANDO GUTIERREZ URIARTE', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('182', 'ZULLY JOHANA VARGAS BLANCO', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('183', 'JULIAN CAMILO DA SILVA PINEDO', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('184', 'MARIA MORALES SAEZ', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('185', 'FLOR CASTILLO ORTIZ DE ZARATE', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('186', 'JUAN MARTIN ORTIZ', '2010-07-23', '2', '1');
INSERT INTO `persona` VALUES ('187', 'ARMANDO MORENO ANGULO', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('188', 'ENRIQUE SILVA UGARTE', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('189', 'VERONICA ORTIZ DIEZ', '2010-02-26', '2', '1');
INSERT INTO `persona` VALUES ('190', 'MARIA PEREIRA RAMOS', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('191', 'FLORES REYES SAENZ', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('192', 'TOMASA RAMOS QUINTANA', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('193', 'CRISTIAN CAMILO SUAREZ MARQUINEZ', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('194', 'MEYLIN VIVIANA MEDINA ROMERO', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('195', 'YEFERSON RIKI LIN ORTEGA', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('196', 'MAURICIO JAVIER WANG SANTAMARIA', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('197', 'MONICA ANDREA HERRERA DOMINGUEZ', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('198', 'RENE ALBERTO CRUZ RUIZ DE AZUA', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('199', 'OSCAR JAVIER MENDEZ SANZ', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('200', 'LUIS FELIPE MARIN ARMENTIA', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('201', 'TATIANA FERREIRA OCHOA', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('202', 'JUAN CARLOS MENDOZA DELGADO', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('203', 'DIANA STEFANIA VASQUEZ RAMIREZ', '2009-12-27', '2', '1');
INSERT INTO `persona` VALUES ('204', 'CLAUDIA SOCORRO CABRERA SANTOS', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('205', 'ELKIN ZHANG LANDA', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('206', 'LILIANA STEFANNY NUÑEZ ELORZA', '2010-06-28', '2', '1');
INSERT INTO `persona` VALUES ('207', 'CARLOS ESTEBAN DOS SANTOS CASTILLO', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('208', 'JUAN MANUEL PISFIL SANZ', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('209', 'CRISTIAN CAMILO PUEMAPE ARMENTIA', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('210', 'MEYLIN VIVIANA FLORES OCHOA', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('211', 'ENRIQUE VARGAS DELGADO', '2010-06-09', '2', '1');
INSERT INTO `persona` VALUES ('212', 'MARY GONZALES RAMIREZ', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('213', 'CRISTIAN CAMILO VERA SANTOS', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('214', 'MEYLIN VIVIANA MONSALVE LANDA', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('215', 'YEFERSON RIKI PEREZ ELORZA', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('216', 'MAURICIO JAVIER BENAVIDES CASTILLO', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('217', 'MONICA ANDREA PISFIL PUEMAPE', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('218', 'RENE ALBERTO FLORES VARGAS', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('219', 'OSCAR JAVIER RODRIGUEZ GARCIA', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('220', 'LUIS FELIPE GARCIA FERNANDEZ', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('221', 'TATIANA GONZALEZ MARTINEZ', '2009-12-31', '2', '1');
INSERT INTO `persona` VALUES ('222', 'JUAN CARLOS LOPEZ GONZALEZ', '2010-04-17', '2', '1');
INSERT INTO `persona` VALUES ('223', 'DIANA STEFANIA PEREZ PEREZ', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('224', 'CLAUDIA SOCORRO MARTINEZ LOPEZ', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('225', 'ELKIN SANCHEZ RODRIGUEZ', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('226', 'LILIANA STEFANNY FERNANDEZ SANCHEZ', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('227', 'CARLOS ESTEBAN GOMEZ JIMENEZ', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('228', 'JUAN MANUEL HERNANDEZ RUIZ', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('229', 'CHRISTIAN MIGUEL DIAZ GOMEZ', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('230', 'HECTOR GENTIL RAMIREZ MARTIN', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('231', 'NELLY YAZMIN ALVAREZ ALONSO', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('232', 'DAMARIS CHEN DIAZ', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('233', 'AMANDA JIMENEZ HERNANDEZ', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('234', 'ANGIE LORENA TORRES MORENO', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('235', 'JOSE DENIS SINGH GUTIERREZ', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('236', 'KAROL JOE RUIZ AGUIRRE', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('237', 'CARLOS ALBEIRO ROJAS ALVAREZ', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('238', 'HERNAN ALEXIS ROMERO GIL', '2009-10-27', '2', '1');
INSERT INTO `persona` VALUES ('239', 'JORGE ALIRIO CASTRO SALAZAR', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('240', 'YESNARDA NAIROBI FLORES IBAÑEZ', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('241', 'DIANA CAROLINA MUÑOZ MUÑOZ', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('242', 'HAROLD ORLANDO GUTIERREZ URIARTE', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('243', 'ZULLY JOHANA VARGAS BLANCO', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('244', 'JULIAN CAMILO DA SILVA PINEDO', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('245', 'MARIA MORALES SAEZ', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('246', 'FLOR CASTILLO ORTIZ DE ZARATE', '2010-08-26', '2', '1');
INSERT INTO `persona` VALUES ('247', 'JUAN MARTIN ORTIZ', '2010-07-28', '2', '1');
INSERT INTO `persona` VALUES ('248', 'ARMANDO MORENO ANGULO', '2010-07-17', '2', '1');
INSERT INTO `persona` VALUES ('249', 'ENRIQUE SILVA UGARTE', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('250', 'VERONICA ORTIZ DIEZ', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('251', 'MARIA PEREIRA RAMOS', '2010-03-11', '2', '1');
INSERT INTO `persona` VALUES ('252', 'FLORES REYES SAENZ', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('253', 'TOMASA RAMOS QUINTANA', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('254', 'CRISTIAN CAMILO SUAREZ MARQUINEZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('255', 'MEYLIN VIVIANA MEDINA ROMERO', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('256', 'YEFERSON RIKI LIN ORTEGA', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('257', 'MAURICIO JAVIER WANG SANTAMARIA', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('258', 'MONICA ANDREA HERRERA DOMINGUEZ', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('259', 'RENE ALBERTO CRUZ RUIZ DE AZUA', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('260', 'OSCAR JAVIER MENDEZ SANZ', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('261', 'LUIS FELIPE MARIN ARMENTIA', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('262', 'TATIANA FERREIRA OCHOA', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('263', 'JUAN CARLOS MENDOZA DELGADO', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('264', 'DIANA STEFANIA VASQUEZ RAMIREZ', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('265', 'CLAUDIA SOCORRO CABRERA SANTOS', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('266', 'ELKIN ZHANG LANDA', '2009-12-16', '2', '1');
INSERT INTO `persona` VALUES ('267', 'LILIANA STEFANNY NUÑEZ ELORZA', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('268', 'CARLOS ESTEBAN DOS SANTOS CASTILLO', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('269', 'JUAN MANUEL PISFIL SANZ', '2009-10-27', '2', '1');
INSERT INTO `persona` VALUES ('270', 'CRISTIAN CAMILO PUEMAPE ARMENTIA', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('271', 'MEYLIN VIVIANA FLORES OCHOA', '2010-02-01', '2', '1');
INSERT INTO `persona` VALUES ('272', 'ENRIQUE VARGAS DELGADO', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('273', 'MARY GONZALES RAMIREZ', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('274', 'CRISTIAN CAMILO VERA SANTOS', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('275', 'MEYLIN VIVIANA MONSALVE LANDA', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('276', 'YEFERSON RIKI PEREZ ELORZA', '2010-07-17', '2', '1');
INSERT INTO `persona` VALUES ('277', 'MAURICIO JAVIER BENAVIDES CASTILLO', '2010-03-09', '2', '1');
INSERT INTO `persona` VALUES ('278', 'MONICA ANDREA PISFIL PUEMAPE', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('279', 'RENE ALBERTO FLORES VARGAS', '2010-01-24', '2', '1');
INSERT INTO `persona` VALUES ('280', 'OSCAR JAVIER RODRIGUEZ GARCIA', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('281', 'LUIS FELIPE GARCIA FERNANDEZ', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('282', 'TATIANA GONZALEZ MARTINEZ', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('283', 'JUAN CARLOS LOPEZ GONZALEZ', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('284', 'DIANA STEFANIA PISFIL PUEMAPE', '2010-07-17', '2', '1');
INSERT INTO `persona` VALUES ('285', 'CLAUDIA SOCORRO FLORES VARGAS', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('286', 'ELKIN RODRIGUEZ GARCIA', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('287', 'LILIANA STEFANNY GARCIA FERNANDEZ', '2010-01-21', '2', '1');
INSERT INTO `persona` VALUES ('288', 'CARLOS ESTEBAN GONZALEZ MARTINEZ', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('289', 'JUAN MANUEL LOPEZ GONZALEZ', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('290', 'CHRISTIAN MIGUEL PEREZ PEREZ', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('291', 'HECTOR GENTIL MARTINEZ LOPEZ', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('292', 'NELLY YAZMIN SANCHEZ RODRIGUEZ', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('293', 'DAMARIS FERNANDEZ SANCHEZ', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('294', 'AMANDA GOMEZ JIMENEZ', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('295', 'ANGIE LORENA HERNANDEZ RUIZ', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('296', 'JOSE DENIS DIAZ GOMEZ', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('297', 'KAROL JOE RAMIREZ MARTIN', '2010-04-23', '2', '1');
INSERT INTO `persona` VALUES ('298', 'CARLOS ALBEIRO ALVAREZ ALONSO', '2009-12-22', '2', '1');
INSERT INTO `persona` VALUES ('299', 'HERNAN ALEXIS CHEN DIAZ', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('300', 'JORGE ALIRIO JIMENEZ HERNANDEZ', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('301', 'YESNARDA NAIROBI TORRES MORENO', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('302', 'DIANA CAROLINA SINGH GUTIERREZ', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('303', 'HAROLD ORLANDO RUIZ AGUIRRE', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('304', 'ZULLY JOHANA ROJAS ALVAREZ', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('305', 'JULIAN CAMILO ROMERO GIL', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('306', 'MARIA CASTRO SALAZAR', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('307', 'FLOR FLORES IBAÑEZ', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('308', 'JUAN MUÑOZ MUÑOZ', '2010-07-21', '2', '1');
INSERT INTO `persona` VALUES ('309', 'ARMANDO GUTIERREZ URIARTE', '2010-08-21', '2', '1');
INSERT INTO `persona` VALUES ('310', 'ENRIQUE VARGAS BLANCO', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('311', 'VERONICA DA SILVA PINEDO', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('312', 'MARIA MORALES SAEZ', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('313', 'FLORES CASTILLO ORTIZ DE ZARATE', '2009-11-04', '2', '1');
INSERT INTO `persona` VALUES ('314', 'TOMASA MARTIN ORTIZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('315', 'CRISTIAN CAMILO MORENO ANGULO', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('316', 'MEYLIN VIVIANA SILVA UGARTE', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('317', 'YEFERSON RIKI ORTIZ DIEZ', '2009-07-26', '2', '1');
INSERT INTO `persona` VALUES ('318', 'MAURICIO JAVIER PEREIRA RAMOS', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('319', 'MONICA ANDREA REYES SAENZ', '2010-05-03', '2', '1');
INSERT INTO `persona` VALUES ('320', 'RENE ALBERTO RAMOS QUINTANA', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('321', 'OSCAR JAVIER SUAREZ MARQUINEZ', '2009-10-21', '2', '1');
INSERT INTO `persona` VALUES ('322', 'LUIS FELIPE MEDINA ROMERO', '2009-11-24', '2', '1');
INSERT INTO `persona` VALUES ('323', 'TATIANA LIN ORTEGA', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('324', 'JUAN CARLOS WANG SANTAMARIA', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('325', 'DIANA STEFANIA HERRERA DOMINGUEZ', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('326', 'CLAUDIA SOCORRO CRUZ RUIZ DE AZUA', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('327', 'ELKIN MENDEZ SANZ', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('328', 'LILIANA STEFANNY MARIN ARMENTIA', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('329', 'CARLOS ESTEBAN FERREIRA OCHOA', '2009-07-20', '2', '1');
INSERT INTO `persona` VALUES ('330', 'JUAN MANUEL MENDOZA DELGADO', '2010-04-10', '2', '1');
INSERT INTO `persona` VALUES ('331', 'CRISTIAN CAMILO VASQUEZ RAMIREZ', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('332', 'MEYLIN VIVIANA CABRERA SANTOS', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('333', 'ENRIQUE ZHANG LANDA', '2009-11-23', '2', '1');
INSERT INTO `persona` VALUES ('334', 'MARY NUÑEZ ELORZA', '2009-11-30', '2', '1');
INSERT INTO `persona` VALUES ('335', 'CRISTIAN CAMILO DOS SANTOS CASTILLO', '2010-01-30', '2', '1');
INSERT INTO `persona` VALUES ('336', 'MEYLIN VIVIANA PISFIL SANZ', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('337', 'YEFERSON RIKI PUEMAPE ARMENTIA', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('338', 'MAURICIO JAVIER FLORES OCHOA', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('339', 'MONICA ANDREA VARGAS DELGADO', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('340', 'RENE ALBERTO GONZALES RAMIREZ', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('341', 'OSCAR JAVIER VERA SANTOS', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('342', 'LUIS FELIPE MONSALVE LANDA', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('343', 'TATIANA PEREZ ELORZA', '2009-08-14', '2', '1');
INSERT INTO `persona` VALUES ('344', 'JUAN CARLOS BENAVIDES CASTILLO', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('345', 'DIANA STEFANIA PISFIL PUEMAPE', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('346', 'CLAUDIA SOCORRO FLORES VARGAS', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('347', 'ELKIN RODRIGUEZ GARCIA', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('348', 'LILIANA STEFANNY GARCIA FERNANDEZ', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('349', 'CARLOS ESTEBAN GONZALEZ MARTINEZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('350', 'JUAN MANUEL LOPEZ GONZALEZ', '2010-01-22', '2', '1');
INSERT INTO `persona` VALUES ('351', 'CHRISTIAN MIGUEL PEREZ PEREZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('352', 'HECTOR GENTIL MARTINEZ LOPEZ', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('353', 'NELLY YAZMIN SANCHEZ RODRIGUEZ', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('354', 'DAMARIS FERNANDEZ SANCHEZ', '2010-08-21', '2', '1');
INSERT INTO `persona` VALUES ('355', 'AMANDA GOMEZ JIMENEZ', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('356', 'ANGIE LORENA HERNANDEZ RUIZ', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('357', 'JOSE DENIS DIAZ GOMEZ', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('358', 'KAROL JOE RAMIREZ MARTIN', '2010-03-03', '2', '1');
INSERT INTO `persona` VALUES ('359', 'CARLOS ALBEIRO ALVAREZ ALONSO', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('360', 'HERNAN ALEXIS CHEN DIAZ', '2009-06-23', '2', '1');
INSERT INTO `persona` VALUES ('361', 'JORGE ALIRIO JIMENEZ HERNANDEZ', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('362', 'YESNARDA NAIROBI TORRES MORENO', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('363', 'DIANA CAROLINA SINGH GUTIERREZ', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('364', 'HAROLD ORLANDO RUIZ AGUIRRE', '2010-07-06', '2', '1');
INSERT INTO `persona` VALUES ('365', 'ZULLY JOHANA ROJAS ALVAREZ', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('366', 'JULIAN CAMILO ROMERO GIL', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('367', 'MARIA CASTRO SALAZAR', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('368', 'FLOR FLORES IBAÑEZ', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('369', 'JUAN MUÑOZ MUÑOZ', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('370', 'ARMANDO GUTIERREZ URIARTE', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('371', 'ENRIQUE VARGAS BLANCO', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('372', 'VERONICA DA SILVA PINEDO', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('373', 'MARIA MORALES SAEZ', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('374', 'FLORES CASTILLO ORTIZ DE ZARATE', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('375', 'TOMASA MARTIN ORTIZ', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('376', 'CRISTIAN CAMILO MORENO ANGULO', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('377', 'MEYLIN VIVIANA SILVA UGARTE', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('378', 'YEFERSON RIKI ORTIZ DIEZ', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('379', 'MAURICIO JAVIER PEREIRA RAMOS', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('380', 'MONICA ANDREA REYES SAENZ', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('381', 'RENE ALBERTO RAMOS QUINTANA', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('382', 'OSCAR JAVIER SUAREZ MARQUINEZ', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('383', 'LUIS FELIPE MEDINA ROMERO', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('384', 'TATIANA LIN ORTEGA', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('385', 'JUAN CARLOS WANG SANTAMARIA', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('386', 'DIANA STEFANIA HERRERA DOMINGUEZ', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('387', 'CLAUDIA SOCORRO CRUZ RUIZ DE AZUA', '2009-08-23', '2', '1');
INSERT INTO `persona` VALUES ('388', 'ELKIN MENDEZ SANZ', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('389', 'LILIANA STEFANNY MARIN ARMENTIA', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('390', 'CARLOS ESTEBAN FERREIRA OCHOA', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('391', 'JUAN MANUEL MENDOZA DELGADO', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('392', 'CRISTIAN CAMILO VASQUEZ RAMIREZ', '2009-06-23', '2', '1');
INSERT INTO `persona` VALUES ('393', 'MEYLIN VIVIANA CABRERA SANTOS', '2009-06-14', '2', '1');
INSERT INTO `persona` VALUES ('394', 'ENRIQUE ZHANG LANDA', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('395', 'MARY NUÑEZ ELORZA', '2010-06-09', '2', '1');
INSERT INTO `persona` VALUES ('396', 'CRISTIAN CAMILO DOS SANTOS CASTILLO', '2009-07-23', '2', '1');
INSERT INTO `persona` VALUES ('397', 'MEYLIN VIVIANA PISFIL SANZ', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('398', 'YEFERSON RIKI PUEMAPE ARMENTIA', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('399', 'MAURICIO JAVIER FLORES OCHOA', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('400', 'MONICA ANDREA VARGAS DELGADO', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('401', 'RENE ALBERTO GONZALES RAMIREZ', '2009-10-19', '2', '1');
INSERT INTO `persona` VALUES ('402', 'OSCAR JAVIER VERA SANTOS', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('403', 'LUIS FELIPE MONSALVE LANDA', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('404', 'TATIANA PEREZ ELORZA', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('405', 'JUAN CARLOS BENAVIDES CASTILLO', '2009-12-20', '2', '1');
INSERT INTO `persona` VALUES ('406', 'DIANA STEFANIA PISFIL PUEMAPE', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('407', 'CLAUDIA SOCORRO FLORES VARGAS', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('408', 'ELKIN RODRIGUEZ GARCIA', '2010-05-16', '2', '1');
INSERT INTO `persona` VALUES ('409', 'LILIANA STEFANNY GARCIA FERNANDEZ', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('410', 'CARLOS ESTEBAN GONZALEZ MARTINEZ', '2009-08-10', '2', '1');
INSERT INTO `persona` VALUES ('411', 'JUAN MANUEL LOPEZ GONZALEZ', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('412', 'CHRISTIAN MIGUEL PISFIL PUEMAPE', '2009-06-20', '2', '1');
INSERT INTO `persona` VALUES ('413', 'HECTOR GENTIL FLORES VARGAS', '2010-06-24', '2', '1');
INSERT INTO `persona` VALUES ('414', 'NELLY YAZMIN RODRIGUEZ GARCIA', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('415', 'DAMARIS GARCIA FERNANDEZ', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('416', 'AMANDA GONZALEZ MARTINEZ', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('417', 'ANGIE LORENA LOPEZ GONZALEZ', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('418', 'JOSE DENIS PEREZ PEREZ', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('419', 'KAROL JOE MARTINEZ LOPEZ', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('420', 'CARLOS ALBEIRO SANCHEZ RODRIGUEZ', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('421', 'HERNAN ALEXIS FERNANDEZ SANCHEZ', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('422', 'JORGE ALIRIO GOMEZ JIMENEZ', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('423', 'YESNARDA NAIROBI HERNANDEZ RUIZ', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('424', 'DIANA CAROLINA DIAZ GOMEZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('425', 'HAROLD ORLANDO RAMIREZ MARTIN', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('426', 'ZULLY JOHANA ALVAREZ ALONSO', '2010-08-21', '2', '1');
INSERT INTO `persona` VALUES ('427', 'JULIAN CAMILO CHEN DIAZ', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('428', 'MARIA JIMENEZ HERNANDEZ', '2010-05-24', '2', '1');
INSERT INTO `persona` VALUES ('429', 'FLOR TORRES MORENO', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('430', 'JUAN SINGH GUTIERREZ', '2010-01-11', '2', '1');
INSERT INTO `persona` VALUES ('431', 'ARMANDO RUIZ AGUIRRE', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('432', 'ENRIQUE ROJAS ALVAREZ', '2010-01-17', '2', '1');
INSERT INTO `persona` VALUES ('433', 'VERONICA ROMERO GIL', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('434', 'MARIA CASTRO SALAZAR', '2010-04-05', '2', '1');
INSERT INTO `persona` VALUES ('435', 'FLORES FLORES IBAÑEZ', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('436', 'TOMASA MUÑOZ MUÑOZ', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('437', 'CRISTIAN CAMILO GUTIERREZ URIARTE', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('438', 'MEYLIN VIVIANA VARGAS BLANCO', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('439', 'YEFERSON RIKI DA SILVA PINEDO', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('440', 'MAURICIO JAVIER MORALES SAEZ', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('441', 'MONICA ANDREA CASTILLO ORTIZ DE ZARATE', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('442', 'RENE ALBERTO MARTIN ORTIZ', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('443', 'OSCAR JAVIER MORENO ANGULO', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('444', 'LUIS FELIPE SILVA UGARTE', '2010-05-23', '2', '1');
INSERT INTO `persona` VALUES ('445', 'TATIANA ORTIZ DIEZ', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('446', 'JUAN CARLOS PEREIRA RAMOS', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('447', 'DIANA STEFANIA REYES SAENZ', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('448', 'CLAUDIA SOCORRO RAMOS QUINTANA', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('449', 'ELKIN SUAREZ MARQUINEZ', '2009-07-26', '2', '1');
INSERT INTO `persona` VALUES ('450', 'LILIANA STEFANNY MEDINA ROMERO', '2010-06-09', '2', '1');
INSERT INTO `persona` VALUES ('451', 'CARLOS ESTEBAN LIN ORTEGA', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('452', 'JUAN MANUEL WANG SANTAMARIA', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('453', 'CRISTIAN CAMILO HERRERA DOMINGUEZ', '2009-11-19', '2', '1');
INSERT INTO `persona` VALUES ('454', 'MEYLIN VIVIANA CRUZ RUIZ DE AZUA', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('455', 'ENRIQUE MENDEZ SANZ', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('456', 'MARY MARIN ARMENTIA', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('457', 'CRISTIAN CAMILO FERREIRA OCHOA', '2010-04-26', '2', '1');
INSERT INTO `persona` VALUES ('458', 'MEYLIN VIVIANA MENDOZA DELGADO', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('459', 'YEFERSON RIKI VASQUEZ RAMIREZ', '2010-01-22', '2', '1');
INSERT INTO `persona` VALUES ('460', 'MAURICIO JAVIER CABRERA SANTOS', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('461', 'MONICA ANDREA ZHANG LANDA', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('462', 'RENE ALBERTO NUÑEZ ELORZA', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('463', 'OSCAR JAVIER DOS SANTOS CASTILLO', '2009-06-28', '2', '1');
INSERT INTO `persona` VALUES ('464', 'LUIS FELIPE PISFIL SANZ', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('465', 'TATIANA PUEMAPE ARMENTIA', '2009-10-02', '2', '1');
INSERT INTO `persona` VALUES ('466', 'JUAN CARLOS FLORES OCHOA', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('467', 'DIANA STEFANIA VARGAS DELGADO', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('468', 'CLAUDIA SOCORRO GONZALES RAMIREZ', '2009-08-04', '2', '1');
INSERT INTO `persona` VALUES ('469', 'ELKIN VERA SANTOS', '2010-07-28', '2', '1');
INSERT INTO `persona` VALUES ('470', 'LILIANA STEFANNY MONSALVE LANDA', '2009-12-20', '2', '1');
INSERT INTO `persona` VALUES ('471', 'CARLOS ESTEBAN PEREZ ELORZA', '2010-01-09', '2', '1');
INSERT INTO `persona` VALUES ('472', 'JUAN MANUEL BENAVIDES CASTILLO', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('473', 'CHRISTIAN MIGUEL PISFIL PUEMAPE', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('474', 'HECTOR GENTIL FLORES VARGAS', '2009-10-26', '2', '1');
INSERT INTO `persona` VALUES ('475', 'NELLY YAZMIN RODRIGUEZ GARCIA', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('476', 'DAMARIS GARCIA FERNANDEZ', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('477', 'AMANDA GONZALEZ MARTINEZ', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('478', 'ANGIE LORENA LOPEZ GONZALEZ', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('479', 'JOSE DENIS PEREZ PEREZ', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('480', 'KAROL JOE MARTINEZ LOPEZ', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('481', 'CARLOS ALBEIRO SANCHEZ RODRIGUEZ', '2009-09-29', '2', '1');
INSERT INTO `persona` VALUES ('482', 'HERNAN ALEXIS FERNANDEZ SANCHEZ', '2009-06-13', '2', '1');
INSERT INTO `persona` VALUES ('483', 'JORGE ALIRIO GOMEZ JIMENEZ', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('484', 'YESNARDA NAIROBI HERNANDEZ RUIZ', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('485', 'DIANA CAROLINA DIAZ GOMEZ', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('486', 'HAROLD ORLANDO RAMIREZ MARTIN', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('487', 'ZULLY JOHANA ALVAREZ ALONSO', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('488', 'JULIAN CAMILO CHEN DIAZ', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('489', 'MARIA JIMENEZ HERNANDEZ', '2010-09-06', '2', '1');
INSERT INTO `persona` VALUES ('490', 'FLOR TORRES MORENO', '2010-08-30', '2', '1');
INSERT INTO `persona` VALUES ('491', 'JUAN SINGH GUTIERREZ', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('492', 'ARMANDO RUIZ AGUIRRE', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('493', 'ENRIQUE ROJAS ALVAREZ', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('494', 'VERONICA ROMERO GIL', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('495', 'MARIA CASTRO SALAZAR', '2009-07-21', '2', '1');
INSERT INTO `persona` VALUES ('496', 'FLORES FLORES IBAÑEZ', '2009-12-27', '2', '1');
INSERT INTO `persona` VALUES ('497', 'TOMASA MUÑOZ MUÑOZ', '2010-07-29', '2', '1');
INSERT INTO `persona` VALUES ('498', 'CRISTIAN CAMILO GUTIERREZ URIARTE', '2009-09-05', '2', '1');
INSERT INTO `persona` VALUES ('499', 'MEYLIN VIVIANA VARGAS BLANCO', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('500', 'YEFERSON RIKI DA SILVA PINEDO', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('501', 'MAURICIO JAVIER MORALES SAEZ', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('502', 'MONICA ANDREA CASTILLO ORTIZ DE ZARATE', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('503', 'RENE ALBERTO MARTIN ORTIZ', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('504', 'OSCAR JAVIER MORENO ANGULO', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('505', 'LUIS FELIPE SILVA UGARTE', '2010-08-14', '2', '1');
INSERT INTO `persona` VALUES ('506', 'TATIANA ORTIZ DIEZ', '2009-09-29', '2', '1');
INSERT INTO `persona` VALUES ('507', 'JUAN CARLOS PEREIRA RAMOS', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('508', 'DIANA STEFANIA REYES SAENZ', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('509', 'CLAUDIA SOCORRO RAMOS QUINTANA', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('510', 'ELKIN SUAREZ MARQUINEZ', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('511', 'LILIANA STEFANNY MEDINA ROMERO', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('512', 'CARLOS ESTEBAN LIN ORTEGA', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('513', 'JUAN MANUEL WANG SANTAMARIA', '2009-08-14', '2', '1');
INSERT INTO `persona` VALUES ('514', 'CRISTIAN CAMILO HERRERA DOMINGUEZ', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('515', 'MEYLIN VIVIANA CRUZ RUIZ DE AZUA', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('516', 'ENRIQUE MENDEZ SANZ', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('517', 'MARY MARIN ARMENTIA', '2010-06-02', '2', '1');
INSERT INTO `persona` VALUES ('518', 'CRISTIAN CAMILO FERREIRA OCHOA', '2009-11-30', '2', '1');
INSERT INTO `persona` VALUES ('519', 'MEYLIN VIVIANA MENDOZA DELGADO', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('520', 'YEFERSON RIKI VASQUEZ RAMIREZ', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('521', 'MAURICIO JAVIER CABRERA SANTOS', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('522', 'MONICA ANDREA ZHANG LANDA', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('523', 'RENE ALBERTO NUÑEZ ELORZA', '2009-07-20', '2', '1');
INSERT INTO `persona` VALUES ('524', 'OSCAR JAVIER DOS SANTOS CASTILLO', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('525', 'LUIS FELIPE PISFIL SANZ', '2010-03-15', '2', '1');
INSERT INTO `persona` VALUES ('526', 'TATIANA PUEMAPE ARMENTIA', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('527', 'JUAN CARLOS FLORES OCHOA', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('528', 'DIANA STEFANIA VARGAS DELGADO', '2010-07-24', '2', '1');
INSERT INTO `persona` VALUES ('529', 'CLAUDIA SOCORRO GONZALES RAMIREZ', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('530', 'ELKIN VERA SANTOS', '2010-08-19', '2', '1');
INSERT INTO `persona` VALUES ('531', 'LILIANA STEFANNY MONSALVE LANDA', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('532', 'CARLOS ESTEBAN PEREZ ELORZA', '2010-04-28', '2', '1');
INSERT INTO `persona` VALUES ('533', 'JUAN MANUEL BENAVIDES CASTILLO', '2010-06-28', '2', '1');
INSERT INTO `persona` VALUES ('534', 'CHRISTIAN MIGUEL PISFIL PUEMAPE', '2009-09-10', '2', '1');
INSERT INTO `persona` VALUES ('535', 'HECTOR GENTIL FLORES VARGAS', '2010-07-28', '2', '1');
INSERT INTO `persona` VALUES ('536', 'NELLY YAZMIN RODRIGUEZ GARCIA', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('537', 'DAMARIS GARCIA FERNANDEZ', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('538', 'AMANDA GONZALEZ MARTINEZ', '2010-04-26', '2', '1');
INSERT INTO `persona` VALUES ('539', 'ANGIE LORENA LOPEZ GONZALEZ', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('540', 'JOSE DENIS PISFIL PUEMAPE', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('541', 'KAROL JOE FLORES VARGAS', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('542', 'CARLOS ALBEIRO RODRIGUEZ GARCIA', '2009-07-07', '2', '1');
INSERT INTO `persona` VALUES ('543', 'HERNAN ALEXIS GARCIA FERNANDEZ', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('544', 'JORGE ALIRIO GONZALEZ MARTINEZ', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('545', 'YESNARDA NAIROBI LOPEZ GONZALEZ', '2009-09-29', '2', '1');
INSERT INTO `persona` VALUES ('546', 'DIANA CAROLINA PEREZ PEREZ', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('547', 'HAROLD ORLANDO MARTINEZ LOPEZ', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('548', 'ZULLY JOHANA SANCHEZ RODRIGUEZ', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('549', 'JULIAN CAMILO FERNANDEZ SANCHEZ', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('550', 'MARIA GOMEZ JIMENEZ', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('551', 'FLOR HERNANDEZ RUIZ', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('552', 'JUAN DIAZ GOMEZ', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('553', 'ARMANDO RAMIREZ MARTIN', '2009-09-29', '2', '1');
INSERT INTO `persona` VALUES ('554', 'ENRIQUE ALVAREZ ALONSO', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('555', 'VERONICA CHEN DIAZ', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('556', 'MARIA JIMENEZ HERNANDEZ', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('557', 'FLORES TORRES MORENO', '2010-02-20', '2', '1');
INSERT INTO `persona` VALUES ('558', 'TOMASA SINGH GUTIERREZ', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('559', 'CRISTIAN CAMILO RUIZ AGUIRRE', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('560', 'MEYLIN VIVIANA ROJAS ALVAREZ', '2009-10-29', '2', '1');
INSERT INTO `persona` VALUES ('561', 'YEFERSON RIKI ROMERO GIL', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('562', 'MAURICIO JAVIER CASTRO SALAZAR', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('563', 'MONICA ANDREA FLORES IBAÑEZ', '2010-03-11', '2', '1');
INSERT INTO `persona` VALUES ('564', 'RENE ALBERTO MUÑOZ MUÑOZ', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('565', 'OSCAR JAVIER GUTIERREZ URIARTE', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('566', 'LUIS FELIPE VARGAS BLANCO', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('567', 'TATIANA DA SILVA PINEDO', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('568', 'JUAN CARLOS MORALES SAEZ', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('569', 'DIANA STEFANIA CASTILLO ORTIZ DE ZARATE', '2010-01-24', '2', '1');
INSERT INTO `persona` VALUES ('570', 'CLAUDIA SOCORRO MARTIN ORTIZ', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('571', 'ELKIN MORENO ANGULO', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('572', 'LILIANA STEFANNY SILVA UGARTE', '2009-10-18', '2', '1');
INSERT INTO `persona` VALUES ('573', 'CARLOS ESTEBAN ORTIZ DIEZ', '2010-04-22', '2', '1');
INSERT INTO `persona` VALUES ('574', 'JUAN MANUEL PEREIRA RAMOS', '2010-07-29', '2', '1');
INSERT INTO `persona` VALUES ('575', 'CRISTIAN CAMILO REYES SAENZ', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('576', 'MEYLIN VIVIANA RAMOS QUINTANA', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('577', 'ENRIQUE SUAREZ MARQUINEZ', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('578', 'MARY MEDINA ROMERO', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('579', 'CRISTIAN CAMILO LIN ORTEGA', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('580', 'MEYLIN VIVIANA WANG SANTAMARIA', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('581', 'YEFERSON RIKI HERRERA DOMINGUEZ', '2009-10-21', '2', '1');
INSERT INTO `persona` VALUES ('582', 'MAURICIO JAVIER CRUZ RUIZ DE AZUA', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('583', 'MONICA ANDREA MENDEZ SANZ', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('584', 'RENE ALBERTO MARIN ARMENTIA', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('585', 'OSCAR JAVIER FERREIRA OCHOA', '2010-07-17', '2', '1');
INSERT INTO `persona` VALUES ('586', 'LUIS FELIPE MENDOZA DELGADO', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('587', 'TATIANA VASQUEZ RAMIREZ', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('588', 'JUAN CARLOS CABRERA SANTOS', '2009-12-03', '2', '1');
INSERT INTO `persona` VALUES ('589', 'DIANA STEFANIA ZHANG LANDA', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('590', 'CLAUDIA SOCORRO NUÑEZ ELORZA', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('591', 'ELKIN DOS SANTOS CASTILLO', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('592', 'LILIANA STEFANNY PISFIL SANZ', '2010-03-08', '2', '1');
INSERT INTO `persona` VALUES ('593', 'CARLOS ESTEBAN PUEMAPE ARMENTIA', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('594', 'JUAN MANUEL FLORES OCHOA', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('595', 'CHRISTIAN MIGUEL VARGAS DELGADO', '2010-08-21', '2', '1');
INSERT INTO `persona` VALUES ('596', 'HECTOR GENTIL GONZALES RAMIREZ', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('597', 'NELLY YAZMIN VERA SANTOS', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('598', 'DAMARIS MONSALVE LANDA', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('599', 'AMANDA PEREZ ELORZA', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('600', 'ANGIE LORENA BENAVIDES CASTILLO', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('601', 'JOSE DENIS PISFIL PUEMAPE', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('602', 'KAROL JOE FLORES VARGAS', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('603', 'CARLOS ALBEIRO RODRIGUEZ GARCIA', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('604', 'HERNAN ALEXIS GARCIA FERNANDEZ', '2009-06-13', '2', '1');
INSERT INTO `persona` VALUES ('605', 'JORGE ALIRIO GONZALEZ MARTINEZ', '2009-10-26', '2', '1');
INSERT INTO `persona` VALUES ('606', 'YESNARDA NAIROBI LOPEZ GONZALEZ', '2009-12-16', '2', '1');
INSERT INTO `persona` VALUES ('607', 'DIANA CAROLINA PEREZ PEREZ', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('608', 'HAROLD ORLANDO MARTINEZ LOPEZ', '2010-07-17', '2', '1');
INSERT INTO `persona` VALUES ('609', 'ZULLY JOHANA SANCHEZ RODRIGUEZ', '2010-02-16', '2', '1');
INSERT INTO `persona` VALUES ('610', 'JULIAN CAMILO FERNANDEZ SANCHEZ', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('611', 'MARIA GOMEZ JIMENEZ', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('612', 'FLOR HERNANDEZ RUIZ', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('613', 'JUAN DIAZ GOMEZ', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('614', 'ARMANDO RAMIREZ MARTIN', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('615', 'ENRIQUE ALVAREZ ALONSO', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('616', 'VERONICA CHEN DIAZ', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('617', 'MARIA JIMENEZ HERNANDEZ', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('618', 'FLORES TORRES MORENO', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('619', 'TOMASA SINGH GUTIERREZ', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('620', 'CRISTIAN CAMILO RUIZ AGUIRRE', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('621', 'MEYLIN VIVIANA ROJAS ALVAREZ', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('622', 'YEFERSON RIKI ROMERO GIL', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('623', 'MAURICIO JAVIER CASTRO SALAZAR', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('624', 'MONICA ANDREA FLORES IBAÑEZ', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('625', 'RENE ALBERTO MUÑOZ MUÑOZ', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('626', 'OSCAR JAVIER GUTIERREZ URIARTE', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('627', 'LUIS FELIPE VARGAS BLANCO', '2010-01-23', '2', '1');
INSERT INTO `persona` VALUES ('628', 'TATIANA DA SILVA PINEDO', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('629', 'JUAN CARLOS MORALES SAEZ', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('630', 'DIANA STEFANIA CASTILLO ORTIZ DE ZARATE', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('631', 'CLAUDIA SOCORRO MARTIN ORTIZ', '2009-09-14', '2', '1');
INSERT INTO `persona` VALUES ('632', 'ELKIN MORENO ANGULO', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('633', 'LILIANA STEFANNY SILVA UGARTE', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('634', 'CARLOS ESTEBAN ORTIZ DIEZ', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('635', 'JUAN MANUEL PEREIRA RAMOS', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('636', 'CRISTIAN CAMILO REYES SAENZ', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('637', 'MEYLIN VIVIANA RAMOS QUINTANA', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('638', 'ENRIQUE SUAREZ MARQUINEZ', '2010-08-04', '2', '1');
INSERT INTO `persona` VALUES ('639', 'MARY MEDINA ROMERO', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('640', 'CRISTIAN CAMILO LIN ORTEGA', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('641', 'MEYLIN VIVIANA WANG SANTAMARIA', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('642', 'YEFERSON RIKI HERRERA DOMINGUEZ', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('643', 'MAURICIO JAVIER CRUZ RUIZ DE AZUA', '2009-08-10', '2', '1');
INSERT INTO `persona` VALUES ('644', 'MONICA ANDREA MENDEZ SANZ', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('645', 'RENE ALBERTO MARIN ARMENTIA', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('646', 'OSCAR JAVIER FERREIRA OCHOA', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('647', 'LUIS FELIPE MENDOZA DELGADO', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('648', 'TATIANA VASQUEZ RAMIREZ', '2010-05-05', '2', '1');
INSERT INTO `persona` VALUES ('649', 'JUAN CARLOS CABRERA SANTOS', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('650', 'DIANA STEFANIA ZHANG LANDA', '2009-09-05', '2', '1');
INSERT INTO `persona` VALUES ('651', 'CLAUDIA SOCORRO NUÑEZ ELORZA', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('652', 'ELKIN DOS SANTOS CASTILLO', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('653', 'LILIANA STEFANNY PISFIL SANZ', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('654', 'CARLOS ESTEBAN PUEMAPE ARMENTIA', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('655', 'JUAN MANUEL FLORES OCHOA', '2010-03-11', '2', '1');
INSERT INTO `persona` VALUES ('656', 'CHRISTIAN MIGUEL VARGAS DELGADO', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('657', 'HECTOR GENTIL GONZALES RAMIREZ', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('658', 'NELLY YAZMIN VERA SANTOS', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('659', 'DAMARIS MONSALVE LANDA', '2010-01-30', '2', '1');
INSERT INTO `persona` VALUES ('660', 'AMANDA PEREZ ELORZA', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('661', 'ANGIE LORENA BENAVIDES CASTILLO', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('662', 'JOSE DENIS PISFIL PUEMAPE', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('663', 'KAROL JOE FLORES VARGAS', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('664', 'CARLOS ALBEIRO RODRIGUEZ GARCIA', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('665', 'HERNAN ALEXIS GARCIA FERNANDEZ', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('666', 'JORGE ALIRIO GONZALEZ MARTINEZ', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('667', 'YESNARDA NAIROBI LOPEZ GONZALEZ', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('668', 'DIANA CAROLINA PISFIL PUEMAPE', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('669', 'HAROLD ORLANDO FLORES VARGAS', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('670', 'ZULLY JOHANA RODRIGUEZ GARCIA', '2010-08-31', '2', '1');
INSERT INTO `persona` VALUES ('671', 'JULIAN CAMILO GARCIA FERNANDEZ', '2010-06-27', '2', '1');
INSERT INTO `persona` VALUES ('672', 'MARIA GONZALEZ MARTINEZ', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('673', 'FLOR LOPEZ GONZALEZ', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('674', 'JUAN PEREZ PEREZ', '2009-06-16', '2', '1');
INSERT INTO `persona` VALUES ('675', 'ARMANDO MARTINEZ LOPEZ', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('676', 'ENRIQUE SANCHEZ RODRIGUEZ', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('677', 'VERONICA FERNANDEZ SANCHEZ', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('678', 'MARIA GOMEZ JIMENEZ', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('679', 'FLORES HERNANDEZ RUIZ', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('680', 'TOMASA DIAZ GOMEZ', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('681', 'CRISTIAN CAMILO RAMIREZ MARTIN', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('682', 'MEYLIN VIVIANA ALVAREZ ALONSO', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('683', 'YEFERSON RIKI CHEN DIAZ', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('684', 'MAURICIO JAVIER JIMENEZ HERNANDEZ', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('685', 'MONICA ANDREA TORRES MORENO', '2009-11-06', '2', '1');
INSERT INTO `persona` VALUES ('686', 'RENE ALBERTO SINGH GUTIERREZ', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('687', 'OSCAR JAVIER RUIZ AGUIRRE', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('688', 'LUIS FELIPE ROJAS ALVAREZ', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('689', 'TATIANA ROMERO GIL', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('690', 'JUAN CARLOS CASTRO SALAZAR', '2010-09-14', '2', '1');
INSERT INTO `persona` VALUES ('691', 'DIANA STEFANIA FLORES IBAÑEZ', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('692', 'CLAUDIA SOCORRO MUÑOZ MUÑOZ', '2010-08-21', '2', '1');
INSERT INTO `persona` VALUES ('693', 'ELKIN GUTIERREZ URIARTE', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('694', 'LILIANA STEFANNY VARGAS BLANCO', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('695', 'CARLOS ESTEBAN DA SILVA PINEDO', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('696', 'JUAN MANUEL MORALES SAEZ', '2010-06-24', '2', '1');
INSERT INTO `persona` VALUES ('697', 'CRISTIAN CAMILO CASTILLO ORTIZ DE ZARATE', '2009-12-15', '2', '1');
INSERT INTO `persona` VALUES ('698', 'MEYLIN VIVIANA MARTIN ORTIZ', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('699', 'ENRIQUE MORENO ANGULO', '2010-06-17', '2', '1');
INSERT INTO `persona` VALUES ('700', 'MARY SILVA UGARTE', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('701', 'CRISTIAN CAMILO ORTIZ DIEZ', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('702', 'MEYLIN VIVIANA PEREIRA RAMOS', '2010-02-01', '2', '1');
INSERT INTO `persona` VALUES ('703', 'YEFERSON RIKI REYES SAENZ', '2010-01-29', '2', '1');
INSERT INTO `persona` VALUES ('704', 'MAURICIO JAVIER RAMOS QUINTANA', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('705', 'MONICA ANDREA SUAREZ MARQUINEZ', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('706', 'RENE ALBERTO MEDINA ROMERO', '2009-11-08', '2', '1');
INSERT INTO `persona` VALUES ('707', 'OSCAR JAVIER LIN ORTEGA', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('708', 'LUIS FELIPE WANG SANTAMARIA', '2009-12-18', '2', '1');
INSERT INTO `persona` VALUES ('709', 'TATIANA HERRERA DOMINGUEZ', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('710', 'JUAN CARLOS CRUZ RUIZ DE AZUA', '2009-10-11', '2', '1');
INSERT INTO `persona` VALUES ('711', 'DIANA STEFANIA MENDEZ SANZ', '2010-08-15', '2', '1');
INSERT INTO `persona` VALUES ('712', 'CLAUDIA SOCORRO MARIN ARMENTIA', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('713', 'ELKIN FERREIRA OCHOA', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('714', 'LILIANA STEFANNY MENDOZA DELGADO', '2009-11-21', '2', '1');
INSERT INTO `persona` VALUES ('715', 'CARLOS ESTEBAN VASQUEZ RAMIREZ', '2010-04-17', '2', '1');
INSERT INTO `persona` VALUES ('716', 'JUAN MANUEL CABRERA SANTOS', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('717', 'CHRISTIAN MIGUEL ZHANG LANDA', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('718', 'HECTOR GENTIL NUÑEZ ELORZA', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('719', 'NELLY YAZMIN DOS SANTOS CASTILLO', '2010-01-10', '2', '1');
INSERT INTO `persona` VALUES ('720', 'DAMARIS PISFIL SANZ', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('721', 'AMANDA PUEMAPE ARMENTIA', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('722', 'ANGIE LORENA FLORES OCHOA', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('723', 'JOSE DENIS VARGAS DELGADO', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('724', 'KAROL JOE GONZALES RAMIREZ', '2010-09-13', '2', '1');
INSERT INTO `persona` VALUES ('725', 'CARLOS ALBEIRO VERA SANTOS', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('726', 'HERNAN ALEXIS MONSALVE LANDA', '2010-06-02', '2', '1');
INSERT INTO `persona` VALUES ('727', 'JORGE ALIRIO PEREZ ELORZA', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('728', 'YESNARDA NAIROBI BENAVIDES CASTILLO', '2010-08-26', '2', '1');
INSERT INTO `persona` VALUES ('729', 'DIANA CAROLINA PISFIL PUEMAPE', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('730', 'HAROLD ORLANDO FLORES VARGAS', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('731', 'ZULLY JOHANA RODRIGUEZ GARCIA', '2009-10-27', '2', '1');
INSERT INTO `persona` VALUES ('732', 'JULIAN CAMILO GARCIA FERNANDEZ', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('733', 'MARIA GONZALEZ MARTINEZ', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('734', 'FLOR LOPEZ GONZALEZ', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('735', 'JUAN PEREZ PEREZ', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('736', 'ARMANDO MARTINEZ LOPEZ', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('737', 'ENRIQUE SANCHEZ RODRIGUEZ', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('738', 'VERONICA FERNANDEZ SANCHEZ', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('739', 'MARIA GOMEZ JIMENEZ', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('740', 'FLORES HERNANDEZ RUIZ', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('741', 'TOMASA DIAZ GOMEZ', '2009-09-10', '2', '1');
INSERT INTO `persona` VALUES ('742', 'CRISTIAN CAMILO RAMIREZ MARTIN', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('743', 'MEYLIN VIVIANA ALVAREZ ALONSO', '2009-10-06', '2', '1');
INSERT INTO `persona` VALUES ('744', 'YEFERSON RIKI CHEN DIAZ', '2009-11-08', '2', '1');
INSERT INTO `persona` VALUES ('745', 'MAURICIO JAVIER JIMENEZ HERNANDEZ', '2010-07-02', '2', '1');
INSERT INTO `persona` VALUES ('746', 'MONICA ANDREA TORRES MORENO', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('747', 'RENE ALBERTO SINGH GUTIERREZ', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('748', 'OSCAR JAVIER RUIZ AGUIRRE', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('749', 'LUIS FELIPE ROJAS ALVAREZ', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('750', 'TATIANA ROMERO GIL', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('751', 'JUAN CARLOS CASTRO SALAZAR', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('752', 'DIANA STEFANIA FLORES IBAÑEZ', '2010-03-28', '2', '1');
INSERT INTO `persona` VALUES ('753', 'CLAUDIA SOCORRO MUÑOZ MUÑOZ', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('754', 'ELKIN GUTIERREZ URIARTE', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('755', 'LILIANA STEFANNY VARGAS BLANCO', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('756', 'CARLOS ESTEBAN DA SILVA PINEDO', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('757', 'JUAN MANUEL MORALES SAEZ', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('758', 'CRISTIAN CAMILO CASTILLO ORTIZ DE ZARATE', '2009-11-04', '2', '1');
INSERT INTO `persona` VALUES ('759', 'MEYLIN VIVIANA MARTIN ORTIZ', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('760', 'ENRIQUE MORENO ANGULO', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('761', 'MARY SILVA UGARTE', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('762', 'CRISTIAN CAMILO ORTIZ DIEZ', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('763', 'MEYLIN VIVIANA PEREIRA RAMOS', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('764', 'YEFERSON RIKI REYES SAENZ', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('765', 'MAURICIO JAVIER RAMOS QUINTANA', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('766', 'MONICA ANDREA SUAREZ MARQUINEZ', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('767', 'RENE ALBERTO MEDINA ROMERO', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('768', 'OSCAR JAVIER LIN ORTEGA', '2010-07-23', '2', '1');
INSERT INTO `persona` VALUES ('769', 'LUIS FELIPE WANG SANTAMARIA', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('770', 'TATIANA HERRERA DOMINGUEZ', '2010-03-11', '2', '1');
INSERT INTO `persona` VALUES ('771', 'JUAN CARLOS CRUZ RUIZ DE AZUA', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('772', 'DIANA STEFANIA MENDEZ SANZ', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('773', 'CLAUDIA SOCORRO MARIN ARMENTIA', '2010-06-24', '2', '1');
INSERT INTO `persona` VALUES ('774', 'ELKIN FERREIRA OCHOA', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('775', 'LILIANA STEFANNY MENDOZA DELGADO', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('776', 'CARLOS ESTEBAN VASQUEZ RAMIREZ', '2009-12-15', '2', '1');
INSERT INTO `persona` VALUES ('777', 'JUAN MANUEL CABRERA SANTOS', '2009-06-27', '2', '1');
INSERT INTO `persona` VALUES ('778', 'CHRISTIAN MIGUEL ZHANG LANDA', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('779', 'HECTOR GENTIL NUÑEZ ELORZA', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('780', 'NELLY YAZMIN DOS SANTOS CASTILLO', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('781', 'DAMARIS PISFIL SANZ', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('782', 'AMANDA PUEMAPE ARMENTIA', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('783', 'ANGIE LORENA FLORES OCHOA', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('784', 'JOSE DENIS VARGAS DELGADO', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('785', 'KAROL JOE GONZALES RAMIREZ', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('786', 'CARLOS ALBEIRO VERA SANTOS', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('787', 'HERNAN ALEXIS MONSALVE LANDA', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('788', 'JORGE ALIRIO PEREZ ELORZA', '2009-12-16', '2', '1');
INSERT INTO `persona` VALUES ('789', 'YESNARDA NAIROBI BENAVIDES CASTILLO', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('790', 'DIANA CAROLINA PISFIL PUEMAPE', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('791', 'HAROLD ORLANDO FLORES VARGAS', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('792', 'ZULLY JOHANA RODRIGUEZ GARCIA', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('793', 'JULIAN CAMILO GARCIA FERNANDEZ', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('794', 'MARIA GONZALEZ MARTINEZ', '2009-06-28', '2', '1');
INSERT INTO `persona` VALUES ('795', 'FLOR LOPEZ GONZALEZ', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('796', 'JUAN PISFIL PUEMAPE', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('797', 'ARMANDO FLORES VARGAS', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('798', 'ENRIQUE RODRIGUEZ GARCIA', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('799', 'VERONICA GARCIA FERNANDEZ', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('800', 'MARIA GONZALEZ MARTINEZ', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('801', 'FLORES LOPEZ GONZALEZ', '2010-05-11', '2', '1');
INSERT INTO `persona` VALUES ('802', 'TOMASA PEREZ PEREZ', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('803', 'CRISTIAN CAMILO MARTINEZ LOPEZ', '2010-08-29', '2', '1');
INSERT INTO `persona` VALUES ('804', 'MEYLIN VIVIANA SANCHEZ RODRIGUEZ', '2009-11-30', '2', '1');
INSERT INTO `persona` VALUES ('805', 'YEFERSON RIKI FERNANDEZ SANCHEZ', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('806', 'MAURICIO JAVIER GOMEZ JIMENEZ', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('807', 'MONICA ANDREA HERNANDEZ RUIZ', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('808', 'RENE ALBERTO DIAZ GOMEZ', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('809', 'OSCAR JAVIER RAMIREZ MARTIN', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('810', 'LUIS FELIPE ALVAREZ ALONSO', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('811', 'TATIANA CHEN DIAZ', '2010-07-24', '2', '1');
INSERT INTO `persona` VALUES ('812', 'JUAN CARLOS JIMENEZ HERNANDEZ', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('813', 'DIANA STEFANIA TORRES MORENO', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('814', 'CLAUDIA SOCORRO SINGH GUTIERREZ', '2009-10-19', '2', '1');
INSERT INTO `persona` VALUES ('815', 'ELKIN RUIZ AGUIRRE', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('816', 'LILIANA STEFANNY ROJAS ALVAREZ', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('817', 'CARLOS ESTEBAN ROMERO GIL', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('818', 'JUAN MANUEL CASTRO SALAZAR', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('819', 'CRISTIAN CAMILO FLORES IBAÑEZ', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('820', 'MEYLIN VIVIANA MUÑOZ MUÑOZ', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('821', 'ENRIQUE GUTIERREZ URIARTE', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('822', 'MARY VARGAS BLANCO', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('823', 'CRISTIAN CAMILO DA SILVA PINEDO', '2010-09-13', '2', '1');
INSERT INTO `persona` VALUES ('824', 'MEYLIN VIVIANA MORALES SAEZ', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('825', 'YEFERSON RIKI CASTILLO ORTIZ DE ZARATE', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('826', 'MAURICIO JAVIER MARTIN ORTIZ', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('827', 'MONICA ANDREA MORENO ANGULO', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('828', 'RENE ALBERTO SILVA UGARTE', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('829', 'OSCAR JAVIER ORTIZ DIEZ', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('830', 'LUIS FELIPE PEREIRA RAMOS', '2009-10-02', '2', '1');
INSERT INTO `persona` VALUES ('831', 'TATIANA REYES SAENZ', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('832', 'JUAN CARLOS RAMOS QUINTANA', '2010-01-27', '2', '1');
INSERT INTO `persona` VALUES ('833', 'DIANA STEFANIA SUAREZ MARQUINEZ', '2010-07-28', '2', '1');
INSERT INTO `persona` VALUES ('834', 'CLAUDIA SOCORRO MEDINA ROMERO', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('835', 'ELKIN LIN ORTEGA', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('836', 'LILIANA STEFANNY WANG SANTAMARIA', '2010-05-10', '2', '1');
INSERT INTO `persona` VALUES ('837', 'CARLOS ESTEBAN HERRERA DOMINGUEZ', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('838', 'JUAN MANUEL CRUZ RUIZ DE AZUA', '2009-12-24', '2', '1');
INSERT INTO `persona` VALUES ('839', 'CHRISTIAN MIGUEL MENDEZ SANZ', '2010-05-13', '2', '1');
INSERT INTO `persona` VALUES ('840', 'HECTOR GENTIL MARIN ARMENTIA', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('841', 'NELLY YAZMIN FERREIRA OCHOA', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('842', 'DAMARIS MENDOZA DELGADO', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('843', 'AMANDA VASQUEZ RAMIREZ', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('844', 'ANGIE LORENA CABRERA SANTOS', '2010-01-10', '2', '1');
INSERT INTO `persona` VALUES ('845', 'JOSE DENIS ZHANG LANDA', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('846', 'KAROL JOE NUÑEZ ELORZA', '2009-10-18', '2', '1');
INSERT INTO `persona` VALUES ('847', 'CARLOS ALBEIRO DOS SANTOS CASTILLO', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('848', 'HERNAN ALEXIS PISFIL SANZ', '2009-12-22', '2', '1');
INSERT INTO `persona` VALUES ('849', 'JORGE ALIRIO PUEMAPE ARMENTIA', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('850', 'YESNARDA NAIROBI FLORES OCHOA', '2009-09-10', '2', '1');
INSERT INTO `persona` VALUES ('851', 'DIANA CAROLINA VARGAS DELGADO', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('852', 'HAROLD ORLANDO GONZALES RAMIREZ', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('853', 'ZULLY JOHANA VERA SANTOS', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('854', 'JULIAN CAMILO MONSALVE LANDA', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('855', 'MARIA PEREZ ELORZA', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('856', 'FLOR BENAVIDES CASTILLO', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('857', 'JUAN PISFIL PUEMAPE', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('858', 'ARMANDO FLORES VARGAS', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('859', 'ENRIQUE RODRIGUEZ GARCIA', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('860', 'VERONICA GARCIA FERNANDEZ', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('861', 'MARIA GONZALEZ MARTINEZ', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('862', 'FLORES LOPEZ GONZALEZ', '2010-03-11', '2', '1');
INSERT INTO `persona` VALUES ('863', 'TOMASA PEREZ PEREZ', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('864', 'CRISTIAN CAMILO MARTINEZ LOPEZ', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('865', 'MEYLIN VIVIANA SANCHEZ RODRIGUEZ', '2009-11-19', '2', '1');
INSERT INTO `persona` VALUES ('866', 'YEFERSON RIKI FERNANDEZ SANCHEZ', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('867', 'MAURICIO JAVIER GOMEZ JIMENEZ', '2010-05-22', '2', '1');
INSERT INTO `persona` VALUES ('868', 'MONICA ANDREA HERNANDEZ RUIZ', '2009-10-11', '2', '1');
INSERT INTO `persona` VALUES ('869', 'RENE ALBERTO DIAZ GOMEZ', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('870', 'OSCAR JAVIER RAMIREZ MARTIN', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('871', 'LUIS FELIPE ALVAREZ ALONSO', '2010-03-14', '2', '1');
INSERT INTO `persona` VALUES ('872', 'TATIANA CHEN DIAZ', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('873', 'JUAN CARLOS JIMENEZ HERNANDEZ', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('874', 'DIANA STEFANIA TORRES MORENO', '2010-06-14', '2', '1');
INSERT INTO `persona` VALUES ('875', 'CLAUDIA SOCORRO SINGH GUTIERREZ', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('876', 'ELKIN RUIZ AGUIRRE', '2010-02-18', '2', '1');
INSERT INTO `persona` VALUES ('877', 'LILIANA STEFANNY ROJAS ALVAREZ', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('878', 'CARLOS ESTEBAN ROMERO GIL', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('879', 'JUAN MANUEL CASTRO SALAZAR', '2010-04-23', '2', '1');
INSERT INTO `persona` VALUES ('880', 'CRISTIAN CAMILO FLORES IBAÑEZ', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('881', 'MEYLIN VIVIANA MUÑOZ MUÑOZ', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('882', 'ENRIQUE GUTIERREZ URIARTE', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('883', 'MARY VARGAS BLANCO', '2009-06-28', '2', '1');
INSERT INTO `persona` VALUES ('884', 'CRISTIAN CAMILO DA SILVA PINEDO', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('885', 'MEYLIN VIVIANA MORALES SAEZ', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('886', 'YEFERSON RIKI CASTILLO ORTIZ DE ZARATE', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('887', 'MAURICIO JAVIER MARTIN ORTIZ', '2009-10-16', '2', '1');
INSERT INTO `persona` VALUES ('888', 'MONICA ANDREA MORENO ANGULO', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('889', 'RENE ALBERTO SILVA UGARTE', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('890', 'OSCAR JAVIER ORTIZ DIEZ', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('891', 'LUIS FELIPE PEREIRA RAMOS', '2009-08-25', '2', '1');
INSERT INTO `persona` VALUES ('892', 'TATIANA REYES SAENZ', '2010-03-15', '2', '1');
INSERT INTO `persona` VALUES ('893', 'JUAN CARLOS RAMOS QUINTANA', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('894', 'DIANA STEFANIA SUAREZ MARQUINEZ', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('895', 'CLAUDIA SOCORRO MEDINA ROMERO', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('896', 'ELKIN LIN ORTEGA', '2010-08-05', '2', '1');
INSERT INTO `persona` VALUES ('897', 'LILIANA STEFANNY WANG SANTAMARIA', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('898', 'CARLOS ESTEBAN HERRERA DOMINGUEZ', '2010-09-13', '2', '1');
INSERT INTO `persona` VALUES ('899', 'JUAN MANUEL CRUZ RUIZ DE AZUA', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('900', 'CHRISTIAN MIGUEL MENDEZ SANZ', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('901', 'HECTOR GENTIL MARIN ARMENTIA', '2010-01-27', '2', '1');
INSERT INTO `persona` VALUES ('902', 'NELLY YAZMIN FERREIRA OCHOA', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('903', 'DAMARIS MENDOZA DELGADO', '2010-02-16', '2', '1');
INSERT INTO `persona` VALUES ('904', 'AMANDA VASQUEZ RAMIREZ', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('905', 'ANGIE LORENA CABRERA SANTOS', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('906', 'JOSE DENIS ZHANG LANDA', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('907', 'KAROL JOE NUÑEZ ELORZA', '2009-09-27', '2', '1');
INSERT INTO `persona` VALUES ('908', 'CARLOS ALBEIRO DOS SANTOS CASTILLO', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('909', 'HERNAN ALEXIS PISFIL SANZ', '2009-06-16', '2', '1');
INSERT INTO `persona` VALUES ('910', 'JORGE ALIRIO PUEMAPE ARMENTIA', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('911', 'YESNARDA NAIROBI FLORES OCHOA', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('912', 'DIANA CAROLINA VARGAS DELGADO', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('913', 'HAROLD ORLANDO GONZALES RAMIREZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('914', 'ZULLY JOHANA VERA SANTOS', '2010-08-04', '2', '1');
INSERT INTO `persona` VALUES ('915', 'JULIAN CAMILO MONSALVE LANDA', '2010-08-21', '2', '1');
INSERT INTO `persona` VALUES ('916', 'MARIA PEREZ ELORZA', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('917', 'FLOR BENAVIDES CASTILLO', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('918', 'JUAN PISFIL PUEMAPE', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('919', 'ARMANDO FLORES VARGAS', '2010-08-19', '2', '1');
INSERT INTO `persona` VALUES ('920', 'ENRIQUE RODRIGUEZ GARCIA', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('921', 'VERONICA GARCIA FERNANDEZ', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('922', 'MARIA GONZALEZ MARTINEZ', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('923', 'FLORES LOPEZ GONZALEZ', '2009-10-21', '2', '1');
INSERT INTO `persona` VALUES ('924', 'TOMASA PISFIL PUEMAPE', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('925', 'CRISTIAN CAMILO FLORES VARGAS', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('926', 'MEYLIN VIVIANA RODRIGUEZ GARCIA', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('927', 'YEFERSON RIKI GARCIA FERNANDEZ', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('928', 'MAURICIO JAVIER GONZALEZ MARTINEZ', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('929', 'MONICA ANDREA LOPEZ GONZALEZ', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('930', 'RENE ALBERTO PEREZ PEREZ', '2010-01-09', '2', '1');
INSERT INTO `persona` VALUES ('931', 'OSCAR JAVIER MARTINEZ LOPEZ', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('932', 'LUIS FELIPE SANCHEZ RODRIGUEZ', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('933', 'TATIANA FERNANDEZ SANCHEZ', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('934', 'JUAN CARLOS GOMEZ JIMENEZ', '2010-03-07', '2', '1');
INSERT INTO `persona` VALUES ('935', 'DIANA STEFANIA HERNANDEZ RUIZ', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('936', 'CLAUDIA SOCORRO DIAZ GOMEZ', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('937', 'ELKIN RAMIREZ MARTIN', '2010-02-28', '2', '1');
INSERT INTO `persona` VALUES ('938', 'LILIANA STEFANNY ALVAREZ ALONSO', '2009-12-31', '2', '1');
INSERT INTO `persona` VALUES ('939', 'CARLOS ESTEBAN CHEN DIAZ', '2009-09-04', '2', '1');
INSERT INTO `persona` VALUES ('940', 'JUAN MANUEL JIMENEZ HERNANDEZ', '2010-08-05', '2', '1');
INSERT INTO `persona` VALUES ('941', 'CRISTIAN CAMILO TORRES MORENO', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('942', 'MEYLIN VIVIANA SINGH GUTIERREZ', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('943', 'ENRIQUE RUIZ AGUIRRE', '2009-12-22', '2', '1');
INSERT INTO `persona` VALUES ('944', 'MARY ROJAS ALVAREZ', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('945', 'CRISTIAN CAMILO ROMERO GIL', '2010-03-09', '2', '1');
INSERT INTO `persona` VALUES ('946', 'MEYLIN VIVIANA CASTRO SALAZAR', '2009-08-10', '2', '1');
INSERT INTO `persona` VALUES ('947', 'YEFERSON RIKI FLORES IBAÑEZ', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('948', 'MAURICIO JAVIER MUÑOZ MUÑOZ', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('949', 'MONICA ANDREA GUTIERREZ URIARTE', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('950', 'RENE ALBERTO VARGAS BLANCO', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('951', 'OSCAR JAVIER DA SILVA PINEDO', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('952', 'LUIS FELIPE MORALES SAEZ', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('953', 'TATIANA CASTILLO ORTIZ DE ZARATE', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('954', 'JUAN CARLOS MARTIN ORTIZ', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('955', 'DIANA STEFANIA MORENO ANGULO', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('956', 'CLAUDIA SOCORRO SILVA UGARTE', '2009-06-15', '2', '1');
INSERT INTO `persona` VALUES ('957', 'ELKIN ORTIZ DIEZ', '2009-11-15', '2', '1');
INSERT INTO `persona` VALUES ('958', 'LILIANA STEFANNY PEREIRA RAMOS', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('959', 'CARLOS ESTEBAN REYES SAENZ', '2010-08-04', '2', '1');
INSERT INTO `persona` VALUES ('960', 'JUAN MANUEL RAMOS QUINTANA', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('961', 'CHRISTIAN MIGUEL SUAREZ MARQUINEZ', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('962', 'HECTOR GENTIL MEDINA ROMERO', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('963', 'NELLY YAZMIN LIN ORTEGA', '2010-06-17', '2', '1');
INSERT INTO `persona` VALUES ('964', 'DAMARIS WANG SANTAMARIA', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('965', 'AMANDA HERRERA DOMINGUEZ', '2009-06-15', '2', '1');
INSERT INTO `persona` VALUES ('966', 'ANGIE LORENA CRUZ RUIZ DE AZUA', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('967', 'JOSE DENIS MENDEZ SANZ', '2009-12-06', '2', '1');
INSERT INTO `persona` VALUES ('968', 'KAROL JOE MARIN ARMENTIA', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('969', 'CARLOS ALBEIRO FERREIRA OCHOA', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('970', 'HERNAN ALEXIS MENDOZA DELGADO', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('971', 'JORGE ALIRIO VASQUEZ RAMIREZ', '2010-01-08', '2', '1');
INSERT INTO `persona` VALUES ('972', 'YESNARDA NAIROBI CABRERA SANTOS', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('973', 'DIANA CAROLINA ZHANG LANDA', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('974', 'HAROLD ORLANDO NUÑEZ ELORZA', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('975', 'ZULLY JOHANA DOS SANTOS CASTILLO', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('976', 'JULIAN CAMILO PISFIL SANZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('977', 'MARIA PUEMAPE ARMENTIA', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('978', 'FLOR FLORES OCHOA', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('979', 'JUAN VARGAS DELGADO', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('980', 'ARMANDO GONZALES RAMIREZ', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('981', 'ENRIQUE VERA SANTOS', '2010-02-28', '2', '1');
INSERT INTO `persona` VALUES ('982', 'VERONICA MONSALVE LANDA', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('983', 'MARIA PEREZ ELORZA', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('984', 'FLORES BENAVIDES CASTILLO', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('985', 'TOMASA PISFIL PUEMAPE', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('986', 'CRISTIAN CAMILO FLORES VARGAS', '2009-12-06', '2', '1');
INSERT INTO `persona` VALUES ('987', 'MEYLIN VIVIANA RODRIGUEZ GARCIA', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('988', 'YEFERSON RIKI GARCIA FERNANDEZ', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('989', 'MAURICIO JAVIER GONZALEZ MARTINEZ', '2009-11-14', '2', '1');
INSERT INTO `persona` VALUES ('990', 'MONICA ANDREA LOPEZ GONZALEZ', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('991', 'RENE ALBERTO PEREZ PEREZ', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('992', 'OSCAR JAVIER MARTINEZ LOPEZ', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('993', 'LUIS FELIPE SANCHEZ RODRIGUEZ', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('994', 'TATIANA FERNANDEZ SANCHEZ', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('995', 'JUAN CARLOS GOMEZ JIMENEZ', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('996', 'DIANA STEFANIA HERNANDEZ RUIZ', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('997', 'CLAUDIA SOCORRO DIAZ GOMEZ', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('998', 'ELKIN RAMIREZ MARTIN', '2010-01-08', '2', '1');
INSERT INTO `persona` VALUES ('999', 'LILIANA STEFANNY ALVAREZ ALONSO', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('1000', 'CARLOS ESTEBAN CHEN DIAZ', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('1001', 'JUAN MANUEL JIMENEZ HERNANDEZ', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('1002', 'CRISTIAN CAMILO TORRES MORENO', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('1003', 'MEYLIN VIVIANA SINGH GUTIERREZ', '2009-11-17', '2', '1');
INSERT INTO `persona` VALUES ('1004', 'ENRIQUE RUIZ AGUIRRE', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('1005', 'MARY ROJAS ALVAREZ', '2010-02-01', '2', '1');
INSERT INTO `persona` VALUES ('1006', 'CRISTIAN CAMILO ROMERO GIL', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('1007', 'MEYLIN VIVIANA CASTRO SALAZAR', '2009-07-07', '2', '1');
INSERT INTO `persona` VALUES ('1008', 'YEFERSON RIKI FLORES IBAÑEZ', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('1009', 'MAURICIO JAVIER MUÑOZ MUÑOZ', '2010-04-22', '2', '1');
INSERT INTO `persona` VALUES ('1010', 'MONICA ANDREA GUTIERREZ URIARTE', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('1011', 'RENE ALBERTO VARGAS BLANCO', '2009-12-27', '2', '1');
INSERT INTO `persona` VALUES ('1012', 'OSCAR JAVIER DA SILVA PINEDO', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('1013', 'LUIS FELIPE MORALES SAEZ', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('1014', 'TATIANA CASTILLO ORTIZ DE ZARATE', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('1015', 'JUAN CARLOS MARTIN ORTIZ', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('1016', 'DIANA STEFANIA MORENO ANGULO', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('1017', 'CLAUDIA SOCORRO SILVA UGARTE', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('1018', 'ELKIN ORTIZ DIEZ', '2010-09-14', '2', '1');
INSERT INTO `persona` VALUES ('1019', 'LILIANA STEFANNY PEREIRA RAMOS', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('1020', 'CARLOS ESTEBAN REYES SAENZ', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('1021', 'JUAN MANUEL RAMOS QUINTANA', '2009-12-20', '2', '1');
INSERT INTO `persona` VALUES ('1022', 'CHRISTIAN MIGUEL SUAREZ MARQUINEZ', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('1023', 'HECTOR GENTIL MEDINA ROMERO', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('1024', 'NELLY YAZMIN LIN ORTEGA', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('1025', 'DAMARIS WANG SANTAMARIA', '2010-03-07', '2', '1');
INSERT INTO `persona` VALUES ('1026', 'AMANDA HERRERA DOMINGUEZ', '2009-10-12', '2', '1');
INSERT INTO `persona` VALUES ('1027', 'ANGIE LORENA CRUZ RUIZ DE AZUA', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('1028', 'JOSE DENIS MENDEZ SANZ', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('1029', 'KAROL JOE MARIN ARMENTIA', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('1030', 'CARLOS ALBEIRO FERREIRA OCHOA', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('1031', 'HERNAN ALEXIS MENDOZA DELGADO', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('1032', 'JORGE ALIRIO VASQUEZ RAMIREZ', '2010-05-01', '2', '1');
INSERT INTO `persona` VALUES ('1033', 'YESNARDA NAIROBI CABRERA SANTOS', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('1034', 'DIANA CAROLINA ZHANG LANDA', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('1035', 'HAROLD ORLANDO NUÑEZ ELORZA', '2009-06-20', '2', '1');
INSERT INTO `persona` VALUES ('1036', 'ZULLY JOHANA DOS SANTOS CASTILLO', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('1037', 'JULIAN CAMILO PISFIL SANZ', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('1038', 'MARIA PUEMAPE ARMENTIA', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('1039', 'FLOR FLORES OCHOA', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('1040', 'JUAN VARGAS DELGADO', '2009-10-10', '2', '1');
INSERT INTO `persona` VALUES ('1041', 'ARMANDO GONZALES RAMIREZ', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('1042', 'ENRIQUE VERA SANTOS', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('1043', 'VERONICA MONSALVE LANDA', '2010-03-14', '2', '1');
INSERT INTO `persona` VALUES ('1044', 'MARIA PEREZ ELORZA', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('1045', 'FLORES BENAVIDES CASTILLO', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('1046', 'TOMASA PISFIL PUEMAPE', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('1047', 'CRISTIAN CAMILO FLORES VARGAS', '2009-10-03', '2', '1');
INSERT INTO `persona` VALUES ('1048', 'MEYLIN VIVIANA RODRIGUEZ GARCIA', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('1049', 'YEFERSON RIKI GARCIA FERNANDEZ', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('1050', 'MAURICIO JAVIER GONZALEZ MARTINEZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('1051', 'MONICA ANDREA LOPEZ GONZALEZ', '2009-12-28', '2', '1');
INSERT INTO `persona` VALUES ('1052', 'RENE ALBERTO PISFIL PUEMAPE', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('1053', 'OSCAR JAVIER FLORES VARGAS', '2009-10-05', '2', '1');
INSERT INTO `persona` VALUES ('1054', 'LUIS FELIPE RODRIGUEZ GARCIA', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('1055', 'TATIANA GARCIA FERNANDEZ', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('1056', 'JUAN CARLOS GONZALEZ MARTINEZ', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('1057', 'DIANA STEFANIA LOPEZ GONZALEZ', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('1058', 'CLAUDIA SOCORRO PEREZ PEREZ', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('1059', 'ELKIN MARTINEZ LOPEZ', '2010-01-30', '2', '1');
INSERT INTO `persona` VALUES ('1060', 'LILIANA STEFANNY SANCHEZ RODRIGUEZ', '2009-12-20', '2', '1');
INSERT INTO `persona` VALUES ('1061', 'CARLOS ESTEBAN FERNANDEZ SANCHEZ', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('1062', 'JUAN MANUEL GOMEZ JIMENEZ', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('1063', 'CRISTIAN CAMILO HERNANDEZ RUIZ', '2010-02-26', '2', '1');
INSERT INTO `persona` VALUES ('1064', 'MEYLIN VIVIANA DIAZ GOMEZ', '2009-12-22', '2', '1');
INSERT INTO `persona` VALUES ('1065', 'ENRIQUE RAMIREZ MARTIN', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('1066', 'MARY ALVAREZ ALONSO', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('1067', 'CRISTIAN CAMILO CHEN DIAZ', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('1068', 'MEYLIN VIVIANA JIMENEZ HERNANDEZ', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('1069', 'YEFERSON RIKI TORRES MORENO', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('1070', 'MAURICIO JAVIER SINGH GUTIERREZ', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('1071', 'MONICA ANDREA RUIZ AGUIRRE', '2010-06-27', '2', '1');
INSERT INTO `persona` VALUES ('1072', 'RENE ALBERTO ROJAS ALVAREZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('1073', 'OSCAR JAVIER ROMERO GIL', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('1074', 'LUIS FELIPE CASTRO SALAZAR', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('1075', 'TATIANA FLORES IBAÑEZ', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('1076', 'JUAN CARLOS MUÑOZ MUÑOZ', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('1077', 'DIANA STEFANIA GUTIERREZ URIARTE', '2010-01-09', '2', '1');
INSERT INTO `persona` VALUES ('1078', 'CLAUDIA SOCORRO VARGAS BLANCO', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('1079', 'ELKIN DA SILVA PINEDO', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('1080', 'LILIANA STEFANNY MORALES SAEZ', '2010-09-07', '2', '1');
INSERT INTO `persona` VALUES ('1081', 'CARLOS ESTEBAN CASTILLO ORTIZ DE ZARATE', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('1082', 'JUAN MANUEL MARTIN ORTIZ', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('1083', 'CHRISTIAN MIGUEL MORENO ANGULO', '2010-05-11', '2', '1');
INSERT INTO `persona` VALUES ('1084', 'HECTOR GENTIL SILVA UGARTE', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('1085', 'NELLY YAZMIN ORTIZ DIEZ', '2010-02-13', '2', '1');
INSERT INTO `persona` VALUES ('1086', 'DAMARIS PEREIRA RAMOS', '2010-02-20', '2', '1');
INSERT INTO `persona` VALUES ('1087', 'AMANDA REYES SAENZ', '2010-06-30', '2', '1');
INSERT INTO `persona` VALUES ('1088', 'ANGIE LORENA RAMOS QUINTANA', '2009-12-27', '2', '1');
INSERT INTO `persona` VALUES ('1089', 'JOSE DENIS SUAREZ MARQUINEZ', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('1090', 'KAROL JOE MEDINA ROMERO', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('1091', 'CARLOS ALBEIRO LIN ORTEGA', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('1092', 'HERNAN ALEXIS WANG SANTAMARIA', '2010-06-26', '2', '1');
INSERT INTO `persona` VALUES ('1093', 'JORGE ALIRIO HERRERA DOMINGUEZ', '2009-06-14', '2', '1');
INSERT INTO `persona` VALUES ('1094', 'YESNARDA NAIROBI CRUZ RUIZ DE AZUA', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('1095', 'DIANA CAROLINA MENDEZ SANZ', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('1096', 'HAROLD ORLANDO MARIN ARMENTIA', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('1097', 'ZULLY JOHANA FERREIRA OCHOA', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('1098', 'JULIAN CAMILO MENDOZA DELGADO', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('1099', 'MARIA VASQUEZ RAMIREZ', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('1100', 'FLOR CABRERA SANTOS', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('1101', 'JUAN ZHANG LANDA', '2010-02-18', '2', '1');
INSERT INTO `persona` VALUES ('1102', 'ARMANDO NUÑEZ ELORZA', '2010-02-16', '2', '1');
INSERT INTO `persona` VALUES ('1103', 'ENRIQUE DOS SANTOS CASTILLO', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('1104', 'VERONICA PISFIL SANZ', '2009-08-08', '2', '1');
INSERT INTO `persona` VALUES ('1105', 'MARIA PUEMAPE ARMENTIA', '2010-09-14', '2', '1');
INSERT INTO `persona` VALUES ('1106', 'FLORES FLORES OCHOA', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('1107', 'TOMASA VARGAS DELGADO', '2010-04-17', '2', '1');
INSERT INTO `persona` VALUES ('1108', 'CRISTIAN CAMILO GONZALES RAMIREZ', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('1109', 'MEYLIN VIVIANA VERA SANTOS', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('1110', 'YEFERSON RIKI MONSALVE LANDA', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('1111', 'MAURICIO JAVIER PEREZ ELORZA', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('1112', 'MONICA ANDREA BENAVIDES CASTILLO', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('1113', 'RENE ALBERTO PISFIL PUEMAPE', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('1114', 'OSCAR JAVIER FLORES VARGAS', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('1115', 'LUIS FELIPE RODRIGUEZ GARCIA', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('1116', 'TATIANA GARCIA FERNANDEZ', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('1117', 'JUAN CARLOS GONZALEZ MARTINEZ', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('1118', 'DIANA STEFANIA LOPEZ GONZALEZ', '2010-09-07', '2', '1');
INSERT INTO `persona` VALUES ('1119', 'CLAUDIA SOCORRO PEREZ PEREZ', '2009-10-02', '2', '1');
INSERT INTO `persona` VALUES ('1120', 'ELKIN MARTINEZ LOPEZ', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('1121', 'LILIANA STEFANNY SANCHEZ RODRIGUEZ', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('1122', 'CARLOS ESTEBAN FERNANDEZ SANCHEZ', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('1123', 'JUAN MANUEL GOMEZ JIMENEZ', '2010-01-10', '2', '1');
INSERT INTO `persona` VALUES ('1124', 'CRISTIAN CAMILO HERNANDEZ RUIZ', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('1125', 'MEYLIN VIVIANA DIAZ GOMEZ', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('1126', 'ENRIQUE RAMIREZ MARTIN', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('1127', 'MARY ALVAREZ ALONSO', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('1128', 'CRISTIAN CAMILO CHEN DIAZ', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('1129', 'MEYLIN VIVIANA JIMENEZ HERNANDEZ', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('1130', 'YEFERSON RIKI TORRES MORENO', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('1131', 'MAURICIO JAVIER SINGH GUTIERREZ', '2009-08-18', '2', '1');
INSERT INTO `persona` VALUES ('1132', 'MONICA ANDREA RUIZ AGUIRRE', '2009-11-08', '2', '1');
INSERT INTO `persona` VALUES ('1133', 'RENE ALBERTO ROJAS ALVAREZ', '2010-01-22', '2', '1');
INSERT INTO `persona` VALUES ('1134', 'OSCAR JAVIER ROMERO GIL', '2009-11-08', '2', '1');
INSERT INTO `persona` VALUES ('1135', 'LUIS FELIPE CASTRO SALAZAR', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('1136', 'TATIANA FLORES IBAÑEZ', '2010-04-17', '2', '1');
INSERT INTO `persona` VALUES ('1137', 'JUAN CARLOS MUÑOZ MUÑOZ', '2010-01-24', '2', '1');
INSERT INTO `persona` VALUES ('1138', 'DIANA STEFANIA GUTIERREZ URIARTE', '2010-08-30', '2', '1');
INSERT INTO `persona` VALUES ('1139', 'CLAUDIA SOCORRO VARGAS BLANCO', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('1140', 'ELKIN DA SILVA PINEDO', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('1141', 'LILIANA STEFANNY MORALES SAEZ', '2010-05-15', '2', '1');
INSERT INTO `persona` VALUES ('1142', 'CARLOS ESTEBAN CASTILLO ORTIZ DE ZARATE', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('1143', 'JUAN MANUEL MARTIN ORTIZ', '2009-06-25', '2', '1');
INSERT INTO `persona` VALUES ('1144', 'CHRISTIAN MIGUEL MORENO ANGULO', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('1145', 'HECTOR GENTIL SILVA UGARTE', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('1146', 'NELLY YAZMIN ORTIZ DIEZ', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('1147', 'DAMARIS PEREIRA RAMOS', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('1148', 'AMANDA REYES SAENZ', '2010-04-25', '2', '1');
INSERT INTO `persona` VALUES ('1149', 'ANGIE LORENA RAMOS QUINTANA', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('1150', 'JOSE DENIS SUAREZ MARQUINEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('1151', 'KAROL JOE MEDINA ROMERO', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('1152', 'CARLOS ALBEIRO LIN ORTEGA', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('1153', 'HERNAN ALEXIS WANG SANTAMARIA', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('1154', 'JORGE ALIRIO HERRERA DOMINGUEZ', '2010-02-16', '2', '1');
INSERT INTO `persona` VALUES ('1155', 'YESNARDA NAIROBI CRUZ RUIZ DE AZUA', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('1156', 'DIANA CAROLINA MENDEZ SANZ', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('1157', 'HAROLD ORLANDO MARIN ARMENTIA', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('1158', 'ZULLY JOHANA FERREIRA OCHOA', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('1159', 'JULIAN CAMILO MENDOZA DELGADO', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('1160', 'MARIA VASQUEZ RAMIREZ', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('1161', 'FLOR CABRERA SANTOS', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('1162', 'JUAN ZHANG LANDA', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('1163', 'ARMANDO NUÑEZ ELORZA', '2009-07-17', '2', '1');
INSERT INTO `persona` VALUES ('1164', 'ENRIQUE DOS SANTOS CASTILLO', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('1165', 'VERONICA PISFIL SANZ', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('1166', 'MARIA PUEMAPE ARMENTIA', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('1167', 'FLORES FLORES OCHOA', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('1168', 'TOMASA VARGAS DELGADO', '2010-01-30', '2', '1');
INSERT INTO `persona` VALUES ('1169', 'CRISTIAN CAMILO GONZALES RAMIREZ', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('1170', 'MEYLIN VIVIANA VERA SANTOS', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('1171', 'YEFERSON RIKI MONSALVE LANDA', '2010-01-21', '2', '1');
INSERT INTO `persona` VALUES ('1172', 'MAURICIO JAVIER PEREZ ELORZA', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('1173', 'MONICA ANDREA BENAVIDES CASTILLO', '2009-09-27', '2', '1');
INSERT INTO `persona` VALUES ('1174', 'RENE ALBERTO PISFIL PUEMAPE', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('1175', 'OSCAR JAVIER FLORES VARGAS', '2009-06-20', '2', '1');
INSERT INTO `persona` VALUES ('1176', 'LUIS FELIPE RODRIGUEZ GARCIA', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('1177', 'TATIANA GARCIA FERNANDEZ', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('1178', 'JUAN CARLOS GONZALEZ MARTINEZ', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('1179', 'DIANA STEFANIA LOPEZ GONZALEZ', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('1180', 'CLAUDIA SOCORRO PISFIL PUEMAPE', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('1181', 'ELKIN FLORES VARGAS', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('1182', 'LILIANA STEFANNY RODRIGUEZ GARCIA', '2010-01-10', '2', '1');
INSERT INTO `persona` VALUES ('1183', 'CARLOS ESTEBAN GARCIA FERNANDEZ', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('1184', 'JUAN MANUEL GONZALEZ MARTINEZ', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('1185', 'CRISTIAN CAMILO LOPEZ GONZALEZ', '2010-08-30', '2', '1');
INSERT INTO `persona` VALUES ('1186', 'MEYLIN VIVIANA PEREZ PEREZ', '2009-08-11', '2', '1');
INSERT INTO `persona` VALUES ('1187', 'ENRIQUE MARTINEZ LOPEZ', '2010-08-05', '2', '1');
INSERT INTO `persona` VALUES ('1188', 'MARY SANCHEZ RODRIGUEZ', '2009-08-04', '2', '1');
INSERT INTO `persona` VALUES ('1189', 'CRISTIAN CAMILO FERNANDEZ SANCHEZ', '2009-08-18', '2', '1');
INSERT INTO `persona` VALUES ('1190', 'MEYLIN VIVIANA GOMEZ JIMENEZ', '2009-12-15', '2', '1');
INSERT INTO `persona` VALUES ('1191', 'YEFERSON RIKI HERNANDEZ RUIZ', '2010-06-02', '2', '1');
INSERT INTO `persona` VALUES ('1192', 'MAURICIO JAVIER DIAZ GOMEZ', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('1193', 'MONICA ANDREA RAMIREZ MARTIN', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('1194', 'RENE ALBERTO ALVAREZ ALONSO', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('1195', 'OSCAR JAVIER CHEN DIAZ', '2009-06-23', '2', '1');
INSERT INTO `persona` VALUES ('1196', 'LUIS FELIPE JIMENEZ HERNANDEZ', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('1197', 'TATIANA TORRES MORENO', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('1198', 'JUAN CARLOS SINGH GUTIERREZ', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('1199', 'DIANA STEFANIA RUIZ AGUIRRE', '2009-12-15', '2', '1');
INSERT INTO `persona` VALUES ('1200', 'CLAUDIA SOCORRO ROJAS ALVAREZ', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('1201', 'ELKIN ROMERO GIL', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('1202', 'LILIANA STEFANNY CASTRO SALAZAR', '2010-01-08', '2', '1');
INSERT INTO `persona` VALUES ('1203', 'CARLOS ESTEBAN FLORES IBAÑEZ', '2009-07-26', '2', '1');
INSERT INTO `persona` VALUES ('1204', 'JUAN MANUEL MUÑOZ MUÑOZ', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('1205', 'CHRISTIAN MIGUEL GUTIERREZ URIARTE', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('1206', 'HECTOR GENTIL VARGAS BLANCO', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('1207', 'NELLY YAZMIN DA SILVA PINEDO', '2009-09-04', '2', '1');
INSERT INTO `persona` VALUES ('1208', 'DAMARIS MORALES SAEZ', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('1209', 'AMANDA CASTILLO ORTIZ DE ZARATE', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('1210', 'ANGIE LORENA MARTIN ORTIZ', '2009-11-30', '2', '1');
INSERT INTO `persona` VALUES ('1211', 'JOSE DENIS MORENO ANGULO', '2010-06-26', '2', '1');
INSERT INTO `persona` VALUES ('1212', 'KAROL JOE SILVA UGARTE', '2010-07-23', '2', '1');
INSERT INTO `persona` VALUES ('1213', 'CARLOS ALBEIRO ORTIZ DIEZ', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('1214', 'HERNAN ALEXIS PEREIRA RAMOS', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('1215', 'JORGE ALIRIO REYES SAENZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('1216', 'YESNARDA NAIROBI RAMOS QUINTANA', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('1217', 'DIANA CAROLINA SUAREZ MARQUINEZ', '2010-05-22', '2', '1');
INSERT INTO `persona` VALUES ('1218', 'HAROLD ORLANDO MEDINA ROMERO', '2010-04-05', '2', '1');
INSERT INTO `persona` VALUES ('1219', 'ZULLY JOHANA LIN ORTEGA', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('1220', 'JULIAN CAMILO WANG SANTAMARIA', '2010-01-22', '2', '1');
INSERT INTO `persona` VALUES ('1221', 'MARIA HERRERA DOMINGUEZ', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('1222', 'FLOR CRUZ RUIZ DE AZUA', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('1223', 'JUAN MENDEZ SANZ', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('1224', 'ARMANDO MARIN ARMENTIA', '2010-07-17', '2', '1');
INSERT INTO `persona` VALUES ('1225', 'ENRIQUE FERREIRA OCHOA', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('1226', 'VERONICA MENDOZA DELGADO', '2009-11-17', '2', '1');
INSERT INTO `persona` VALUES ('1227', 'MARIA VASQUEZ RAMIREZ', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('1228', 'FLORES CABRERA SANTOS', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('1229', 'TOMASA ZHANG LANDA', '2010-04-26', '2', '1');
INSERT INTO `persona` VALUES ('1230', 'CRISTIAN CAMILO NUÑEZ ELORZA', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('1231', 'MEYLIN VIVIANA DOS SANTOS CASTILLO', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('1232', 'YEFERSON RIKI PISFIL SANZ', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('1233', 'MAURICIO JAVIER PUEMAPE ARMENTIA', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('1234', 'MONICA ANDREA FLORES OCHOA', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('1235', 'RENE ALBERTO VARGAS DELGADO', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('1236', 'OSCAR JAVIER GONZALES RAMIREZ', '2010-07-17', '2', '1');
INSERT INTO `persona` VALUES ('1237', 'LUIS FELIPE VERA SANTOS', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('1238', 'TATIANA MONSALVE LANDA', '2009-06-16', '2', '1');
INSERT INTO `persona` VALUES ('1239', 'JUAN CARLOS PEREZ ELORZA', '2010-03-06', '2', '1');
INSERT INTO `persona` VALUES ('1240', 'DIANA STEFANIA BENAVIDES CASTILLO', '2010-07-21', '2', '1');
INSERT INTO `persona` VALUES ('1241', 'CLAUDIA SOCORRO PISFIL PUEMAPE', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('1242', 'ELKIN FLORES VARGAS', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('1243', 'LILIANA STEFANNY RODRIGUEZ GARCIA', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('1244', 'CARLOS ESTEBAN GARCIA FERNANDEZ', '2010-04-10', '2', '1');
INSERT INTO `persona` VALUES ('1245', 'JUAN MANUEL GONZALEZ MARTINEZ', '2010-03-01', '2', '1');
INSERT INTO `persona` VALUES ('1246', 'CRISTIAN CAMILO LOPEZ GONZALEZ', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('1247', 'MEYLIN VIVIANA PEREZ PEREZ', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('1248', 'ENRIQUE MARTINEZ LOPEZ', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('1249', 'MARY SANCHEZ RODRIGUEZ', '2010-05-22', '2', '1');
INSERT INTO `persona` VALUES ('1250', 'CRISTIAN CAMILO FERNANDEZ SANCHEZ', '2009-12-16', '2', '1');
INSERT INTO `persona` VALUES ('1251', 'MEYLIN VIVIANA GOMEZ JIMENEZ', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('1252', 'YEFERSON RIKI HERNANDEZ RUIZ', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('1253', 'MAURICIO JAVIER DIAZ GOMEZ', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('1254', 'MONICA ANDREA RAMIREZ MARTIN', '2009-10-11', '2', '1');
INSERT INTO `persona` VALUES ('1255', 'RENE ALBERTO ALVAREZ ALONSO', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('1256', 'OSCAR JAVIER CHEN DIAZ', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('1257', 'LUIS FELIPE JIMENEZ HERNANDEZ', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('1258', 'TATIANA TORRES MORENO', '2010-01-22', '2', '1');
INSERT INTO `persona` VALUES ('1259', 'JUAN CARLOS SINGH GUTIERREZ', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('1260', 'DIANA STEFANIA RUIZ AGUIRRE', '2010-05-28', '2', '1');
INSERT INTO `persona` VALUES ('1261', 'CLAUDIA SOCORRO ROJAS ALVAREZ', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('1262', 'ELKIN ROMERO GIL', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('1263', 'LILIANA STEFANNY CASTRO SALAZAR', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('1264', 'CARLOS ESTEBAN FLORES IBAÑEZ', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('1265', 'JUAN MANUEL MUÑOZ MUÑOZ', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('1266', 'CHRISTIAN MIGUEL GUTIERREZ URIARTE', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('1267', 'HECTOR GENTIL VARGAS BLANCO', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('1268', 'NELLY YAZMIN DA SILVA PINEDO', '2009-11-27', '2', '1');
INSERT INTO `persona` VALUES ('1269', 'DAMARIS MORALES SAEZ', '2009-10-03', '2', '1');
INSERT INTO `persona` VALUES ('1270', 'AMANDA CASTILLO ORTIZ DE ZARATE', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('1271', 'ANGIE LORENA MARTIN ORTIZ', '2009-11-17', '2', '1');
INSERT INTO `persona` VALUES ('1272', 'JOSE DENIS MORENO ANGULO', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('1273', 'KAROL JOE SILVA UGARTE', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('1274', 'CARLOS ALBEIRO ORTIZ DIEZ', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('1275', 'HERNAN ALEXIS PEREIRA RAMOS', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('1276', 'JORGE ALIRIO REYES SAENZ', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('1277', 'YESNARDA NAIROBI RAMOS QUINTANA', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('1278', 'DIANA CAROLINA SUAREZ MARQUINEZ', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('1279', 'HAROLD ORLANDO MEDINA ROMERO', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('1280', 'ZULLY JOHANA LIN ORTEGA', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('1281', 'JULIAN CAMILO WANG SANTAMARIA', '2009-11-21', '2', '1');
INSERT INTO `persona` VALUES ('1282', 'MARIA HERRERA DOMINGUEZ', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('1283', 'FLOR CRUZ RUIZ DE AZUA', '2010-01-29', '2', '1');
INSERT INTO `persona` VALUES ('1284', 'JUAN MENDEZ SANZ', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('1285', 'ARMANDO MARIN ARMENTIA', '2009-06-14', '2', '1');
INSERT INTO `persona` VALUES ('1286', 'ENRIQUE FERREIRA OCHOA', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('1287', 'VERONICA MENDOZA DELGADO', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('1288', 'MARIA VASQUEZ RAMIREZ', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('1289', 'FLORES CABRERA SANTOS', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('1290', 'TOMASA ZHANG LANDA', '2009-06-25', '2', '1');
INSERT INTO `persona` VALUES ('1291', 'CRISTIAN CAMILO NUÑEZ ELORZA', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('1292', 'MEYLIN VIVIANA DOS SANTOS CASTILLO', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('1293', 'YEFERSON RIKI PISFIL SANZ', '2009-06-18', '2', '1');
INSERT INTO `persona` VALUES ('1294', 'MAURICIO JAVIER PUEMAPE ARMENTIA', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('1295', 'MONICA ANDREA FLORES OCHOA', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('1296', 'RENE ALBERTO VARGAS DELGADO', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('1297', 'OSCAR JAVIER GONZALES RAMIREZ', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('1298', 'LUIS FELIPE VERA SANTOS', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('1299', 'TATIANA MONSALVE LANDA', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('1300', 'JUAN CARLOS PEREZ ELORZA', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('1301', 'DIANA STEFANIA BENAVIDES CASTILLO', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('1302', 'CLAUDIA SOCORRO PISFIL PUEMAPE', '2009-11-08', '2', '1');
INSERT INTO `persona` VALUES ('1303', 'ELKIN FLORES VARGAS', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('1304', 'LILIANA STEFANNY RODRIGUEZ GARCIA', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('1305', 'CARLOS ESTEBAN GARCIA FERNANDEZ', '2009-11-06', '2', '1');
INSERT INTO `persona` VALUES ('1306', 'JUAN MANUEL GONZALEZ MARTINEZ', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('1307', 'CRISTIAN CAMILO LOPEZ GONZALEZ', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('1308', 'MEYLIN VIVIANA PISFIL PUEMAPE', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('1309', 'ENRIQUE FLORES VARGAS', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('1310', 'MARY RODRIGUEZ GARCIA', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('1311', 'CRISTIAN CAMILO GARCIA FERNANDEZ', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('1312', 'MEYLIN VIVIANA GONZALEZ MARTINEZ', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('1313', 'YEFERSON RIKI LOPEZ GONZALEZ', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('1314', 'MAURICIO JAVIER PEREZ PEREZ', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('1315', 'MONICA ANDREA MARTINEZ LOPEZ', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('1316', 'RENE ALBERTO SANCHEZ RODRIGUEZ', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('1317', 'OSCAR JAVIER FERNANDEZ SANCHEZ', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('1318', 'LUIS FELIPE GOMEZ JIMENEZ', '2009-06-18', '2', '1');
INSERT INTO `persona` VALUES ('1319', 'TATIANA HERNANDEZ RUIZ', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('1320', 'JUAN CARLOS DIAZ GOMEZ', '2010-01-03', '2', '1');
INSERT INTO `persona` VALUES ('1321', 'DIANA STEFANIA RAMIREZ MARTIN', '2009-10-16', '2', '1');
INSERT INTO `persona` VALUES ('1322', 'CLAUDIA SOCORRO ALVAREZ ALONSO', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('1323', 'ELKIN CHEN DIAZ', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('1324', 'LILIANA STEFANNY JIMENEZ HERNANDEZ', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('1325', 'CARLOS ESTEBAN TORRES MORENO', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('1326', 'JUAN MANUEL SINGH GUTIERREZ', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('1327', 'CHRISTIAN MIGUEL RUIZ AGUIRRE', '2009-06-26', '2', '1');
INSERT INTO `persona` VALUES ('1328', 'HECTOR GENTIL ROJAS ALVAREZ', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('1329', 'NELLY YAZMIN ROMERO GIL', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('1330', 'DAMARIS CASTRO SALAZAR', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('1331', 'AMANDA FLORES IBAÑEZ', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('1332', 'ANGIE LORENA MUÑOZ MUÑOZ', '2009-08-18', '2', '1');
INSERT INTO `persona` VALUES ('1333', 'JOSE DENIS GUTIERREZ URIARTE', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('1334', 'KAROL JOE VARGAS BLANCO', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('1335', 'CARLOS ALBEIRO DA SILVA PINEDO', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('1336', 'HERNAN ALEXIS MORALES SAEZ', '2009-12-28', '2', '1');
INSERT INTO `persona` VALUES ('1337', 'JORGE ALIRIO CASTILLO ORTIZ DE ZARATE', '2010-01-11', '2', '1');
INSERT INTO `persona` VALUES ('1338', 'YESNARDA NAIROBI MARTIN ORTIZ', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('1339', 'DIANA CAROLINA MORENO ANGULO', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('1340', 'HAROLD ORLANDO SILVA UGARTE', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('1341', 'ZULLY JOHANA ORTIZ DIEZ', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('1342', 'JULIAN CAMILO PEREIRA RAMOS', '2010-05-24', '2', '1');
INSERT INTO `persona` VALUES ('1343', 'MARIA REYES SAENZ', '2009-08-08', '2', '1');
INSERT INTO `persona` VALUES ('1344', 'FLOR RAMOS QUINTANA', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('1345', 'JUAN SUAREZ MARQUINEZ', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('1346', 'ARMANDO MEDINA ROMERO', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('1347', 'ENRIQUE LIN ORTEGA', '2009-10-03', '2', '1');
INSERT INTO `persona` VALUES ('1348', 'VERONICA WANG SANTAMARIA', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('1349', 'MARIA HERRERA DOMINGUEZ', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('1350', 'FLORES CRUZ RUIZ DE AZUA', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('1351', 'TOMASA MENDEZ SANZ', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('1352', 'CRISTIAN CAMILO MARIN ARMENTIA', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('1353', 'MEYLIN VIVIANA FERREIRA OCHOA', '2010-07-23', '2', '1');
INSERT INTO `persona` VALUES ('1354', 'YEFERSON RIKI MENDOZA DELGADO', '2010-06-30', '2', '1');
INSERT INTO `persona` VALUES ('1355', 'MAURICIO JAVIER VASQUEZ RAMIREZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('1356', 'MONICA ANDREA CABRERA SANTOS', '2010-05-03', '2', '1');
INSERT INTO `persona` VALUES ('1357', 'RENE ALBERTO ZHANG LANDA', '2010-04-23', '2', '1');
INSERT INTO `persona` VALUES ('1358', 'OSCAR JAVIER NUÑEZ ELORZA', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('1359', 'LUIS FELIPE DOS SANTOS CASTILLO', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('1360', 'TATIANA PISFIL SANZ', '2010-08-21', '2', '1');
INSERT INTO `persona` VALUES ('1361', 'JUAN CARLOS PUEMAPE ARMENTIA', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('1362', 'DIANA STEFANIA FLORES OCHOA', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('1363', 'CLAUDIA SOCORRO VARGAS DELGADO', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('1364', 'ELKIN GONZALES RAMIREZ', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('1365', 'LILIANA STEFANNY VERA SANTOS', '2009-10-27', '2', '1');
INSERT INTO `persona` VALUES ('1366', 'CARLOS ESTEBAN MONSALVE LANDA', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('1367', 'JUAN MANUEL PEREZ ELORZA', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('1368', 'CRISTIAN CAMILO BENAVIDES CASTILLO', '2010-01-17', '2', '1');
INSERT INTO `persona` VALUES ('1369', 'MEYLIN VIVIANA PISFIL PUEMAPE', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('1370', 'ENRIQUE FLORES VARGAS', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('1371', 'MARY RODRIGUEZ GARCIA', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('1372', 'CRISTIAN CAMILO GARCIA FERNANDEZ', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('1373', 'MEYLIN VIVIANA GONZALEZ MARTINEZ', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('1374', 'YEFERSON RIKI LOPEZ GONZALEZ', '2010-01-08', '2', '1');
INSERT INTO `persona` VALUES ('1375', 'MAURICIO JAVIER PEREZ PEREZ', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('1376', 'MONICA ANDREA MARTINEZ LOPEZ', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('1377', 'RENE ALBERTO SANCHEZ RODRIGUEZ', '2010-07-06', '2', '1');
INSERT INTO `persona` VALUES ('1378', 'OSCAR JAVIER FERNANDEZ SANCHEZ', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('1379', 'LUIS FELIPE GOMEZ JIMENEZ', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('1380', 'TATIANA HERNANDEZ RUIZ', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('1381', 'JUAN CARLOS DIAZ GOMEZ', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('1382', 'DIANA STEFANIA RAMIREZ MARTIN', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('1383', 'CLAUDIA SOCORRO ALVAREZ ALONSO', '2010-08-05', '2', '1');
INSERT INTO `persona` VALUES ('1384', 'ELKIN CHEN DIAZ', '2009-10-16', '2', '1');
INSERT INTO `persona` VALUES ('1385', 'LILIANA STEFANNY JIMENEZ HERNANDEZ', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('1386', 'CARLOS ESTEBAN TORRES MORENO', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('1387', 'JUAN MANUEL SINGH GUTIERREZ', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('1388', 'CHRISTIAN MIGUEL RUIZ AGUIRRE', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('1389', 'HECTOR GENTIL ROJAS ALVAREZ', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('1390', 'NELLY YAZMIN ROMERO GIL', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('1391', 'DAMARIS CASTRO SALAZAR', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('1392', 'AMANDA FLORES IBAÑEZ', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('1393', 'ANGIE LORENA MUÑOZ MUÑOZ', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('1394', 'JOSE DENIS GUTIERREZ URIARTE', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('1395', 'KAROL JOE VARGAS BLANCO', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('1396', 'CARLOS ALBEIRO DA SILVA PINEDO', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('1397', 'HERNAN ALEXIS MORALES SAEZ', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('1398', 'JORGE ALIRIO CASTILLO ORTIZ DE ZARATE', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('1399', 'YESNARDA NAIROBI MARTIN ORTIZ', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('1400', 'DIANA CAROLINA MORENO ANGULO', '2010-06-16', '2', '1');
INSERT INTO `persona` VALUES ('1401', 'HAROLD ORLANDO SILVA UGARTE', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('1402', 'ZULLY JOHANA ORTIZ DIEZ', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('1403', 'JULIAN CAMILO PEREIRA RAMOS', '2010-08-05', '2', '1');
INSERT INTO `persona` VALUES ('1404', 'MARIA REYES SAENZ', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('1405', 'FLOR RAMOS QUINTANA', '2010-09-06', '2', '1');
INSERT INTO `persona` VALUES ('1406', 'JUAN SUAREZ MARQUINEZ', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('1407', 'ARMANDO MEDINA ROMERO', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('1408', 'ENRIQUE LIN ORTEGA', '2010-03-07', '2', '1');
INSERT INTO `persona` VALUES ('1409', 'VERONICA WANG SANTAMARIA', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('1410', 'MARIA HERRERA DOMINGUEZ', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('1411', 'FLORES CRUZ RUIZ DE AZUA', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('1412', 'TOMASA MENDEZ SANZ', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('1413', 'CRISTIAN CAMILO MARIN ARMENTIA', '2010-04-05', '2', '1');
INSERT INTO `persona` VALUES ('1414', 'MEYLIN VIVIANA FERREIRA OCHOA', '2010-09-09', '2', '1');
INSERT INTO `persona` VALUES ('1415', 'YEFERSON RIKI MENDOZA DELGADO', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('1416', 'MAURICIO JAVIER VASQUEZ RAMIREZ', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('1417', 'MONICA ANDREA CABRERA SANTOS', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('1418', 'RENE ALBERTO ZHANG LANDA', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('1419', 'OSCAR JAVIER NUÑEZ ELORZA', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('1420', 'LUIS FELIPE DOS SANTOS CASTILLO', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('1421', 'TATIANA PISFIL SANZ', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('1422', 'JUAN CARLOS PUEMAPE ARMENTIA', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('1423', 'DIANA STEFANIA FLORES OCHOA', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('1424', 'CLAUDIA SOCORRO VARGAS DELGADO', '2010-02-01', '2', '1');
INSERT INTO `persona` VALUES ('1425', 'ELKIN GONZALES RAMIREZ', '2010-08-29', '2', '1');
INSERT INTO `persona` VALUES ('1426', 'LILIANA STEFANNY VERA SANTOS', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('1427', 'CARLOS ESTEBAN MONSALVE LANDA', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('1428', 'JUAN MANUEL PEREZ ELORZA', '2009-06-26', '2', '1');
INSERT INTO `persona` VALUES ('1429', 'CRISTIAN CAMILO BENAVIDES CASTILLO', '2010-03-23', '2', '1');
INSERT INTO `persona` VALUES ('1430', 'MEYLIN VIVIANA PISFIL PUEMAPE', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('1431', 'ENRIQUE FLORES VARGAS', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('1432', 'MARY RODRIGUEZ GARCIA', '2010-02-28', '2', '1');
INSERT INTO `persona` VALUES ('1433', 'CRISTIAN CAMILO GARCIA FERNANDEZ', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('1434', 'MEYLIN VIVIANA GONZALEZ MARTINEZ', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('1435', 'YEFERSON RIKI LOPEZ GONZALEZ', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('1436', 'MAURICIO JAVIER PISFIL PUEMAPE', '2010-07-24', '2', '1');
INSERT INTO `persona` VALUES ('1437', 'MONICA ANDREA FLORES VARGAS', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('1438', 'RENE ALBERTO RODRIGUEZ GARCIA', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('1439', 'OSCAR JAVIER GARCIA FERNANDEZ', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('1440', 'LUIS FELIPE GONZALEZ MARTINEZ', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('1441', 'TATIANA LOPEZ GONZALEZ', '2009-11-27', '2', '1');
INSERT INTO `persona` VALUES ('1442', 'JUAN CARLOS PEREZ PEREZ', '2009-08-10', '2', '1');
INSERT INTO `persona` VALUES ('1443', 'DIANA STEFANIA MARTINEZ LOPEZ', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('1444', 'CLAUDIA SOCORRO SANCHEZ RODRIGUEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('1445', 'ELKIN FERNANDEZ SANCHEZ', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('1446', 'LILIANA STEFANNY GOMEZ JIMENEZ', '2010-03-28', '2', '1');
INSERT INTO `persona` VALUES ('1447', 'CARLOS ESTEBAN HERNANDEZ RUIZ', '2010-01-15', '2', '1');
INSERT INTO `persona` VALUES ('1448', 'JUAN MANUEL DIAZ GOMEZ', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('1449', 'CHRISTIAN MIGUEL RAMIREZ MARTIN', '2010-05-10', '2', '1');
INSERT INTO `persona` VALUES ('1450', 'HECTOR GENTIL ALVAREZ ALONSO', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('1451', 'NELLY YAZMIN CHEN DIAZ', '2009-08-25', '2', '1');
INSERT INTO `persona` VALUES ('1452', 'DAMARIS JIMENEZ HERNANDEZ', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('1453', 'AMANDA TORRES MORENO', '2009-07-26', '2', '1');
INSERT INTO `persona` VALUES ('1454', 'ANGIE LORENA SINGH GUTIERREZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('1455', 'JOSE DENIS RUIZ AGUIRRE', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('1456', 'KAROL JOE ROJAS ALVAREZ', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('1457', 'CARLOS ALBEIRO ROMERO GIL', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('1458', 'HERNAN ALEXIS CASTRO SALAZAR', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('1459', 'JORGE ALIRIO FLORES IBAÑEZ', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('1460', 'YESNARDA NAIROBI MUÑOZ MUÑOZ', '2010-09-08', '2', '1');
INSERT INTO `persona` VALUES ('1461', 'DIANA CAROLINA GUTIERREZ URIARTE', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('1462', 'HAROLD ORLANDO VARGAS BLANCO', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('1463', 'ZULLY JOHANA DA SILVA PINEDO', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('1464', 'JULIAN CAMILO MORALES SAEZ', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('1465', 'MARIA CASTILLO ORTIZ DE ZARATE', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('1466', 'FLOR MARTIN ORTIZ', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('1467', 'JUAN MORENO ANGULO', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('1468', 'ARMANDO SILVA UGARTE', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('1469', 'ENRIQUE ORTIZ DIEZ', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('1470', 'VERONICA PEREIRA RAMOS', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('1471', 'MARIA REYES SAENZ', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('1472', 'FLORES RAMOS QUINTANA', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('1473', 'TOMASA SUAREZ MARQUINEZ', '2010-06-09', '2', '1');
INSERT INTO `persona` VALUES ('1474', 'CRISTIAN CAMILO MEDINA ROMERO', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('1475', 'MEYLIN VIVIANA LIN ORTEGA', '2009-11-12', '2', '1');
INSERT INTO `persona` VALUES ('1476', 'YEFERSON RIKI WANG SANTAMARIA', '2009-11-27', '2', '1');
INSERT INTO `persona` VALUES ('1477', 'MAURICIO JAVIER HERRERA DOMINGUEZ', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('1478', 'MONICA ANDREA CRUZ RUIZ DE AZUA', '2010-06-16', '2', '1');
INSERT INTO `persona` VALUES ('1479', 'RENE ALBERTO MENDEZ SANZ', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('1480', 'OSCAR JAVIER MARIN ARMENTIA', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('1481', 'LUIS FELIPE FERREIRA OCHOA', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('1482', 'TATIANA MENDOZA DELGADO', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('1483', 'JUAN CARLOS VASQUEZ RAMIREZ', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('1484', 'DIANA STEFANIA CABRERA SANTOS', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('1485', 'CLAUDIA SOCORRO ZHANG LANDA', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('1486', 'ELKIN NUÑEZ ELORZA', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('1487', 'LILIANA STEFANNY DOS SANTOS CASTILLO', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('1488', 'CARLOS ESTEBAN PISFIL SANZ', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('1489', 'JUAN MANUEL PUEMAPE ARMENTIA', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('1490', 'CRISTIAN CAMILO FLORES OCHOA', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('1491', 'MEYLIN VIVIANA VARGAS DELGADO', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('1492', 'ENRIQUE GONZALES RAMIREZ', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('1493', 'MARY VERA SANTOS', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('1494', 'CRISTIAN CAMILO MONSALVE LANDA', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('1495', 'MEYLIN VIVIANA PEREZ ELORZA', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('1496', 'YEFERSON RIKI BENAVIDES CASTILLO', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('1497', 'MAURICIO JAVIER PISFIL PUEMAPE', '2009-08-04', '2', '1');
INSERT INTO `persona` VALUES ('1498', 'MONICA ANDREA FLORES VARGAS', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('1499', 'RENE ALBERTO RODRIGUEZ GARCIA', '2010-04-25', '2', '1');
INSERT INTO `persona` VALUES ('1500', 'OSCAR JAVIER GARCIA FERNANDEZ', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('1501', 'LUIS FELIPE GONZALEZ MARTINEZ', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('1502', 'TATIANA LOPEZ GONZALEZ', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('1503', 'JUAN CARLOS PEREZ PEREZ', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('1504', 'DIANA STEFANIA MARTINEZ LOPEZ', '2010-02-13', '2', '1');
INSERT INTO `persona` VALUES ('1505', 'CLAUDIA SOCORRO SANCHEZ RODRIGUEZ', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('1506', 'ELKIN FERNANDEZ SANCHEZ', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('1507', 'LILIANA STEFANNY GOMEZ JIMENEZ', '2010-08-14', '2', '1');
INSERT INTO `persona` VALUES ('1508', 'CARLOS ESTEBAN HERNANDEZ RUIZ', '2009-08-14', '2', '1');
INSERT INTO `persona` VALUES ('1509', 'JUAN MANUEL DIAZ GOMEZ', '2009-08-23', '2', '1');
INSERT INTO `persona` VALUES ('1510', 'CHRISTIAN MIGUEL RAMIREZ MARTIN', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('1511', 'HECTOR GENTIL ALVAREZ ALONSO', '2010-03-23', '2', '1');
INSERT INTO `persona` VALUES ('1512', 'NELLY YAZMIN CHEN DIAZ', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('1513', 'DAMARIS JIMENEZ HERNANDEZ', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('1514', 'AMANDA TORRES MORENO', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('1515', 'ANGIE LORENA SINGH GUTIERREZ', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('1516', 'JOSE DENIS RUIZ AGUIRRE', '2009-12-18', '2', '1');
INSERT INTO `persona` VALUES ('1517', 'KAROL JOE ROJAS ALVAREZ', '2010-05-28', '2', '1');
INSERT INTO `persona` VALUES ('1518', 'CARLOS ALBEIRO ROMERO GIL', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('1519', 'HERNAN ALEXIS CASTRO SALAZAR', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('1520', 'JORGE ALIRIO FLORES IBAÑEZ', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('1521', 'YESNARDA NAIROBI MUÑOZ MUÑOZ', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('1522', 'DIANA CAROLINA GUTIERREZ URIARTE', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('1523', 'HAROLD ORLANDO VARGAS BLANCO', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('1524', 'ZULLY JOHANA DA SILVA PINEDO', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('1525', 'JULIAN CAMILO MORALES SAEZ', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('1526', 'MARIA CASTILLO ORTIZ DE ZARATE', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('1527', 'FLOR MARTIN ORTIZ', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('1528', 'JUAN MORENO ANGULO', '2010-05-13', '2', '1');
INSERT INTO `persona` VALUES ('1529', 'ARMANDO SILVA UGARTE', '2009-12-28', '2', '1');
INSERT INTO `persona` VALUES ('1530', 'ENRIQUE ORTIZ DIEZ', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('1531', 'VERONICA PEREIRA RAMOS', '2010-04-25', '2', '1');
INSERT INTO `persona` VALUES ('1532', 'MARIA REYES SAENZ', '2009-08-23', '2', '1');
INSERT INTO `persona` VALUES ('1533', 'FLORES RAMOS QUINTANA', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('1534', 'TOMASA SUAREZ MARQUINEZ', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('1535', 'CRISTIAN CAMILO MEDINA ROMERO', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('1536', 'MEYLIN VIVIANA LIN ORTEGA', '2010-05-08', '2', '1');
INSERT INTO `persona` VALUES ('1537', 'YEFERSON RIKI WANG SANTAMARIA', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('1538', 'MAURICIO JAVIER HERRERA DOMINGUEZ', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('1539', 'MONICA ANDREA CRUZ RUIZ DE AZUA', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('1540', 'RENE ALBERTO MENDEZ SANZ', '2010-08-29', '2', '1');
INSERT INTO `persona` VALUES ('1541', 'OSCAR JAVIER MARIN ARMENTIA', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('1542', 'LUIS FELIPE FERREIRA OCHOA', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('1543', 'TATIANA MENDOZA DELGADO', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('1544', 'JUAN CARLOS VASQUEZ RAMIREZ', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('1545', 'DIANA STEFANIA CABRERA SANTOS', '2009-07-20', '2', '1');
INSERT INTO `persona` VALUES ('1546', 'CLAUDIA SOCORRO ZHANG LANDA', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('1547', 'ELKIN NUÑEZ ELORZA', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('1548', 'LILIANA STEFANNY DOS SANTOS CASTILLO', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('1549', 'CARLOS ESTEBAN PISFIL SANZ', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('1550', 'JUAN MANUEL PUEMAPE ARMENTIA', '2010-09-05', '2', '1');
INSERT INTO `persona` VALUES ('1551', 'CRISTIAN CAMILO FLORES OCHOA', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('1552', 'MEYLIN VIVIANA VARGAS DELGADO', '2009-10-10', '2', '1');
INSERT INTO `persona` VALUES ('1553', 'ENRIQUE GONZALES RAMIREZ', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('1554', 'MARY VERA SANTOS', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('1555', 'CRISTIAN CAMILO MONSALVE LANDA', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('1556', 'MEYLIN VIVIANA PEREZ ELORZA', '2009-09-14', '2', '1');
INSERT INTO `persona` VALUES ('1557', 'YEFERSON RIKI BENAVIDES CASTILLO', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('1558', 'MAURICIO JAVIER PISFIL PUEMAPE', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('1559', 'MONICA ANDREA FLORES VARGAS', '2010-01-24', '2', '1');
INSERT INTO `persona` VALUES ('1560', 'RENE ALBERTO RODRIGUEZ GARCIA', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('1561', 'OSCAR JAVIER GARCIA FERNANDEZ', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('1562', 'LUIS FELIPE GONZALEZ MARTINEZ', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('1563', 'TATIANA LOPEZ GONZALEZ', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('1564', 'JUAN CARLOS PISFIL PUEMAPE', '2010-07-26', '2', '1');
INSERT INTO `persona` VALUES ('1565', 'DIANA STEFANIA FLORES VARGAS', '2009-12-03', '2', '1');
INSERT INTO `persona` VALUES ('1566', 'CLAUDIA SOCORRO RODRIGUEZ GARCIA', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('1567', 'ELKIN GARCIA FERNANDEZ', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('1568', 'LILIANA STEFANNY GONZALEZ MARTINEZ', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('1569', 'CARLOS ESTEBAN LOPEZ GONZALEZ', '2009-10-11', '2', '1');
INSERT INTO `persona` VALUES ('1570', 'JUAN MANUEL PEREZ PEREZ', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('1571', 'CHRISTIAN MIGUEL MARTINEZ LOPEZ', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('1572', 'HECTOR GENTIL SANCHEZ RODRIGUEZ', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('1573', 'NELLY YAZMIN FERNANDEZ SANCHEZ', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('1574', 'DAMARIS GOMEZ JIMENEZ', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('1575', 'AMANDA HERNANDEZ RUIZ', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('1576', 'ANGIE LORENA DIAZ GOMEZ', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('1577', 'JOSE DENIS RAMIREZ MARTIN', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('1578', 'KAROL JOE ALVAREZ ALONSO', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('1579', 'CARLOS ALBEIRO CHEN DIAZ', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('1580', 'HERNAN ALEXIS JIMENEZ HERNANDEZ', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('1581', 'JORGE ALIRIO TORRES MORENO', '2010-03-12', '2', '1');
INSERT INTO `persona` VALUES ('1582', 'YESNARDA NAIROBI SINGH GUTIERREZ', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('1583', 'DIANA CAROLINA RUIZ AGUIRRE', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('1584', 'HAROLD ORLANDO ROJAS ALVAREZ', '2010-01-29', '2', '1');
INSERT INTO `persona` VALUES ('1585', 'ZULLY JOHANA ROMERO GIL', '2010-06-26', '2', '1');
INSERT INTO `persona` VALUES ('1586', 'JULIAN CAMILO CASTRO SALAZAR', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('1587', 'MARIA FLORES IBAÑEZ', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('1588', 'FLOR MUÑOZ MUÑOZ', '2009-11-04', '2', '1');
INSERT INTO `persona` VALUES ('1589', 'JUAN GUTIERREZ URIARTE', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('1590', 'ARMANDO VARGAS BLANCO', '2009-07-20', '2', '1');
INSERT INTO `persona` VALUES ('1591', 'ENRIQUE DA SILVA PINEDO', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('1592', 'VERONICA MORALES SAEZ', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('1593', 'MARIA CASTILLO ORTIZ DE ZARATE', '2009-11-08', '2', '1');
INSERT INTO `persona` VALUES ('1594', 'FLORES MARTIN ORTIZ', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('1595', 'TOMASA MORENO ANGULO', '2009-11-28', '2', '1');
INSERT INTO `persona` VALUES ('1596', 'CRISTIAN CAMILO SILVA UGARTE', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('1597', 'MEYLIN VIVIANA ORTIZ DIEZ', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('1598', 'YEFERSON RIKI PEREIRA RAMOS', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('1599', 'MAURICIO JAVIER REYES SAENZ', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('1600', 'MONICA ANDREA RAMOS QUINTANA', '2010-09-06', '2', '1');
INSERT INTO `persona` VALUES ('1601', 'RENE ALBERTO SUAREZ MARQUINEZ', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('1602', 'OSCAR JAVIER MEDINA ROMERO', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('1603', 'LUIS FELIPE LIN ORTEGA', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('1604', 'TATIANA WANG SANTAMARIA', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('1605', 'JUAN CARLOS HERRERA DOMINGUEZ', '2010-05-01', '2', '1');
INSERT INTO `persona` VALUES ('1606', 'DIANA STEFANIA CRUZ RUIZ DE AZUA', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('1607', 'CLAUDIA SOCORRO MENDEZ SANZ', '2010-05-11', '2', '1');
INSERT INTO `persona` VALUES ('1608', 'ELKIN MARIN ARMENTIA', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('1609', 'LILIANA STEFANNY FERREIRA OCHOA', '2009-11-17', '2', '1');
INSERT INTO `persona` VALUES ('1610', 'CARLOS ESTEBAN MENDOZA DELGADO', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('1611', 'JUAN MANUEL VASQUEZ RAMIREZ', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('1612', 'CRISTIAN CAMILO CABRERA SANTOS', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('1613', 'MEYLIN VIVIANA ZHANG LANDA', '2009-06-20', '2', '1');
INSERT INTO `persona` VALUES ('1614', 'ENRIQUE NUÑEZ ELORZA', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('1615', 'MARY DOS SANTOS CASTILLO', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('1616', 'CRISTIAN CAMILO PISFIL SANZ', '2010-02-16', '2', '1');
INSERT INTO `persona` VALUES ('1617', 'MEYLIN VIVIANA PUEMAPE ARMENTIA', '2009-12-22', '2', '1');
INSERT INTO `persona` VALUES ('1618', 'YEFERSON RIKI FLORES OCHOA', '2010-05-13', '2', '1');
INSERT INTO `persona` VALUES ('1619', 'MAURICIO JAVIER VARGAS DELGADO', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('1620', 'MONICA ANDREA GONZALES RAMIREZ', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('1621', 'RENE ALBERTO VERA SANTOS', '2010-05-21', '2', '1');
INSERT INTO `persona` VALUES ('1622', 'OSCAR JAVIER MONSALVE LANDA', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('1623', 'LUIS FELIPE PEREZ ELORZA', '2009-08-11', '2', '1');
INSERT INTO `persona` VALUES ('1624', 'TATIANA BENAVIDES CASTILLO', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('1625', 'JUAN CARLOS PISFIL PUEMAPE', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('1626', 'DIANA STEFANIA FLORES VARGAS', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('1627', 'CLAUDIA SOCORRO RODRIGUEZ GARCIA', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('1628', 'ELKIN GARCIA FERNANDEZ', '2010-06-16', '2', '1');
INSERT INTO `persona` VALUES ('1629', 'LILIANA STEFANNY GONZALEZ MARTINEZ', '2010-05-24', '2', '1');
INSERT INTO `persona` VALUES ('1630', 'CARLOS ESTEBAN LOPEZ GONZALEZ', '2009-11-15', '2', '1');
INSERT INTO `persona` VALUES ('1631', 'JUAN MANUEL PEREZ PEREZ', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('1632', 'CHRISTIAN MIGUEL MARTINEZ LOPEZ', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('1633', 'HECTOR GENTIL SANCHEZ RODRIGUEZ', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('1634', 'NELLY YAZMIN FERNANDEZ SANCHEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('1635', 'DAMARIS GOMEZ JIMENEZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('1636', 'AMANDA HERNANDEZ RUIZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('1637', 'ANGIE LORENA DIAZ GOMEZ', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('1638', 'JOSE DENIS RAMIREZ MARTIN', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('1639', 'KAROL JOE ALVAREZ ALONSO', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('1640', 'CARLOS ALBEIRO CHEN DIAZ', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('1641', 'HERNAN ALEXIS JIMENEZ HERNANDEZ', '2010-05-16', '2', '1');
INSERT INTO `persona` VALUES ('1642', 'JORGE ALIRIO TORRES MORENO', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('1643', 'YESNARDA NAIROBI SINGH GUTIERREZ', '2010-07-31', '2', '1');
INSERT INTO `persona` VALUES ('1644', 'DIANA CAROLINA RUIZ AGUIRRE', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('1645', 'HAROLD ORLANDO ROJAS ALVAREZ', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('1646', 'ZULLY JOHANA ROMERO GIL', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('1647', 'JULIAN CAMILO CASTRO SALAZAR', '2009-10-18', '2', '1');
INSERT INTO `persona` VALUES ('1648', 'MARIA FLORES IBAÑEZ', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('1649', 'FLOR MUÑOZ MUÑOZ', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('1650', 'JUAN GUTIERREZ URIARTE', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('1651', 'ARMANDO VARGAS BLANCO', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('1652', 'ENRIQUE DA SILVA PINEDO', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('1653', 'VERONICA MORALES SAEZ', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('1654', 'MARIA CASTILLO ORTIZ DE ZARATE', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('1655', 'FLORES MARTIN ORTIZ', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('1656', 'TOMASA MORENO ANGULO', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('1657', 'CRISTIAN CAMILO SILVA UGARTE', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('1658', 'MEYLIN VIVIANA ORTIZ DIEZ', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('1659', 'YEFERSON RIKI PEREIRA RAMOS', '2010-05-13', '2', '1');
INSERT INTO `persona` VALUES ('1660', 'MAURICIO JAVIER REYES SAENZ', '2010-05-24', '2', '1');
INSERT INTO `persona` VALUES ('1661', 'MONICA ANDREA RAMOS QUINTANA', '2010-06-30', '2', '1');
INSERT INTO `persona` VALUES ('1662', 'RENE ALBERTO SUAREZ MARQUINEZ', '2009-10-29', '2', '1');
INSERT INTO `persona` VALUES ('1663', 'OSCAR JAVIER MEDINA ROMERO', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('1664', 'LUIS FELIPE LIN ORTEGA', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('1665', 'TATIANA WANG SANTAMARIA', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('1666', 'JUAN CARLOS HERRERA DOMINGUEZ', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('1667', 'DIANA STEFANIA CRUZ RUIZ DE AZUA', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('1668', 'CLAUDIA SOCORRO MENDEZ SANZ', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('1669', 'ELKIN MARIN ARMENTIA', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('1670', 'LILIANA STEFANNY FERREIRA OCHOA', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('1671', 'CARLOS ESTEBAN MENDOZA DELGADO', '2010-08-29', '2', '1');
INSERT INTO `persona` VALUES ('1672', 'JUAN MANUEL VASQUEZ RAMIREZ', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('1673', 'CRISTIAN CAMILO CABRERA SANTOS', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('1674', 'MEYLIN VIVIANA ZHANG LANDA', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('1675', 'ENRIQUE NUÑEZ ELORZA', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('1676', 'MARY DOS SANTOS CASTILLO', '2010-06-17', '2', '1');
INSERT INTO `persona` VALUES ('1677', 'CRISTIAN CAMILO PISFIL SANZ', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('1678', 'MEYLIN VIVIANA PUEMAPE ARMENTIA', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('1679', 'YEFERSON RIKI FLORES OCHOA', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('1680', 'MAURICIO JAVIER VARGAS DELGADO', '2010-09-13', '2', '1');
INSERT INTO `persona` VALUES ('1681', 'MONICA ANDREA GONZALES RAMIREZ', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('1682', 'RENE ALBERTO VERA SANTOS', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('1683', 'OSCAR JAVIER MONSALVE LANDA', '2009-08-25', '2', '1');
INSERT INTO `persona` VALUES ('1684', 'LUIS FELIPE PEREZ ELORZA', '2010-05-06', '2', '1');
INSERT INTO `persona` VALUES ('1685', 'TATIANA BENAVIDES CASTILLO', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('1686', 'JUAN CARLOS PISFIL PUEMAPE', '2010-06-28', '2', '1');
INSERT INTO `persona` VALUES ('1687', 'DIANA STEFANIA FLORES VARGAS', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('1688', 'CLAUDIA SOCORRO RODRIGUEZ GARCIA', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('1689', 'ELKIN GARCIA FERNANDEZ', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('1690', 'LILIANA STEFANNY GONZALEZ MARTINEZ', '2010-09-14', '2', '1');
INSERT INTO `persona` VALUES ('1691', 'CARLOS ESTEBAN LOPEZ GONZALEZ', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('1692', 'JUAN MANUEL PISFIL PUEMAPE', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('1693', 'CHRISTIAN MIGUEL FLORES VARGAS', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('1694', 'HECTOR GENTIL RODRIGUEZ GARCIA', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('1695', 'NELLY YAZMIN GARCIA FERNANDEZ', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('1696', 'DAMARIS GONZALEZ MARTINEZ', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('1697', 'AMANDA LOPEZ GONZALEZ', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('1698', 'ANGIE LORENA PEREZ PEREZ', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('1699', 'JOSE DENIS MARTINEZ LOPEZ', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('1700', 'KAROL JOE SANCHEZ RODRIGUEZ', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('1701', 'CARLOS ALBEIRO FERNANDEZ SANCHEZ', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('1702', 'HERNAN ALEXIS GOMEZ JIMENEZ', '2009-09-26', '2', '1');
INSERT INTO `persona` VALUES ('1703', 'JORGE ALIRIO HERNANDEZ RUIZ', '2009-08-20', '2', '1');
INSERT INTO `persona` VALUES ('1704', 'YESNARDA NAIROBI DIAZ GOMEZ', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('1705', 'DIANA CAROLINA RAMIREZ MARTIN', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('1706', 'HAROLD ORLANDO ALVAREZ ALONSO', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('1707', 'ZULLY JOHANA CHEN DIAZ', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('1708', 'JULIAN CAMILO JIMENEZ HERNANDEZ', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('1709', 'MARIA TORRES MORENO', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('1710', 'FLOR SINGH GUTIERREZ', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('1711', 'JUAN RUIZ AGUIRRE', '2009-11-19', '2', '1');
INSERT INTO `persona` VALUES ('1712', 'ARMANDO ROJAS ALVAREZ', '2010-08-14', '2', '1');
INSERT INTO `persona` VALUES ('1713', 'ENRIQUE ROMERO GIL', '2010-03-28', '2', '1');
INSERT INTO `persona` VALUES ('1714', 'VERONICA CASTRO SALAZAR', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('1715', 'MARIA FLORES IBAÑEZ', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('1716', 'FLORES MUÑOZ MUÑOZ', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('1717', 'TOMASA GUTIERREZ URIARTE', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('1718', 'CRISTIAN CAMILO VARGAS BLANCO', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('1719', 'MEYLIN VIVIANA DA SILVA PINEDO', '2010-08-14', '2', '1');
INSERT INTO `persona` VALUES ('1720', 'YEFERSON RIKI MORALES SAEZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('1721', 'MAURICIO JAVIER CASTILLO ORTIZ DE ZARATE', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('1722', 'MONICA ANDREA MARTIN ORTIZ', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('1723', 'RENE ALBERTO MORENO ANGULO', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('1724', 'OSCAR JAVIER SILVA UGARTE', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('1725', 'LUIS FELIPE ORTIZ DIEZ', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('1726', 'TATIANA PEREIRA RAMOS', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('1727', 'JUAN CARLOS REYES SAENZ', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('1728', 'DIANA STEFANIA RAMOS QUINTANA', '2010-07-28', '2', '1');
INSERT INTO `persona` VALUES ('1729', 'CLAUDIA SOCORRO SUAREZ MARQUINEZ', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('1730', 'ELKIN MEDINA ROMERO', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('1731', 'LILIANA STEFANNY LIN ORTEGA', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('1732', 'CARLOS ESTEBAN WANG SANTAMARIA', '2009-10-12', '2', '1');
INSERT INTO `persona` VALUES ('1733', 'JUAN MANUEL HERRERA DOMINGUEZ', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('1734', 'CRISTIAN CAMILO CRUZ RUIZ DE AZUA', '2010-09-13', '2', '1');
INSERT INTO `persona` VALUES ('1735', 'MEYLIN VIVIANA MENDEZ SANZ', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('1736', 'ENRIQUE MARIN ARMENTIA', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('1737', 'MARY FERREIRA OCHOA', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('1738', 'CRISTIAN CAMILO MENDOZA DELGADO', '2009-12-06', '2', '1');
INSERT INTO `persona` VALUES ('1739', 'MEYLIN VIVIANA VASQUEZ RAMIREZ', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('1740', 'YEFERSON RIKI CABRERA SANTOS', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('1741', 'MAURICIO JAVIER ZHANG LANDA', '2010-01-11', '2', '1');
INSERT INTO `persona` VALUES ('1742', 'MONICA ANDREA NUÑEZ ELORZA', '2009-11-03', '2', '1');
INSERT INTO `persona` VALUES ('1743', 'RENE ALBERTO DOS SANTOS CASTILLO', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('1744', 'OSCAR JAVIER PISFIL SANZ', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('1745', 'LUIS FELIPE PUEMAPE ARMENTIA', '2010-05-06', '2', '1');
INSERT INTO `persona` VALUES ('1746', 'TATIANA FLORES OCHOA', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('1747', 'JUAN CARLOS VARGAS DELGADO', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('1748', 'DIANA STEFANIA GONZALES RAMIREZ', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('1749', 'CLAUDIA SOCORRO VERA SANTOS', '2010-01-16', '2', '1');
INSERT INTO `persona` VALUES ('1750', 'ELKIN MONSALVE LANDA', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('1751', 'LILIANA STEFANNY PEREZ ELORZA', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('1752', 'CARLOS ESTEBAN BENAVIDES CASTILLO', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('1753', 'JUAN MANUEL PISFIL PUEMAPE', '2009-11-27', '2', '1');
INSERT INTO `persona` VALUES ('1754', 'CHRISTIAN MIGUEL FLORES VARGAS', '2009-06-27', '2', '1');
INSERT INTO `persona` VALUES ('1755', 'HECTOR GENTIL RODRIGUEZ GARCIA', '2010-04-22', '2', '1');
INSERT INTO `persona` VALUES ('1756', 'NELLY YAZMIN GARCIA FERNANDEZ', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('1757', 'DAMARIS GONZALEZ MARTINEZ', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('1758', 'AMANDA LOPEZ GONZALEZ', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('1759', 'ANGIE LORENA PEREZ PEREZ', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('1760', 'JOSE DENIS MARTINEZ LOPEZ', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('1761', 'KAROL JOE SANCHEZ RODRIGUEZ', '2009-09-10', '2', '1');
INSERT INTO `persona` VALUES ('1762', 'CARLOS ALBEIRO FERNANDEZ SANCHEZ', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('1763', 'HERNAN ALEXIS GOMEZ JIMENEZ', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('1764', 'JORGE ALIRIO HERNANDEZ RUIZ', '2010-01-23', '2', '1');
INSERT INTO `persona` VALUES ('1765', 'YESNARDA NAIROBI DIAZ GOMEZ', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('1766', 'DIANA CAROLINA RAMIREZ MARTIN', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('1767', 'HAROLD ORLANDO ALVAREZ ALONSO', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('1768', 'ZULLY JOHANA CHEN DIAZ', '2010-01-21', '2', '1');
INSERT INTO `persona` VALUES ('1769', 'JULIAN CAMILO JIMENEZ HERNANDEZ', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('1770', 'MARIA TORRES MORENO', '2010-06-16', '2', '1');
INSERT INTO `persona` VALUES ('1771', 'FLOR SINGH GUTIERREZ', '2010-03-06', '2', '1');
INSERT INTO `persona` VALUES ('1772', 'JUAN RUIZ AGUIRRE', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('1773', 'ARMANDO ROJAS ALVAREZ', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('1774', 'ENRIQUE ROMERO GIL', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('1775', 'VERONICA CASTRO SALAZAR', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('1776', 'MARIA FLORES IBAÑEZ', '2010-03-14', '2', '1');
INSERT INTO `persona` VALUES ('1777', 'FLORES MUÑOZ MUÑOZ', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('1778', 'TOMASA GUTIERREZ URIARTE', '2009-09-04', '2', '1');
INSERT INTO `persona` VALUES ('1779', 'CRISTIAN CAMILO VARGAS BLANCO', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('1780', 'MEYLIN VIVIANA DA SILVA PINEDO', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('1781', 'YEFERSON RIKI MORALES SAEZ', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('1782', 'MAURICIO JAVIER CASTILLO ORTIZ DE ZARATE', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('1783', 'MONICA ANDREA MARTIN ORTIZ', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('1784', 'RENE ALBERTO MORENO ANGULO', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('1785', 'OSCAR JAVIER SILVA UGARTE', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('1786', 'LUIS FELIPE ORTIZ DIEZ', '2009-07-07', '2', '1');
INSERT INTO `persona` VALUES ('1787', 'TATIANA PEREIRA RAMOS', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('1788', 'JUAN CARLOS REYES SAENZ', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('1789', 'DIANA STEFANIA RAMOS QUINTANA', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('1790', 'CLAUDIA SOCORRO SUAREZ MARQUINEZ', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('1791', 'ELKIN MEDINA ROMERO', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('1792', 'LILIANA STEFANNY LIN ORTEGA', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('1793', 'CARLOS ESTEBAN WANG SANTAMARIA', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('1794', 'JUAN MANUEL HERRERA DOMINGUEZ', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('1795', 'CRISTIAN CAMILO CRUZ RUIZ DE AZUA', '2009-10-03', '2', '1');
INSERT INTO `persona` VALUES ('1796', 'MEYLIN VIVIANA MENDEZ SANZ', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('1797', 'ENRIQUE MARIN ARMENTIA', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('1798', 'MARY FERREIRA OCHOA', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('1799', 'CRISTIAN CAMILO MENDOZA DELGADO', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('1800', 'MEYLIN VIVIANA VASQUEZ RAMIREZ', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('1801', 'YEFERSON RIKI CABRERA SANTOS', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('1802', 'MAURICIO JAVIER ZHANG LANDA', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('1803', 'MONICA ANDREA NUÑEZ ELORZA', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('1804', 'RENE ALBERTO DOS SANTOS CASTILLO', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('1805', 'OSCAR JAVIER PISFIL SANZ', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('1806', 'LUIS FELIPE PUEMAPE ARMENTIA', '2009-06-16', '2', '1');
INSERT INTO `persona` VALUES ('1807', 'TATIANA FLORES OCHOA', '2010-07-09', '2', '1');
INSERT INTO `persona` VALUES ('1808', 'JUAN CARLOS VARGAS DELGADO', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('1809', 'DIANA STEFANIA GONZALES RAMIREZ', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('1810', 'CLAUDIA SOCORRO VERA SANTOS', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('1811', 'ELKIN MONSALVE LANDA', '2010-09-13', '2', '1');
INSERT INTO `persona` VALUES ('1812', 'LILIANA STEFANNY PEREZ ELORZA', '2010-01-17', '2', '1');
INSERT INTO `persona` VALUES ('1813', 'CARLOS ESTEBAN BENAVIDES CASTILLO', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('1814', 'JUAN MANUEL PISFIL PUEMAPE', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('1815', 'CHRISTIAN MIGUEL FLORES VARGAS', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('1816', 'HECTOR GENTIL RODRIGUEZ GARCIA', '2009-06-25', '2', '1');
INSERT INTO `persona` VALUES ('1817', 'NELLY YAZMIN GARCIA FERNANDEZ', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('1818', 'DAMARIS GONZALEZ MARTINEZ', '2010-03-03', '2', '1');
INSERT INTO `persona` VALUES ('1819', 'AMANDA LOPEZ GONZALEZ', '2009-06-14', '2', '1');
INSERT INTO `persona` VALUES ('1820', 'ANGIE LORENA PISFIL PUEMAPE', '2010-07-29', '2', '1');
INSERT INTO `persona` VALUES ('1821', 'JOSE DENIS FLORES VARGAS', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('1822', 'KAROL JOE RODRIGUEZ GARCIA', '2009-10-06', '2', '1');
INSERT INTO `persona` VALUES ('1823', 'CARLOS ALBEIRO GARCIA FERNANDEZ', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('1824', 'HERNAN ALEXIS GONZALEZ MARTINEZ', '2010-06-30', '2', '1');
INSERT INTO `persona` VALUES ('1825', 'JORGE ALIRIO LOPEZ GONZALEZ', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('1826', 'YESNARDA NAIROBI PEREZ PEREZ', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('1827', 'DIANA CAROLINA MARTINEZ LOPEZ', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('1828', 'HAROLD ORLANDO SANCHEZ RODRIGUEZ', '2010-08-08', '2', '1');
INSERT INTO `persona` VALUES ('1829', 'ZULLY JOHANA FERNANDEZ SANCHEZ', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('1830', 'JULIAN CAMILO GOMEZ JIMENEZ', '2010-05-08', '2', '1');
INSERT INTO `persona` VALUES ('1831', 'MARIA HERNANDEZ RUIZ', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('1832', 'FLOR DIAZ GOMEZ', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('1833', 'JUAN RAMIREZ MARTIN', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('1834', 'ARMANDO ALVAREZ ALONSO', '2010-05-16', '2', '1');
INSERT INTO `persona` VALUES ('1835', 'ENRIQUE CHEN DIAZ', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('1836', 'VERONICA JIMENEZ HERNANDEZ', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('1837', 'MARIA TORRES MORENO', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('1838', 'FLORES SINGH GUTIERREZ', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('1839', 'TOMASA RUIZ AGUIRRE', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('1840', 'CRISTIAN CAMILO ROJAS ALVAREZ', '2009-06-14', '2', '1');
INSERT INTO `persona` VALUES ('1841', 'MEYLIN VIVIANA ROMERO GIL', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('1842', 'YEFERSON RIKI CASTRO SALAZAR', '2009-12-24', '2', '1');
INSERT INTO `persona` VALUES ('1843', 'MAURICIO JAVIER FLORES IBAÑEZ', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('1844', 'MONICA ANDREA MUÑOZ MUÑOZ', '2009-06-20', '2', '1');
INSERT INTO `persona` VALUES ('1845', 'RENE ALBERTO GUTIERREZ URIARTE', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('1846', 'OSCAR JAVIER VARGAS BLANCO', '2009-08-10', '2', '1');
INSERT INTO `persona` VALUES ('1847', 'LUIS FELIPE DA SILVA PINEDO', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('1848', 'TATIANA MORALES SAEZ', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('1849', 'JUAN CARLOS CASTILLO ORTIZ DE ZARATE', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('1850', 'DIANA STEFANIA MARTIN ORTIZ', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('1851', 'CLAUDIA SOCORRO MORENO ANGULO', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('1852', 'ELKIN SILVA UGARTE', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('1853', 'LILIANA STEFANNY ORTIZ DIEZ', '2010-07-29', '2', '1');
INSERT INTO `persona` VALUES ('1854', 'CARLOS ESTEBAN PEREIRA RAMOS', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('1855', 'JUAN MANUEL REYES SAENZ', '2009-08-18', '2', '1');
INSERT INTO `persona` VALUES ('1856', 'CRISTIAN CAMILO RAMOS QUINTANA', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('1857', 'MEYLIN VIVIANA SUAREZ MARQUINEZ', '2009-10-19', '2', '1');
INSERT INTO `persona` VALUES ('1858', 'ENRIQUE MEDINA ROMERO', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('1859', 'MARY LIN ORTEGA', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('1860', 'CRISTIAN CAMILO WANG SANTAMARIA', '2009-12-16', '2', '1');
INSERT INTO `persona` VALUES ('1861', 'MEYLIN VIVIANA HERRERA DOMINGUEZ', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('1862', 'YEFERSON RIKI CRUZ RUIZ DE AZUA', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('1863', 'MAURICIO JAVIER MENDEZ SANZ', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('1864', 'MONICA ANDREA MARIN ARMENTIA', '2010-04-05', '2', '1');
INSERT INTO `persona` VALUES ('1865', 'RENE ALBERTO FERREIRA OCHOA', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('1866', 'OSCAR JAVIER MENDOZA DELGADO', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('1867', 'LUIS FELIPE VASQUEZ RAMIREZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('1868', 'TATIANA CABRERA SANTOS', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('1869', 'JUAN CARLOS ZHANG LANDA', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('1870', 'DIANA STEFANIA NUÑEZ ELORZA', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('1871', 'CLAUDIA SOCORRO DOS SANTOS CASTILLO', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('1872', 'ELKIN PISFIL SANZ', '2010-06-17', '2', '1');
INSERT INTO `persona` VALUES ('1873', 'LILIANA STEFANNY PUEMAPE ARMENTIA', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('1874', 'CARLOS ESTEBAN FLORES OCHOA', '2010-07-02', '2', '1');
INSERT INTO `persona` VALUES ('1875', 'JUAN MANUEL VARGAS DELGADO', '2009-06-23', '2', '1');
INSERT INTO `persona` VALUES ('1876', 'CHRISTIAN MIGUEL GONZALES RAMIREZ', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('1877', 'HECTOR GENTIL VERA SANTOS', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('1878', 'NELLY YAZMIN MONSALVE LANDA', '2009-10-18', '2', '1');
INSERT INTO `persona` VALUES ('1879', 'DAMARIS PEREZ ELORZA', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('1880', 'AMANDA BENAVIDES CASTILLO', '2010-08-13', '2', '1');
INSERT INTO `persona` VALUES ('1881', 'ANGIE LORENA PISFIL PUEMAPE', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('1882', 'JOSE DENIS FLORES VARGAS', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('1883', 'KAROL JOE RODRIGUEZ GARCIA', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('1884', 'CARLOS ALBEIRO GARCIA FERNANDEZ', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('1885', 'HERNAN ALEXIS GONZALEZ MARTINEZ', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('1886', 'JORGE ALIRIO LOPEZ GONZALEZ', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('1887', 'YESNARDA NAIROBI PEREZ PEREZ', '2010-02-26', '2', '1');
INSERT INTO `persona` VALUES ('1888', 'DIANA CAROLINA MARTINEZ LOPEZ', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('1889', 'HAROLD ORLANDO SANCHEZ RODRIGUEZ', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('1890', 'ZULLY JOHANA FERNANDEZ SANCHEZ', '2010-07-31', '2', '1');
INSERT INTO `persona` VALUES ('1891', 'JULIAN CAMILO GOMEZ JIMENEZ', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('1892', 'MARIA HERNANDEZ RUIZ', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('1893', 'FLOR DIAZ GOMEZ', '2010-08-16', '2', '1');
INSERT INTO `persona` VALUES ('1894', 'JUAN RAMIREZ MARTIN', '2009-07-01', '2', '1');
INSERT INTO `persona` VALUES ('1895', 'ARMANDO ALVAREZ ALONSO', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('1896', 'ENRIQUE CHEN DIAZ', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('1897', 'VERONICA JIMENEZ HERNANDEZ', '2010-07-23', '2', '1');
INSERT INTO `persona` VALUES ('1898', 'MARIA TORRES MORENO', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('1899', 'FLORES SINGH GUTIERREZ', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('1900', 'TOMASA RUIZ AGUIRRE', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('1901', 'CRISTIAN CAMILO ROJAS ALVAREZ', '2010-03-01', '2', '1');
INSERT INTO `persona` VALUES ('1902', 'MEYLIN VIVIANA ROMERO GIL', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('1903', 'YEFERSON RIKI CASTRO SALAZAR', '2009-06-16', '2', '1');
INSERT INTO `persona` VALUES ('1904', 'MAURICIO JAVIER FLORES IBAÑEZ', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('1905', 'MONICA ANDREA MUÑOZ MUÑOZ', '2009-10-21', '2', '1');
INSERT INTO `persona` VALUES ('1906', 'RENE ALBERTO GUTIERREZ URIARTE', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('1907', 'OSCAR JAVIER VARGAS BLANCO', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('1908', 'LUIS FELIPE DA SILVA PINEDO', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('1909', 'TATIANA MORALES SAEZ', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('1910', 'JUAN CARLOS CASTILLO ORTIZ DE ZARATE', '2010-05-05', '2', '1');
INSERT INTO `persona` VALUES ('1911', 'DIANA STEFANIA MARTIN ORTIZ', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('1912', 'CLAUDIA SOCORRO MORENO ANGULO', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('1913', 'ELKIN SILVA UGARTE', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('1914', 'LILIANA STEFANNY ORTIZ DIEZ', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('1915', 'CARLOS ESTEBAN PEREIRA RAMOS', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('1916', 'JUAN MANUEL REYES SAENZ', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('1917', 'CRISTIAN CAMILO RAMOS QUINTANA', '2010-08-05', '2', '1');
INSERT INTO `persona` VALUES ('1918', 'MEYLIN VIVIANA SUAREZ MARQUINEZ', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('1919', 'ENRIQUE MEDINA ROMERO', '2010-07-17', '2', '1');
INSERT INTO `persona` VALUES ('1920', 'MARY LIN ORTEGA', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('1921', 'CRISTIAN CAMILO WANG SANTAMARIA', '2009-06-13', '2', '1');
INSERT INTO `persona` VALUES ('1922', 'MEYLIN VIVIANA HERRERA DOMINGUEZ', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('1923', 'YEFERSON RIKI CRUZ RUIZ DE AZUA', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('1924', 'MAURICIO JAVIER MENDEZ SANZ', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('1925', 'MONICA ANDREA MARIN ARMENTIA', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('1926', 'RENE ALBERTO FERREIRA OCHOA', '2009-10-05', '2', '1');
INSERT INTO `persona` VALUES ('1927', 'OSCAR JAVIER MENDOZA DELGADO', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('1928', 'LUIS FELIPE VASQUEZ RAMIREZ', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('1929', 'TATIANA CABRERA SANTOS', '2009-06-28', '2', '1');
INSERT INTO `persona` VALUES ('1930', 'JUAN CARLOS ZHANG LANDA', '2009-11-27', '2', '1');
INSERT INTO `persona` VALUES ('1931', 'DIANA STEFANIA NUÑEZ ELORZA', '2010-05-10', '2', '1');
INSERT INTO `persona` VALUES ('1932', 'CLAUDIA SOCORRO DOS SANTOS CASTILLO', '2010-02-13', '2', '1');
INSERT INTO `persona` VALUES ('1933', 'ELKIN PISFIL SANZ', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('1934', 'LILIANA STEFANNY PUEMAPE ARMENTIA', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('1935', 'CARLOS ESTEBAN FLORES OCHOA', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('1936', 'JUAN MANUEL VARGAS DELGADO', '2009-12-13', '2', '1');
INSERT INTO `persona` VALUES ('1937', 'CHRISTIAN MIGUEL GONZALES RAMIREZ', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('1938', 'HECTOR GENTIL VERA SANTOS', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('1939', 'NELLY YAZMIN MONSALVE LANDA', '2009-10-06', '2', '1');
INSERT INTO `persona` VALUES ('1940', 'DAMARIS PEREZ ELORZA', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('1941', 'AMANDA BENAVIDES CASTILLO', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('1942', 'ANGIE LORENA PISFIL PUEMAPE', '2010-08-04', '2', '1');
INSERT INTO `persona` VALUES ('1943', 'JOSE DENIS FLORES VARGAS', '2010-04-17', '2', '1');
INSERT INTO `persona` VALUES ('1944', 'KAROL JOE RODRIGUEZ GARCIA', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('1945', 'CARLOS ALBEIRO GARCIA FERNANDEZ', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('1946', 'HERNAN ALEXIS GONZALEZ MARTINEZ', '2009-08-24', '2', '1');
INSERT INTO `persona` VALUES ('1947', 'JORGE ALIRIO LOPEZ GONZALEZ', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('1948', 'YESNARDA NAIROBI PISFIL PUEMAPE', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('1949', 'DIANA CAROLINA FLORES VARGAS', '2009-10-19', '2', '1');
INSERT INTO `persona` VALUES ('1950', 'HAROLD ORLANDO RODRIGUEZ GARCIA', '2009-10-11', '2', '1');
INSERT INTO `persona` VALUES ('1951', 'ZULLY JOHANA GARCIA FERNANDEZ', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('1952', 'JULIAN CAMILO GONZALEZ MARTINEZ', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('1953', 'MARIA LOPEZ GONZALEZ', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('1954', 'FLOR PEREZ PEREZ', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('1955', 'JUAN MARTINEZ LOPEZ', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('1956', 'ARMANDO SANCHEZ RODRIGUEZ', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('1957', 'ENRIQUE FERNANDEZ SANCHEZ', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('1958', 'VERONICA GOMEZ JIMENEZ', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('1959', 'MARIA HERNANDEZ RUIZ', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('1960', 'FLORES DIAZ GOMEZ', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('1961', 'TOMASA RAMIREZ MARTIN', '2010-08-19', '2', '1');
INSERT INTO `persona` VALUES ('1962', 'CRISTIAN CAMILO ALVAREZ ALONSO', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('1963', 'MEYLIN VIVIANA CHEN DIAZ', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('1964', 'YEFERSON RIKI JIMENEZ HERNANDEZ', '2009-08-24', '2', '1');
INSERT INTO `persona` VALUES ('1965', 'MAURICIO JAVIER TORRES MORENO', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('1966', 'MONICA ANDREA SINGH GUTIERREZ', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('1967', 'RENE ALBERTO RUIZ AGUIRRE', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('1968', 'OSCAR JAVIER ROJAS ALVAREZ', '2010-07-31', '2', '1');
INSERT INTO `persona` VALUES ('1969', 'LUIS FELIPE ROMERO GIL', '2009-09-14', '2', '1');
INSERT INTO `persona` VALUES ('1970', 'TATIANA CASTRO SALAZAR', '2009-12-18', '2', '1');
INSERT INTO `persona` VALUES ('1971', 'JUAN CARLOS FLORES IBAÑEZ', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('1972', 'DIANA STEFANIA MUÑOZ MUÑOZ', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('1973', 'CLAUDIA SOCORRO GUTIERREZ URIARTE', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('1974', 'ELKIN VARGAS BLANCO', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('1975', 'LILIANA STEFANNY DA SILVA PINEDO', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('1976', 'CARLOS ESTEBAN MORALES SAEZ', '2010-05-05', '2', '1');
INSERT INTO `persona` VALUES ('1977', 'JUAN MANUEL CASTILLO ORTIZ DE ZARATE', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('1978', 'CRISTIAN CAMILO MARTIN ORTIZ', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('1979', 'MEYLIN VIVIANA MORENO ANGULO', '2009-08-20', '2', '1');
INSERT INTO `persona` VALUES ('1980', 'ENRIQUE SILVA UGARTE', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('1981', 'MARY ORTIZ DIEZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('1982', 'CRISTIAN CAMILO PEREIRA RAMOS', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('1983', 'MEYLIN VIVIANA REYES SAENZ', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('1984', 'YEFERSON RIKI RAMOS QUINTANA', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('1985', 'MAURICIO JAVIER SUAREZ MARQUINEZ', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('1986', 'MONICA ANDREA MEDINA ROMERO', '2010-01-09', '2', '1');
INSERT INTO `persona` VALUES ('1987', 'RENE ALBERTO LIN ORTEGA', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('1988', 'OSCAR JAVIER WANG SANTAMARIA', '2010-08-16', '2', '1');
INSERT INTO `persona` VALUES ('1989', 'LUIS FELIPE HERRERA DOMINGUEZ', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('1990', 'TATIANA CRUZ RUIZ DE AZUA', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('1991', 'JUAN CARLOS MENDEZ SANZ', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('1992', 'DIANA STEFANIA MARIN ARMENTIA', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('1993', 'CLAUDIA SOCORRO FERREIRA OCHOA', '2009-11-03', '2', '1');
INSERT INTO `persona` VALUES ('1994', 'ELKIN MENDOZA DELGADO', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('1995', 'LILIANA STEFANNY VASQUEZ RAMIREZ', '2010-07-02', '2', '1');
INSERT INTO `persona` VALUES ('1996', 'CARLOS ESTEBAN CABRERA SANTOS', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('1997', 'JUAN MANUEL ZHANG LANDA', '2010-01-30', '2', '1');
INSERT INTO `persona` VALUES ('1998', 'CHRISTIAN MIGUEL NUÑEZ ELORZA', '2010-03-14', '2', '1');
INSERT INTO `persona` VALUES ('1999', 'HECTOR GENTIL DOS SANTOS CASTILLO', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('2000', 'NELLY YAZMIN PISFIL SANZ', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('2001', 'DAMARIS PUEMAPE ARMENTIA', '2010-08-08', '2', '1');
INSERT INTO `persona` VALUES ('2002', 'AMANDA FLORES OCHOA', '2010-03-06', '2', '1');
INSERT INTO `persona` VALUES ('2003', 'ANGIE LORENA VARGAS DELGADO', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('2004', 'JOSE DENIS GONZALES RAMIREZ', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('2005', 'KAROL JOE VERA SANTOS', '2010-08-19', '2', '1');
INSERT INTO `persona` VALUES ('2006', 'CARLOS ALBEIRO MONSALVE LANDA', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('2007', 'HERNAN ALEXIS PEREZ ELORZA', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('2008', 'JORGE ALIRIO BENAVIDES CASTILLO', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('2009', 'YESNARDA NAIROBI PISFIL PUEMAPE', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('2010', 'DIANA CAROLINA FLORES VARGAS', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('2011', 'HAROLD ORLANDO RODRIGUEZ GARCIA', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('2012', 'ZULLY JOHANA GARCIA FERNANDEZ', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('2013', 'JULIAN CAMILO GONZALEZ MARTINEZ', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('2014', 'MARIA LOPEZ GONZALEZ', '2010-07-21', '2', '1');
INSERT INTO `persona` VALUES ('2015', 'FLOR PEREZ PEREZ', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('2016', 'JUAN MARTINEZ LOPEZ', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('2017', 'ARMANDO SANCHEZ RODRIGUEZ', '2009-11-14', '2', '1');
INSERT INTO `persona` VALUES ('2018', 'ENRIQUE FERNANDEZ SANCHEZ', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('2019', 'VERONICA GOMEZ JIMENEZ', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('2020', 'MARIA HERNANDEZ RUIZ', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('2021', 'FLORES DIAZ GOMEZ', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('2022', 'TOMASA RAMIREZ MARTIN', '2010-08-15', '2', '1');
INSERT INTO `persona` VALUES ('2023', 'CRISTIAN CAMILO ALVAREZ ALONSO', '2009-08-23', '2', '1');
INSERT INTO `persona` VALUES ('2024', 'MEYLIN VIVIANA CHEN DIAZ', '2010-09-06', '2', '1');
INSERT INTO `persona` VALUES ('2025', 'YEFERSON RIKI JIMENEZ HERNANDEZ', '2009-10-19', '2', '1');
INSERT INTO `persona` VALUES ('2026', 'MAURICIO JAVIER TORRES MORENO', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('2027', 'MONICA ANDREA SINGH GUTIERREZ', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('2028', 'RENE ALBERTO RUIZ AGUIRRE', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('2029', 'OSCAR JAVIER ROJAS ALVAREZ', '2010-01-24', '2', '1');
INSERT INTO `persona` VALUES ('2030', 'LUIS FELIPE ROMERO GIL', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('2031', 'TATIANA CASTRO SALAZAR', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('2032', 'JUAN CARLOS FLORES IBAÑEZ', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('2033', 'DIANA STEFANIA MUÑOZ MUÑOZ', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('2034', 'CLAUDIA SOCORRO GUTIERREZ URIARTE', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('2035', 'ELKIN VARGAS BLANCO', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('2036', 'LILIANA STEFANNY DA SILVA PINEDO', '2009-10-26', '2', '1');
INSERT INTO `persona` VALUES ('2037', 'CARLOS ESTEBAN MORALES SAEZ', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('2038', 'JUAN MANUEL CASTILLO ORTIZ DE ZARATE', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('2039', 'CRISTIAN CAMILO MARTIN ORTIZ', '2009-11-27', '2', '1');
INSERT INTO `persona` VALUES ('2040', 'MEYLIN VIVIANA MORENO ANGULO', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('2041', 'ENRIQUE SILVA UGARTE', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('2042', 'MARY ORTIZ DIEZ', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('2043', 'CRISTIAN CAMILO PEREIRA RAMOS', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('2044', 'MEYLIN VIVIANA REYES SAENZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('2045', 'YEFERSON RIKI RAMOS QUINTANA', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('2046', 'MAURICIO JAVIER SUAREZ MARQUINEZ', '2010-05-05', '2', '1');
INSERT INTO `persona` VALUES ('2047', 'MONICA ANDREA MEDINA ROMERO', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('2048', 'RENE ALBERTO LIN ORTEGA', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('2049', 'OSCAR JAVIER WANG SANTAMARIA', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('2050', 'LUIS FELIPE HERRERA DOMINGUEZ', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('2051', 'TATIANA CRUZ RUIZ DE AZUA', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('2052', 'JUAN CARLOS MENDEZ SANZ', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('2053', 'DIANA STEFANIA MARIN ARMENTIA', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('2054', 'CLAUDIA SOCORRO FERREIRA OCHOA', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('2055', 'ELKIN MENDOZA DELGADO', '2009-09-05', '2', '1');
INSERT INTO `persona` VALUES ('2056', 'LILIANA STEFANNY VASQUEZ RAMIREZ', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('2057', 'CARLOS ESTEBAN CABRERA SANTOS', '2009-08-18', '2', '1');
INSERT INTO `persona` VALUES ('2058', 'JUAN MANUEL ZHANG LANDA', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('2059', 'CHRISTIAN MIGUEL NUÑEZ ELORZA', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('2060', 'HECTOR GENTIL DOS SANTOS CASTILLO', '2009-09-14', '2', '1');
INSERT INTO `persona` VALUES ('2061', 'NELLY YAZMIN PISFIL SANZ', '2010-03-08', '2', '1');
INSERT INTO `persona` VALUES ('2062', 'DAMARIS PUEMAPE ARMENTIA', '2009-10-12', '2', '1');
INSERT INTO `persona` VALUES ('2063', 'AMANDA FLORES OCHOA', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('2064', 'ANGIE LORENA VARGAS DELGADO', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('2065', 'JOSE DENIS GONZALES RAMIREZ', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('2066', 'KAROL JOE VERA SANTOS', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('2067', 'CARLOS ALBEIRO MONSALVE LANDA', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('2068', 'HERNAN ALEXIS PEREZ ELORZA', '2010-01-30', '2', '1');
INSERT INTO `persona` VALUES ('2069', 'JORGE ALIRIO BENAVIDES CASTILLO', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('2070', 'YESNARDA NAIROBI PISFIL PUEMAPE', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('2071', 'DIANA CAROLINA FLORES VARGAS', '2009-11-11', '2', '1');
INSERT INTO `persona` VALUES ('2072', 'HAROLD ORLANDO RODRIGUEZ GARCIA', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('2073', 'ZULLY JOHANA GARCIA FERNANDEZ', '2010-03-14', '2', '1');
INSERT INTO `persona` VALUES ('2074', 'JULIAN CAMILO GONZALEZ MARTINEZ', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('2075', 'MARIA LOPEZ GONZALEZ', '2010-07-31', '2', '1');
INSERT INTO `persona` VALUES ('2076', 'FLOR PISFIL PUEMAPE', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('2077', 'JUAN FLORES VARGAS', '2010-06-24', '2', '1');
INSERT INTO `persona` VALUES ('2078', 'ARMANDO RODRIGUEZ GARCIA', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('2079', 'ENRIQUE GARCIA FERNANDEZ', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('2080', 'VERONICA GONZALEZ MARTINEZ', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('2081', 'MARIA LOPEZ GONZALEZ', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('2082', 'FLORES PEREZ PEREZ', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('2083', 'TOMASA MARTINEZ LOPEZ', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('2084', 'CRISTIAN CAMILO SANCHEZ RODRIGUEZ', '2010-03-03', '2', '1');
INSERT INTO `persona` VALUES ('2085', 'MEYLIN VIVIANA FERNANDEZ SANCHEZ', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('2086', 'YEFERSON RIKI GOMEZ JIMENEZ', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('2087', 'MAURICIO JAVIER HERNANDEZ RUIZ', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('2088', 'MONICA ANDREA DIAZ GOMEZ', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('2089', 'RENE ALBERTO RAMIREZ MARTIN', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('2090', 'OSCAR JAVIER ALVAREZ ALONSO', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('2091', 'LUIS FELIPE CHEN DIAZ', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('2092', 'TATIANA JIMENEZ HERNANDEZ', '2010-03-01', '2', '1');
INSERT INTO `persona` VALUES ('2093', 'JUAN CARLOS TORRES MORENO', '2010-05-21', '2', '1');
INSERT INTO `persona` VALUES ('2094', 'DIANA STEFANIA SINGH GUTIERREZ', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('2095', 'CLAUDIA SOCORRO RUIZ AGUIRRE', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('2096', 'ELKIN ROJAS ALVAREZ', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('2097', 'LILIANA STEFANNY ROMERO GIL', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('2098', 'CARLOS ESTEBAN CASTRO SALAZAR', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('2099', 'JUAN MANUEL FLORES IBAÑEZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('2100', 'CRISTIAN CAMILO MUÑOZ MUÑOZ', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('2101', 'MEYLIN VIVIANA GUTIERREZ URIARTE', '2010-02-28', '2', '1');
INSERT INTO `persona` VALUES ('2102', 'ENRIQUE VARGAS BLANCO', '2009-08-08', '2', '1');
INSERT INTO `persona` VALUES ('2103', 'MARY DA SILVA PINEDO', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('2104', 'CRISTIAN CAMILO MORALES SAEZ', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('2105', 'MEYLIN VIVIANA CASTILLO ORTIZ DE ZARATE', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('2106', 'YEFERSON RIKI MARTIN ORTIZ', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('2107', 'MAURICIO JAVIER MORENO ANGULO', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('2108', 'MONICA ANDREA SILVA UGARTE', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('2109', 'RENE ALBERTO ORTIZ DIEZ', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('2110', 'OSCAR JAVIER PEREIRA RAMOS', '2009-06-26', '2', '1');
INSERT INTO `persona` VALUES ('2111', 'LUIS FELIPE REYES SAENZ', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('2112', 'TATIANA RAMOS QUINTANA', '2009-08-11', '2', '1');
INSERT INTO `persona` VALUES ('2113', 'JUAN CARLOS SUAREZ MARQUINEZ', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('2114', 'DIANA STEFANIA MEDINA ROMERO', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('2115', 'CLAUDIA SOCORRO LIN ORTEGA', '2009-07-21', '2', '1');
INSERT INTO `persona` VALUES ('2116', 'ELKIN WANG SANTAMARIA', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('2117', 'LILIANA STEFANNY HERRERA DOMINGUEZ', '2009-11-14', '2', '1');
INSERT INTO `persona` VALUES ('2118', 'CARLOS ESTEBAN CRUZ RUIZ DE AZUA', '2010-05-01', '2', '1');
INSERT INTO `persona` VALUES ('2119', 'JUAN MANUEL MENDEZ SANZ', '2010-07-31', '2', '1');
INSERT INTO `persona` VALUES ('2120', 'CHRISTIAN MIGUEL MARIN ARMENTIA', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('2121', 'HECTOR GENTIL FERREIRA OCHOA', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('2122', 'NELLY YAZMIN MENDOZA DELGADO', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('2123', 'DAMARIS VASQUEZ RAMIREZ', '2010-09-07', '2', '1');
INSERT INTO `persona` VALUES ('2124', 'AMANDA CABRERA SANTOS', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('2125', 'ANGIE LORENA ZHANG LANDA', '2009-06-18', '2', '1');
INSERT INTO `persona` VALUES ('2126', 'JOSE DENIS NUÑEZ ELORZA', '2010-03-15', '2', '1');
INSERT INTO `persona` VALUES ('2127', 'KAROL JOE DOS SANTOS CASTILLO', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('2128', 'CARLOS ALBEIRO PISFIL SANZ', '2010-07-29', '2', '1');
INSERT INTO `persona` VALUES ('2129', 'HERNAN ALEXIS PUEMAPE ARMENTIA', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('2130', 'JORGE ALIRIO FLORES OCHOA', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('2131', 'YESNARDA NAIROBI VARGAS DELGADO', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('2132', 'DIANA CAROLINA GONZALES RAMIREZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('2133', 'HAROLD ORLANDO VERA SANTOS', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('2134', 'ZULLY JOHANA MONSALVE LANDA', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('2135', 'JULIAN CAMILO PEREZ ELORZA', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('2136', 'MARIA BENAVIDES CASTILLO', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('2137', 'FLOR PISFIL PUEMAPE', '2010-01-21', '2', '1');
INSERT INTO `persona` VALUES ('2138', 'JUAN FLORES VARGAS', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('2139', 'ARMANDO RODRIGUEZ GARCIA', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('2140', 'ENRIQUE GARCIA FERNANDEZ', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('2141', 'VERONICA GONZALEZ MARTINEZ', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('2142', 'MARIA LOPEZ GONZALEZ', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('2143', 'FLORES PEREZ PEREZ', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('2144', 'TOMASA MARTINEZ LOPEZ', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('2145', 'CRISTIAN CAMILO SANCHEZ RODRIGUEZ', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('2146', 'MEYLIN VIVIANA FERNANDEZ SANCHEZ', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('2147', 'YEFERSON RIKI GOMEZ JIMENEZ', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('2148', 'MAURICIO JAVIER HERNANDEZ RUIZ', '2010-05-16', '2', '1');
INSERT INTO `persona` VALUES ('2149', 'MONICA ANDREA DIAZ GOMEZ', '2010-03-01', '2', '1');
INSERT INTO `persona` VALUES ('2150', 'RENE ALBERTO RAMIREZ MARTIN', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('2151', 'OSCAR JAVIER ALVAREZ ALONSO', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('2152', 'LUIS FELIPE CHEN DIAZ', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('2153', 'TATIANA JIMENEZ HERNANDEZ', '2010-05-28', '2', '1');
INSERT INTO `persona` VALUES ('2154', 'JUAN CARLOS TORRES MORENO', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('2155', 'DIANA STEFANIA SINGH GUTIERREZ', '2009-10-19', '2', '1');
INSERT INTO `persona` VALUES ('2156', 'CLAUDIA SOCORRO RUIZ AGUIRRE', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('2157', 'ELKIN ROJAS ALVAREZ', '2009-12-13', '2', '1');
INSERT INTO `persona` VALUES ('2158', 'LILIANA STEFANNY ROMERO GIL', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('2159', 'CARLOS ESTEBAN CASTRO SALAZAR', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('2160', 'JUAN MANUEL FLORES IBAÑEZ', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('2161', 'CRISTIAN CAMILO MUÑOZ MUÑOZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('2162', 'MEYLIN VIVIANA GUTIERREZ URIARTE', '2010-05-24', '2', '1');
INSERT INTO `persona` VALUES ('2163', 'ENRIQUE VARGAS BLANCO', '2010-01-29', '2', '1');
INSERT INTO `persona` VALUES ('2164', 'MARY DA SILVA PINEDO', '2009-09-14', '2', '1');
INSERT INTO `persona` VALUES ('2165', 'CRISTIAN CAMILO MORALES SAEZ', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('2166', 'MEYLIN VIVIANA CASTILLO ORTIZ DE ZARATE', '2009-11-14', '2', '1');
INSERT INTO `persona` VALUES ('2167', 'YEFERSON RIKI MARTIN ORTIZ', '2010-02-28', '2', '1');
INSERT INTO `persona` VALUES ('2168', 'MAURICIO JAVIER MORENO ANGULO', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('2169', 'MONICA ANDREA SILVA UGARTE', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('2170', 'RENE ALBERTO ORTIZ DIEZ', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('2171', 'OSCAR JAVIER PEREIRA RAMOS', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('2172', 'LUIS FELIPE REYES SAENZ', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('2173', 'TATIANA RAMOS QUINTANA', '2010-06-30', '2', '1');
INSERT INTO `persona` VALUES ('2174', 'JUAN CARLOS SUAREZ MARQUINEZ', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('2175', 'DIANA STEFANIA MEDINA ROMERO', '2009-09-27', '2', '1');
INSERT INTO `persona` VALUES ('2176', 'CLAUDIA SOCORRO LIN ORTEGA', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('2177', 'ELKIN WANG SANTAMARIA', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('2178', 'LILIANA STEFANNY HERRERA DOMINGUEZ', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('2179', 'CARLOS ESTEBAN CRUZ RUIZ DE AZUA', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('2180', 'JUAN MANUEL MENDEZ SANZ', '2010-05-05', '2', '1');
INSERT INTO `persona` VALUES ('2181', 'CHRISTIAN MIGUEL MARIN ARMENTIA', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('2182', 'HECTOR GENTIL FERREIRA OCHOA', '2010-07-06', '2', '1');
INSERT INTO `persona` VALUES ('2183', 'NELLY YAZMIN MENDOZA DELGADO', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('2184', 'DAMARIS VASQUEZ RAMIREZ', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('2185', 'AMANDA CABRERA SANTOS', '2010-01-09', '2', '1');
INSERT INTO `persona` VALUES ('2186', 'ANGIE LORENA ZHANG LANDA', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('2187', 'JOSE DENIS NUÑEZ ELORZA', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('2188', 'KAROL JOE DOS SANTOS CASTILLO', '2009-12-16', '2', '1');
INSERT INTO `persona` VALUES ('2189', 'CARLOS ALBEIRO PISFIL SANZ', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('2190', 'HERNAN ALEXIS PUEMAPE ARMENTIA', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('2191', 'JORGE ALIRIO FLORES OCHOA', '2010-05-24', '2', '1');
INSERT INTO `persona` VALUES ('2192', 'YESNARDA NAIROBI VARGAS DELGADO', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('2193', 'DIANA CAROLINA GONZALES RAMIREZ', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('2194', 'HAROLD ORLANDO VERA SANTOS', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('2195', 'ZULLY JOHANA MONSALVE LANDA', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('2196', 'JULIAN CAMILO PEREZ ELORZA', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('2197', 'MARIA BENAVIDES CASTILLO', '2009-06-28', '2', '1');
INSERT INTO `persona` VALUES ('2198', 'FLOR PISFIL PUEMAPE', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('2199', 'JUAN FLORES VARGAS', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('2200', 'ARMANDO RODRIGUEZ GARCIA', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('2201', 'ENRIQUE GARCIA FERNANDEZ', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('2202', 'VERONICA GONZALEZ MARTINEZ', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('2203', 'MARIA LOPEZ GONZALEZ', '2010-03-12', '2', '1');
INSERT INTO `persona` VALUES ('2204', 'FLORES PISFIL PUEMAPE', '2010-01-11', '2', '1');
INSERT INTO `persona` VALUES ('2205', 'TOMASA FLORES VARGAS', '2010-09-08', '2', '1');
INSERT INTO `persona` VALUES ('2206', 'CRISTIAN CAMILO RODRIGUEZ GARCIA', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('2207', 'MEYLIN VIVIANA GARCIA FERNANDEZ', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('2208', 'YEFERSON RIKI GONZALEZ MARTINEZ', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('2209', 'MAURICIO JAVIER LOPEZ GONZALEZ', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('2210', 'MONICA ANDREA PEREZ PEREZ', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('2211', 'RENE ALBERTO MARTINEZ LOPEZ', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('2212', 'OSCAR JAVIER SANCHEZ RODRIGUEZ', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('2213', 'LUIS FELIPE FERNANDEZ SANCHEZ', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('2214', 'TATIANA GOMEZ JIMENEZ', '2010-08-30', '2', '1');
INSERT INTO `persona` VALUES ('2215', 'JUAN CARLOS HERNANDEZ RUIZ', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('2216', 'DIANA STEFANIA DIAZ GOMEZ', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('2217', 'CLAUDIA SOCORRO RAMIREZ MARTIN', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('2218', 'ELKIN ALVAREZ ALONSO', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('2219', 'LILIANA STEFANNY CHEN DIAZ', '2009-11-30', '2', '1');
INSERT INTO `persona` VALUES ('2220', 'CARLOS ESTEBAN JIMENEZ HERNANDEZ', '2010-09-08', '2', '1');
INSERT INTO `persona` VALUES ('2221', 'JUAN MANUEL TORRES MORENO', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('2222', 'CRISTIAN CAMILO SINGH GUTIERREZ', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('2223', 'MEYLIN VIVIANA RUIZ AGUIRRE', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('2224', 'ENRIQUE ROJAS ALVAREZ', '2009-06-16', '2', '1');
INSERT INTO `persona` VALUES ('2225', 'MARY ROMERO GIL', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('2226', 'CRISTIAN CAMILO CASTRO SALAZAR', '2009-09-05', '2', '1');
INSERT INTO `persona` VALUES ('2227', 'MEYLIN VIVIANA FLORES IBAÑEZ', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('2228', 'YEFERSON RIKI MUÑOZ MUÑOZ', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('2229', 'MAURICIO JAVIER GUTIERREZ URIARTE', '2009-07-26', '2', '1');
INSERT INTO `persona` VALUES ('2230', 'MONICA ANDREA VARGAS BLANCO', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('2231', 'RENE ALBERTO DA SILVA PINEDO', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('2232', 'OSCAR JAVIER MORALES SAEZ', '2010-06-28', '2', '1');
INSERT INTO `persona` VALUES ('2233', 'LUIS FELIPE CASTILLO ORTIZ DE ZARATE', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('2234', 'TATIANA MARTIN ORTIZ', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('2235', 'JUAN CARLOS MORENO ANGULO', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('2236', 'DIANA STEFANIA SILVA UGARTE', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('2237', 'CLAUDIA SOCORRO ORTIZ DIEZ', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('2238', 'ELKIN PEREIRA RAMOS', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('2239', 'LILIANA STEFANNY REYES SAENZ', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('2240', 'CARLOS ESTEBAN RAMOS QUINTANA', '2009-11-12', '2', '1');
INSERT INTO `persona` VALUES ('2241', 'JUAN MANUEL SUAREZ MARQUINEZ', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('2242', 'CHRISTIAN MIGUEL MEDINA ROMERO', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('2243', 'HECTOR GENTIL LIN ORTEGA', '2009-11-11', '2', '1');
INSERT INTO `persona` VALUES ('2244', 'NELLY YAZMIN WANG SANTAMARIA', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('2245', 'DAMARIS HERRERA DOMINGUEZ', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('2246', 'AMANDA CRUZ RUIZ DE AZUA', '2010-09-06', '2', '1');
INSERT INTO `persona` VALUES ('2247', 'ANGIE LORENA MENDEZ SANZ', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('2248', 'JOSE DENIS MARIN ARMENTIA', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('2249', 'KAROL JOE FERREIRA OCHOA', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('2250', 'CARLOS ALBEIRO MENDOZA DELGADO', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('2251', 'HERNAN ALEXIS VASQUEZ RAMIREZ', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('2252', 'JORGE ALIRIO CABRERA SANTOS', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('2253', 'YESNARDA NAIROBI ZHANG LANDA', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('2254', 'DIANA CAROLINA NUÑEZ ELORZA', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('2255', 'HAROLD ORLANDO DOS SANTOS CASTILLO', '2010-09-05', '2', '1');
INSERT INTO `persona` VALUES ('2256', 'ZULLY JOHANA PISFIL SANZ', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('2257', 'JULIAN CAMILO PUEMAPE ARMENTIA', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('2258', 'MARIA FLORES OCHOA', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('2259', 'FLOR VARGAS DELGADO', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('2260', 'JUAN GONZALES RAMIREZ', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('2261', 'ARMANDO VERA SANTOS', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('2262', 'ENRIQUE MONSALVE LANDA', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('2263', 'VERONICA PEREZ ELORZA', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('2264', 'MARIA BENAVIDES CASTILLO', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('2265', 'FLORES PISFIL PUEMAPE', '2009-11-11', '2', '1');
INSERT INTO `persona` VALUES ('2266', 'TOMASA FLORES VARGAS', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('2267', 'CRISTIAN CAMILO RODRIGUEZ GARCIA', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('2268', 'MEYLIN VIVIANA GARCIA FERNANDEZ', '2009-12-20', '2', '1');
INSERT INTO `persona` VALUES ('2269', 'YEFERSON RIKI GONZALEZ MARTINEZ', '2010-05-16', '2', '1');
INSERT INTO `persona` VALUES ('2270', 'MAURICIO JAVIER LOPEZ GONZALEZ', '2010-03-23', '2', '1');
INSERT INTO `persona` VALUES ('2271', 'MONICA ANDREA PEREZ PEREZ', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('2272', 'RENE ALBERTO MARTINEZ LOPEZ', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('2273', 'OSCAR JAVIER SANCHEZ RODRIGUEZ', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('2274', 'LUIS FELIPE FERNANDEZ SANCHEZ', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('2275', 'TATIANA GOMEZ JIMENEZ', '2010-08-29', '2', '1');
INSERT INTO `persona` VALUES ('2276', 'JUAN CARLOS HERNANDEZ RUIZ', '2010-07-17', '2', '1');
INSERT INTO `persona` VALUES ('2277', 'DIANA STEFANIA DIAZ GOMEZ', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('2278', 'CLAUDIA SOCORRO RAMIREZ MARTIN', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('2279', 'ELKIN ALVAREZ ALONSO', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('2280', 'LILIANA STEFANNY CHEN DIAZ', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('2281', 'CARLOS ESTEBAN JIMENEZ HERNANDEZ', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('2282', 'JUAN MANUEL TORRES MORENO', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('2283', 'CRISTIAN CAMILO SINGH GUTIERREZ', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('2284', 'MEYLIN VIVIANA RUIZ AGUIRRE', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('2285', 'ENRIQUE ROJAS ALVAREZ', '2010-08-15', '2', '1');
INSERT INTO `persona` VALUES ('2286', 'MARY ROMERO GIL', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('2287', 'CRISTIAN CAMILO CASTRO SALAZAR', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('2288', 'MEYLIN VIVIANA FLORES IBAÑEZ', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('2289', 'YEFERSON RIKI MUÑOZ MUÑOZ', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('2290', 'MAURICIO JAVIER GUTIERREZ URIARTE', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('2291', 'MONICA ANDREA VARGAS BLANCO', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('2292', 'RENE ALBERTO DA SILVA PINEDO', '2010-03-28', '2', '1');
INSERT INTO `persona` VALUES ('2293', 'OSCAR JAVIER MORALES SAEZ', '2010-03-06', '2', '1');
INSERT INTO `persona` VALUES ('2294', 'LUIS FELIPE CASTILLO ORTIZ DE ZARATE', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('2295', 'TATIANA MARTIN ORTIZ', '2009-10-02', '2', '1');
INSERT INTO `persona` VALUES ('2296', 'JUAN CARLOS MORENO ANGULO', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('2297', 'DIANA STEFANIA SILVA UGARTE', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('2298', 'CLAUDIA SOCORRO ORTIZ DIEZ', '2009-07-17', '2', '1');
INSERT INTO `persona` VALUES ('2299', 'ELKIN PEREIRA RAMOS', '2009-07-07', '2', '1');
INSERT INTO `persona` VALUES ('2300', 'LILIANA STEFANNY REYES SAENZ', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('2301', 'CARLOS ESTEBAN RAMOS QUINTANA', '2009-11-06', '2', '1');
INSERT INTO `persona` VALUES ('2302', 'JUAN MANUEL SUAREZ MARQUINEZ', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('2303', 'CHRISTIAN MIGUEL MEDINA ROMERO', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('2304', 'HECTOR GENTIL LIN ORTEGA', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('2305', 'NELLY YAZMIN WANG SANTAMARIA', '2009-12-13', '2', '1');
INSERT INTO `persona` VALUES ('2306', 'DAMARIS HERRERA DOMINGUEZ', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('2307', 'AMANDA CRUZ RUIZ DE AZUA', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('2308', 'ANGIE LORENA MENDEZ SANZ', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('2309', 'JOSE DENIS MARIN ARMENTIA', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('2310', 'KAROL JOE FERREIRA OCHOA', '2010-05-10', '2', '1');
INSERT INTO `persona` VALUES ('2311', 'CARLOS ALBEIRO MENDOZA DELGADO', '2009-06-28', '2', '1');
INSERT INTO `persona` VALUES ('2312', 'HERNAN ALEXIS VASQUEZ RAMIREZ', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('2313', 'JORGE ALIRIO CABRERA SANTOS', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('2314', 'YESNARDA NAIROBI ZHANG LANDA', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('2315', 'DIANA CAROLINA NUÑEZ ELORZA', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('2316', 'HAROLD ORLANDO DOS SANTOS CASTILLO', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('2317', 'ZULLY JOHANA PISFIL SANZ', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('2318', 'JULIAN CAMILO PUEMAPE ARMENTIA', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('2319', 'MARIA FLORES OCHOA', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('2320', 'FLOR VARGAS DELGADO', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('2321', 'JUAN GONZALES RAMIREZ', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('2322', 'ARMANDO VERA SANTOS', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('2323', 'ENRIQUE MONSALVE LANDA', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('2324', 'VERONICA PEREZ ELORZA', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('2325', 'MARIA BENAVIDES CASTILLO', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('2326', 'FLORES PISFIL PUEMAPE', '2010-03-08', '2', '1');
INSERT INTO `persona` VALUES ('2327', 'TOMASA FLORES VARGAS', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('2328', 'CRISTIAN CAMILO RODRIGUEZ GARCIA', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('2329', 'MEYLIN VIVIANA GARCIA FERNANDEZ', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('2330', 'YEFERSON RIKI GONZALEZ MARTINEZ', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('2331', 'MAURICIO JAVIER LOPEZ GONZALEZ', '2010-03-06', '2', '1');
INSERT INTO `persona` VALUES ('2332', 'MONICA ANDREA PISFIL PUEMAPE', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('2333', 'RENE ALBERTO FLORES VARGAS', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('2334', 'OSCAR JAVIER RODRIGUEZ GARCIA', '2009-07-23', '2', '1');
INSERT INTO `persona` VALUES ('2335', 'LUIS FELIPE GARCIA FERNANDEZ', '2009-06-18', '2', '1');
INSERT INTO `persona` VALUES ('2336', 'TATIANA GONZALEZ MARTINEZ', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('2337', 'JUAN CARLOS LOPEZ GONZALEZ', '2009-09-26', '2', '1');
INSERT INTO `persona` VALUES ('2338', 'DIANA STEFANIA PEREZ PEREZ', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('2339', 'CLAUDIA SOCORRO MARTINEZ LOPEZ', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('2340', 'ELKIN SANCHEZ RODRIGUEZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('2341', 'LILIANA STEFANNY FERNANDEZ SANCHEZ', '2010-07-01', '2', '1');
INSERT INTO `persona` VALUES ('2342', 'CARLOS ESTEBAN GOMEZ JIMENEZ', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('2343', 'JUAN MANUEL HERNANDEZ RUIZ', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('2344', 'CRISTIAN CAMILO DIAZ GOMEZ', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('2345', 'MEYLIN VIVIANA RAMIREZ MARTIN', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('2346', 'ENRIQUE ALVAREZ ALONSO', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('2347', 'MARY CHEN DIAZ', '2009-11-08', '2', '1');
INSERT INTO `persona` VALUES ('2348', 'CRISTIAN CAMILO JIMENEZ HERNANDEZ', '2010-05-13', '2', '1');
INSERT INTO `persona` VALUES ('2349', 'MEYLIN VIVIANA TORRES MORENO', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('2350', 'YEFERSON RIKI SINGH GUTIERREZ', '2010-04-17', '2', '1');
INSERT INTO `persona` VALUES ('2351', 'MAURICIO JAVIER RUIZ AGUIRRE', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('2352', 'MONICA ANDREA ROJAS ALVAREZ', '2009-09-26', '2', '1');
INSERT INTO `persona` VALUES ('2353', 'RENE ALBERTO ROMERO GIL', '2009-10-18', '2', '1');
INSERT INTO `persona` VALUES ('2354', 'OSCAR JAVIER CASTRO SALAZAR', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('2355', 'LUIS FELIPE FLORES IBAÑEZ', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('2356', 'TATIANA MUÑOZ MUÑOZ', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('2357', 'JUAN CARLOS GUTIERREZ URIARTE', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('2358', 'DIANA STEFANIA VARGAS BLANCO', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('2359', 'CLAUDIA SOCORRO DA SILVA PINEDO', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('2360', 'ELKIN MORALES SAEZ', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('2361', 'LILIANA STEFANNY CASTILLO ORTIZ DE ZARATE', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('2362', 'CARLOS ESTEBAN MARTIN ORTIZ', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('2363', 'JUAN MANUEL MORENO ANGULO', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('2364', 'CHRISTIAN MIGUEL SILVA UGARTE', '2010-01-21', '2', '1');
INSERT INTO `persona` VALUES ('2365', 'HECTOR GENTIL ORTIZ DIEZ', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('2366', 'NELLY YAZMIN PEREIRA RAMOS', '2009-12-15', '2', '1');
INSERT INTO `persona` VALUES ('2367', 'DAMARIS REYES SAENZ', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('2368', 'AMANDA RAMOS QUINTANA', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('2369', 'ANGIE LORENA SUAREZ MARQUINEZ', '2010-05-06', '2', '1');
INSERT INTO `persona` VALUES ('2370', 'JOSE DENIS MEDINA ROMERO', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('2371', 'KAROL JOE LIN ORTEGA', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('2372', 'CARLOS ALBEIRO WANG SANTAMARIA', '2009-12-24', '2', '1');
INSERT INTO `persona` VALUES ('2373', 'HERNAN ALEXIS HERRERA DOMINGUEZ', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('2374', 'JORGE ALIRIO CRUZ RUIZ DE AZUA', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('2375', 'YESNARDA NAIROBI MENDEZ SANZ', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('2376', 'DIANA CAROLINA MARIN ARMENTIA', '2010-09-08', '2', '1');
INSERT INTO `persona` VALUES ('2377', 'HAROLD ORLANDO FERREIRA OCHOA', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('2378', 'ZULLY JOHANA MENDOZA DELGADO', '2010-01-17', '2', '1');
INSERT INTO `persona` VALUES ('2379', 'JULIAN CAMILO VASQUEZ RAMIREZ', '2009-12-31', '2', '1');
INSERT INTO `persona` VALUES ('2380', 'MARIA CABRERA SANTOS', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('2381', 'FLOR ZHANG LANDA', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('2382', 'JUAN NUÑEZ ELORZA', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('2383', 'ARMANDO DOS SANTOS CASTILLO', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('2384', 'ENRIQUE PISFIL SANZ', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('2385', 'VERONICA PUEMAPE ARMENTIA', '2009-06-23', '2', '1');
INSERT INTO `persona` VALUES ('2386', 'MARIA FLORES OCHOA', '2009-08-24', '2', '1');
INSERT INTO `persona` VALUES ('2387', 'FLORES VARGAS DELGADO', '2010-08-08', '2', '1');
INSERT INTO `persona` VALUES ('2388', 'TOMASA GONZALES RAMIREZ', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('2389', 'CRISTIAN CAMILO VERA SANTOS', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('2390', 'MEYLIN VIVIANA MONSALVE LANDA', '2010-06-17', '2', '1');
INSERT INTO `persona` VALUES ('2391', 'YEFERSON RIKI PEREZ ELORZA', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('2392', 'MAURICIO JAVIER BENAVIDES CASTILLO', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('2393', 'MONICA ANDREA PISFIL PUEMAPE', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('2394', 'RENE ALBERTO FLORES VARGAS', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('2395', 'OSCAR JAVIER RODRIGUEZ GARCIA', '2009-06-15', '2', '1');
INSERT INTO `persona` VALUES ('2396', 'LUIS FELIPE GARCIA FERNANDEZ', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('2397', 'TATIANA GONZALEZ MARTINEZ', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('2398', 'JUAN CARLOS LOPEZ GONZALEZ', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('2399', 'DIANA STEFANIA PEREZ PEREZ', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('2400', 'CLAUDIA SOCORRO MARTINEZ LOPEZ', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('2401', 'ELKIN SANCHEZ RODRIGUEZ', '2009-06-15', '2', '1');
INSERT INTO `persona` VALUES ('2402', 'LILIANA STEFANNY FERNANDEZ SANCHEZ', '2009-11-03', '2', '1');
INSERT INTO `persona` VALUES ('2403', 'CARLOS ESTEBAN GOMEZ JIMENEZ', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('2404', 'JUAN MANUEL HERNANDEZ RUIZ', '2010-04-23', '2', '1');
INSERT INTO `persona` VALUES ('2405', 'CRISTIAN CAMILO DIAZ GOMEZ', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('2406', 'MEYLIN VIVIANA RAMIREZ MARTIN', '2010-03-09', '2', '1');
INSERT INTO `persona` VALUES ('2407', 'ENRIQUE ALVAREZ ALONSO', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('2408', 'MARY CHEN DIAZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('2409', 'CRISTIAN CAMILO JIMENEZ HERNANDEZ', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('2410', 'MEYLIN VIVIANA TORRES MORENO', '2010-04-22', '2', '1');
INSERT INTO `persona` VALUES ('2411', 'YEFERSON RIKI SINGH GUTIERREZ', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('2412', 'MAURICIO JAVIER RUIZ AGUIRRE', '2010-07-01', '2', '1');
INSERT INTO `persona` VALUES ('2413', 'MONICA ANDREA ROJAS ALVAREZ', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('2414', 'RENE ALBERTO ROMERO GIL', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('2415', 'OSCAR JAVIER CASTRO SALAZAR', '2009-09-04', '2', '1');
INSERT INTO `persona` VALUES ('2416', 'LUIS FELIPE FLORES IBAÑEZ', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('2417', 'TATIANA MUÑOZ MUÑOZ', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('2418', 'JUAN CARLOS GUTIERREZ URIARTE', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('2419', 'DIANA STEFANIA VARGAS BLANCO', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('2420', 'CLAUDIA SOCORRO DA SILVA PINEDO', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('2421', 'ELKIN MORALES SAEZ', '2010-05-15', '2', '1');
INSERT INTO `persona` VALUES ('2422', 'LILIANA STEFANNY CASTILLO ORTIZ DE ZARATE', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('2423', 'CARLOS ESTEBAN MARTIN ORTIZ', '2009-09-14', '2', '1');
INSERT INTO `persona` VALUES ('2424', 'JUAN MANUEL MORENO ANGULO', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('2425', 'CHRISTIAN MIGUEL SILVA UGARTE', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('2426', 'HECTOR GENTIL ORTIZ DIEZ', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('2427', 'NELLY YAZMIN PEREIRA RAMOS', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('2428', 'DAMARIS REYES SAENZ', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('2429', 'AMANDA RAMOS QUINTANA', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('2430', 'ANGIE LORENA SUAREZ MARQUINEZ', '2010-08-13', '2', '1');
INSERT INTO `persona` VALUES ('2431', 'JOSE DENIS MEDINA ROMERO', '2010-03-03', '2', '1');
INSERT INTO `persona` VALUES ('2432', 'KAROL JOE LIN ORTEGA', '2010-04-23', '2', '1');
INSERT INTO `persona` VALUES ('2433', 'CARLOS ALBEIRO WANG SANTAMARIA', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('2434', 'HERNAN ALEXIS HERRERA DOMINGUEZ', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('2435', 'JORGE ALIRIO CRUZ RUIZ DE AZUA', '2010-08-29', '2', '1');
INSERT INTO `persona` VALUES ('2436', 'YESNARDA NAIROBI MENDEZ SANZ', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('2437', 'DIANA CAROLINA MARIN ARMENTIA', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('2438', 'HAROLD ORLANDO FERREIRA OCHOA', '2009-06-15', '2', '1');
INSERT INTO `persona` VALUES ('2439', 'ZULLY JOHANA MENDOZA DELGADO', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('2440', 'JULIAN CAMILO VASQUEZ RAMIREZ', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('2441', 'MARIA CABRERA SANTOS', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('2442', 'FLOR ZHANG LANDA', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('2443', 'JUAN NUÑEZ ELORZA', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('2444', 'ARMANDO DOS SANTOS CASTILLO', '2010-02-18', '2', '1');
INSERT INTO `persona` VALUES ('2445', 'ENRIQUE PISFIL SANZ', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('2446', 'VERONICA PUEMAPE ARMENTIA', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('2447', 'MARIA FLORES OCHOA', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('2448', 'FLORES VARGAS DELGADO', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('2449', 'TOMASA GONZALES RAMIREZ', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('2450', 'CRISTIAN CAMILO VERA SANTOS', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('2451', 'MEYLIN VIVIANA MONSALVE LANDA', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('2452', 'YEFERSON RIKI PEREZ ELORZA', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('2453', 'MAURICIO JAVIER BENAVIDES CASTILLO', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('2454', 'MONICA ANDREA PISFIL PUEMAPE', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('2455', 'RENE ALBERTO FLORES VARGAS', '2010-05-08', '2', '1');
INSERT INTO `persona` VALUES ('2456', 'OSCAR JAVIER RODRIGUEZ GARCIA', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('2457', 'LUIS FELIPE GARCIA FERNANDEZ', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('2458', 'TATIANA GONZALEZ MARTINEZ', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('2459', 'JUAN CARLOS LOPEZ GONZALEZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('2460', 'DIANA STEFANIA PISFIL PUEMAPE', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('2461', 'CLAUDIA SOCORRO FLORES VARGAS', '2009-07-07', '2', '1');
INSERT INTO `persona` VALUES ('2462', 'ELKIN RODRIGUEZ GARCIA', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('2463', 'LILIANA STEFANNY GARCIA FERNANDEZ', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('2464', 'CARLOS ESTEBAN GONZALEZ MARTINEZ', '2009-12-03', '2', '1');
INSERT INTO `persona` VALUES ('2465', 'JUAN MANUEL LOPEZ GONZALEZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('2466', 'CRISTIAN CAMILO PEREZ PEREZ', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('2467', 'MEYLIN VIVIANA MARTINEZ LOPEZ', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('2468', 'ENRIQUE SANCHEZ RODRIGUEZ', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('2469', 'MARY FERNANDEZ SANCHEZ', '2010-01-09', '2', '1');
INSERT INTO `persona` VALUES ('2470', 'CRISTIAN CAMILO GOMEZ JIMENEZ', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('2471', 'MEYLIN VIVIANA HERNANDEZ RUIZ', '2009-08-25', '2', '1');
INSERT INTO `persona` VALUES ('2472', 'YEFERSON RIKI DIAZ GOMEZ', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('2473', 'MAURICIO JAVIER RAMIREZ MARTIN', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('2474', 'MONICA ANDREA ALVAREZ ALONSO', '2010-04-05', '2', '1');
INSERT INTO `persona` VALUES ('2475', 'RENE ALBERTO CHEN DIAZ', '2010-03-01', '2', '1');
INSERT INTO `persona` VALUES ('2476', 'OSCAR JAVIER JIMENEZ HERNANDEZ', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('2477', 'LUIS FELIPE TORRES MORENO', '2010-01-16', '2', '1');
INSERT INTO `persona` VALUES ('2478', 'TATIANA SINGH GUTIERREZ', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('2479', 'JUAN CARLOS RUIZ AGUIRRE', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('2480', 'DIANA STEFANIA ROJAS ALVAREZ', '2010-05-23', '2', '1');
INSERT INTO `persona` VALUES ('2481', 'CLAUDIA SOCORRO ROMERO GIL', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('2482', 'ELKIN CASTRO SALAZAR', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('2483', 'LILIANA STEFANNY FLORES IBAÑEZ', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('2484', 'CARLOS ESTEBAN MUÑOZ MUÑOZ', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('2485', 'JUAN MANUEL GUTIERREZ URIARTE', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('2486', 'CHRISTIAN MIGUEL VARGAS BLANCO', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('2487', 'HECTOR GENTIL DA SILVA PINEDO', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('2488', 'NELLY YAZMIN MORALES SAEZ', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('2489', 'DAMARIS CASTILLO ORTIZ DE ZARATE', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('2490', 'AMANDA MARTIN ORTIZ', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('2491', 'ANGIE LORENA MORENO ANGULO', '2009-08-20', '2', '1');
INSERT INTO `persona` VALUES ('2492', 'JOSE DENIS SILVA UGARTE', '2010-02-13', '2', '1');
INSERT INTO `persona` VALUES ('2493', 'KAROL JOE ORTIZ DIEZ', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('2494', 'CARLOS ALBEIRO PEREIRA RAMOS', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('2495', 'HERNAN ALEXIS REYES SAENZ', '2010-01-08', '2', '1');
INSERT INTO `persona` VALUES ('2496', 'JORGE ALIRIO RAMOS QUINTANA', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('2497', 'YESNARDA NAIROBI SUAREZ MARQUINEZ', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('2498', 'DIANA CAROLINA MEDINA ROMERO', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('2499', 'HAROLD ORLANDO LIN ORTEGA', '2010-02-26', '2', '1');
INSERT INTO `persona` VALUES ('2500', 'ZULLY JOHANA WANG SANTAMARIA', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('2501', 'JULIAN CAMILO HERRERA DOMINGUEZ', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('2502', 'MARIA CRUZ RUIZ DE AZUA', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('2503', 'FLOR MENDEZ SANZ', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('2504', 'JUAN MARIN ARMENTIA', '2010-04-17', '2', '1');
INSERT INTO `persona` VALUES ('2505', 'ARMANDO FERREIRA OCHOA', '2010-04-26', '2', '1');
INSERT INTO `persona` VALUES ('2506', 'ENRIQUE MENDOZA DELGADO', '2009-10-29', '2', '1');
INSERT INTO `persona` VALUES ('2507', 'VERONICA VASQUEZ RAMIREZ', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('2508', 'MARIA CABRERA SANTOS', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('2509', 'FLORES ZHANG LANDA', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('2510', 'TOMASA NUÑEZ ELORZA', '2010-09-05', '2', '1');
INSERT INTO `persona` VALUES ('2511', 'CRISTIAN CAMILO DOS SANTOS CASTILLO', '2010-04-28', '2', '1');
INSERT INTO `persona` VALUES ('2512', 'MEYLIN VIVIANA PISFIL SANZ', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('2513', 'YEFERSON RIKI PUEMAPE ARMENTIA', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('2514', 'MAURICIO JAVIER FLORES OCHOA', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('2515', 'MONICA ANDREA VARGAS DELGADO', '2009-11-23', '2', '1');
INSERT INTO `persona` VALUES ('2516', 'RENE ALBERTO GONZALES RAMIREZ', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('2517', 'OSCAR JAVIER VERA SANTOS', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('2518', 'LUIS FELIPE MONSALVE LANDA', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('2519', 'TATIANA PEREZ ELORZA', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('2520', 'JUAN CARLOS BENAVIDES CASTILLO', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('2521', 'DIANA STEFANIA PISFIL PUEMAPE', '2010-02-01', '2', '1');
INSERT INTO `persona` VALUES ('2522', 'CLAUDIA SOCORRO FLORES VARGAS', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('2523', 'ELKIN RODRIGUEZ GARCIA', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('2524', 'LILIANA STEFANNY GARCIA FERNANDEZ', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('2525', 'CARLOS ESTEBAN GONZALEZ MARTINEZ', '2009-09-14', '2', '1');
INSERT INTO `persona` VALUES ('2526', 'JUAN MANUEL LOPEZ GONZALEZ', '2009-12-16', '2', '1');
INSERT INTO `persona` VALUES ('2527', 'CRISTIAN CAMILO PEREZ PEREZ', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('2528', 'MEYLIN VIVIANA MARTINEZ LOPEZ', '2010-04-10', '2', '1');
INSERT INTO `persona` VALUES ('2529', 'ENRIQUE SANCHEZ RODRIGUEZ', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('2530', 'MARY FERNANDEZ SANCHEZ', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('2531', 'CRISTIAN CAMILO GOMEZ JIMENEZ', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('2532', 'MEYLIN VIVIANA HERNANDEZ RUIZ', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('2533', 'YEFERSON RIKI DIAZ GOMEZ', '2009-06-28', '2', '1');
INSERT INTO `persona` VALUES ('2534', 'MAURICIO JAVIER RAMIREZ MARTIN', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('2535', 'MONICA ANDREA ALVAREZ ALONSO', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('2536', 'RENE ALBERTO CHEN DIAZ', '2010-05-15', '2', '1');
INSERT INTO `persona` VALUES ('2537', 'OSCAR JAVIER JIMENEZ HERNANDEZ', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('2538', 'LUIS FELIPE TORRES MORENO', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('2539', 'TATIANA SINGH GUTIERREZ', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('2540', 'JUAN CARLOS RUIZ AGUIRRE', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('2541', 'DIANA STEFANIA ROJAS ALVAREZ', '2010-01-09', '2', '1');
INSERT INTO `persona` VALUES ('2542', 'CLAUDIA SOCORRO ROMERO GIL', '2010-02-18', '2', '1');
INSERT INTO `persona` VALUES ('2543', 'ELKIN CASTRO SALAZAR', '2009-08-10', '2', '1');
INSERT INTO `persona` VALUES ('2544', 'LILIANA STEFANNY FLORES IBAÑEZ', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('2545', 'CARLOS ESTEBAN MUÑOZ MUÑOZ', '2010-01-16', '2', '1');
INSERT INTO `persona` VALUES ('2546', 'JUAN MANUEL GUTIERREZ URIARTE', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('2547', 'CHRISTIAN MIGUEL VARGAS BLANCO', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('2548', 'HECTOR GENTIL DA SILVA PINEDO', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('2549', 'NELLY YAZMIN MORALES SAEZ', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('2550', 'DAMARIS CASTILLO ORTIZ DE ZARATE', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('2551', 'AMANDA MARTIN ORTIZ', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('2552', 'ANGIE LORENA MORENO ANGULO', '2010-02-13', '2', '1');
INSERT INTO `persona` VALUES ('2553', 'JOSE DENIS SILVA UGARTE', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('2554', 'KAROL JOE ORTIZ DIEZ', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('2555', 'CARLOS ALBEIRO PEREIRA RAMOS', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('2556', 'HERNAN ALEXIS REYES SAENZ', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('2557', 'JORGE ALIRIO RAMOS QUINTANA', '2010-01-15', '2', '1');
INSERT INTO `persona` VALUES ('2558', 'YESNARDA NAIROBI SUAREZ MARQUINEZ', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('2559', 'DIANA CAROLINA MEDINA ROMERO', '2010-02-06', '2', '1');
INSERT INTO `persona` VALUES ('2560', 'HAROLD ORLANDO LIN ORTEGA', '2009-11-14', '2', '1');
INSERT INTO `persona` VALUES ('2561', 'ZULLY JOHANA WANG SANTAMARIA', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('2562', 'JULIAN CAMILO HERRERA DOMINGUEZ', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('2563', 'MARIA CRUZ RUIZ DE AZUA', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('2564', 'FLOR MENDEZ SANZ', '2010-05-01', '2', '1');
INSERT INTO `persona` VALUES ('2565', 'JUAN MARIN ARMENTIA', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('2566', 'ARMANDO FERREIRA OCHOA', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('2567', 'ENRIQUE MENDOZA DELGADO', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('2568', 'VERONICA VASQUEZ RAMIREZ', '2009-06-18', '2', '1');
INSERT INTO `persona` VALUES ('2569', 'MARIA CABRERA SANTOS', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('2570', 'FLORES ZHANG LANDA', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('2571', 'TOMASA NUÑEZ ELORZA', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('2572', 'CRISTIAN CAMILO DOS SANTOS CASTILLO', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('2573', 'MEYLIN VIVIANA PISFIL SANZ', '2009-10-12', '2', '1');
INSERT INTO `persona` VALUES ('2574', 'YEFERSON RIKI PUEMAPE ARMENTIA', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('2575', 'MAURICIO JAVIER FLORES OCHOA', '2010-05-23', '2', '1');
INSERT INTO `persona` VALUES ('2576', 'MONICA ANDREA VARGAS DELGADO', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('2577', 'RENE ALBERTO GONZALES RAMIREZ', '2009-09-26', '2', '1');
INSERT INTO `persona` VALUES ('2578', 'OSCAR JAVIER VERA SANTOS', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('2579', 'LUIS FELIPE MONSALVE LANDA', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('2580', 'TATIANA PEREZ ELORZA', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('2581', 'JUAN CARLOS BENAVIDES CASTILLO', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('2582', 'DIANA STEFANIA PISFIL PUEMAPE', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('2583', 'CLAUDIA SOCORRO FLORES VARGAS', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('2584', 'ELKIN RODRIGUEZ GARCIA', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('2585', 'LILIANA STEFANNY GARCIA FERNANDEZ', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('2586', 'CARLOS ESTEBAN GONZALEZ MARTINEZ', '2010-06-16', '2', '1');
INSERT INTO `persona` VALUES ('2587', 'JUAN MANUEL LOPEZ GONZALEZ', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('2588', 'CRISTIAN CAMILO PISFIL PUEMAPE', '2010-01-23', '2', '1');
INSERT INTO `persona` VALUES ('2589', 'MEYLIN VIVIANA FLORES VARGAS', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('2590', 'ENRIQUE RODRIGUEZ GARCIA', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('2591', 'MARY GARCIA FERNANDEZ', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('2592', 'CRISTIAN CAMILO GONZALEZ MARTINEZ', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('2593', 'MEYLIN VIVIANA LOPEZ GONZALEZ', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('2594', 'YEFERSON RIKI PEREZ PEREZ', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('2595', 'MAURICIO JAVIER MARTINEZ LOPEZ', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('2596', 'MONICA ANDREA SANCHEZ RODRIGUEZ', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('2597', 'RENE ALBERTO FERNANDEZ SANCHEZ', '2010-01-23', '2', '1');
INSERT INTO `persona` VALUES ('2598', 'OSCAR JAVIER GOMEZ JIMENEZ', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('2599', 'LUIS FELIPE HERNANDEZ RUIZ', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('2600', 'TATIANA DIAZ GOMEZ', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('2601', 'JUAN CARLOS RAMIREZ MARTIN', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('2602', 'DIANA STEFANIA ALVAREZ ALONSO', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('2603', 'CLAUDIA SOCORRO CHEN DIAZ', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('2604', 'ELKIN JIMENEZ HERNANDEZ', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('2605', 'LILIANA STEFANNY TORRES MORENO', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('2606', 'CARLOS ESTEBAN SINGH GUTIERREZ', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('2607', 'JUAN MANUEL RUIZ AGUIRRE', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('2608', 'CHRISTIAN MIGUEL ROJAS ALVAREZ', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('2609', 'HECTOR GENTIL ROMERO GIL', '2010-02-26', '2', '1');
INSERT INTO `persona` VALUES ('2610', 'NELLY YAZMIN CASTRO SALAZAR', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('2611', 'DAMARIS FLORES IBAÑEZ', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('2612', 'AMANDA MUÑOZ MUÑOZ', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('2613', 'ANGIE LORENA GUTIERREZ URIARTE', '2010-07-22', '2', '1');
INSERT INTO `persona` VALUES ('2614', 'JOSE DENIS VARGAS BLANCO', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('2615', 'KAROL JOE DA SILVA PINEDO', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('2616', 'CARLOS ALBEIRO MORALES SAEZ', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('2617', 'HERNAN ALEXIS CASTILLO ORTIZ DE ZARATE', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('2618', 'JORGE ALIRIO MARTIN ORTIZ', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('2619', 'YESNARDA NAIROBI MORENO ANGULO', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('2620', 'DIANA CAROLINA SILVA UGARTE', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('2621', 'HAROLD ORLANDO ORTIZ DIEZ', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('2622', 'ZULLY JOHANA PEREIRA RAMOS', '2009-12-28', '2', '1');
INSERT INTO `persona` VALUES ('2623', 'JULIAN CAMILO REYES SAENZ', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('2624', 'MARIA RAMOS QUINTANA', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('2625', 'FLOR SUAREZ MARQUINEZ', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('2626', 'JUAN MEDINA ROMERO', '2009-10-16', '2', '1');
INSERT INTO `persona` VALUES ('2627', 'ARMANDO LIN ORTEGA', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('2628', 'ENRIQUE WANG SANTAMARIA', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('2629', 'VERONICA HERRERA DOMINGUEZ', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('2630', 'MARIA CRUZ RUIZ DE AZUA', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('2631', 'FLORES MENDEZ SANZ', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('2632', 'TOMASA MARIN ARMENTIA', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('2633', 'CRISTIAN CAMILO FERREIRA OCHOA', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('2634', 'MEYLIN VIVIANA MENDOZA DELGADO', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('2635', 'YEFERSON RIKI VASQUEZ RAMIREZ', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('2636', 'MAURICIO JAVIER CABRERA SANTOS', '2009-11-12', '2', '1');
INSERT INTO `persona` VALUES ('2637', 'MONICA ANDREA ZHANG LANDA', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('2638', 'RENE ALBERTO NUÑEZ ELORZA', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('2639', 'OSCAR JAVIER DOS SANTOS CASTILLO', '2009-12-03', '2', '1');
INSERT INTO `persona` VALUES ('2640', 'LUIS FELIPE PISFIL SANZ', '2009-09-14', '2', '1');
INSERT INTO `persona` VALUES ('2641', 'TATIANA PUEMAPE ARMENTIA', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('2642', 'JUAN CARLOS FLORES OCHOA', '2009-06-14', '2', '1');
INSERT INTO `persona` VALUES ('2643', 'DIANA STEFANIA VARGAS DELGADO', '2010-06-24', '2', '1');
INSERT INTO `persona` VALUES ('2644', 'CLAUDIA SOCORRO GONZALES RAMIREZ', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('2645', 'ELKIN VERA SANTOS', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('2646', 'LILIANA STEFANNY MONSALVE LANDA', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('2647', 'CARLOS ESTEBAN PEREZ ELORZA', '2009-07-01', '2', '1');
INSERT INTO `persona` VALUES ('2648', 'JUAN MANUEL BENAVIDES CASTILLO', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('2649', 'CRISTIAN CAMILO PISFIL PUEMAPE', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('2650', 'MEYLIN VIVIANA FLORES VARGAS', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('2651', 'ENRIQUE RODRIGUEZ GARCIA', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('2652', 'MARY GARCIA FERNANDEZ', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('2653', 'CRISTIAN CAMILO GONZALEZ MARTINEZ', '2009-11-28', '2', '1');
INSERT INTO `persona` VALUES ('2654', 'MEYLIN VIVIANA LOPEZ GONZALEZ', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('2655', 'YEFERSON RIKI PEREZ PEREZ', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('2656', 'MAURICIO JAVIER MARTINEZ LOPEZ', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('2657', 'MONICA ANDREA SANCHEZ RODRIGUEZ', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('2658', 'RENE ALBERTO FERNANDEZ SANCHEZ', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('2659', 'OSCAR JAVIER GOMEZ JIMENEZ', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('2660', 'LUIS FELIPE HERNANDEZ RUIZ', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('2661', 'TATIANA DIAZ GOMEZ', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('2662', 'JUAN CARLOS RAMIREZ MARTIN', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('2663', 'DIANA STEFANIA ALVAREZ ALONSO', '2009-08-07', '2', '1');
INSERT INTO `persona` VALUES ('2664', 'CLAUDIA SOCORRO CHEN DIAZ', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('2665', 'ELKIN JIMENEZ HERNANDEZ', '2010-07-06', '2', '1');
INSERT INTO `persona` VALUES ('2666', 'LILIANA STEFANNY TORRES MORENO', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('2667', 'CARLOS ESTEBAN SINGH GUTIERREZ', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('2668', 'JUAN MANUEL RUIZ AGUIRRE', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('2669', 'CHRISTIAN MIGUEL ROJAS ALVAREZ', '2009-08-24', '2', '1');
INSERT INTO `persona` VALUES ('2670', 'HECTOR GENTIL ROMERO GIL', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('2671', 'NELLY YAZMIN CASTRO SALAZAR', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('2672', 'DAMARIS FLORES IBAÑEZ', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('2673', 'AMANDA MUÑOZ MUÑOZ', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('2674', 'ANGIE LORENA GUTIERREZ URIARTE', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('2675', 'JOSE DENIS VARGAS BLANCO', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('2676', 'KAROL JOE DA SILVA PINEDO', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('2677', 'CARLOS ALBEIRO MORALES SAEZ', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('2678', 'HERNAN ALEXIS CASTILLO ORTIZ DE ZARATE', '2009-11-04', '2', '1');
INSERT INTO `persona` VALUES ('2679', 'JORGE ALIRIO MARTIN ORTIZ', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('2680', 'YESNARDA NAIROBI MORENO ANGULO', '2009-08-20', '2', '1');
INSERT INTO `persona` VALUES ('2681', 'DIANA CAROLINA SILVA UGARTE', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('2682', 'HAROLD ORLANDO ORTIZ DIEZ', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('2683', 'ZULLY JOHANA PEREIRA RAMOS', '2010-07-01', '2', '1');
INSERT INTO `persona` VALUES ('2684', 'JULIAN CAMILO REYES SAENZ', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('2685', 'MARIA RAMOS QUINTANA', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('2686', 'FLOR SUAREZ MARQUINEZ', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('2687', 'JUAN MEDINA ROMERO', '2010-05-28', '2', '1');
INSERT INTO `persona` VALUES ('2688', 'ARMANDO LIN ORTEGA', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('2689', 'ENRIQUE WANG SANTAMARIA', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('2690', 'VERONICA HERRERA DOMINGUEZ', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('2691', 'MARIA CRUZ RUIZ DE AZUA', '2010-07-21', '2', '1');
INSERT INTO `persona` VALUES ('2692', 'FLORES MENDEZ SANZ', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('2693', 'TOMASA MARIN ARMENTIA', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('2694', 'CRISTIAN CAMILO FERREIRA OCHOA', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('2695', 'MEYLIN VIVIANA MENDOZA DELGADO', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('2696', 'YEFERSON RIKI VASQUEZ RAMIREZ', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('2697', 'MAURICIO JAVIER CABRERA SANTOS', '2010-03-23', '2', '1');
INSERT INTO `persona` VALUES ('2698', 'MONICA ANDREA ZHANG LANDA', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('2699', 'RENE ALBERTO NUÑEZ ELORZA', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('2700', 'OSCAR JAVIER DOS SANTOS CASTILLO', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('2701', 'LUIS FELIPE PISFIL SANZ', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('2702', 'TATIANA PUEMAPE ARMENTIA', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('2703', 'JUAN CARLOS FLORES OCHOA', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('2704', 'DIANA STEFANIA VARGAS DELGADO', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('2705', 'CLAUDIA SOCORRO GONZALES RAMIREZ', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('2706', 'ELKIN VERA SANTOS', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('2707', 'LILIANA STEFANNY MONSALVE LANDA', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('2708', 'CARLOS ESTEBAN PEREZ ELORZA', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('2709', 'JUAN MANUEL BENAVIDES CASTILLO', '2010-07-31', '2', '1');
INSERT INTO `persona` VALUES ('2710', 'CRISTIAN CAMILO PISFIL PUEMAPE', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('2711', 'MEYLIN VIVIANA FLORES VARGAS', '2009-11-23', '2', '1');
INSERT INTO `persona` VALUES ('2712', 'ENRIQUE RODRIGUEZ GARCIA', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('2713', 'MARY GARCIA FERNANDEZ', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('2714', 'CRISTIAN CAMILO GONZALEZ MARTINEZ', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('2715', 'MEYLIN VIVIANA LOPEZ GONZALEZ', '2009-12-13', '2', '1');
INSERT INTO `persona` VALUES ('2716', 'YEFERSON RIKI PISFIL PUEMAPE', '2010-07-28', '2', '1');
INSERT INTO `persona` VALUES ('2717', 'MAURICIO JAVIER FLORES VARGAS', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('2718', 'MONICA ANDREA RODRIGUEZ GARCIA', '2010-07-17', '2', '1');
INSERT INTO `persona` VALUES ('2719', 'RENE ALBERTO GARCIA FERNANDEZ', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('2720', 'OSCAR JAVIER GONZALEZ MARTINEZ', '2010-05-10', '2', '1');
INSERT INTO `persona` VALUES ('2721', 'LUIS FELIPE LOPEZ GONZALEZ', '2009-12-27', '2', '1');
INSERT INTO `persona` VALUES ('2722', 'TATIANA PEREZ PEREZ', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('2723', 'JUAN CARLOS MARTINEZ LOPEZ', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('2724', 'DIANA STEFANIA SANCHEZ RODRIGUEZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('2725', 'CLAUDIA SOCORRO FERNANDEZ SANCHEZ', '2010-09-05', '2', '1');
INSERT INTO `persona` VALUES ('2726', 'ELKIN GOMEZ JIMENEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('2727', 'LILIANA STEFANNY HERNANDEZ RUIZ', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('2728', 'CARLOS ESTEBAN DIAZ GOMEZ', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('2729', 'JUAN MANUEL RAMIREZ MARTIN', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('2730', 'CHRISTIAN MIGUEL ALVAREZ ALONSO', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('2731', 'HECTOR GENTIL CHEN DIAZ', '2009-11-04', '2', '1');
INSERT INTO `persona` VALUES ('2732', 'NELLY YAZMIN JIMENEZ HERNANDEZ', '2009-08-08', '2', '1');
INSERT INTO `persona` VALUES ('2733', 'DAMARIS TORRES MORENO', '2010-06-17', '2', '1');
INSERT INTO `persona` VALUES ('2734', 'AMANDA SINGH GUTIERREZ', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('2735', 'ANGIE LORENA RUIZ AGUIRRE', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('2736', 'JOSE DENIS ROJAS ALVAREZ', '2010-01-17', '2', '1');
INSERT INTO `persona` VALUES ('2737', 'KAROL JOE ROMERO GIL', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('2738', 'CARLOS ALBEIRO CASTRO SALAZAR', '2010-05-24', '2', '1');
INSERT INTO `persona` VALUES ('2739', 'HERNAN ALEXIS FLORES IBAÑEZ', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('2740', 'JORGE ALIRIO MUÑOZ MUÑOZ', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('2741', 'YESNARDA NAIROBI GUTIERREZ URIARTE', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('2742', 'DIANA CAROLINA VARGAS BLANCO', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('2743', 'HAROLD ORLANDO DA SILVA PINEDO', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('2744', 'ZULLY JOHANA MORALES SAEZ', '2009-12-27', '2', '1');
INSERT INTO `persona` VALUES ('2745', 'JULIAN CAMILO CASTILLO ORTIZ DE ZARATE', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('2746', 'MARIA MARTIN ORTIZ', '2009-06-27', '2', '1');
INSERT INTO `persona` VALUES ('2747', 'FLOR MORENO ANGULO', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('2748', 'JUAN SILVA UGARTE', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('2749', 'ARMANDO ORTIZ DIEZ', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('2750', 'ENRIQUE PEREIRA RAMOS', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('2751', 'VERONICA REYES SAENZ', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('2752', 'MARIA RAMOS QUINTANA', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('2753', 'FLORES SUAREZ MARQUINEZ', '2010-05-06', '2', '1');
INSERT INTO `persona` VALUES ('2754', 'TOMASA MEDINA ROMERO', '2009-10-05', '2', '1');
INSERT INTO `persona` VALUES ('2755', 'CRISTIAN CAMILO LIN ORTEGA', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('2756', 'MEYLIN VIVIANA WANG SANTAMARIA', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('2757', 'YEFERSON RIKI HERRERA DOMINGUEZ', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('2758', 'MAURICIO JAVIER CRUZ RUIZ DE AZUA', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('2759', 'MONICA ANDREA MENDEZ SANZ', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('2760', 'RENE ALBERTO MARIN ARMENTIA', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('2761', 'OSCAR JAVIER FERREIRA OCHOA', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('2762', 'LUIS FELIPE MENDOZA DELGADO', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('2763', 'TATIANA VASQUEZ RAMIREZ', '2009-12-06', '2', '1');
INSERT INTO `persona` VALUES ('2764', 'JUAN CARLOS CABRERA SANTOS', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('2765', 'DIANA STEFANIA ZHANG LANDA', '2010-02-26', '2', '1');
INSERT INTO `persona` VALUES ('2766', 'CLAUDIA SOCORRO NUÑEZ ELORZA', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('2767', 'ELKIN DOS SANTOS CASTILLO', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('2768', 'LILIANA STEFANNY PISFIL SANZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('2769', 'CARLOS ESTEBAN PUEMAPE ARMENTIA', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('2770', 'JUAN MANUEL FLORES OCHOA', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('2771', 'CRISTIAN CAMILO VARGAS DELGADO', '2010-08-05', '2', '1');
INSERT INTO `persona` VALUES ('2772', 'MEYLIN VIVIANA GONZALES RAMIREZ', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('2773', 'ENRIQUE VERA SANTOS', '2010-09-07', '2', '1');
INSERT INTO `persona` VALUES ('2774', 'MARY MONSALVE LANDA', '2009-10-16', '2', '1');
INSERT INTO `persona` VALUES ('2775', 'CRISTIAN CAMILO PEREZ ELORZA', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('2776', 'MEYLIN VIVIANA BENAVIDES CASTILLO', '2010-08-15', '2', '1');
INSERT INTO `persona` VALUES ('2777', 'YEFERSON RIKI PISFIL PUEMAPE', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('2778', 'MAURICIO JAVIER FLORES VARGAS', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('2779', 'MONICA ANDREA RODRIGUEZ GARCIA', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('2780', 'RENE ALBERTO GARCIA FERNANDEZ', '2010-02-18', '2', '1');
INSERT INTO `persona` VALUES ('2781', 'OSCAR JAVIER GONZALEZ MARTINEZ', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('2782', 'LUIS FELIPE LOPEZ GONZALEZ', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('2783', 'TATIANA PEREZ PEREZ', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('2784', 'JUAN CARLOS MARTINEZ LOPEZ', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('2785', 'DIANA STEFANIA SANCHEZ RODRIGUEZ', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('2786', 'CLAUDIA SOCORRO FERNANDEZ SANCHEZ', '2010-09-09', '2', '1');
INSERT INTO `persona` VALUES ('2787', 'ELKIN GOMEZ JIMENEZ', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('2788', 'LILIANA STEFANNY HERNANDEZ RUIZ', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('2789', 'CARLOS ESTEBAN DIAZ GOMEZ', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('2790', 'JUAN MANUEL RAMIREZ MARTIN', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('2791', 'MIGUEL CHRISTIAN ALVAREZ JUAREZ', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('2792', 'HECTOR GENTIL CHEN DIAZ', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('2793', 'NELLY YAZMIN JIMENEZ HERNANDEZ', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('2794', 'DAMARIS TORRES MORENO', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('2795', 'AMANDA SINGH GUTIERREZ', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('2796', 'ANGIE LORENA RUIZ AGUIRRE', '2009-12-22', '2', '1');
INSERT INTO `persona` VALUES ('2797', 'JOSE DENIS ROJAS ALVAREZ', '2009-12-24', '2', '1');
INSERT INTO `persona` VALUES ('2798', 'KAROL JOE ROMERO GIL', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('2799', 'CARLOS ALBEIRO CASTRO SALAZAR', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('2800', 'HERNAN ALEXIS FLORES IBAÑEZ', '2010-04-25', '2', '1');
INSERT INTO `persona` VALUES ('2801', 'JORGE ALIRIO MUÑOZ MUÑOZ', '2010-01-11', '2', '1');
INSERT INTO `persona` VALUES ('2802', 'YESNARDA NAIROBI GUTIERREZ URIARTE', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('2803', 'DIANA CAROLINA VARGAS BLANCO', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('2804', 'HAROLD ORLANDO DA SILVA PINEDO', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('2805', 'ZULLY JOHANA MORALES SAEZ', '2009-07-07', '2', '1');
INSERT INTO `persona` VALUES ('2806', 'JULIAN CAMILO CASTILLO ORTIZ DE ZARATE', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('2807', 'MARIA MARTIN ORTIZ', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('2808', 'FLOR MORENO ANGULO', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('2809', 'JUAN SILVA UGARTE', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('2810', 'ARMANDO ORTIZ DIEZ', '2009-11-11', '2', '1');
INSERT INTO `persona` VALUES ('2811', 'ENRIQUE PEREIRA RAMOS', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('2812', 'VERONICA REYES SAENZ', '2010-09-05', '2', '1');
INSERT INTO `persona` VALUES ('2813', 'MARIA RAMOS QUINTANA', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('2814', 'FLORES SUAREZ MARQUINEZ', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('2815', 'TOMASA MEDINA ROMERO', '2009-11-14', '2', '1');
INSERT INTO `persona` VALUES ('2816', 'CRISTIAN CAMILO LIN ORTEGA', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('2817', 'MEYLIN VIVIANA WANG SANTAMARIA', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('2818', 'YEFERSON RIKI HERRERA DOMINGUEZ', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('2819', 'MAURICIO JAVIER CRUZ RUIZ DE AZUA', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('2820', 'MONICA ANDREA MENDEZ SANZ', '2009-12-13', '2', '1');
INSERT INTO `persona` VALUES ('2821', 'RENE ALBERTO MARIN ARMENTIA', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('2822', 'OSCAR JAVIER FERREIRA OCHOA', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('2823', 'LUIS FELIPE MENDOZA DELGADO', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('2824', 'TATIANA VASQUEZ RAMIREZ', '2009-10-06', '2', '1');
INSERT INTO `persona` VALUES ('2825', 'JUAN CARLOS CABRERA SANTOS', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('2826', 'DIANA STEFANIA ZHANG LANDA', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('2827', 'CLAUDIA SOCORRO NUÑEZ ELORZA', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('2828', 'ELKIN DOS SANTOS CASTILLO', '2010-01-15', '2', '1');
INSERT INTO `persona` VALUES ('2829', 'LILIANA STEFANNY PISFIL SANZ', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('2830', 'CARLOS ESTEBAN PUEMAPE ARMENTIA', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('2831', 'JUAN MANUEL FLORES OCHOA', '2009-08-24', '2', '1');
INSERT INTO `persona` VALUES ('2832', 'CRISTIAN CAMILO VARGAS DELGADO', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('2833', 'MEYLIN VIVIANA GONZALES RAMIREZ', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('2834', 'ENRIQUE VERA SANTOS', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('2835', 'MARY MONSALVE LANDA', '2010-08-04', '2', '1');
INSERT INTO `persona` VALUES ('2836', 'CRISTIAN CAMILO PEREZ ELORZA', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('2837', 'MEYLIN VIVIANA BENAVIDES CASTILLO', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('2838', 'YEFERSON RIKI PISFIL PUEMAPE', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('2839', 'MAURICIO JAVIER FLORES VARGAS', '2010-07-21', '2', '1');
INSERT INTO `persona` VALUES ('2840', 'MONICA ANDREA RODRIGUEZ GARCIA', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('2841', 'RENE ALBERTO GARCIA FERNANDEZ', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('2842', 'OSCAR JAVIER GONZALEZ MARTINEZ', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('2843', 'LUIS FELIPE LOPEZ GONZALEZ', '2010-02-01', '2', '1');
INSERT INTO `persona` VALUES ('2844', 'TATIANA PISFIL PUEMAPE', '2009-07-23', '2', '1');
INSERT INTO `persona` VALUES ('2845', 'JUAN CARLOS FLORES VARGAS', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('2846', 'DIANA STEFANIA RODRIGUEZ GARCIA', '2009-08-18', '2', '1');
INSERT INTO `persona` VALUES ('2847', 'CLAUDIA SOCORRO GARCIA FERNANDEZ', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('2848', 'ELKIN GONZALEZ MARTINEZ', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('2849', 'LILIANA STEFANNY LOPEZ GONZALEZ', '2010-01-11', '2', '1');
INSERT INTO `persona` VALUES ('2850', 'CARLOS ESTEBAN PEREZ PEREZ', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('2851', 'JUAN MANUEL MARTINEZ LOPEZ', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('2852', 'CHRISTIAN MIGUEL SANCHEZ RODRIGUEZ', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('2853', 'HECTOR GENTIL FERNANDEZ SANCHEZ', '2010-03-07', '2', '1');
INSERT INTO `persona` VALUES ('2854', 'NELLY YAZMIN GOMEZ JIMENEZ', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('2855', 'DAMARIS HERNANDEZ RUIZ', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('2856', 'AMANDA DIAZ GOMEZ', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('2857', 'ANGIE LORENA RAMIREZ MARTIN', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('2858', 'JOSE DENIS ALVAREZ ALONSO', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('2859', 'KAROL JOE CHEN DIAZ', '2010-07-23', '2', '1');
INSERT INTO `persona` VALUES ('2860', 'CARLOS ALBEIRO JIMENEZ HERNANDEZ', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('2861', 'HERNAN ALEXIS TORRES MORENO', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('2862', 'JORGE ALIRIO SINGH GUTIERREZ', '2009-10-03', '2', '1');
INSERT INTO `persona` VALUES ('2863', 'YESNARDA NAIROBI RUIZ AGUIRRE', '2010-05-28', '2', '1');
INSERT INTO `persona` VALUES ('2864', 'DIANA CAROLINA ROJAS ALVAREZ', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('2865', 'HAROLD ORLANDO ROMERO GIL', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('2866', 'ZULLY JOHANA CASTRO SALAZAR', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('2867', 'JULIAN CAMILO FLORES IBAÑEZ', '2010-07-26', '2', '1');
INSERT INTO `persona` VALUES ('2868', 'MARIA MUÑOZ MUÑOZ', '2009-11-24', '2', '1');
INSERT INTO `persona` VALUES ('2869', 'FLOR GUTIERREZ URIARTE', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('2870', 'JUAN VARGAS BLANCO', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('2871', 'ARMANDO DA SILVA PINEDO', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('2872', 'ENRIQUE MORALES SAEZ', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('2873', 'VERONICA CASTILLO ORTIZ DE ZARATE', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('2874', 'MARIA MARTIN ORTIZ', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('2875', 'FLORES MORENO ANGULO', '2010-05-22', '2', '1');
INSERT INTO `persona` VALUES ('2876', 'TOMASA SILVA UGARTE', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('2877', 'CRISTIAN CAMILO ORTIZ DIEZ', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('2878', 'MEYLIN VIVIANA PEREIRA RAMOS', '2010-07-02', '2', '1');
INSERT INTO `persona` VALUES ('2879', 'YEFERSON RIKI REYES SAENZ', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('2880', 'MAURICIO JAVIER RAMOS QUINTANA', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('2881', 'MONICA ANDREA SUAREZ MARQUINEZ', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('2882', 'RENE ALBERTO MEDINA ROMERO', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('2883', 'OSCAR JAVIER LIN ORTEGA', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('2884', 'LUIS FELIPE WANG SANTAMARIA', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('2885', 'TATIANA HERRERA DOMINGUEZ', '2010-05-16', '2', '1');
INSERT INTO `persona` VALUES ('2886', 'JUAN CARLOS CRUZ RUIZ DE AZUA', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('2887', 'DIANA STEFANIA MENDEZ SANZ', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('2888', 'CLAUDIA SOCORRO MARIN ARMENTIA', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('2889', 'ELKIN FERREIRA OCHOA', '2009-08-07', '2', '1');
INSERT INTO `persona` VALUES ('2890', 'LILIANA STEFANNY MENDOZA DELGADO', '2009-07-20', '2', '1');
INSERT INTO `persona` VALUES ('2891', 'CARLOS ESTEBAN VASQUEZ RAMIREZ', '2010-07-29', '2', '1');
INSERT INTO `persona` VALUES ('2892', 'JUAN MANUEL CABRERA SANTOS', '2009-11-15', '2', '1');
INSERT INTO `persona` VALUES ('2893', 'CRISTIAN CAMILO ZHANG LANDA', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('2894', 'MEYLIN VIVIANA NUÑEZ ELORZA', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('2895', 'ENRIQUE DOS SANTOS CASTILLO', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('2896', 'MARY PISFIL SANZ', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('2897', 'CRISTIAN CAMILO PUEMAPE ARMENTIA', '2009-09-27', '2', '1');
INSERT INTO `persona` VALUES ('2898', 'MEYLIN VIVIANA FLORES OCHOA', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('2899', 'YEFERSON RIKI VARGAS DELGADO', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('2900', 'MAURICIO JAVIER GONZALES RAMIREZ', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('2901', 'MONICA ANDREA VERA SANTOS', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('2902', 'RENE ALBERTO MONSALVE LANDA', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('2903', 'OSCAR JAVIER PEREZ ELORZA', '2009-11-28', '2', '1');
INSERT INTO `persona` VALUES ('2904', 'LUIS FELIPE BENAVIDES CASTILLO', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('2905', 'TATIANA PISFIL PUEMAPE', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('2906', 'JUAN CARLOS FLORES VARGAS', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('2907', 'DIANA STEFANIA RODRIGUEZ GARCIA', '2009-09-29', '2', '1');
INSERT INTO `persona` VALUES ('2908', 'CLAUDIA SOCORRO GARCIA FERNANDEZ', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('2909', 'ELKIN GONZALEZ MARTINEZ', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('2910', 'LILIANA STEFANNY LOPEZ GONZALEZ', '2010-09-14', '2', '1');
INSERT INTO `persona` VALUES ('2911', 'CARLOS ESTEBAN PEREZ PEREZ', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('2912', 'JUAN MANUEL MARTINEZ LOPEZ', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('2913', 'CHRISTIAN MIGUEL SANCHEZ RODRIGUEZ', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('2914', 'HECTOR GENTIL FERNANDEZ SANCHEZ', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('2915', 'NELLY YAZMIN GOMEZ JIMENEZ', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('2916', 'DAMARIS HERNANDEZ RUIZ', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('2917', 'AMANDA DIAZ GOMEZ', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('2918', 'ANGIE LORENA RAMIREZ MARTIN', '2010-02-26', '2', '1');
INSERT INTO `persona` VALUES ('2919', 'JOSE DENIS ALVAREZ ALONSO', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('2920', 'KAROL JOE CHEN DIAZ', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('2921', 'CARLOS ALBEIRO JIMENEZ HERNANDEZ', '2009-08-11', '2', '1');
INSERT INTO `persona` VALUES ('2922', 'HERNAN ALEXIS TORRES MORENO', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('2923', 'JORGE ALIRIO SINGH GUTIERREZ', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('2924', 'YESNARDA NAIROBI RUIZ AGUIRRE', '2010-02-18', '2', '1');
INSERT INTO `persona` VALUES ('2925', 'DIANA CAROLINA ROJAS ALVAREZ', '2009-06-16', '2', '1');
INSERT INTO `persona` VALUES ('2926', 'HAROLD ORLANDO ROMERO GIL', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('2927', 'ZULLY JOHANA CASTRO SALAZAR', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('2928', 'JULIAN CAMILO FLORES IBAÑEZ', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('2929', 'MARIA MUÑOZ MUÑOZ', '2010-04-28', '2', '1');
INSERT INTO `persona` VALUES ('2930', 'FLOR GUTIERREZ URIARTE', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('2931', 'JUAN VARGAS BLANCO', '2010-04-22', '2', '1');
INSERT INTO `persona` VALUES ('2932', 'ARMANDO DA SILVA PINEDO', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('2933', 'ENRIQUE MORALES SAEZ', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('2934', 'VERONICA CASTILLO ORTIZ DE ZARATE', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('2935', 'MARIA MARTIN ORTIZ', '2009-08-24', '2', '1');
INSERT INTO `persona` VALUES ('2936', 'FLORES MORENO ANGULO', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('2937', 'TOMASA SILVA UGARTE', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('2938', 'CRISTIAN CAMILO ORTIZ DIEZ', '2010-01-29', '2', '1');
INSERT INTO `persona` VALUES ('2939', 'MEYLIN VIVIANA PEREIRA RAMOS', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('2940', 'YEFERSON RIKI REYES SAENZ', '2009-11-03', '2', '1');
INSERT INTO `persona` VALUES ('2941', 'MAURICIO JAVIER RAMOS QUINTANA', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('2942', 'MONICA ANDREA SUAREZ MARQUINEZ', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('2943', 'RENE ALBERTO MEDINA ROMERO', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('2944', 'OSCAR JAVIER LIN ORTEGA', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('2945', 'LUIS FELIPE WANG SANTAMARIA', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('2946', 'TATIANA HERRERA DOMINGUEZ', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('2947', 'JUAN CARLOS CRUZ RUIZ DE AZUA', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('2948', 'DIANA STEFANIA MENDEZ SANZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('2949', 'CLAUDIA SOCORRO MARIN ARMENTIA', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('2950', 'ELKIN FERREIRA OCHOA', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('2951', 'LILIANA STEFANNY MENDOZA DELGADO', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('2952', 'CARLOS ESTEBAN VASQUEZ RAMIREZ', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('2953', 'JUAN MANUEL CABRERA SANTOS', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('2954', 'CRISTIAN CAMILO ZHANG LANDA', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('2955', 'MEYLIN VIVIANA NUÑEZ ELORZA', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('2956', 'ENRIQUE DOS SANTOS CASTILLO', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('2957', 'MARY PISFIL SANZ', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('2958', 'CRISTIAN CAMILO PUEMAPE ARMENTIA', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('2959', 'MEYLIN VIVIANA FLORES OCHOA', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('2960', 'YEFERSON RIKI VARGAS DELGADO', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('2961', 'MAURICIO JAVIER GONZALES RAMIREZ', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('2962', 'MONICA ANDREA VERA SANTOS', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('2963', 'RENE ALBERTO MONSALVE LANDA', '2010-07-31', '2', '1');
INSERT INTO `persona` VALUES ('2964', 'OSCAR JAVIER PEREZ ELORZA', '2010-09-13', '2', '1');
INSERT INTO `persona` VALUES ('2965', 'LUIS FELIPE BENAVIDES CASTILLO', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('2966', 'TATIANA PISFIL PUEMAPE', '2010-03-14', '2', '1');
INSERT INTO `persona` VALUES ('2967', 'JUAN CARLOS FLORES VARGAS', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('2968', 'DIANA STEFANIA RODRIGUEZ GARCIA', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('2969', 'CLAUDIA SOCORRO GARCIA FERNANDEZ', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('2970', 'ELKIN GONZALEZ MARTINEZ', '2010-01-29', '2', '1');
INSERT INTO `persona` VALUES ('2971', 'LILIANA STEFANNY LOPEZ GONZALEZ', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('2972', 'CARLOS ESTEBAN PISFIL PUEMAPE', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('2973', 'JUAN MANUEL FLORES VARGAS', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('2974', 'CHRISTIAN MIGUEL RODRIGUEZ GARCIA', '2009-12-06', '2', '1');
INSERT INTO `persona` VALUES ('2975', 'HECTOR GENTIL GARCIA FERNANDEZ', '2010-04-28', '2', '1');
INSERT INTO `persona` VALUES ('2976', 'NELLY YAZMIN GONZALEZ MARTINEZ', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('2977', 'DAMARIS LOPEZ GONZALEZ', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('2978', 'AMANDA PEREZ PEREZ', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('2979', 'ANGIE LORENA MARTINEZ LOPEZ', '2010-09-08', '2', '1');
INSERT INTO `persona` VALUES ('2980', 'JOSE DENIS SANCHEZ RODRIGUEZ', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('2981', 'KAROL JOE FERNANDEZ SANCHEZ', '2009-10-26', '2', '1');
INSERT INTO `persona` VALUES ('2982', 'CARLOS ALBEIRO GOMEZ JIMENEZ', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('2983', 'HERNAN ALEXIS HERNANDEZ RUIZ', '2009-12-27', '2', '1');
INSERT INTO `persona` VALUES ('2984', 'JORGE ALIRIO DIAZ GOMEZ', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('2985', 'YESNARDA NAIROBI RAMIREZ MARTIN', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('2986', 'DIANA CAROLINA ALVAREZ ALONSO', '2010-01-15', '2', '1');
INSERT INTO `persona` VALUES ('2987', 'HAROLD ORLANDO CHEN DIAZ', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('2988', 'ZULLY JOHANA JIMENEZ HERNANDEZ', '2010-07-28', '2', '1');
INSERT INTO `persona` VALUES ('2989', 'JULIAN CAMILO TORRES MORENO', '2009-12-18', '2', '1');
INSERT INTO `persona` VALUES ('2990', 'MARIA SINGH GUTIERREZ', '2010-07-01', '2', '1');
INSERT INTO `persona` VALUES ('2991', 'FLOR RUIZ AGUIRRE', '2010-02-20', '2', '1');
INSERT INTO `persona` VALUES ('2992', 'JUAN ROJAS ALVAREZ', '2010-04-23', '2', '1');
INSERT INTO `persona` VALUES ('2993', 'ARMANDO ROMERO GIL', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('2994', 'ENRIQUE CASTRO SALAZAR', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('2995', 'VERONICA FLORES IBAÑEZ', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('2996', 'MARIA MUÑOZ MUÑOZ', '2010-05-05', '2', '1');
INSERT INTO `persona` VALUES ('2997', 'FLORES GUTIERREZ URIARTE', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('2998', 'TOMASA VARGAS BLANCO', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('2999', 'CRISTIAN CAMILO DA SILVA PINEDO', '2009-11-08', '2', '1');
INSERT INTO `persona` VALUES ('3000', 'MEYLIN VIVIANA MORALES SAEZ', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('3001', 'YEFERSON RIKI CASTILLO ORTIZ DE ZARATE', '2009-10-26', '2', '1');
INSERT INTO `persona` VALUES ('3002', 'MAURICIO JAVIER MARTIN ORTIZ', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('3003', 'MONICA ANDREA MORENO ANGULO', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('3004', 'RENE ALBERTO SILVA UGARTE', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('3005', 'OSCAR JAVIER ORTIZ DIEZ', '2009-07-21', '2', '1');
INSERT INTO `persona` VALUES ('3006', 'LUIS FELIPE PEREIRA RAMOS', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('3007', 'TATIANA REYES SAENZ', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('3008', 'JUAN CARLOS RAMOS QUINTANA', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('3009', 'DIANA STEFANIA SUAREZ MARQUINEZ', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('3010', 'CLAUDIA SOCORRO MEDINA ROMERO', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('3011', 'ELKIN LIN ORTEGA', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('3012', 'LILIANA STEFANNY WANG SANTAMARIA', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('3013', 'CARLOS ESTEBAN HERRERA DOMINGUEZ', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('3014', 'JUAN MANUEL CRUZ RUIZ DE AZUA', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('3015', 'CRISTIAN CAMILO MENDEZ SANZ', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('3016', 'MEYLIN VIVIANA MARIN ARMENTIA', '2010-03-11', '2', '1');
INSERT INTO `persona` VALUES ('3017', 'ENRIQUE FERREIRA OCHOA', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('3018', 'MARY MENDOZA DELGADO', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('3019', 'CRISTIAN CAMILO VASQUEZ RAMIREZ', '2010-05-21', '2', '1');
INSERT INTO `persona` VALUES ('3020', 'MEYLIN VIVIANA CABRERA SANTOS', '2010-08-30', '2', '1');
INSERT INTO `persona` VALUES ('3021', 'YEFERSON RIKI ZHANG LANDA', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('3022', 'MAURICIO JAVIER NUÑEZ ELORZA', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('3023', 'MONICA ANDREA DOS SANTOS CASTILLO', '2009-10-12', '2', '1');
INSERT INTO `persona` VALUES ('3024', 'RENE ALBERTO PISFIL SANZ', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('3025', 'OSCAR JAVIER PUEMAPE ARMENTIA', '2010-08-08', '2', '1');
INSERT INTO `persona` VALUES ('3026', 'LUIS FELIPE FLORES OCHOA', '2010-03-09', '2', '1');
INSERT INTO `persona` VALUES ('3027', 'TATIANA VARGAS DELGADO', '2010-05-15', '2', '1');
INSERT INTO `persona` VALUES ('3028', 'JUAN CARLOS GONZALES RAMIREZ', '2009-06-23', '2', '1');
INSERT INTO `persona` VALUES ('3029', 'DIANA STEFANIA VERA SANTOS', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('3030', 'CLAUDIA SOCORRO MONSALVE LANDA', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('3031', 'ELKIN PEREZ ELORZA', '2009-07-17', '2', '1');
INSERT INTO `persona` VALUES ('3032', 'LILIANA STEFANNY BENAVIDES CASTILLO', '2010-07-22', '2', '1');
INSERT INTO `persona` VALUES ('3033', 'CARLOS ESTEBAN PISFIL PUEMAPE', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('3034', 'JUAN MANUEL FLORES VARGAS', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('3035', 'CHRISTIAN MIGUEL RODRIGUEZ GARCIA', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('3036', 'HECTOR GENTIL GARCIA FERNANDEZ', '2010-01-27', '2', '1');
INSERT INTO `persona` VALUES ('3037', 'NELLY YAZMIN GONZALEZ MARTINEZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('3038', 'DAMARIS LOPEZ GONZALEZ', '2009-08-08', '2', '1');
INSERT INTO `persona` VALUES ('3039', 'AMANDA PEREZ PEREZ', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('3040', 'ANGIE LORENA MARTINEZ LOPEZ', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('3041', 'JOSE DENIS SANCHEZ RODRIGUEZ', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('3042', 'KAROL JOE FERNANDEZ SANCHEZ', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('3043', 'CARLOS ALBEIRO GOMEZ JIMENEZ', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('3044', 'HERNAN ALEXIS HERNANDEZ RUIZ', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('3045', 'JORGE ALIRIO DIAZ GOMEZ', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('3046', 'YESNARDA NAIROBI RAMIREZ MARTIN', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('3047', 'DIANA CAROLINA ALVAREZ ALONSO', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('3048', 'HAROLD ORLANDO CHEN DIAZ', '2010-05-01', '2', '1');
INSERT INTO `persona` VALUES ('3049', 'ZULLY JOHANA JIMENEZ HERNANDEZ', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('3050', 'JULIAN CAMILO TORRES MORENO', '2009-06-26', '2', '1');
INSERT INTO `persona` VALUES ('3051', 'MARIA SINGH GUTIERREZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('3052', 'FLOR RUIZ AGUIRRE', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('3053', 'JUAN ROJAS ALVAREZ', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('3054', 'ARMANDO ROMERO GIL', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('3055', 'ENRIQUE CASTRO SALAZAR', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('3056', 'VERONICA FLORES IBAÑEZ', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('3057', 'MARIA MUÑOZ MUÑOZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('3058', 'FLORES GUTIERREZ URIARTE', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('3059', 'TOMASA VARGAS BLANCO', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('3060', 'CRISTIAN CAMILO DA SILVA PINEDO', '2010-04-25', '2', '1');
INSERT INTO `persona` VALUES ('3061', 'MEYLIN VIVIANA MORALES SAEZ', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('3062', 'YEFERSON RIKI CASTILLO ORTIZ DE ZARATE', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('3063', 'MAURICIO JAVIER MARTIN ORTIZ', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('3064', 'MONICA ANDREA MORENO ANGULO', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('3065', 'RENE ALBERTO SILVA UGARTE', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('3066', 'OSCAR JAVIER ORTIZ DIEZ', '2009-10-26', '2', '1');
INSERT INTO `persona` VALUES ('3067', 'LUIS FELIPE PEREIRA RAMOS', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('3068', 'TATIANA REYES SAENZ', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('3069', 'JUAN CARLOS RAMOS QUINTANA', '2009-08-18', '2', '1');
INSERT INTO `persona` VALUES ('3070', 'DIANA STEFANIA SUAREZ MARQUINEZ', '2009-12-22', '2', '1');
INSERT INTO `persona` VALUES ('3071', 'CLAUDIA SOCORRO MEDINA ROMERO', '2009-11-11', '2', '1');
INSERT INTO `persona` VALUES ('3072', 'ELKIN LIN ORTEGA', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('3073', 'LILIANA STEFANNY WANG SANTAMARIA', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('3074', 'CARLOS ESTEBAN HERRERA DOMINGUEZ', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('3075', 'JUAN MANUEL CRUZ RUIZ DE AZUA', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('3076', 'CRISTIAN CAMILO MENDEZ SANZ', '2010-08-04', '2', '1');
INSERT INTO `persona` VALUES ('3077', 'MEYLIN VIVIANA MARIN ARMENTIA', '2010-09-09', '2', '1');
INSERT INTO `persona` VALUES ('3078', 'ENRIQUE FERREIRA OCHOA', '2009-12-28', '2', '1');
INSERT INTO `persona` VALUES ('3079', 'MARY MENDOZA DELGADO', '2010-03-28', '2', '1');
INSERT INTO `persona` VALUES ('3080', 'CRISTIAN CAMILO VASQUEZ RAMIREZ', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('3081', 'MEYLIN VIVIANA CABRERA SANTOS', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('3082', 'YEFERSON RIKI ZHANG LANDA', '2010-03-12', '2', '1');
INSERT INTO `persona` VALUES ('3083', 'MAURICIO JAVIER NUÑEZ ELORZA', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('3084', 'MONICA ANDREA DOS SANTOS CASTILLO', '2010-08-14', '2', '1');
INSERT INTO `persona` VALUES ('3085', 'RENE ALBERTO PISFIL SANZ', '2009-11-12', '2', '1');
INSERT INTO `persona` VALUES ('3086', 'OSCAR JAVIER PUEMAPE ARMENTIA', '2010-07-02', '2', '1');
INSERT INTO `persona` VALUES ('3087', 'LUIS FELIPE FLORES OCHOA', '2010-01-03', '2', '1');
INSERT INTO `persona` VALUES ('3088', 'TATIANA VARGAS DELGADO', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('3089', 'JUAN CARLOS GONZALES RAMIREZ', '2010-07-21', '2', '1');
INSERT INTO `persona` VALUES ('3090', 'DIANA STEFANIA VERA SANTOS', '2010-05-16', '2', '1');
INSERT INTO `persona` VALUES ('3091', 'CLAUDIA SOCORRO MONSALVE LANDA', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('3092', 'ELKIN PEREZ ELORZA', '2010-05-15', '2', '1');
INSERT INTO `persona` VALUES ('3093', 'LILIANA STEFANNY BENAVIDES CASTILLO', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('3094', 'CARLOS ESTEBAN PISFIL PUEMAPE', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('3095', 'JUAN MANUEL FLORES VARGAS', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('3096', 'CHRISTIAN MIGUEL RODRIGUEZ GARCIA', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('3097', 'HECTOR GENTIL GARCIA FERNANDEZ', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('3098', 'NELLY YAZMIN GONZALEZ MARTINEZ', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('3099', 'DAMARIS LOPEZ GONZALEZ', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('3100', 'AMANDA PISFIL PUEMAPE', '2010-01-16', '2', '1');
INSERT INTO `persona` VALUES ('3101', 'ANGIE LORENA FLORES VARGAS', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('3102', 'JOSE DENIS RODRIGUEZ GARCIA', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('3103', 'KAROL JOE GARCIA FERNANDEZ', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('3104', 'CARLOS ALBEIRO GONZALEZ MARTINEZ', '2010-01-22', '2', '1');
INSERT INTO `persona` VALUES ('3105', 'HERNAN ALEXIS LOPEZ GONZALEZ', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('3106', 'JORGE ALIRIO PEREZ PEREZ', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('3107', 'YESNARDA NAIROBI MARTINEZ LOPEZ', '2009-06-23', '2', '1');
INSERT INTO `persona` VALUES ('3108', 'DIANA CAROLINA SANCHEZ RODRIGUEZ', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('3109', 'HAROLD ORLANDO FERNANDEZ SANCHEZ', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('3110', 'ZULLY JOHANA GOMEZ JIMENEZ', '2010-03-23', '2', '1');
INSERT INTO `persona` VALUES ('3111', 'JULIAN CAMILO HERNANDEZ RUIZ', '2009-11-23', '2', '1');
INSERT INTO `persona` VALUES ('3112', 'MARIA DIAZ GOMEZ', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('3113', 'FLOR RAMIREZ MARTIN', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('3114', 'JUAN ALVAREZ ALONSO', '2009-10-02', '2', '1');
INSERT INTO `persona` VALUES ('3115', 'ARMANDO CHEN DIAZ', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('3116', 'ENRIQUE JIMENEZ HERNANDEZ', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('3117', 'VERONICA TORRES MORENO', '2010-07-06', '2', '1');
INSERT INTO `persona` VALUES ('3118', 'MARIA SINGH GUTIERREZ', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('3119', 'FLORES RUIZ AGUIRRE', '2009-11-15', '2', '1');
INSERT INTO `persona` VALUES ('3120', 'TOMASA ROJAS ALVAREZ', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('3121', 'CRISTIAN CAMILO ROMERO GIL', '2009-10-02', '2', '1');
INSERT INTO `persona` VALUES ('3122', 'MEYLIN VIVIANA CASTRO SALAZAR', '2009-09-05', '2', '1');
INSERT INTO `persona` VALUES ('3123', 'YEFERSON RIKI FLORES IBAÑEZ', '2010-02-13', '2', '1');
INSERT INTO `persona` VALUES ('3124', 'MAURICIO JAVIER MUÑOZ MUÑOZ', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('3125', 'MONICA ANDREA GUTIERREZ URIARTE', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('3126', 'RENE ALBERTO VARGAS BLANCO', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('3127', 'OSCAR JAVIER DA SILVA PINEDO', '2009-10-02', '2', '1');
INSERT INTO `persona` VALUES ('3128', 'LUIS FELIPE MORALES SAEZ', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('3129', 'TATIANA CASTILLO ORTIZ DE ZARATE', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('3130', 'JUAN CARLOS MARTIN ORTIZ', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('3131', 'DIANA STEFANIA MORENO ANGULO', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('3132', 'CLAUDIA SOCORRO SILVA UGARTE', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('3133', 'ELKIN ORTIZ DIEZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('3134', 'LILIANA STEFANNY PEREIRA RAMOS', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('3135', 'CARLOS ESTEBAN REYES SAENZ', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('3136', 'JUAN MANUEL RAMOS QUINTANA', '2010-03-14', '2', '1');
INSERT INTO `persona` VALUES ('3137', 'CRISTIAN CAMILO SUAREZ MARQUINEZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('3138', 'MEYLIN VIVIANA MEDINA ROMERO', '2010-05-23', '2', '1');
INSERT INTO `persona` VALUES ('3139', 'ENRIQUE LIN ORTEGA', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('3140', 'MARY WANG SANTAMARIA', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('3141', 'CRISTIAN CAMILO HERRERA DOMINGUEZ', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('3142', 'MEYLIN VIVIANA CRUZ RUIZ DE AZUA', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('3143', 'YEFERSON RIKI MENDEZ SANZ', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('3144', 'MAURICIO JAVIER MARIN ARMENTIA', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('3145', 'MONICA ANDREA FERREIRA OCHOA', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('3146', 'RENE ALBERTO MENDOZA DELGADO', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('3147', 'OSCAR JAVIER VASQUEZ RAMIREZ', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('3148', 'LUIS FELIPE CABRERA SANTOS', '2009-10-05', '2', '1');
INSERT INTO `persona` VALUES ('3149', 'TATIANA ZHANG LANDA', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('3150', 'JUAN CARLOS NUÑEZ ELORZA', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('3151', 'DIANA STEFANIA DOS SANTOS CASTILLO', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('3152', 'CLAUDIA SOCORRO PISFIL SANZ', '2010-08-21', '2', '1');
INSERT INTO `persona` VALUES ('3153', 'ELKIN PUEMAPE ARMENTIA', '2010-05-08', '2', '1');
INSERT INTO `persona` VALUES ('3154', 'LILIANA STEFANNY FLORES OCHOA', '2010-04-23', '2', '1');
INSERT INTO `persona` VALUES ('3155', 'CARLOS ESTEBAN VARGAS DELGADO', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('3156', 'JUAN MANUEL GONZALES RAMIREZ', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('3157', 'CHRISTIAN MIGUEL VERA SANTOS', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('3158', 'HECTOR GENTIL MONSALVE LANDA', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('3159', 'NELLY YAZMIN PEREZ ELORZA', '2010-06-17', '2', '1');
INSERT INTO `persona` VALUES ('3160', 'DAMARIS BENAVIDES CASTILLO', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('3161', 'AMANDA PISFIL PUEMAPE', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('3162', 'ANGIE LORENA FLORES VARGAS', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('3163', 'JOSE DENIS RODRIGUEZ GARCIA', '2010-06-02', '2', '1');
INSERT INTO `persona` VALUES ('3164', 'KAROL JOE GARCIA FERNANDEZ', '2009-11-03', '2', '1');
INSERT INTO `persona` VALUES ('3165', 'CARLOS ALBEIRO GONZALEZ MARTINEZ', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('3166', 'HERNAN ALEXIS LOPEZ GONZALEZ', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('3167', 'JORGE ALIRIO PEREZ PEREZ', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('3168', 'YESNARDA NAIROBI MARTINEZ LOPEZ', '2010-06-02', '2', '1');
INSERT INTO `persona` VALUES ('3169', 'DIANA CAROLINA SANCHEZ RODRIGUEZ', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('3170', 'HAROLD ORLANDO FERNANDEZ SANCHEZ', '2009-06-18', '2', '1');
INSERT INTO `persona` VALUES ('3171', 'ZULLY JOHANA GOMEZ JIMENEZ', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('3172', 'JULIAN CAMILO HERNANDEZ RUIZ', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('3173', 'MARIA DIAZ GOMEZ', '2009-11-27', '2', '1');
INSERT INTO `persona` VALUES ('3174', 'FLOR RAMIREZ MARTIN', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('3175', 'JUAN ALVAREZ ALONSO', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('3176', 'ARMANDO CHEN DIAZ', '2009-11-23', '2', '1');
INSERT INTO `persona` VALUES ('3177', 'ENRIQUE JIMENEZ HERNANDEZ', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('3178', 'VERONICA TORRES MORENO', '2009-08-08', '2', '1');
INSERT INTO `persona` VALUES ('3179', 'MARIA SINGH GUTIERREZ', '2010-03-28', '2', '1');
INSERT INTO `persona` VALUES ('3180', 'FLORES RUIZ AGUIRRE', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('3181', 'TOMASA ROJAS ALVAREZ', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('3182', 'CRISTIAN CAMILO ROMERO GIL', '2009-07-23', '2', '1');
INSERT INTO `persona` VALUES ('3183', 'MEYLIN VIVIANA CASTRO SALAZAR', '2010-08-16', '2', '1');
INSERT INTO `persona` VALUES ('3184', 'YEFERSON RIKI FLORES IBAÑEZ', '2009-06-13', '2', '1');
INSERT INTO `persona` VALUES ('3185', 'MAURICIO JAVIER MUÑOZ MUÑOZ', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('3186', 'MONICA ANDREA GUTIERREZ URIARTE', '2010-03-11', '2', '1');
INSERT INTO `persona` VALUES ('3187', 'RENE ALBERTO VARGAS BLANCO', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('3188', 'OSCAR JAVIER DA SILVA PINEDO', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('3189', 'LUIS FELIPE MORALES SAEZ', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('3190', 'TATIANA CASTILLO ORTIZ DE ZARATE', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('3191', 'JUAN CARLOS MARTIN ORTIZ', '2009-12-31', '2', '1');
INSERT INTO `persona` VALUES ('3192', 'DIANA STEFANIA MORENO ANGULO', '2010-01-24', '2', '1');
INSERT INTO `persona` VALUES ('3193', 'CLAUDIA SOCORRO SILVA UGARTE', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('3194', 'ELKIN ORTIZ DIEZ', '2009-07-20', '2', '1');
INSERT INTO `persona` VALUES ('3195', 'LILIANA STEFANNY PEREIRA RAMOS', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('3196', 'CARLOS ESTEBAN REYES SAENZ', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('3197', 'JUAN MANUEL RAMOS QUINTANA', '2010-08-13', '2', '1');
INSERT INTO `persona` VALUES ('3198', 'CRISTIAN CAMILO SUAREZ MARQUINEZ', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('3199', 'MEYLIN VIVIANA MEDINA ROMERO', '2009-06-23', '2', '1');
INSERT INTO `persona` VALUES ('3200', 'ENRIQUE LIN ORTEGA', '2009-12-24', '2', '1');
INSERT INTO `persona` VALUES ('3201', 'MARY WANG SANTAMARIA', '2009-06-16', '2', '1');
INSERT INTO `persona` VALUES ('3202', 'CRISTIAN CAMILO HERRERA DOMINGUEZ', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('3203', 'MEYLIN VIVIANA CRUZ RUIZ DE AZUA', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('3204', 'YEFERSON RIKI MENDEZ SANZ', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('3205', 'MAURICIO JAVIER MARIN ARMENTIA', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('3206', 'MONICA ANDREA FERREIRA OCHOA', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('3207', 'RENE ALBERTO MENDOZA DELGADO', '2009-06-16', '2', '1');
INSERT INTO `persona` VALUES ('3208', 'OSCAR JAVIER VASQUEZ RAMIREZ', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('3209', 'LUIS FELIPE CABRERA SANTOS', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('3210', 'TATIANA ZHANG LANDA', '2010-09-06', '2', '1');
INSERT INTO `persona` VALUES ('3211', 'JUAN CARLOS NUÑEZ ELORZA', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('3212', 'DIANA STEFANIA DOS SANTOS CASTILLO', '2010-04-22', '2', '1');
INSERT INTO `persona` VALUES ('3213', 'CLAUDIA SOCORRO PISFIL SANZ', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('3214', 'ELKIN PUEMAPE ARMENTIA', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('3215', 'LILIANA STEFANNY FLORES OCHOA', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('3216', 'CARLOS ESTEBAN VARGAS DELGADO', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('3217', 'JUAN MANUEL GONZALES RAMIREZ', '2009-06-25', '2', '1');
INSERT INTO `persona` VALUES ('3218', 'CHRISTIAN MIGUEL VERA SANTOS', '2010-08-30', '2', '1');
INSERT INTO `persona` VALUES ('3219', 'HECTOR GENTIL MONSALVE LANDA', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('3220', 'NELLY YAZMIN PEREZ ELORZA', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('3221', 'DAMARIS BENAVIDES CASTILLO', '2010-08-23', '2', '1');
INSERT INTO `persona` VALUES ('3222', 'AMANDA PISFIL PUEMAPE', '2010-03-03', '2', '1');
INSERT INTO `persona` VALUES ('3223', 'ANGIE LORENA FLORES VARGAS', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('3224', 'JOSE DENIS RODRIGUEZ GARCIA', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('3225', 'KAROL JOE GARCIA FERNANDEZ', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('3226', 'CARLOS ALBEIRO GONZALEZ MARTINEZ', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('3227', 'HERNAN ALEXIS LOPEZ GONZALEZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('3228', 'JORGE ALIRIO PISFIL PUEMAPE', '2009-12-20', '2', '1');
INSERT INTO `persona` VALUES ('3229', 'YESNARDA NAIROBI FLORES VARGAS', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('3230', 'DIANA CAROLINA RODRIGUEZ GARCIA', '2010-01-10', '2', '1');
INSERT INTO `persona` VALUES ('3231', 'HAROLD ORLANDO GARCIA FERNANDEZ', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('3232', 'ZULLY JOHANA GONZALEZ MARTINEZ', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('3233', 'JULIAN CAMILO LOPEZ GONZALEZ', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('3234', 'MARIA PEREZ PEREZ', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('3235', 'FLOR MARTINEZ LOPEZ', '2010-08-16', '2', '1');
INSERT INTO `persona` VALUES ('3236', 'JUAN SANCHEZ RODRIGUEZ', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('3237', 'ARMANDO FERNANDEZ SANCHEZ', '2010-08-30', '2', '1');
INSERT INTO `persona` VALUES ('3238', 'ENRIQUE GOMEZ JIMENEZ', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('3239', 'VERONICA HERNANDEZ RUIZ', '2010-01-22', '2', '1');
INSERT INTO `persona` VALUES ('3240', 'MARIA DIAZ GOMEZ', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('3241', 'FLORES RAMIREZ MARTIN', '2010-07-02', '2', '1');
INSERT INTO `persona` VALUES ('3242', 'TOMASA ALVAREZ ALONSO', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('3243', 'CRISTIAN CAMILO CHEN DIAZ', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('3244', 'MEYLIN VIVIANA JIMENEZ HERNANDEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('3245', 'YEFERSON RIKI TORRES MORENO', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('3246', 'MAURICIO JAVIER SINGH GUTIERREZ', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('3247', 'MONICA ANDREA RUIZ AGUIRRE', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('3248', 'RENE ALBERTO ROJAS ALVAREZ', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('3249', 'OSCAR JAVIER ROMERO GIL', '2009-06-20', '2', '1');
INSERT INTO `persona` VALUES ('3250', 'LUIS FELIPE CASTRO SALAZAR', '2009-11-21', '2', '1');
INSERT INTO `persona` VALUES ('3251', 'TATIANA FLORES IBAÑEZ', '2009-09-26', '2', '1');
INSERT INTO `persona` VALUES ('3252', 'JUAN CARLOS MUÑOZ MUÑOZ', '2009-10-03', '2', '1');
INSERT INTO `persona` VALUES ('3253', 'DIANA STEFANIA GUTIERREZ URIARTE', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('3254', 'CLAUDIA SOCORRO VARGAS BLANCO', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('3255', 'ELKIN DA SILVA PINEDO', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('3256', 'LILIANA STEFANNY MORALES SAEZ', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('3257', 'CARLOS ESTEBAN CASTILLO ORTIZ DE ZARATE', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('3258', 'JUAN MANUEL MARTIN ORTIZ', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('3259', 'CRISTIAN CAMILO MORENO ANGULO', '2010-04-05', '2', '1');
INSERT INTO `persona` VALUES ('3260', 'MEYLIN VIVIANA SILVA UGARTE', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('3261', 'ENRIQUE ORTIZ DIEZ', '2010-08-26', '2', '1');
INSERT INTO `persona` VALUES ('3262', 'MARY PEREIRA RAMOS', '2009-11-03', '2', '1');
INSERT INTO `persona` VALUES ('3263', 'CRISTIAN CAMILO REYES SAENZ', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('3264', 'MEYLIN VIVIANA RAMOS QUINTANA', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('3265', 'YEFERSON RIKI SUAREZ MARQUINEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('3266', 'MAURICIO JAVIER MEDINA ROMERO', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('3267', 'MONICA ANDREA LIN ORTEGA', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('3268', 'RENE ALBERTO WANG SANTAMARIA', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('3269', 'OSCAR JAVIER HERRERA DOMINGUEZ', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('3270', 'LUIS FELIPE CRUZ RUIZ DE AZUA', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('3271', 'TATIANA MENDEZ SANZ', '2010-04-10', '2', '1');
INSERT INTO `persona` VALUES ('3272', 'JUAN CARLOS MARIN ARMENTIA', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('3273', 'DIANA STEFANIA FERREIRA OCHOA', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('3274', 'CLAUDIA SOCORRO MENDOZA DELGADO', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('3275', 'ELKIN VASQUEZ RAMIREZ', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('3276', 'LILIANA STEFANNY CABRERA SANTOS', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('3277', 'CARLOS ESTEBAN ZHANG LANDA', '2009-12-03', '2', '1');
INSERT INTO `persona` VALUES ('3278', 'JUAN MANUEL NUÑEZ ELORZA', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('3279', 'CHRISTIAN MIGUEL DOS SANTOS CASTILLO', '2010-05-23', '2', '1');
INSERT INTO `persona` VALUES ('3280', 'HECTOR GENTIL PISFIL SANZ', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('3281', 'NELLY YAZMIN PUEMAPE ARMENTIA', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('3282', 'DAMARIS FLORES OCHOA', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('3283', 'AMANDA VARGAS DELGADO', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('3284', 'ANGIE LORENA GONZALES RAMIREZ', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('3285', 'JOSE DENIS VERA SANTOS', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('3286', 'KAROL JOE MONSALVE LANDA', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('3287', 'CARLOS ALBEIRO PEREZ ELORZA', '2009-06-15', '2', '1');
INSERT INTO `persona` VALUES ('3288', 'HERNAN ALEXIS BENAVIDES CASTILLO', '2010-09-07', '2', '1');
INSERT INTO `persona` VALUES ('3289', 'JORGE ALIRIO PISFIL PUEMAPE', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('3290', 'YESNARDA NAIROBI FLORES VARGAS', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('3291', 'DIANA CAROLINA RODRIGUEZ GARCIA', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('3292', 'HAROLD ORLANDO GARCIA FERNANDEZ', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('3293', 'ZULLY JOHANA GONZALEZ MARTINEZ', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('3294', 'JULIAN CAMILO LOPEZ GONZALEZ', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('3295', 'MARIA PEREZ PEREZ', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('3296', 'FLOR MARTINEZ LOPEZ', '2010-01-22', '2', '1');
INSERT INTO `persona` VALUES ('3297', 'JUAN SANCHEZ RODRIGUEZ', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('3298', 'ARMANDO FERNANDEZ SANCHEZ', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('3299', 'ENRIQUE GOMEZ JIMENEZ', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('3300', 'VERONICA HERNANDEZ RUIZ', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('3301', 'MARIA DIAZ GOMEZ', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('3302', 'FLORES RAMIREZ MARTIN', '2009-12-06', '2', '1');
INSERT INTO `persona` VALUES ('3303', 'TOMASA ALVAREZ ALONSO', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('3304', 'CRISTIAN CAMILO CHEN DIAZ', '2010-05-02', '2', '1');
INSERT INTO `persona` VALUES ('3305', 'MEYLIN VIVIANA JIMENEZ HERNANDEZ', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('3306', 'YEFERSON RIKI TORRES MORENO', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('3307', 'MAURICIO JAVIER SINGH GUTIERREZ', '2009-11-17', '2', '1');
INSERT INTO `persona` VALUES ('3308', 'MONICA ANDREA RUIZ AGUIRRE', '2009-09-05', '2', '1');
INSERT INTO `persona` VALUES ('3309', 'RENE ALBERTO ROJAS ALVAREZ', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('3310', 'OSCAR JAVIER ROMERO GIL', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('3311', 'LUIS FELIPE CASTRO SALAZAR', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('3312', 'TATIANA FLORES IBAÑEZ', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('3313', 'JUAN CARLOS MUÑOZ MUÑOZ', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('3314', 'DIANA STEFANIA GUTIERREZ URIARTE', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('3315', 'CLAUDIA SOCORRO VARGAS BLANCO', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('3316', 'ELKIN DA SILVA PINEDO', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('3317', 'LILIANA STEFANNY MORALES SAEZ', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('3318', 'CARLOS ESTEBAN CASTILLO ORTIZ DE ZARATE', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('3319', 'JUAN MANUEL MARTIN ORTIZ', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('3320', 'CRISTIAN CAMILO MORENO ANGULO', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('3321', 'MEYLIN VIVIANA SILVA UGARTE', '2009-06-14', '2', '1');
INSERT INTO `persona` VALUES ('3322', 'ENRIQUE ORTIZ DIEZ', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('3323', 'MARY PEREIRA RAMOS', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('3324', 'CRISTIAN CAMILO REYES SAENZ', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('3325', 'MEYLIN VIVIANA RAMOS QUINTANA', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('3326', 'YEFERSON RIKI SUAREZ MARQUINEZ', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('3327', 'MAURICIO JAVIER MEDINA ROMERO', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('3328', 'MONICA ANDREA LIN ORTEGA', '2009-11-06', '2', '1');
INSERT INTO `persona` VALUES ('3329', 'RENE ALBERTO WANG SANTAMARIA', '2010-02-20', '2', '1');
INSERT INTO `persona` VALUES ('3330', 'OSCAR JAVIER HERRERA DOMINGUEZ', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('3331', 'LUIS FELIPE CRUZ RUIZ DE AZUA', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('3332', 'TATIANA MENDEZ SANZ', '2010-03-08', '2', '1');
INSERT INTO `persona` VALUES ('3333', 'JUAN CARLOS MARIN ARMENTIA', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('3334', 'DIANA STEFANIA FERREIRA OCHOA', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('3335', 'CLAUDIA SOCORRO MENDOZA DELGADO', '2010-05-10', '2', '1');
INSERT INTO `persona` VALUES ('3336', 'ELKIN VASQUEZ RAMIREZ', '2010-08-14', '2', '1');
INSERT INTO `persona` VALUES ('3337', 'LILIANA STEFANNY CABRERA SANTOS', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('3338', 'CARLOS ESTEBAN ZHANG LANDA', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('3339', 'JUAN MANUEL NUÑEZ ELORZA', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('3340', 'CHRISTIAN MIGUEL DOS SANTOS CASTILLO', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('3341', 'HECTOR GENTIL PISFIL SANZ', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('3342', 'NELLY YAZMIN PUEMAPE ARMENTIA', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('3343', 'DAMARIS FLORES OCHOA', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('3344', 'AMANDA VARGAS DELGADO', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('3345', 'ANGIE LORENA GONZALES RAMIREZ', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('3346', 'JOSE DENIS VERA SANTOS', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('3347', 'KAROL JOE MONSALVE LANDA', '2010-05-02', '2', '1');
INSERT INTO `persona` VALUES ('3348', 'CARLOS ALBEIRO PEREZ ELORZA', '2010-06-27', '2', '1');
INSERT INTO `persona` VALUES ('3349', 'HERNAN ALEXIS BENAVIDES CASTILLO', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('3350', 'JORGE ALIRIO PISFIL PUEMAPE', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('3351', 'YESNARDA NAIROBI FLORES VARGAS', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('3352', 'DIANA CAROLINA RODRIGUEZ GARCIA', '2010-03-12', '2', '1');
INSERT INTO `persona` VALUES ('3353', 'HAROLD ORLANDO GARCIA FERNANDEZ', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('3354', 'ZULLY JOHANA GONZALEZ MARTINEZ', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('3355', 'JULIAN CAMILO LOPEZ GONZALEZ', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('3356', 'MARIA PISFIL PUEMAPE', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('3357', 'FLOR FLORES VARGAS', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('3358', 'JUAN RODRIGUEZ GARCIA', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('3359', 'ARMANDO GARCIA FERNANDEZ', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('3360', 'ENRIQUE GONZALEZ MARTINEZ', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('3361', 'VERONICA LOPEZ GONZALEZ', '2010-08-23', '2', '1');
INSERT INTO `persona` VALUES ('3362', 'MARIA PEREZ PEREZ', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('3363', 'FLORES MARTINEZ LOPEZ', '2010-04-17', '2', '1');
INSERT INTO `persona` VALUES ('3364', 'TOMASA SANCHEZ RODRIGUEZ', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('3365', 'CRISTIAN CAMILO FERNANDEZ SANCHEZ', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('3366', 'MEYLIN VIVIANA GOMEZ JIMENEZ', '2010-07-29', '2', '1');
INSERT INTO `persona` VALUES ('3367', 'YEFERSON RIKI HERNANDEZ RUIZ', '2010-06-28', '2', '1');
INSERT INTO `persona` VALUES ('3368', 'MAURICIO JAVIER DIAZ GOMEZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('3369', 'MONICA ANDREA RAMIREZ MARTIN', '2009-12-03', '2', '1');
INSERT INTO `persona` VALUES ('3370', 'RENE ALBERTO ALVAREZ ALONSO', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('3371', 'OSCAR JAVIER CHEN DIAZ', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('3372', 'LUIS FELIPE JIMENEZ HERNANDEZ', '2009-06-14', '2', '1');
INSERT INTO `persona` VALUES ('3373', 'TATIANA TORRES MORENO', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('3374', 'JUAN CARLOS SINGH GUTIERREZ', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('3375', 'DIANA STEFANIA RUIZ AGUIRRE', '2009-07-21', '2', '1');
INSERT INTO `persona` VALUES ('3376', 'CLAUDIA SOCORRO ROJAS ALVAREZ', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('3377', 'ELKIN ROMERO GIL', '2010-01-23', '2', '1');
INSERT INTO `persona` VALUES ('3378', 'LILIANA STEFANNY CASTRO SALAZAR', '2009-12-20', '2', '1');
INSERT INTO `persona` VALUES ('3379', 'CARLOS ESTEBAN FLORES IBAÑEZ', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('3380', 'JUAN MANUEL MUÑOZ MUÑOZ', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('3381', 'CRISTIAN CAMILO GUTIERREZ URIARTE', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('3382', 'MEYLIN VIVIANA VARGAS BLANCO', '2010-04-26', '2', '1');
INSERT INTO `persona` VALUES ('3383', 'ENRIQUE DA SILVA PINEDO', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('3384', 'MARY MORALES SAEZ', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('3385', 'CRISTIAN CAMILO CASTILLO ORTIZ DE ZARATE', '2010-05-16', '2', '1');
INSERT INTO `persona` VALUES ('3386', 'MEYLIN VIVIANA MARTIN ORTIZ', '2009-06-25', '2', '1');
INSERT INTO `persona` VALUES ('3387', 'YEFERSON RIKI MORENO ANGULO', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('3388', 'MAURICIO JAVIER SILVA UGARTE', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('3389', 'MONICA ANDREA ORTIZ DIEZ', '2009-10-21', '2', '1');
INSERT INTO `persona` VALUES ('3390', 'RENE ALBERTO PEREIRA RAMOS', '2009-12-27', '2', '1');
INSERT INTO `persona` VALUES ('3391', 'OSCAR JAVIER REYES SAENZ', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('3392', 'LUIS FELIPE RAMOS QUINTANA', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('3393', 'TATIANA SUAREZ MARQUINEZ', '2009-06-13', '2', '1');
INSERT INTO `persona` VALUES ('3394', 'JUAN CARLOS MEDINA ROMERO', '2009-06-18', '2', '1');
INSERT INTO `persona` VALUES ('3395', 'DIANA STEFANIA LIN ORTEGA', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('3396', 'CLAUDIA SOCORRO WANG SANTAMARIA', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('3397', 'ELKIN HERRERA DOMINGUEZ', '2010-03-07', '2', '1');
INSERT INTO `persona` VALUES ('3398', 'LILIANA STEFANNY CRUZ RUIZ DE AZUA', '2009-07-17', '2', '1');
INSERT INTO `persona` VALUES ('3399', 'CARLOS ESTEBAN MENDEZ SANZ', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('3400', 'JUAN MANUEL MARIN ARMENTIA', '2009-06-28', '2', '1');
INSERT INTO `persona` VALUES ('3401', 'CHRISTIAN MIGUEL FERREIRA OCHOA', '2009-11-21', '2', '1');
INSERT INTO `persona` VALUES ('3402', 'HECTOR GENTIL MENDOZA DELGADO', '2009-06-14', '2', '1');
INSERT INTO `persona` VALUES ('3403', 'NELLY YAZMIN VASQUEZ RAMIREZ', '2010-07-21', '2', '1');
INSERT INTO `persona` VALUES ('3404', 'DAMARIS CABRERA SANTOS', '2010-06-09', '2', '1');
INSERT INTO `persona` VALUES ('3405', 'AMANDA ZHANG LANDA', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('3406', 'ANGIE LORENA NUÑEZ ELORZA', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('3407', 'JOSE DENIS DOS SANTOS CASTILLO', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('3408', 'KAROL JOE PISFIL SANZ', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('3409', 'CARLOS ALBEIRO PUEMAPE ARMENTIA', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('3410', 'HERNAN ALEXIS FLORES OCHOA', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('3411', 'JORGE ALIRIO VARGAS DELGADO', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('3412', 'YESNARDA NAIROBI GONZALES RAMIREZ', '2010-04-26', '2', '1');
INSERT INTO `persona` VALUES ('3413', 'DIANA CAROLINA VERA SANTOS', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('3414', 'HAROLD ORLANDO MONSALVE LANDA', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('3415', 'ZULLY JOHANA PEREZ ELORZA', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('3416', 'JULIAN CAMILO BENAVIDES CASTILLO', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('3417', 'MARIA PISFIL PUEMAPE', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('3418', 'FLOR FLORES VARGAS', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('3419', 'JUAN RODRIGUEZ GARCIA', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('3420', 'ARMANDO GARCIA FERNANDEZ', '2010-08-14', '2', '1');
INSERT INTO `persona` VALUES ('3421', 'ENRIQUE GONZALEZ MARTINEZ', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('3422', 'VERONICA LOPEZ GONZALEZ', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('3423', 'MARIA PEREZ PEREZ', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('3424', 'FLORES MARTINEZ LOPEZ', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('3425', 'TOMASA SANCHEZ RODRIGUEZ', '2010-06-24', '2', '1');
INSERT INTO `persona` VALUES ('3426', 'CRISTIAN CAMILO FERNANDEZ SANCHEZ', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('3427', 'MEYLIN VIVIANA GOMEZ JIMENEZ', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('3428', 'YEFERSON RIKI HERNANDEZ RUIZ', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('3429', 'MAURICIO JAVIER DIAZ GOMEZ', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('3430', 'MONICA ANDREA RAMIREZ MARTIN', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('3431', 'RENE ALBERTO ALVAREZ ALONSO', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('3432', 'OSCAR JAVIER CHEN DIAZ', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('3433', 'LUIS FELIPE JIMENEZ HERNANDEZ', '2010-03-03', '2', '1');
INSERT INTO `persona` VALUES ('3434', 'TATIANA TORRES MORENO', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('3435', 'JUAN CARLOS SINGH GUTIERREZ', '2009-07-20', '2', '1');
INSERT INTO `persona` VALUES ('3436', 'DIANA STEFANIA RUIZ AGUIRRE', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('3437', 'CLAUDIA SOCORRO ROJAS ALVAREZ', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('3438', 'ELKIN ROMERO GIL', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('3439', 'LILIANA STEFANNY CASTRO SALAZAR', '2009-09-29', '2', '1');
INSERT INTO `persona` VALUES ('3440', 'CARLOS ESTEBAN FLORES IBAÑEZ', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('3441', 'JUAN MANUEL MUÑOZ MUÑOZ', '2009-10-11', '2', '1');
INSERT INTO `persona` VALUES ('3442', 'CRISTIAN CAMILO GUTIERREZ URIARTE', '2010-01-21', '2', '1');
INSERT INTO `persona` VALUES ('3443', 'MEYLIN VIVIANA VARGAS BLANCO', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('3444', 'ENRIQUE DA SILVA PINEDO', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('3445', 'MARY MORALES SAEZ', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('3446', 'CRISTIAN CAMILO CASTILLO ORTIZ DE ZARATE', '2010-05-05', '2', '1');
INSERT INTO `persona` VALUES ('3447', 'MEYLIN VIVIANA MARTIN ORTIZ', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('3448', 'YEFERSON RIKI MORENO ANGULO', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('3449', 'MAURICIO JAVIER SILVA UGARTE', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('3450', 'MONICA ANDREA ORTIZ DIEZ', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('3451', 'RENE ALBERTO PEREIRA RAMOS', '2009-11-23', '2', '1');
INSERT INTO `persona` VALUES ('3452', 'OSCAR JAVIER REYES SAENZ', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('3453', 'LUIS FELIPE RAMOS QUINTANA', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('3454', 'TATIANA SUAREZ MARQUINEZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('3455', 'JUAN CARLOS MEDINA ROMERO', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('3456', 'DIANA STEFANIA LIN ORTEGA', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('3457', 'CLAUDIA SOCORRO WANG SANTAMARIA', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('3458', 'ELKIN HERRERA DOMINGUEZ', '2009-08-07', '2', '1');
INSERT INTO `persona` VALUES ('3459', 'LILIANA STEFANNY CRUZ RUIZ DE AZUA', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('3460', 'CARLOS ESTEBAN MENDEZ SANZ', '2010-04-28', '2', '1');
INSERT INTO `persona` VALUES ('3461', 'JUAN MANUEL MARIN ARMENTIA', '2010-05-02', '2', '1');
INSERT INTO `persona` VALUES ('3462', 'CHRISTIAN MIGUEL FERREIRA OCHOA', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('3463', 'HECTOR GENTIL MENDOZA DELGADO', '2009-12-06', '2', '1');
INSERT INTO `persona` VALUES ('3464', 'NELLY YAZMIN VASQUEZ RAMIREZ', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('3465', 'DAMARIS CABRERA SANTOS', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('3466', 'AMANDA ZHANG LANDA', '2010-04-10', '2', '1');
INSERT INTO `persona` VALUES ('3467', 'ANGIE LORENA NUÑEZ ELORZA', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('3468', 'JOSE DENIS DOS SANTOS CASTILLO', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('3469', 'KAROL JOE PISFIL SANZ', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('3470', 'CARLOS ALBEIRO PUEMAPE ARMENTIA', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('3471', 'HERNAN ALEXIS FLORES OCHOA', '2009-08-07', '2', '1');
INSERT INTO `persona` VALUES ('3472', 'JORGE ALIRIO VARGAS DELGADO', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('3473', 'YESNARDA NAIROBI GONZALES RAMIREZ', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('3474', 'DIANA CAROLINA VERA SANTOS', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('3475', 'HAROLD ORLANDO MONSALVE LANDA', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('3476', 'ZULLY JOHANA PEREZ ELORZA', '2010-06-17', '2', '1');
INSERT INTO `persona` VALUES ('3477', 'JULIAN CAMILO BENAVIDES CASTILLO', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('3478', 'MARIA PISFIL PUEMAPE', '2010-07-09', '2', '1');
INSERT INTO `persona` VALUES ('3479', 'FLOR FLORES VARGAS', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('3480', 'JUAN RODRIGUEZ GARCIA', '2009-10-16', '2', '1');
INSERT INTO `persona` VALUES ('3481', 'ARMANDO GARCIA FERNANDEZ', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('3482', 'ENRIQUE GONZALEZ MARTINEZ', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('3483', 'VERONICA LOPEZ GONZALEZ', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('3484', 'MARIA PISFIL PUEMAPE', '2010-06-30', '2', '1');
INSERT INTO `persona` VALUES ('3485', 'FLORES FLORES VARGAS', '2010-02-28', '2', '1');
INSERT INTO `persona` VALUES ('3486', 'TOMASA RODRIGUEZ GARCIA', '2010-05-08', '2', '1');
INSERT INTO `persona` VALUES ('3487', 'CRISTIAN CAMILO GARCIA FERNANDEZ', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('3488', 'MEYLIN VIVIANA GONZALEZ MARTINEZ', '2009-12-24', '2', '1');
INSERT INTO `persona` VALUES ('3489', 'YEFERSON RIKI LOPEZ GONZALEZ', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('3490', 'MAURICIO JAVIER PEREZ PEREZ', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('3491', 'MONICA ANDREA MARTINEZ LOPEZ', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('3492', 'RENE ALBERTO SANCHEZ RODRIGUEZ', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('3493', 'OSCAR JAVIER FERNANDEZ SANCHEZ', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('3494', 'LUIS FELIPE GOMEZ JIMENEZ', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('3495', 'TATIANA HERNANDEZ RUIZ', '2009-06-20', '2', '1');
INSERT INTO `persona` VALUES ('3496', 'JUAN CARLOS DIAZ GOMEZ', '2010-06-02', '2', '1');
INSERT INTO `persona` VALUES ('3497', 'DIANA STEFANIA RAMIREZ MARTIN', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('3498', 'CLAUDIA SOCORRO ALVAREZ ALONSO', '2009-11-12', '2', '1');
INSERT INTO `persona` VALUES ('3499', 'ELKIN CHEN DIAZ', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('3500', 'LILIANA STEFANNY JIMENEZ HERNANDEZ', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('3501', 'CARLOS ESTEBAN TORRES MORENO', '2010-06-30', '2', '1');
INSERT INTO `persona` VALUES ('3502', 'JUAN MANUEL SINGH GUTIERREZ', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('3503', 'CRISTIAN CAMILO RUIZ AGUIRRE', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('3504', 'MEYLIN VIVIANA ROJAS ALVAREZ', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('3505', 'ENRIQUE ROMERO GIL', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('3506', 'MARY CASTRO SALAZAR', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('3507', 'CRISTIAN CAMILO FLORES IBAÑEZ', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('3508', 'MEYLIN VIVIANA MUÑOZ MUÑOZ', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('3509', 'YEFERSON RIKI GUTIERREZ URIARTE', '2009-12-31', '2', '1');
INSERT INTO `persona` VALUES ('3510', 'MAURICIO JAVIER VARGAS BLANCO', '2010-03-09', '2', '1');
INSERT INTO `persona` VALUES ('3511', 'MONICA ANDREA DA SILVA PINEDO', '2010-05-10', '2', '1');
INSERT INTO `persona` VALUES ('3512', 'RENE ALBERTO MORALES SAEZ', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('3513', 'OSCAR JAVIER CASTILLO ORTIZ DE ZARATE', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('3514', 'LUIS FELIPE MARTIN ORTIZ', '2009-06-15', '2', '1');
INSERT INTO `persona` VALUES ('3515', 'TATIANA MORENO ANGULO', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('3516', 'JUAN CARLOS SILVA UGARTE', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('3517', 'DIANA STEFANIA ORTIZ DIEZ', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('3518', 'CLAUDIA SOCORRO PEREIRA RAMOS', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('3519', 'ELKIN REYES SAENZ', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('3520', 'LILIANA STEFANNY RAMOS QUINTANA', '2010-08-23', '2', '1');
INSERT INTO `persona` VALUES ('3521', 'CARLOS ESTEBAN SUAREZ MARQUINEZ', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('3522', 'JUAN MANUEL MEDINA ROMERO', '2010-01-08', '2', '1');
INSERT INTO `persona` VALUES ('3523', 'CHRISTIAN MIGUEL LIN ORTEGA', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('3524', 'HECTOR GENTIL WANG SANTAMARIA', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('3525', 'NELLY YAZMIN HERRERA DOMINGUEZ', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('3526', 'DAMARIS CRUZ RUIZ DE AZUA', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('3527', 'AMANDA MENDEZ SANZ', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('3528', 'ANGIE LORENA MARIN ARMENTIA', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('3529', 'JOSE DENIS FERREIRA OCHOA', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('3530', 'KAROL JOE MENDOZA DELGADO', '2010-06-28', '2', '1');
INSERT INTO `persona` VALUES ('3531', 'CARLOS ALBEIRO VASQUEZ RAMIREZ', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('3532', 'HERNAN ALEXIS CABRERA SANTOS', '2010-02-13', '2', '1');
INSERT INTO `persona` VALUES ('3533', 'JORGE ALIRIO ZHANG LANDA', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('3534', 'YESNARDA NAIROBI NUÑEZ ELORZA', '2010-03-03', '2', '1');
INSERT INTO `persona` VALUES ('3535', 'DIANA CAROLINA DOS SANTOS CASTILLO', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('3536', 'HAROLD ORLANDO PISFIL SANZ', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('3537', 'ZULLY JOHANA PUEMAPE ARMENTIA', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('3538', 'JULIAN CAMILO FLORES OCHOA', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('3539', 'MARIA VARGAS DELGADO', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('3540', 'FLOR GONZALES RAMIREZ', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('3541', 'JUAN VERA SANTOS', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('3542', 'ARMANDO MONSALVE LANDA', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('3543', 'ENRIQUE PEREZ ELORZA', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('3544', 'VERONICA BENAVIDES CASTILLO', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('3545', 'MARIA PISFIL PUEMAPE', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('3546', 'FLORES FLORES VARGAS', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('3547', 'TOMASA RODRIGUEZ GARCIA', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('3548', 'CRISTIAN CAMILO GARCIA FERNANDEZ', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('3549', 'MEYLIN VIVIANA GONZALEZ MARTINEZ', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('3550', 'YEFERSON RIKI LOPEZ GONZALEZ', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('3551', 'MAURICIO JAVIER PEREZ PEREZ', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('3552', 'MONICA ANDREA MARTINEZ LOPEZ', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('3553', 'RENE ALBERTO SANCHEZ RODRIGUEZ', '2009-09-26', '2', '1');
INSERT INTO `persona` VALUES ('3554', 'OSCAR JAVIER FERNANDEZ SANCHEZ', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('3555', 'LUIS FELIPE GOMEZ JIMENEZ', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('3556', 'TATIANA HERNANDEZ RUIZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('3557', 'JUAN CARLOS DIAZ GOMEZ', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('3558', 'DIANA STEFANIA RAMIREZ MARTIN', '2009-08-25', '2', '1');
INSERT INTO `persona` VALUES ('3559', 'CLAUDIA SOCORRO ALVAREZ ALONSO', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('3560', 'ELKIN CHEN DIAZ', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('3561', 'LILIANA STEFANNY JIMENEZ HERNANDEZ', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('3562', 'CARLOS ESTEBAN TORRES MORENO', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('3563', 'JUAN MANUEL SINGH GUTIERREZ', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('3564', 'CRISTIAN CAMILO RUIZ AGUIRRE', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('3565', 'MEYLIN VIVIANA ROJAS ALVAREZ', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('3566', 'ENRIQUE ROMERO GIL', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('3567', 'MARY CASTRO SALAZAR', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('3568', 'CRISTIAN CAMILO FLORES IBAÑEZ', '2010-08-04', '2', '1');
INSERT INTO `persona` VALUES ('3569', 'MEYLIN VIVIANA MUÑOZ MUÑOZ', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('3570', 'YEFERSON RIKI GUTIERREZ URIARTE', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('3571', 'MAURICIO JAVIER VARGAS BLANCO', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('3572', 'MONICA ANDREA DA SILVA PINEDO', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('3573', 'RENE ALBERTO MORALES SAEZ', '2009-11-19', '2', '1');
INSERT INTO `persona` VALUES ('3574', 'OSCAR JAVIER CASTILLO ORTIZ DE ZARATE', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('3575', 'LUIS FELIPE MARTIN ORTIZ', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('3576', 'TATIANA MORENO ANGULO', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('3577', 'JUAN CARLOS SILVA UGARTE', '2009-12-22', '2', '1');
INSERT INTO `persona` VALUES ('3578', 'DIANA STEFANIA ORTIZ DIEZ', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('3579', 'CLAUDIA SOCORRO PEREIRA RAMOS', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('3580', 'ELKIN REYES SAENZ', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('3581', 'LILIANA STEFANNY RAMOS QUINTANA', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('3582', 'CARLOS ESTEBAN SUAREZ MARQUINEZ', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('3583', 'JUAN MANUEL MEDINA ROMERO', '2010-03-12', '2', '1');
INSERT INTO `persona` VALUES ('3584', 'CHRISTIAN MIGUEL LIN ORTEGA', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('3585', 'HECTOR GENTIL WANG SANTAMARIA', '2009-08-24', '2', '1');
INSERT INTO `persona` VALUES ('3586', 'NELLY YAZMIN HERRERA DOMINGUEZ', '2010-07-22', '2', '1');
INSERT INTO `persona` VALUES ('3587', 'DAMARIS CRUZ RUIZ DE AZUA', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('3588', 'AMANDA MENDEZ SANZ', '2010-03-07', '2', '1');
INSERT INTO `persona` VALUES ('3589', 'ANGIE LORENA MARIN ARMENTIA', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('3590', 'JOSE DENIS FERREIRA OCHOA', '2009-06-20', '2', '1');
INSERT INTO `persona` VALUES ('3591', 'KAROL JOE MENDOZA DELGADO', '2010-09-05', '2', '1');
INSERT INTO `persona` VALUES ('3592', 'CARLOS ALBEIRO VASQUEZ RAMIREZ', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('3593', 'HERNAN ALEXIS CABRERA SANTOS', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('3594', 'JORGE ALIRIO ZHANG LANDA', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('3595', 'YESNARDA NAIROBI NUÑEZ ELORZA', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('3596', 'DIANA CAROLINA DOS SANTOS CASTILLO', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('3597', 'HAROLD ORLANDO PISFIL SANZ', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('3598', 'ZULLY JOHANA PUEMAPE ARMENTIA', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('3599', 'JULIAN CAMILO FLORES OCHOA', '2009-10-05', '2', '1');
INSERT INTO `persona` VALUES ('3600', 'MARIA VARGAS DELGADO', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('3601', 'FLOR GONZALES RAMIREZ', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('3602', 'JUAN VERA SANTOS', '2010-08-31', '2', '1');
INSERT INTO `persona` VALUES ('3603', 'ARMANDO MONSALVE LANDA', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('3604', 'ENRIQUE PEREZ ELORZA', '2010-04-26', '2', '1');
INSERT INTO `persona` VALUES ('3605', 'VERONICA BENAVIDES CASTILLO', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('3606', 'MARIA PISFIL PUEMAPE', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('3607', 'FLORES FLORES VARGAS', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('3608', 'TOMASA RODRIGUEZ GARCIA', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('3609', 'CRISTIAN CAMILO GARCIA FERNANDEZ', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('3610', 'MEYLIN VIVIANA GONZALEZ MARTINEZ', '2010-05-01', '2', '1');
INSERT INTO `persona` VALUES ('3611', 'YEFERSON RIKI LOPEZ GONZALEZ', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('3612', 'MAURICIO JAVIER PISFIL PUEMAPE', '2010-02-18', '2', '1');
INSERT INTO `persona` VALUES ('3613', 'MONICA ANDREA FLORES VARGAS', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('3614', 'RENE ALBERTO RODRIGUEZ GARCIA', '2010-09-05', '2', '1');
INSERT INTO `persona` VALUES ('3615', 'OSCAR JAVIER GARCIA FERNANDEZ', '2010-09-09', '2', '1');
INSERT INTO `persona` VALUES ('3616', 'LUIS FELIPE GONZALEZ MARTINEZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('3617', 'TATIANA LOPEZ GONZALEZ', '2009-08-24', '2', '1');
INSERT INTO `persona` VALUES ('3618', 'JUAN CARLOS PEREZ PEREZ', '2009-11-15', '2', '1');
INSERT INTO `persona` VALUES ('3619', 'DIANA STEFANIA MARTINEZ LOPEZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('3620', 'CLAUDIA SOCORRO SANCHEZ RODRIGUEZ', '2010-03-11', '2', '1');
INSERT INTO `persona` VALUES ('3621', 'ELKIN FERNANDEZ SANCHEZ', '2009-10-26', '2', '1');
INSERT INTO `persona` VALUES ('3622', 'LILIANA STEFANNY GOMEZ JIMENEZ', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('3623', 'CARLOS ESTEBAN HERNANDEZ RUIZ', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('3624', 'JUAN MANUEL DIAZ GOMEZ', '2010-07-09', '2', '1');
INSERT INTO `persona` VALUES ('3625', 'CRISTIAN CAMILO RAMIREZ MARTIN', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('3626', 'MEYLIN VIVIANA ALVAREZ ALONSO', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('3627', 'ENRIQUE CHEN DIAZ', '2010-01-10', '2', '1');
INSERT INTO `persona` VALUES ('3628', 'MARY JIMENEZ HERNANDEZ', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('3629', 'CRISTIAN CAMILO TORRES MORENO', '2010-08-13', '2', '1');
INSERT INTO `persona` VALUES ('3630', 'MEYLIN VIVIANA SINGH GUTIERREZ', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('3631', 'YEFERSON RIKI RUIZ AGUIRRE', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('3632', 'MAURICIO JAVIER ROJAS ALVAREZ', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('3633', 'MONICA ANDREA ROMERO GIL', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('3634', 'RENE ALBERTO CASTRO SALAZAR', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('3635', 'OSCAR JAVIER FLORES IBAÑEZ', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('3636', 'LUIS FELIPE MUÑOZ MUÑOZ', '2009-12-27', '2', '1');
INSERT INTO `persona` VALUES ('3637', 'TATIANA GUTIERREZ URIARTE', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('3638', 'JUAN CARLOS VARGAS BLANCO', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('3639', 'DIANA STEFANIA DA SILVA PINEDO', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('3640', 'CLAUDIA SOCORRO MORALES SAEZ', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('3641', 'ELKIN CASTILLO ORTIZ DE ZARATE', '2010-08-21', '2', '1');
INSERT INTO `persona` VALUES ('3642', 'LILIANA STEFANNY MARTIN ORTIZ', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('3643', 'CARLOS ESTEBAN MORENO ANGULO', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('3644', 'JUAN MANUEL SILVA UGARTE', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('3645', 'CHRISTIAN MIGUEL ORTIZ DIEZ', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('3646', 'HECTOR GENTIL PEREIRA RAMOS', '2009-12-15', '2', '1');
INSERT INTO `persona` VALUES ('3647', 'NELLY YAZMIN REYES SAENZ', '2010-04-05', '2', '1');
INSERT INTO `persona` VALUES ('3648', 'DAMARIS RAMOS QUINTANA', '2009-08-11', '2', '1');
INSERT INTO `persona` VALUES ('3649', 'AMANDA SUAREZ MARQUINEZ', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('3650', 'ANGIE LORENA MEDINA ROMERO', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('3651', 'JOSE DENIS LIN ORTEGA', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('3652', 'KAROL JOE WANG SANTAMARIA', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('3653', 'CARLOS ALBEIRO HERRERA DOMINGUEZ', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('3654', 'HERNAN ALEXIS CRUZ RUIZ DE AZUA', '2010-05-03', '2', '1');
INSERT INTO `persona` VALUES ('3655', 'JORGE ALIRIO MENDEZ SANZ', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('3656', 'YESNARDA NAIROBI MARIN ARMENTIA', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('3657', 'DIANA CAROLINA FERREIRA OCHOA', '2009-11-21', '2', '1');
INSERT INTO `persona` VALUES ('3658', 'HAROLD ORLANDO MENDOZA DELGADO', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('3659', 'ZULLY JOHANA VASQUEZ RAMIREZ', '2010-07-01', '2', '1');
INSERT INTO `persona` VALUES ('3660', 'JULIAN CAMILO CABRERA SANTOS', '2010-01-24', '2', '1');
INSERT INTO `persona` VALUES ('3661', 'MARIA ZHANG LANDA', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('3662', 'FLOR NUÑEZ ELORZA', '2010-01-27', '2', '1');
INSERT INTO `persona` VALUES ('3663', 'JUAN DOS SANTOS CASTILLO', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('3664', 'ARMANDO PISFIL SANZ', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('3665', 'ENRIQUE PUEMAPE ARMENTIA', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('3666', 'VERONICA FLORES OCHOA', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('3667', 'MARIA VARGAS DELGADO', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('3668', 'FLORES GONZALES RAMIREZ', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('3669', 'TOMASA VERA SANTOS', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('3670', 'CRISTIAN CAMILO MONSALVE LANDA', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('3671', 'MEYLIN VIVIANA PEREZ ELORZA', '2010-02-06', '2', '1');
INSERT INTO `persona` VALUES ('3672', 'YEFERSON RIKI BENAVIDES CASTILLO', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('3673', 'MAURICIO JAVIER PISFIL PUEMAPE', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('3674', 'MONICA ANDREA FLORES VARGAS', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('3675', 'RENE ALBERTO RODRIGUEZ GARCIA', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('3676', 'OSCAR JAVIER GARCIA FERNANDEZ', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('3677', 'LUIS FELIPE GONZALEZ MARTINEZ', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('3678', 'TATIANA LOPEZ GONZALEZ', '2010-08-14', '2', '1');
INSERT INTO `persona` VALUES ('3679', 'JUAN CARLOS PEREZ PEREZ', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('3680', 'DIANA STEFANIA MARTINEZ LOPEZ', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('3681', 'CLAUDIA SOCORRO SANCHEZ RODRIGUEZ', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('3682', 'ELKIN FERNANDEZ SANCHEZ', '2010-01-11', '2', '1');
INSERT INTO `persona` VALUES ('3683', 'LILIANA STEFANNY GOMEZ JIMENEZ', '2009-11-08', '2', '1');
INSERT INTO `persona` VALUES ('3684', 'CARLOS ESTEBAN HERNANDEZ RUIZ', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('3685', 'JUAN MANUEL DIAZ GOMEZ', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('3686', 'CRISTIAN CAMILO RAMIREZ MARTIN', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('3687', 'MEYLIN VIVIANA ALVAREZ ALONSO', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('3688', 'ENRIQUE CHEN DIAZ', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('3689', 'MARY JIMENEZ HERNANDEZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('3690', 'CRISTIAN CAMILO TORRES MORENO', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('3691', 'MEYLIN VIVIANA SINGH GUTIERREZ', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('3692', 'YEFERSON RIKI RUIZ AGUIRRE', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('3693', 'MAURICIO JAVIER ROJAS ALVAREZ', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('3694', 'MONICA ANDREA ROMERO GIL', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('3695', 'RENE ALBERTO CASTRO SALAZAR', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('3696', 'OSCAR JAVIER FLORES IBAÑEZ', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('3697', 'LUIS FELIPE MUÑOZ MUÑOZ', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('3698', 'TATIANA GUTIERREZ URIARTE', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('3699', 'JUAN CARLOS VARGAS BLANCO', '2009-06-25', '2', '1');
INSERT INTO `persona` VALUES ('3700', 'DIANA STEFANIA DA SILVA PINEDO', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('3701', 'CLAUDIA SOCORRO MORALES SAEZ', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('3702', 'ELKIN CASTILLO ORTIZ DE ZARATE', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('3703', 'LILIANA STEFANNY MARTIN ORTIZ', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('3704', 'CARLOS ESTEBAN MORENO ANGULO', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('3705', 'JUAN MANUEL SILVA UGARTE', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('3706', 'CHRISTIAN MIGUEL ORTIZ DIEZ', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('3707', 'HECTOR GENTIL PEREIRA RAMOS', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('3708', 'NELLY YAZMIN REYES SAENZ', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('3709', 'DAMARIS RAMOS QUINTANA', '2010-04-05', '2', '1');
INSERT INTO `persona` VALUES ('3710', 'AMANDA SUAREZ MARQUINEZ', '2009-11-27', '2', '1');
INSERT INTO `persona` VALUES ('3711', 'ANGIE LORENA MEDINA ROMERO', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('3712', 'JOSE DENIS LIN ORTEGA', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('3713', 'KAROL JOE WANG SANTAMARIA', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('3714', 'CARLOS ALBEIRO HERRERA DOMINGUEZ', '2010-05-22', '2', '1');
INSERT INTO `persona` VALUES ('3715', 'HERNAN ALEXIS CRUZ RUIZ DE AZUA', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('3716', 'JORGE ALIRIO MENDEZ SANZ', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('3717', 'YESNARDA NAIROBI MARIN ARMENTIA', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('3718', 'DIANA CAROLINA FERREIRA OCHOA', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('3719', 'HAROLD ORLANDO MENDOZA DELGADO', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('3720', 'ZULLY JOHANA VASQUEZ RAMIREZ', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('3721', 'JULIAN CAMILO CABRERA SANTOS', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('3722', 'MARIA ZHANG LANDA', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('3723', 'FLOR NUÑEZ ELORZA', '2009-12-18', '2', '1');
INSERT INTO `persona` VALUES ('3724', 'JUAN DOS SANTOS CASTILLO', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('3725', 'ARMANDO PISFIL SANZ', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('3726', 'ENRIQUE PUEMAPE ARMENTIA', '2010-06-09', '2', '1');
INSERT INTO `persona` VALUES ('3727', 'VERONICA FLORES OCHOA', '2010-01-30', '2', '1');
INSERT INTO `persona` VALUES ('3728', 'MARIA VARGAS DELGADO', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('3729', 'FLORES GONZALES RAMIREZ', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('3730', 'TOMASA VERA SANTOS', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('3731', 'CRISTIAN CAMILO MONSALVE LANDA', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('3732', 'MEYLIN VIVIANA PEREZ ELORZA', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('3733', 'YEFERSON RIKI BENAVIDES CASTILLO', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('3734', 'MAURICIO JAVIER PISFIL PUEMAPE', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('3735', 'MONICA ANDREA FLORES VARGAS', '2010-09-06', '2', '1');
INSERT INTO `persona` VALUES ('3736', 'RENE ALBERTO RODRIGUEZ GARCIA', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('3737', 'OSCAR JAVIER GARCIA FERNANDEZ', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('3738', 'LUIS FELIPE GONZALEZ MARTINEZ', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('3739', 'TATIANA LOPEZ GONZALEZ', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('3740', 'JUAN CARLOS PISFIL PUEMAPE', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('3741', 'DIANA STEFANIA FLORES VARGAS', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('3742', 'CLAUDIA SOCORRO RODRIGUEZ GARCIA', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('3743', 'ELKIN GARCIA FERNANDEZ', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('3744', 'LILIANA STEFANNY GONZALEZ MARTINEZ', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('3745', 'CARLOS ESTEBAN LOPEZ GONZALEZ', '2010-06-09', '2', '1');
INSERT INTO `persona` VALUES ('3746', 'JUAN MANUEL PEREZ PEREZ', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('3747', 'CRISTIAN CAMILO MARTINEZ LOPEZ', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('3748', 'MEYLIN VIVIANA SANCHEZ RODRIGUEZ', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('3749', 'ENRIQUE FERNANDEZ SANCHEZ', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('3750', 'MARY GOMEZ JIMENEZ', '2010-01-17', '2', '1');
INSERT INTO `persona` VALUES ('3751', 'CRISTIAN CAMILO HERNANDEZ RUIZ', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('3752', 'MEYLIN VIVIANA DIAZ GOMEZ', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('3753', 'YEFERSON RIKI RAMIREZ MARTIN', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('3754', 'MAURICIO JAVIER ALVAREZ ALONSO', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('3755', 'MONICA ANDREA CHEN DIAZ', '2009-11-11', '2', '1');
INSERT INTO `persona` VALUES ('3756', 'RENE ALBERTO JIMENEZ HERNANDEZ', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('3757', 'OSCAR JAVIER TORRES MORENO', '2010-08-16', '2', '1');
INSERT INTO `persona` VALUES ('3758', 'LUIS FELIPE SINGH GUTIERREZ', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('3759', 'TATIANA RUIZ AGUIRRE', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('3760', 'JUAN CARLOS ROJAS ALVAREZ', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('3761', 'DIANA STEFANIA ROMERO GIL', '2010-06-27', '2', '1');
INSERT INTO `persona` VALUES ('3762', 'CLAUDIA SOCORRO CASTRO SALAZAR', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('3763', 'ELKIN FLORES IBAÑEZ', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('3764', 'LILIANA STEFANNY MUÑOZ MUÑOZ', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('3765', 'CARLOS ESTEBAN GUTIERREZ URIARTE', '2009-12-15', '2', '1');
INSERT INTO `persona` VALUES ('3766', 'JUAN MANUEL VARGAS BLANCO', '2010-07-09', '2', '1');
INSERT INTO `persona` VALUES ('3767', 'CHRISTIAN MIGUEL DA SILVA PINEDO', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('3768', 'HECTOR GENTIL MORALES SAEZ', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('3769', 'NELLY YAZMIN CASTILLO ORTIZ DE ZARATE', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('3770', 'DAMARIS MARTIN ORTIZ', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('3771', 'AMANDA MORENO ANGULO', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('3772', 'ANGIE LORENA SILVA UGARTE', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('3773', 'JOSE DENIS ORTIZ DIEZ', '2009-11-24', '2', '1');
INSERT INTO `persona` VALUES ('3774', 'KAROL JOE PEREIRA RAMOS', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('3775', 'CARLOS ALBEIRO REYES SAENZ', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('3776', 'HERNAN ALEXIS RAMOS QUINTANA', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('3777', 'JORGE ALIRIO SUAREZ MARQUINEZ', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('3778', 'YESNARDA NAIROBI MEDINA ROMERO', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('3779', 'DIANA CAROLINA LIN ORTEGA', '2010-05-01', '2', '1');
INSERT INTO `persona` VALUES ('3780', 'HAROLD ORLANDO WANG SANTAMARIA', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('3781', 'ZULLY JOHANA HERRERA DOMINGUEZ', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('3782', 'JULIAN CAMILO CRUZ RUIZ DE AZUA', '2010-05-05', '2', '1');
INSERT INTO `persona` VALUES ('3783', 'MARIA MENDEZ SANZ', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('3784', 'FLOR MARIN ARMENTIA', '2009-09-04', '2', '1');
INSERT INTO `persona` VALUES ('3785', 'JUAN FERREIRA OCHOA', '2010-06-27', '2', '1');
INSERT INTO `persona` VALUES ('3786', 'ARMANDO MENDOZA DELGADO', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('3787', 'ENRIQUE VASQUEZ RAMIREZ', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('3788', 'VERONICA CABRERA SANTOS', '2010-06-30', '2', '1');
INSERT INTO `persona` VALUES ('3789', 'MARIA ZHANG LANDA', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('3790', 'FLORES NUÑEZ ELORZA', '2010-08-08', '2', '1');
INSERT INTO `persona` VALUES ('3791', 'TOMASA DOS SANTOS CASTILLO', '2009-12-28', '2', '1');
INSERT INTO `persona` VALUES ('3792', 'CRISTIAN CAMILO PISFIL SANZ', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('3793', 'MEYLIN VIVIANA PUEMAPE ARMENTIA', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('3794', 'YEFERSON RIKI FLORES OCHOA', '2010-06-14', '2', '1');
INSERT INTO `persona` VALUES ('3795', 'MAURICIO JAVIER VARGAS DELGADO', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('3796', 'MONICA ANDREA GONZALES RAMIREZ', '2009-11-14', '2', '1');
INSERT INTO `persona` VALUES ('3797', 'RENE ALBERTO VERA SANTOS', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('3798', 'OSCAR JAVIER MONSALVE LANDA', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('3799', 'LUIS FELIPE PEREZ ELORZA', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('3800', 'TATIANA BENAVIDES CASTILLO', '2010-08-26', '2', '1');
INSERT INTO `persona` VALUES ('3801', 'JUAN CARLOS PISFIL PUEMAPE', '2009-08-07', '2', '1');
INSERT INTO `persona` VALUES ('3802', 'DIANA STEFANIA FLORES VARGAS', '2009-07-07', '2', '1');
INSERT INTO `persona` VALUES ('3803', 'CLAUDIA SOCORRO RODRIGUEZ GARCIA', '2009-12-18', '2', '1');
INSERT INTO `persona` VALUES ('3804', 'ELKIN GARCIA FERNANDEZ', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('3805', 'LILIANA STEFANNY GONZALEZ MARTINEZ', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('3806', 'CARLOS ESTEBAN LOPEZ GONZALEZ', '2010-05-16', '2', '1');
INSERT INTO `persona` VALUES ('3807', 'JUAN MANUEL PEREZ PEREZ', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('3808', 'CRISTIAN CAMILO MARTINEZ LOPEZ', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('3809', 'MEYLIN VIVIANA SANCHEZ RODRIGUEZ', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('3810', 'ENRIQUE FERNANDEZ SANCHEZ', '2010-02-16', '2', '1');
INSERT INTO `persona` VALUES ('3811', 'MARY GOMEZ JIMENEZ', '2009-12-16', '2', '1');
INSERT INTO `persona` VALUES ('3812', 'CRISTIAN CAMILO HERNANDEZ RUIZ', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('3813', 'MEYLIN VIVIANA DIAZ GOMEZ', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('3814', 'YEFERSON RIKI RAMIREZ MARTIN', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('3815', 'MAURICIO JAVIER ALVAREZ ALONSO', '2010-06-27', '2', '1');
INSERT INTO `persona` VALUES ('3816', 'MONICA ANDREA CHEN DIAZ', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('3817', 'RENE ALBERTO JIMENEZ HERNANDEZ', '2010-05-02', '2', '1');
INSERT INTO `persona` VALUES ('3818', 'OSCAR JAVIER TORRES MORENO', '2009-06-13', '2', '1');
INSERT INTO `persona` VALUES ('3819', 'LUIS FELIPE SINGH GUTIERREZ', '2009-08-11', '2', '1');
INSERT INTO `persona` VALUES ('3820', 'TATIANA RUIZ AGUIRRE', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('3821', 'JUAN CARLOS ROJAS ALVAREZ', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('3822', 'DIANA STEFANIA ROMERO GIL', '2009-10-21', '2', '1');
INSERT INTO `persona` VALUES ('3823', 'CLAUDIA SOCORRO CASTRO SALAZAR', '2010-05-21', '2', '1');
INSERT INTO `persona` VALUES ('3824', 'ELKIN FLORES IBAÑEZ', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('3825', 'LILIANA STEFANNY MUÑOZ MUÑOZ', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('3826', 'CARLOS ESTEBAN GUTIERREZ URIARTE', '2009-10-27', '2', '1');
INSERT INTO `persona` VALUES ('3827', 'JUAN MANUEL VARGAS BLANCO', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('3828', 'CHRISTIAN MIGUEL DA SILVA PINEDO', '2010-07-23', '2', '1');
INSERT INTO `persona` VALUES ('3829', 'HECTOR GENTIL MORALES SAEZ', '2010-01-08', '2', '1');
INSERT INTO `persona` VALUES ('3830', 'NELLY YAZMIN CASTILLO ORTIZ DE ZARATE', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('3831', 'DAMARIS MARTIN ORTIZ', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('3832', 'AMANDA MORENO ANGULO', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('3833', 'ANGIE LORENA SILVA UGARTE', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('3834', 'JOSE DENIS ORTIZ DIEZ', '2010-01-03', '2', '1');
INSERT INTO `persona` VALUES ('3835', 'KAROL JOE PEREIRA RAMOS', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('3836', 'CARLOS ALBEIRO REYES SAENZ', '2010-01-08', '2', '1');
INSERT INTO `persona` VALUES ('3837', 'HERNAN ALEXIS RAMOS QUINTANA', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('3838', 'JORGE ALIRIO SUAREZ MARQUINEZ', '2009-12-31', '2', '1');
INSERT INTO `persona` VALUES ('3839', 'YESNARDA NAIROBI MEDINA ROMERO', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('3840', 'DIANA CAROLINA LIN ORTEGA', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('3841', 'HAROLD ORLANDO WANG SANTAMARIA', '2009-10-21', '2', '1');
INSERT INTO `persona` VALUES ('3842', 'ZULLY JOHANA HERRERA DOMINGUEZ', '2010-05-23', '2', '1');
INSERT INTO `persona` VALUES ('3843', 'JULIAN CAMILO CRUZ RUIZ DE AZUA', '2010-07-06', '2', '1');
INSERT INTO `persona` VALUES ('3844', 'MARIA MENDEZ SANZ', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('3845', 'FLOR MARIN ARMENTIA', '2009-11-17', '2', '1');
INSERT INTO `persona` VALUES ('3846', 'JUAN FERREIRA OCHOA', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('3847', 'ARMANDO MENDOZA DELGADO', '2010-05-01', '2', '1');
INSERT INTO `persona` VALUES ('3848', 'ENRIQUE VASQUEZ RAMIREZ', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('3849', 'VERONICA CABRERA SANTOS', '2010-05-06', '2', '1');
INSERT INTO `persona` VALUES ('3850', 'MARIA ZHANG LANDA', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('3851', 'FLORES NUÑEZ ELORZA', '2009-11-22', '2', '1');
INSERT INTO `persona` VALUES ('3852', 'TOMASA DOS SANTOS CASTILLO', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('3853', 'CRISTIAN CAMILO PISFIL SANZ', '2009-06-18', '2', '1');
INSERT INTO `persona` VALUES ('3854', 'MEYLIN VIVIANA PUEMAPE ARMENTIA', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('3855', 'YEFERSON RIKI FLORES OCHOA', '2010-05-15', '2', '1');
INSERT INTO `persona` VALUES ('3856', 'MAURICIO JAVIER VARGAS DELGADO', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('3857', 'MONICA ANDREA GONZALES RAMIREZ', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('3858', 'RENE ALBERTO VERA SANTOS', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('3859', 'OSCAR JAVIER MONSALVE LANDA', '2009-07-01', '2', '1');
INSERT INTO `persona` VALUES ('3860', 'LUIS FELIPE PEREZ ELORZA', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('3861', 'TATIANA BENAVIDES CASTILLO', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('3862', 'JUAN CARLOS PISFIL PUEMAPE', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('3863', 'DIANA STEFANIA FLORES VARGAS', '2010-07-24', '2', '1');
INSERT INTO `persona` VALUES ('3864', 'CLAUDIA SOCORRO RODRIGUEZ GARCIA', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('3865', 'ELKIN GARCIA FERNANDEZ', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('3866', 'LILIANA STEFANNY GONZALEZ MARTINEZ', '2010-08-31', '2', '1');
INSERT INTO `persona` VALUES ('3867', 'CARLOS ESTEBAN LOPEZ GONZALEZ', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('3868', 'JUAN MANUEL PISFIL PUEMAPE', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('3869', 'CRISTIAN CAMILO FLORES VARGAS', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('3870', 'MEYLIN VIVIANA RODRIGUEZ GARCIA', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('3871', 'ENRIQUE GARCIA FERNANDEZ', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('3872', 'MARY GONZALEZ MARTINEZ', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('3873', 'CRISTIAN CAMILO LOPEZ GONZALEZ', '2010-08-14', '2', '1');
INSERT INTO `persona` VALUES ('3874', 'MEYLIN VIVIANA PEREZ PEREZ', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('3875', 'YEFERSON RIKI MARTINEZ LOPEZ', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('3876', 'MAURICIO JAVIER SANCHEZ RODRIGUEZ', '2010-08-08', '2', '1');
INSERT INTO `persona` VALUES ('3877', 'MONICA ANDREA FERNANDEZ SANCHEZ', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('3878', 'RENE ALBERTO GOMEZ JIMENEZ', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('3879', 'OSCAR JAVIER HERNANDEZ RUIZ', '2009-09-05', '2', '1');
INSERT INTO `persona` VALUES ('3880', 'LUIS FELIPE DIAZ GOMEZ', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('3881', 'TATIANA RAMIREZ MARTIN', '2010-08-21', '2', '1');
INSERT INTO `persona` VALUES ('3882', 'JUAN CARLOS ALVAREZ ALONSO', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('3883', 'DIANA STEFANIA CHEN DIAZ', '2010-08-16', '2', '1');
INSERT INTO `persona` VALUES ('3884', 'CLAUDIA SOCORRO JIMENEZ HERNANDEZ', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('3885', 'ELKIN TORRES MORENO', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('3886', 'LILIANA STEFANNY SINGH GUTIERREZ', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('3887', 'CARLOS ESTEBAN RUIZ AGUIRRE', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('3888', 'JUAN MANUEL ROJAS ALVAREZ', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('3889', 'CHRISTIAN MIGUEL ROMERO GIL', '2009-07-26', '2', '1');
INSERT INTO `persona` VALUES ('3890', 'HECTOR GENTIL CASTRO SALAZAR', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('3891', 'NELLY YAZMIN FLORES IBAÑEZ', '2010-08-31', '2', '1');
INSERT INTO `persona` VALUES ('3892', 'DAMARIS MUÑOZ MUÑOZ', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('3893', 'AMANDA GUTIERREZ URIARTE', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('3894', 'ANGIE LORENA VARGAS BLANCO', '2009-08-04', '2', '1');
INSERT INTO `persona` VALUES ('3895', 'JOSE DENIS DA SILVA PINEDO', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('3896', 'KAROL JOE MORALES SAEZ', '2009-06-16', '2', '1');
INSERT INTO `persona` VALUES ('3897', 'CARLOS ALBEIRO CASTILLO ORTIZ DE ZARATE', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('3898', 'HERNAN ALEXIS MARTIN ORTIZ', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('3899', 'JORGE ALIRIO MORENO ANGULO', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('3900', 'YESNARDA NAIROBI SILVA UGARTE', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('3901', 'DIANA CAROLINA ORTIZ DIEZ', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('3902', 'HAROLD ORLANDO PEREIRA RAMOS', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('3903', 'ZULLY JOHANA REYES SAENZ', '2010-07-28', '2', '1');
INSERT INTO `persona` VALUES ('3904', 'JULIAN CAMILO RAMOS QUINTANA', '2010-08-19', '2', '1');
INSERT INTO `persona` VALUES ('3905', 'MARIA SUAREZ MARQUINEZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('3906', 'FLOR MEDINA ROMERO', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('3907', 'JUAN LIN ORTEGA', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('3908', 'ARMANDO WANG SANTAMARIA', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('3909', 'ENRIQUE HERRERA DOMINGUEZ', '2009-08-23', '2', '1');
INSERT INTO `persona` VALUES ('3910', 'VERONICA CRUZ RUIZ DE AZUA', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('3911', 'MARIA MENDEZ SANZ', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('3912', 'FLORES MARIN ARMENTIA', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('3913', 'TOMASA FERREIRA OCHOA', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('3914', 'CRISTIAN CAMILO MENDOZA DELGADO', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('3915', 'MEYLIN VIVIANA VASQUEZ RAMIREZ', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('3916', 'YEFERSON RIKI CABRERA SANTOS', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('3917', 'MAURICIO JAVIER ZHANG LANDA', '2009-08-25', '2', '1');
INSERT INTO `persona` VALUES ('3918', 'MONICA ANDREA NUÑEZ ELORZA', '2010-08-13', '2', '1');
INSERT INTO `persona` VALUES ('3919', 'RENE ALBERTO DOS SANTOS CASTILLO', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('3920', 'OSCAR JAVIER PISFIL SANZ', '2010-08-23', '2', '1');
INSERT INTO `persona` VALUES ('3921', 'LUIS FELIPE PUEMAPE ARMENTIA', '2009-07-07', '2', '1');
INSERT INTO `persona` VALUES ('3922', 'TATIANA FLORES OCHOA', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('3923', 'JUAN CARLOS VARGAS DELGADO', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('3924', 'DIANA STEFANIA GONZALES RAMIREZ', '2010-03-15', '2', '1');
INSERT INTO `persona` VALUES ('3925', 'CLAUDIA SOCORRO VERA SANTOS', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('3926', 'ELKIN MONSALVE LANDA', '2009-10-12', '2', '1');
INSERT INTO `persona` VALUES ('3927', 'LILIANA STEFANNY PEREZ ELORZA', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('3928', 'CARLOS ESTEBAN BENAVIDES CASTILLO', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('3929', 'JUAN MANUEL PISFIL PUEMAPE', '2009-11-14', '2', '1');
INSERT INTO `persona` VALUES ('3930', 'CRISTIAN CAMILO FLORES VARGAS', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('3931', 'MEYLIN VIVIANA RODRIGUEZ GARCIA', '2010-06-24', '2', '1');
INSERT INTO `persona` VALUES ('3932', 'ENRIQUE GARCIA FERNANDEZ', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('3933', 'MARY GONZALEZ MARTINEZ', '2009-11-17', '2', '1');
INSERT INTO `persona` VALUES ('3934', 'CRISTIAN CAMILO LOPEZ GONZALEZ', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('3935', 'MEYLIN VIVIANA PEREZ PEREZ', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('3936', 'YEFERSON RIKI MARTINEZ LOPEZ', '2010-03-09', '2', '1');
INSERT INTO `persona` VALUES ('3937', 'MAURICIO JAVIER SANCHEZ RODRIGUEZ', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('3938', 'MONICA ANDREA FERNANDEZ SANCHEZ', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('3939', 'RENE ALBERTO GOMEZ JIMENEZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('3940', 'OSCAR JAVIER HERNANDEZ RUIZ', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('3941', 'LUIS FELIPE DIAZ GOMEZ', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('3942', 'TATIANA RAMIREZ MARTIN', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('3943', 'JUAN CARLOS ALVAREZ ALONSO', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('3944', 'DIANA STEFANIA CHEN DIAZ', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('3945', 'CLAUDIA SOCORRO JIMENEZ HERNANDEZ', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('3946', 'ELKIN TORRES MORENO', '2009-11-12', '2', '1');
INSERT INTO `persona` VALUES ('3947', 'LILIANA STEFANNY SINGH GUTIERREZ', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('3948', 'CARLOS ESTEBAN RUIZ AGUIRRE', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('3949', 'JUAN MANUEL ROJAS ALVAREZ', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('3950', 'CHRISTIAN MIGUEL ROMERO GIL', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('3951', 'HECTOR GENTIL CASTRO SALAZAR', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('3952', 'NELLY YAZMIN FLORES IBAÑEZ', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('3953', 'DAMARIS MUÑOZ MUÑOZ', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('3954', 'AMANDA GUTIERREZ URIARTE', '2010-03-09', '2', '1');
INSERT INTO `persona` VALUES ('3955', 'ANGIE LORENA VARGAS BLANCO', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('3956', 'JOSE DENIS DA SILVA PINEDO', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('3957', 'KAROL JOE MORALES SAEZ', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('3958', 'CARLOS ALBEIRO CASTILLO ORTIZ DE ZARATE', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('3959', 'HERNAN ALEXIS MARTIN ORTIZ', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('3960', 'JORGE ALIRIO MORENO ANGULO', '2009-09-26', '2', '1');
INSERT INTO `persona` VALUES ('3961', 'YESNARDA NAIROBI SILVA UGARTE', '2009-06-21', '2', '1');
INSERT INTO `persona` VALUES ('3962', 'DIANA CAROLINA ORTIZ DIEZ', '2009-06-27', '2', '1');
INSERT INTO `persona` VALUES ('3963', 'HAROLD ORLANDO PEREIRA RAMOS', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('3964', 'ZULLY JOHANA REYES SAENZ', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('3965', 'JULIAN CAMILO RAMOS QUINTANA', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('3966', 'MARIA SUAREZ MARQUINEZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('3967', 'FLOR MEDINA ROMERO', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('3968', 'JUAN LIN ORTEGA', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('3969', 'ARMANDO WANG SANTAMARIA', '2009-06-26', '2', '1');
INSERT INTO `persona` VALUES ('3970', 'ENRIQUE HERRERA DOMINGUEZ', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('3971', 'VERONICA CRUZ RUIZ DE AZUA', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('3972', 'MARIA MENDEZ SANZ', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('3973', 'FLORES MARIN ARMENTIA', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('3974', 'TOMASA FERREIRA OCHOA', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('3975', 'CRISTIAN CAMILO MENDOZA DELGADO', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('3976', 'MEYLIN VIVIANA VASQUEZ RAMIREZ', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('3977', 'YEFERSON RIKI CABRERA SANTOS', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('3978', 'MAURICIO JAVIER ZHANG LANDA', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('3979', 'MONICA ANDREA NUÑEZ ELORZA', '2009-10-06', '2', '1');
INSERT INTO `persona` VALUES ('3980', 'RENE ALBERTO DOS SANTOS CASTILLO', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('3981', 'OSCAR JAVIER PISFIL SANZ', '2010-05-15', '2', '1');
INSERT INTO `persona` VALUES ('3982', 'LUIS FELIPE PUEMAPE ARMENTIA', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('3983', 'TATIANA FLORES OCHOA', '2009-11-12', '2', '1');
INSERT INTO `persona` VALUES ('3984', 'JUAN CARLOS VARGAS DELGADO', '2009-07-23', '2', '1');
INSERT INTO `persona` VALUES ('3985', 'DIANA STEFANIA GONZALES RAMIREZ', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('3986', 'CLAUDIA SOCORRO VERA SANTOS', '2009-12-24', '2', '1');
INSERT INTO `persona` VALUES ('3987', 'ELKIN MONSALVE LANDA', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('3988', 'LILIANA STEFANNY PEREZ ELORZA', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('3989', 'CARLOS ESTEBAN BENAVIDES CASTILLO', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('3990', 'JUAN MANUEL PISFIL PUEMAPE', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('3991', 'CRISTIAN CAMILO FLORES VARGAS', '2010-05-10', '2', '1');
INSERT INTO `persona` VALUES ('3992', 'MEYLIN VIVIANA RODRIGUEZ GARCIA', '2009-09-27', '2', '1');
INSERT INTO `persona` VALUES ('3993', 'ENRIQUE GARCIA FERNANDEZ', '2009-08-23', '2', '1');
INSERT INTO `persona` VALUES ('3994', 'MARY GONZALEZ MARTINEZ', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('3995', 'CRISTIAN CAMILO LOPEZ GONZALEZ', '2010-05-08', '2', '1');
INSERT INTO `persona` VALUES ('3996', 'MEYLIN VIVIANA PISFIL PUEMAPE', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('3997', 'YEFERSON RIKI FLORES VARGAS', '2009-08-07', '2', '1');
INSERT INTO `persona` VALUES ('3998', 'MAURICIO JAVIER RODRIGUEZ GARCIA', '2010-02-18', '2', '1');
INSERT INTO `persona` VALUES ('3999', 'MONICA ANDREA GARCIA FERNANDEZ', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('4000', 'RENE ALBERTO GONZALEZ MARTINEZ', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('4001', 'OSCAR JAVIER LOPEZ GONZALEZ', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('4002', 'LUIS FELIPE PEREZ PEREZ', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('4003', 'TATIANA MARTINEZ LOPEZ', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('4004', 'JUAN CARLOS SANCHEZ RODRIGUEZ', '2009-07-20', '2', '1');
INSERT INTO `persona` VALUES ('4005', 'DIANA STEFANIA FERNANDEZ SANCHEZ', '2009-07-26', '2', '1');
INSERT INTO `persona` VALUES ('4006', 'CLAUDIA SOCORRO GOMEZ JIMENEZ', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('4007', 'ELKIN HERNANDEZ RUIZ', '2009-11-23', '2', '1');
INSERT INTO `persona` VALUES ('4008', 'LILIANA STEFANNY DIAZ GOMEZ', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('4009', 'CARLOS ESTEBAN RAMIREZ MARTIN', '2009-08-11', '2', '1');
INSERT INTO `persona` VALUES ('4010', 'JUAN MANUEL ALVAREZ ALONSO', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('4011', 'CHRISTIAN MIGUEL CHEN DIAZ', '2010-04-25', '2', '1');
INSERT INTO `persona` VALUES ('4012', 'HECTOR GENTIL JIMENEZ HERNANDEZ', '2010-01-21', '2', '1');
INSERT INTO `persona` VALUES ('4013', 'NELLY YAZMIN TORRES MORENO', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('4014', 'DAMARIS SINGH GUTIERREZ', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('4015', 'AMANDA RUIZ AGUIRRE', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('4016', 'ANGIE LORENA ROJAS ALVAREZ', '2009-08-14', '2', '1');
INSERT INTO `persona` VALUES ('4017', 'JOSE DENIS ROMERO GIL', '2010-01-21', '2', '1');
INSERT INTO `persona` VALUES ('4018', 'KAROL JOE CASTRO SALAZAR', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('4019', 'CARLOS ALBEIRO FLORES IBAÑEZ', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('4020', 'HERNAN ALEXIS MUÑOZ MUÑOZ', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('4021', 'JORGE ALIRIO GUTIERREZ URIARTE', '2010-07-28', '2', '1');
INSERT INTO `persona` VALUES ('4022', 'YESNARDA NAIROBI VARGAS BLANCO', '2009-07-03', '2', '1');
INSERT INTO `persona` VALUES ('4023', 'DIANA CAROLINA DA SILVA PINEDO', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('4024', 'HAROLD ORLANDO MORALES SAEZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('4025', 'ZULLY JOHANA CASTILLO ORTIZ DE ZARATE', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('4026', 'JULIAN CAMILO MARTIN ORTIZ', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('4027', 'MARIA MORENO ANGULO', '2010-03-11', '2', '1');
INSERT INTO `persona` VALUES ('4028', 'FLOR SILVA UGARTE', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('4029', 'JUAN ORTIZ DIEZ', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('4030', 'ARMANDO PEREIRA RAMOS', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('4031', 'ENRIQUE REYES SAENZ', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('4032', 'VERONICA RAMOS QUINTANA', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('4033', 'MARIA SUAREZ MARQUINEZ', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('4034', 'FLORES MEDINA ROMERO', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('4035', 'TOMASA LIN ORTEGA', '2009-07-07', '2', '1');
INSERT INTO `persona` VALUES ('4036', 'CRISTIAN CAMILO WANG SANTAMARIA', '2009-09-14', '2', '1');
INSERT INTO `persona` VALUES ('4037', 'MEYLIN VIVIANA HERRERA DOMINGUEZ', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('4038', 'YEFERSON RIKI CRUZ RUIZ DE AZUA', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('4039', 'MAURICIO JAVIER MENDEZ SANZ', '2009-10-29', '2', '1');
INSERT INTO `persona` VALUES ('4040', 'MONICA ANDREA MARIN ARMENTIA', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('4041', 'RENE ALBERTO FERREIRA OCHOA', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('4042', 'OSCAR JAVIER MENDOZA DELGADO', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('4043', 'LUIS FELIPE VASQUEZ RAMIREZ', '2010-03-15', '2', '1');
INSERT INTO `persona` VALUES ('4044', 'TATIANA CABRERA SANTOS', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('4045', 'JUAN CARLOS ZHANG LANDA', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('4046', 'DIANA STEFANIA NUÑEZ ELORZA', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('4047', 'CLAUDIA SOCORRO DOS SANTOS CASTILLO', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('4048', 'ELKIN PISFIL SANZ', '2009-06-18', '2', '1');
INSERT INTO `persona` VALUES ('4049', 'LILIANA STEFANNY PUEMAPE ARMENTIA', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('4050', 'CARLOS ESTEBAN FLORES OCHOA', '2010-08-19', '2', '1');
INSERT INTO `persona` VALUES ('4051', 'JUAN MANUEL VARGAS DELGADO', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('4052', 'CRISTIAN CAMILO GONZALES RAMIREZ', '2009-10-03', '2', '1');
INSERT INTO `persona` VALUES ('4053', 'MEYLIN VIVIANA VERA SANTOS', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('4054', 'ENRIQUE MONSALVE LANDA', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('4055', 'MARY PEREZ ELORZA', '2009-10-10', '2', '1');
INSERT INTO `persona` VALUES ('4056', 'CRISTIAN CAMILO BENAVIDES CASTILLO', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('4057', 'MEYLIN VIVIANA PISFIL PUEMAPE', '2009-06-23', '2', '1');
INSERT INTO `persona` VALUES ('4058', 'YEFERSON RIKI FLORES VARGAS', '2009-08-14', '2', '1');
INSERT INTO `persona` VALUES ('4059', 'MAURICIO JAVIER RODRIGUEZ GARCIA', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('4060', 'MONICA ANDREA GARCIA FERNANDEZ', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('4061', 'RENE ALBERTO GONZALEZ MARTINEZ', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('4062', 'OSCAR JAVIER LOPEZ GONZALEZ', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('4063', 'LUIS FELIPE PEREZ PEREZ', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('4064', 'TATIANA MARTINEZ LOPEZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('4065', 'JUAN CARLOS SANCHEZ RODRIGUEZ', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('4066', 'DIANA STEFANIA FERNANDEZ SANCHEZ', '2010-07-24', '2', '1');
INSERT INTO `persona` VALUES ('4067', 'CLAUDIA SOCORRO GOMEZ JIMENEZ', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('4068', 'ELKIN HERNANDEZ RUIZ', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('4069', 'LILIANA STEFANNY DIAZ GOMEZ', '2010-01-16', '2', '1');
INSERT INTO `persona` VALUES ('4070', 'CARLOS ESTEBAN RAMIREZ MARTIN', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('4071', 'JUAN MANUEL ALVAREZ ALONSO', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('4072', 'CHRISTIAN MIGUEL CHEN DIAZ', '2009-10-19', '2', '1');
INSERT INTO `persona` VALUES ('4073', 'HECTOR GENTIL JIMENEZ HERNANDEZ', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('4074', 'NELLY YAZMIN TORRES MORENO', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('4075', 'DAMARIS SINGH GUTIERREZ', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('4076', 'AMANDA RUIZ AGUIRRE', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('4077', 'ANGIE LORENA ROJAS ALVAREZ', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('4078', 'JOSE DENIS ROMERO GIL', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('4079', 'KAROL JOE CASTRO SALAZAR', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('4080', 'CARLOS ALBEIRO FLORES IBAÑEZ', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('4081', 'HERNAN ALEXIS MUÑOZ MUÑOZ', '2010-02-16', '2', '1');
INSERT INTO `persona` VALUES ('4082', 'JORGE ALIRIO GUTIERREZ URIARTE', '2009-07-23', '2', '1');
INSERT INTO `persona` VALUES ('4083', 'YESNARDA NAIROBI VARGAS BLANCO', '2010-05-01', '2', '1');
INSERT INTO `persona` VALUES ('4084', 'DIANA CAROLINA DA SILVA PINEDO', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('4085', 'HAROLD ORLANDO MORALES SAEZ', '2009-07-07', '2', '1');
INSERT INTO `persona` VALUES ('4086', 'ZULLY JOHANA CASTILLO ORTIZ DE ZARATE', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('4087', 'JULIAN CAMILO MARTIN ORTIZ', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('4088', 'MARIA MORENO ANGULO', '2010-07-23', '2', '1');
INSERT INTO `persona` VALUES ('4089', 'FLOR SILVA UGARTE', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('4090', 'JUAN ORTIZ DIEZ', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('4091', 'ARMANDO PEREIRA RAMOS', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('4092', 'ENRIQUE REYES SAENZ', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('4093', 'VERONICA RAMOS QUINTANA', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('4094', 'MARIA SUAREZ MARQUINEZ', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('4095', 'FLORES MEDINA ROMERO', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('4096', 'TOMASA LIN ORTEGA', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('4097', 'CRISTIAN CAMILO WANG SANTAMARIA', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('4098', 'MEYLIN VIVIANA HERRERA DOMINGUEZ', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('4099', 'YEFERSON RIKI CRUZ RUIZ DE AZUA', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('4100', 'MAURICIO JAVIER MENDEZ SANZ', '2009-11-14', '2', '1');
INSERT INTO `persona` VALUES ('4101', 'MONICA ANDREA MARIN ARMENTIA', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('4102', 'RENE ALBERTO FERREIRA OCHOA', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('4103', 'OSCAR JAVIER MENDOZA DELGADO', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('4104', 'LUIS FELIPE VASQUEZ RAMIREZ', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('4105', 'TATIANA CABRERA SANTOS', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('4106', 'JUAN CARLOS ZHANG LANDA', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('4107', 'DIANA STEFANIA NUÑEZ ELORZA', '2009-12-28', '2', '1');
INSERT INTO `persona` VALUES ('4108', 'CLAUDIA SOCORRO DOS SANTOS CASTILLO', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('4109', 'ELKIN PISFIL SANZ', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('4110', 'LILIANA STEFANNY PUEMAPE ARMENTIA', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('4111', 'CARLOS ESTEBAN FLORES OCHOA', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('4112', 'JUAN MANUEL VARGAS DELGADO', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('4113', 'CRISTIAN CAMILO GONZALES RAMIREZ', '2010-07-24', '2', '1');
INSERT INTO `persona` VALUES ('4114', 'MEYLIN VIVIANA VERA SANTOS', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('4115', 'ENRIQUE MONSALVE LANDA', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('4116', 'MARY PEREZ ELORZA', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('4117', 'CRISTIAN CAMILO BENAVIDES CASTILLO', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('4118', 'MEYLIN VIVIANA PISFIL PUEMAPE', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('4119', 'YEFERSON RIKI FLORES VARGAS', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('4120', 'MAURICIO JAVIER RODRIGUEZ GARCIA', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('4121', 'MONICA ANDREA GARCIA FERNANDEZ', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('4122', 'RENE ALBERTO GONZALEZ MARTINEZ', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('4123', 'OSCAR JAVIER LOPEZ GONZALEZ', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('4124', 'LUIS FELIPE PISFIL PUEMAPE', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('4125', 'TATIANA FLORES VARGAS', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('4126', 'JUAN CARLOS RODRIGUEZ GARCIA', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('4127', 'DIANA STEFANIA GARCIA FERNANDEZ', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('4128', 'CLAUDIA SOCORRO GONZALEZ MARTINEZ', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('4129', 'ELKIN LOPEZ GONZALEZ', '2009-10-02', '2', '1');
INSERT INTO `persona` VALUES ('4130', 'LILIANA STEFANNY PEREZ PEREZ', '2010-06-14', '2', '1');
INSERT INTO `persona` VALUES ('4131', 'CARLOS ESTEBAN MARTINEZ LOPEZ', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('4132', 'JUAN MANUEL SANCHEZ RODRIGUEZ', '2009-11-23', '2', '1');
INSERT INTO `persona` VALUES ('4133', 'CHRISTIAN MIGUEL FERNANDEZ SANCHEZ', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('4134', 'HECTOR GENTIL GOMEZ JIMENEZ', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('4135', 'NELLY YAZMIN HERNANDEZ RUIZ', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('4136', 'DAMARIS DIAZ GOMEZ', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('4137', 'AMANDA RAMIREZ MARTIN', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('4138', 'ANGIE LORENA ALVAREZ ALONSO', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('4139', 'JOSE DENIS CHEN DIAZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('4140', 'KAROL JOE JIMENEZ HERNANDEZ', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('4141', 'CARLOS ALBEIRO TORRES MORENO', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('4142', 'HERNAN ALEXIS SINGH GUTIERREZ', '2009-08-04', '2', '1');
INSERT INTO `persona` VALUES ('4143', 'JORGE ALIRIO RUIZ AGUIRRE', '2009-11-04', '2', '1');
INSERT INTO `persona` VALUES ('4144', 'YESNARDA NAIROBI ROJAS ALVAREZ', '2009-10-26', '2', '1');
INSERT INTO `persona` VALUES ('4145', 'DIANA CAROLINA ROMERO GIL', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('4146', 'HAROLD ORLANDO CASTRO SALAZAR', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('4147', 'ZULLY JOHANA FLORES IBAÑEZ', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('4148', 'JULIAN CAMILO MUÑOZ MUÑOZ', '2010-07-01', '2', '1');
INSERT INTO `persona` VALUES ('4149', 'MARIA GUTIERREZ URIARTE', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('4150', 'FLOR VARGAS BLANCO', '2010-01-23', '2', '1');
INSERT INTO `persona` VALUES ('4151', 'JUAN DA SILVA PINEDO', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('4152', 'ARMANDO MORALES SAEZ', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('4153', 'ENRIQUE CASTILLO ORTIZ DE ZARATE', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('4154', 'VERONICA MARTIN ORTIZ', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('4155', 'MARIA MORENO ANGULO', '2010-05-08', '2', '1');
INSERT INTO `persona` VALUES ('4156', 'FLORES SILVA UGARTE', '2009-12-27', '2', '1');
INSERT INTO `persona` VALUES ('4157', 'TOMASA ORTIZ DIEZ', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('4158', 'CRISTIAN CAMILO PEREIRA RAMOS', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('4159', 'MEYLIN VIVIANA REYES SAENZ', '2009-08-08', '2', '1');
INSERT INTO `persona` VALUES ('4160', 'YEFERSON RIKI RAMOS QUINTANA', '2010-01-11', '2', '1');
INSERT INTO `persona` VALUES ('4161', 'MAURICIO JAVIER SUAREZ MARQUINEZ', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('4162', 'MONICA ANDREA MEDINA ROMERO', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('4163', 'RENE ALBERTO LIN ORTEGA', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('4164', 'OSCAR JAVIER WANG SANTAMARIA', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('4165', 'LUIS FELIPE HERRERA DOMINGUEZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('4166', 'TATIANA CRUZ RUIZ DE AZUA', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('4167', 'JUAN CARLOS MENDEZ SANZ', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('4168', 'DIANA STEFANIA MARIN ARMENTIA', '2010-06-16', '2', '1');
INSERT INTO `persona` VALUES ('4169', 'CLAUDIA SOCORRO FERREIRA OCHOA', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('4170', 'ELKIN MENDOZA DELGADO', '2010-06-02', '2', '1');
INSERT INTO `persona` VALUES ('4171', 'LILIANA STEFANNY VASQUEZ RAMIREZ', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('4172', 'CARLOS ESTEBAN CABRERA SANTOS', '2009-07-21', '2', '1');
INSERT INTO `persona` VALUES ('4173', 'JUAN MANUEL ZHANG LANDA', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('4174', 'CRISTIAN CAMILO NUÑEZ ELORZA', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('4175', 'MEYLIN VIVIANA DOS SANTOS CASTILLO', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4176', 'ENRIQUE PISFIL SANZ', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('4177', 'MARY PUEMAPE ARMENTIA', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('4178', 'CRISTIAN CAMILO FLORES OCHOA', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('4179', 'MEYLIN VIVIANA VARGAS DELGADO', '2010-03-28', '2', '1');
INSERT INTO `persona` VALUES ('4180', 'YEFERSON RIKI GONZALES RAMIREZ', '2009-10-26', '2', '1');
INSERT INTO `persona` VALUES ('4181', 'MAURICIO JAVIER VERA SANTOS', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4182', 'MONICA ANDREA MONSALVE LANDA', '2009-11-11', '2', '1');
INSERT INTO `persona` VALUES ('4183', 'RENE ALBERTO PEREZ ELORZA', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('4184', 'OSCAR JAVIER BENAVIDES CASTILLO', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('4185', 'LUIS FELIPE PISFIL PUEMAPE', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('4186', 'TATIANA FLORES VARGAS', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('4187', 'JUAN CARLOS RODRIGUEZ GARCIA', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('4188', 'DIANA STEFANIA GARCIA FERNANDEZ', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('4189', 'CLAUDIA SOCORRO GONZALEZ MARTINEZ', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('4190', 'ELKIN LOPEZ GONZALEZ', '2010-05-22', '2', '1');
INSERT INTO `persona` VALUES ('4191', 'LILIANA STEFANNY PEREZ PEREZ', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('4192', 'CARLOS ESTEBAN MARTINEZ LOPEZ', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('4193', 'JUAN MANUEL SANCHEZ RODRIGUEZ', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('4194', 'CHRISTIAN MIGUEL FERNANDEZ SANCHEZ', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('4195', 'HECTOR GENTIL GOMEZ JIMENEZ', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('4196', 'NELLY YAZMIN HERNANDEZ RUIZ', '2009-10-02', '2', '1');
INSERT INTO `persona` VALUES ('4197', 'DAMARIS DIAZ GOMEZ', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('4198', 'AMANDA RAMIREZ MARTIN', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('4199', 'ANGIE LORENA ALVAREZ ALONSO', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('4200', 'JOSE DENIS CHEN DIAZ', '2009-10-03', '2', '1');
INSERT INTO `persona` VALUES ('4201', 'KAROL JOE JIMENEZ HERNANDEZ', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('4202', 'CARLOS ALBEIRO TORRES MORENO', '2010-01-24', '2', '1');
INSERT INTO `persona` VALUES ('4203', 'HERNAN ALEXIS SINGH GUTIERREZ', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('4204', 'JORGE ALIRIO RUIZ AGUIRRE', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('4205', 'YESNARDA NAIROBI ROJAS ALVAREZ', '2009-09-04', '2', '1');
INSERT INTO `persona` VALUES ('4206', 'DIANA CAROLINA ROMERO GIL', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('4207', 'HAROLD ORLANDO CASTRO SALAZAR', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('4208', 'ZULLY JOHANA FLORES IBAÑEZ', '2010-07-24', '2', '1');
INSERT INTO `persona` VALUES ('4209', 'JULIAN CAMILO MUÑOZ MUÑOZ', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('4210', 'MARIA GUTIERREZ URIARTE', '2010-04-05', '2', '1');
INSERT INTO `persona` VALUES ('4211', 'FLOR VARGAS BLANCO', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('4212', 'JUAN DA SILVA PINEDO', '2009-07-01', '2', '1');
INSERT INTO `persona` VALUES ('4213', 'ARMANDO MORALES SAEZ', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('4214', 'ENRIQUE CASTILLO ORTIZ DE ZARATE', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('4215', 'VERONICA MARTIN ORTIZ', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('4216', 'MARIA MORENO ANGULO', '2009-09-05', '2', '1');
INSERT INTO `persona` VALUES ('4217', 'FLORES SILVA UGARTE', '2009-11-17', '2', '1');
INSERT INTO `persona` VALUES ('4218', 'TOMASA ORTIZ DIEZ', '2010-01-28', '2', '1');
INSERT INTO `persona` VALUES ('4219', 'CRISTIAN CAMILO PEREIRA RAMOS', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('4220', 'MEYLIN VIVIANA REYES SAENZ', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('4221', 'YEFERSON RIKI RAMOS QUINTANA', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('4222', 'MAURICIO JAVIER SUAREZ MARQUINEZ', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('4223', 'MONICA ANDREA MEDINA ROMERO', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('4224', 'RENE ALBERTO LIN ORTEGA', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('4225', 'OSCAR JAVIER WANG SANTAMARIA', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('4226', 'LUIS FELIPE HERRERA DOMINGUEZ', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('4227', 'TATIANA CRUZ RUIZ DE AZUA', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('4228', 'JUAN CARLOS MENDEZ SANZ', '2009-08-23', '2', '1');
INSERT INTO `persona` VALUES ('4229', 'DIANA STEFANIA MARIN ARMENTIA', '2010-06-16', '2', '1');
INSERT INTO `persona` VALUES ('4230', 'CLAUDIA SOCORRO FERREIRA OCHOA', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('4231', 'ELKIN MENDOZA DELGADO', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('4232', 'LILIANA STEFANNY VASQUEZ RAMIREZ', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('4233', 'CARLOS ESTEBAN CABRERA SANTOS', '2010-08-19', '2', '1');
INSERT INTO `persona` VALUES ('4234', 'JUAN MANUEL ZHANG LANDA', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('4235', 'CRISTIAN CAMILO NUÑEZ ELORZA', '2010-01-03', '2', '1');
INSERT INTO `persona` VALUES ('4236', 'MEYLIN VIVIANA DOS SANTOS CASTILLO', '2009-10-19', '2', '1');
INSERT INTO `persona` VALUES ('4237', 'ENRIQUE PISFIL SANZ', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('4238', 'MARY PUEMAPE ARMENTIA', '2010-05-28', '2', '1');
INSERT INTO `persona` VALUES ('4239', 'CRISTIAN CAMILO FLORES OCHOA', '2010-01-11', '2', '1');
INSERT INTO `persona` VALUES ('4240', 'MEYLIN VIVIANA VARGAS DELGADO', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('4241', 'YEFERSON RIKI GONZALES RAMIREZ', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('4242', 'MAURICIO JAVIER VERA SANTOS', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('4243', 'MONICA ANDREA MONSALVE LANDA', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('4244', 'RENE ALBERTO PEREZ ELORZA', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('4245', 'OSCAR JAVIER BENAVIDES CASTILLO', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('4246', 'LUIS FELIPE PISFIL PUEMAPE', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('4247', 'TATIANA FLORES VARGAS', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('4248', 'JUAN CARLOS RODRIGUEZ GARCIA', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('4249', 'DIANA STEFANIA GARCIA FERNANDEZ', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('4250', 'CLAUDIA SOCORRO GONZALEZ MARTINEZ', '2009-12-28', '2', '1');
INSERT INTO `persona` VALUES ('4251', 'ELKIN LOPEZ GONZALEZ', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('4252', 'LILIANA STEFANNY PISFIL PUEMAPE', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('4253', 'CARLOS ESTEBAN FLORES VARGAS', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('4254', 'JUAN MANUEL RODRIGUEZ GARCIA', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('4255', 'CHRISTIAN MIGUEL GARCIA FERNANDEZ', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('4256', 'HECTOR GENTIL GONZALEZ MARTINEZ', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('4257', 'NELLY YAZMIN LOPEZ GONZALEZ', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('4258', 'DAMARIS PEREZ PEREZ', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('4259', 'AMANDA MARTINEZ LOPEZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('4260', 'ANGIE LORENA SANCHEZ RODRIGUEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('4261', 'JOSE DENIS FERNANDEZ SANCHEZ', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('4262', 'KAROL JOE GOMEZ JIMENEZ', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('4263', 'CARLOS ALBEIRO HERNANDEZ RUIZ', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('4264', 'HERNAN ALEXIS DIAZ GOMEZ', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('4265', 'JORGE ALIRIO RAMIREZ MARTIN', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('4266', 'YESNARDA NAIROBI ALVAREZ ALONSO', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('4267', 'DIANA CAROLINA CHEN DIAZ', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('4268', 'HAROLD ORLANDO JIMENEZ HERNANDEZ', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('4269', 'ZULLY JOHANA TORRES MORENO', '2009-09-14', '2', '1');
INSERT INTO `persona` VALUES ('4270', 'JULIAN CAMILO SINGH GUTIERREZ', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('4271', 'MARIA RUIZ AGUIRRE', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('4272', 'FLOR ROJAS ALVAREZ', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('4273', 'JUAN ROMERO GIL', '2010-05-28', '2', '1');
INSERT INTO `persona` VALUES ('4274', 'ARMANDO CASTRO SALAZAR', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('4275', 'ENRIQUE FLORES IBAÑEZ', '2009-12-13', '2', '1');
INSERT INTO `persona` VALUES ('4276', 'VERONICA MUÑOZ MUÑOZ', '2010-08-15', '2', '1');
INSERT INTO `persona` VALUES ('4277', 'MARIA GUTIERREZ URIARTE', '2010-08-01', '2', '1');
INSERT INTO `persona` VALUES ('4278', 'FLORES VARGAS BLANCO', '2010-08-29', '2', '1');
INSERT INTO `persona` VALUES ('4279', 'TOMASA DA SILVA PINEDO', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('4280', 'CRISTIAN CAMILO MORALES SAEZ', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('4281', 'MEYLIN VIVIANA CASTILLO ORTIZ DE ZARATE', '2010-08-23', '2', '1');
INSERT INTO `persona` VALUES ('4282', 'YEFERSON RIKI MARTIN ORTIZ', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('4283', 'MAURICIO JAVIER MORENO ANGULO', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('4284', 'MONICA ANDREA SILVA UGARTE', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('4285', 'RENE ALBERTO ORTIZ DIEZ', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('4286', 'OSCAR JAVIER PEREIRA RAMOS', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('4287', 'LUIS FELIPE REYES SAENZ', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('4288', 'TATIANA RAMOS QUINTANA', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('4289', 'JUAN CARLOS SUAREZ MARQUINEZ', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('4290', 'DIANA STEFANIA MEDINA ROMERO', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('4291', 'CLAUDIA SOCORRO LIN ORTEGA', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('4292', 'ELKIN WANG SANTAMARIA', '2010-03-15', '2', '1');
INSERT INTO `persona` VALUES ('4293', 'LILIANA STEFANNY HERRERA DOMINGUEZ', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('4294', 'CARLOS ESTEBAN CRUZ RUIZ DE AZUA', '2010-01-17', '2', '1');
INSERT INTO `persona` VALUES ('4295', 'JUAN MANUEL MENDEZ SANZ', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('4296', 'CRISTIAN CAMILO MARIN ARMENTIA', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('4297', 'MEYLIN VIVIANA FERREIRA OCHOA', '2009-11-19', '2', '1');
INSERT INTO `persona` VALUES ('4298', 'ENRIQUE MENDOZA DELGADO', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('4299', 'MARY VASQUEZ RAMIREZ', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('4300', 'CRISTIAN CAMILO CABRERA SANTOS', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('4301', 'MEYLIN VIVIANA ZHANG LANDA', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('4302', 'YEFERSON RIKI NUÑEZ ELORZA', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('4303', 'MAURICIO JAVIER DOS SANTOS CASTILLO', '2009-11-15', '2', '1');
INSERT INTO `persona` VALUES ('4304', 'MONICA ANDREA PISFIL SANZ', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('4305', 'RENE ALBERTO PUEMAPE ARMENTIA', '2010-08-21', '2', '1');
INSERT INTO `persona` VALUES ('4306', 'OSCAR JAVIER FLORES OCHOA', '2010-08-05', '2', '1');
INSERT INTO `persona` VALUES ('4307', 'LUIS FELIPE VARGAS DELGADO', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('4308', 'TATIANA GONZALES RAMIREZ', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('4309', 'JUAN CARLOS VERA SANTOS', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('4310', 'DIANA STEFANIA MONSALVE LANDA', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('4311', 'CLAUDIA SOCORRO PEREZ ELORZA', '2010-07-21', '2', '1');
INSERT INTO `persona` VALUES ('4312', 'ELKIN BENAVIDES CASTILLO', '2010-04-03', '2', '1');
INSERT INTO `persona` VALUES ('4313', 'LILIANA STEFANNY PISFIL PUEMAPE', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('4314', 'CARLOS ESTEBAN FLORES VARGAS', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('4315', 'JUAN MANUEL RODRIGUEZ GARCIA', '2010-01-10', '2', '1');
INSERT INTO `persona` VALUES ('4316', 'CHRISTIAN MIGUEL GARCIA FERNANDEZ', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('4317', 'HECTOR GENTIL GONZALEZ MARTINEZ', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('4318', 'NELLY YAZMIN LOPEZ GONZALEZ', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('4319', 'DAMARIS PEREZ PEREZ', '2010-08-09', '2', '1');
INSERT INTO `persona` VALUES ('4320', 'AMANDA MARTINEZ LOPEZ', '2010-05-16', '2', '1');
INSERT INTO `persona` VALUES ('4321', 'ANGIE LORENA SANCHEZ RODRIGUEZ', '2010-08-26', '2', '1');
INSERT INTO `persona` VALUES ('4322', 'JOSE DENIS FERNANDEZ SANCHEZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('4323', 'KAROL JOE GOMEZ JIMENEZ', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('4324', 'CARLOS ALBEIRO HERNANDEZ RUIZ', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('4325', 'HERNAN ALEXIS DIAZ GOMEZ', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('4326', 'JORGE ALIRIO RAMIREZ MARTIN', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('4327', 'YESNARDA NAIROBI ALVAREZ ALONSO', '2010-07-09', '2', '1');
INSERT INTO `persona` VALUES ('4328', 'DIANA CAROLINA CHEN DIAZ', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('4329', 'HAROLD ORLANDO JIMENEZ HERNANDEZ', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4330', 'ZULLY JOHANA TORRES MORENO', '2010-09-06', '2', '1');
INSERT INTO `persona` VALUES ('4331', 'JULIAN CAMILO SINGH GUTIERREZ', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('4332', 'MARIA RUIZ AGUIRRE', '2010-04-28', '2', '1');
INSERT INTO `persona` VALUES ('4333', 'FLOR ROJAS ALVAREZ', '2009-10-18', '2', '1');
INSERT INTO `persona` VALUES ('4334', 'JUAN ROMERO GIL', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('4335', 'ARMANDO CASTRO SALAZAR', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('4336', 'ENRIQUE FLORES IBAÑEZ', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('4337', 'VERONICA MUÑOZ MUÑOZ', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('4338', 'MARIA GUTIERREZ URIARTE', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('4339', 'FLORES VARGAS BLANCO', '2010-04-26', '2', '1');
INSERT INTO `persona` VALUES ('4340', 'TOMASA DA SILVA PINEDO', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('4341', 'CRISTIAN CAMILO MORALES SAEZ', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('4342', 'MEYLIN VIVIANA CASTILLO ORTIZ DE ZARATE', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('4343', 'YEFERSON RIKI MARTIN ORTIZ', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('4344', 'MAURICIO JAVIER MORENO ANGULO', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('4345', 'MONICA ANDREA SILVA UGARTE', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('4346', 'RENE ALBERTO ORTIZ DIEZ', '2009-07-07', '2', '1');
INSERT INTO `persona` VALUES ('4347', 'OSCAR JAVIER PEREIRA RAMOS', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('4348', 'LUIS FELIPE REYES SAENZ', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('4349', 'TATIANA RAMOS QUINTANA', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('4350', 'JUAN CARLOS SUAREZ MARQUINEZ', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('4351', 'DIANA STEFANIA MEDINA ROMERO', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('4352', 'CLAUDIA SOCORRO LIN ORTEGA', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('4353', 'ELKIN WANG SANTAMARIA', '2009-12-22', '2', '1');
INSERT INTO `persona` VALUES ('4354', 'LILIANA STEFANNY HERRERA DOMINGUEZ', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('4355', 'CARLOS ESTEBAN CRUZ RUIZ DE AZUA', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('4356', 'JUAN MANUEL MENDEZ SANZ', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('4357', 'CRISTIAN CAMILO MARIN ARMENTIA', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('4358', 'MEYLIN VIVIANA FERREIRA OCHOA', '2010-08-26', '2', '1');
INSERT INTO `persona` VALUES ('4359', 'ENRIQUE MENDOZA DELGADO', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('4360', 'MARY VASQUEZ RAMIREZ', '2010-04-07', '2', '1');
INSERT INTO `persona` VALUES ('4361', 'CRISTIAN CAMILO CABRERA SANTOS', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('4362', 'MEYLIN VIVIANA ZHANG LANDA', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('4363', 'YEFERSON RIKI NUÑEZ ELORZA', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('4364', 'MAURICIO JAVIER DOS SANTOS CASTILLO', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('4365', 'MONICA ANDREA PISFIL SANZ', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('4366', 'RENE ALBERTO PUEMAPE ARMENTIA', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('4367', 'OSCAR JAVIER FLORES OCHOA', '2009-12-06', '2', '1');
INSERT INTO `persona` VALUES ('4368', 'LUIS FELIPE VARGAS DELGADO', '2010-05-03', '2', '1');
INSERT INTO `persona` VALUES ('4369', 'TATIANA GONZALES RAMIREZ', '2010-03-23', '2', '1');
INSERT INTO `persona` VALUES ('4370', 'JUAN CARLOS VERA SANTOS', '2010-05-11', '2', '1');
INSERT INTO `persona` VALUES ('4371', 'DIANA STEFANIA MONSALVE LANDA', '2010-01-09', '2', '1');
INSERT INTO `persona` VALUES ('4372', 'CLAUDIA SOCORRO PEREZ ELORZA', '2010-08-26', '2', '1');
INSERT INTO `persona` VALUES ('4373', 'ELKIN BENAVIDES CASTILLO', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('4374', 'LILIANA STEFANNY PISFIL PUEMAPE', '2010-07-17', '2', '1');
INSERT INTO `persona` VALUES ('4375', 'CARLOS ESTEBAN FLORES VARGAS', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('4376', 'JUAN MANUEL RODRIGUEZ GARCIA', '2009-06-28', '2', '1');
INSERT INTO `persona` VALUES ('4377', 'CHRISTIAN MIGUEL GARCIA FERNANDEZ', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('4378', 'HECTOR GENTIL GONZALEZ MARTINEZ', '2009-08-20', '2', '1');
INSERT INTO `persona` VALUES ('4379', 'NELLY YAZMIN LOPEZ GONZALEZ', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4380', 'DAMARIS PISFIL PUEMAPE', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('4381', 'AMANDA FLORES VARGAS', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('4382', 'ANGIE LORENA RODRIGUEZ GARCIA', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('4383', 'JOSE DENIS GARCIA FERNANDEZ', '2010-06-14', '2', '1');
INSERT INTO `persona` VALUES ('4384', 'KAROL JOE GONZALEZ MARTINEZ', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('4385', 'CARLOS ALBEIRO LOPEZ GONZALEZ', '2010-08-13', '2', '1');
INSERT INTO `persona` VALUES ('4386', 'HERNAN ALEXIS PEREZ PEREZ', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('4387', 'JORGE ALIRIO MARTINEZ LOPEZ', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('4388', 'YESNARDA NAIROBI SANCHEZ RODRIGUEZ', '2010-07-24', '2', '1');
INSERT INTO `persona` VALUES ('4389', 'DIANA CAROLINA FERNANDEZ SANCHEZ', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('4390', 'HAROLD ORLANDO GOMEZ JIMENEZ', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('4391', 'ZULLY JOHANA HERNANDEZ RUIZ', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('4392', 'JULIAN CAMILO DIAZ GOMEZ', '2010-02-01', '2', '1');
INSERT INTO `persona` VALUES ('4393', 'MARIA RAMIREZ MARTIN', '2009-11-27', '2', '1');
INSERT INTO `persona` VALUES ('4394', 'FLOR ALVAREZ ALONSO', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('4395', 'JUAN CHEN DIAZ', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('4396', 'ARMANDO JIMENEZ HERNANDEZ', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('4397', 'ENRIQUE TORRES MORENO', '2009-11-12', '2', '1');
INSERT INTO `persona` VALUES ('4398', 'VERONICA SINGH GUTIERREZ', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('4399', 'MARIA RUIZ AGUIRRE', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('4400', 'FLORES ROJAS ALVAREZ', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('4401', 'TOMASA ROMERO GIL', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('4402', 'CRISTIAN CAMILO CASTRO SALAZAR', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('4403', 'MEYLIN VIVIANA FLORES IBAÑEZ', '2010-03-06', '2', '1');
INSERT INTO `persona` VALUES ('4404', 'YEFERSON RIKI MUÑOZ MUÑOZ', '2010-03-11', '2', '1');
INSERT INTO `persona` VALUES ('4405', 'MAURICIO JAVIER GUTIERREZ URIARTE', '2009-06-13', '2', '1');
INSERT INTO `persona` VALUES ('4406', 'MONICA ANDREA VARGAS BLANCO', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('4407', 'RENE ALBERTO DA SILVA PINEDO', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('4408', 'OSCAR JAVIER MORALES SAEZ', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('4409', 'LUIS FELIPE CASTILLO ORTIZ DE ZARATE', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('4410', 'TATIANA MARTIN ORTIZ', '2009-10-26', '2', '1');
INSERT INTO `persona` VALUES ('4411', 'JUAN CARLOS MORENO ANGULO', '2009-11-06', '2', '1');
INSERT INTO `persona` VALUES ('4412', 'DIANA STEFANIA SILVA UGARTE', '2010-05-05', '2', '1');
INSERT INTO `persona` VALUES ('4413', 'CLAUDIA SOCORRO ORTIZ DIEZ', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4414', 'ELKIN PEREIRA RAMOS', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('4415', 'LILIANA STEFANNY REYES SAENZ', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('4416', 'CARLOS ESTEBAN RAMOS QUINTANA', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('4417', 'JUAN MANUEL SUAREZ MARQUINEZ', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('4418', 'CRISTIAN CAMILO MEDINA ROMERO', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('4419', 'MEYLIN VIVIANA LIN ORTEGA', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('4420', 'ENRIQUE WANG SANTAMARIA', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('4421', 'MARY HERRERA DOMINGUEZ', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('4422', 'CRISTIAN CAMILO CRUZ RUIZ DE AZUA', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('4423', 'MEYLIN VIVIANA MENDEZ SANZ', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('4424', 'YEFERSON RIKI MARIN ARMENTIA', '2010-01-15', '2', '1');
INSERT INTO `persona` VALUES ('4425', 'MAURICIO JAVIER FERREIRA OCHOA', '2009-10-10', '2', '1');
INSERT INTO `persona` VALUES ('4426', 'MONICA ANDREA MENDOZA DELGADO', '2009-09-05', '2', '1');
INSERT INTO `persona` VALUES ('4427', 'RENE ALBERTO VASQUEZ RAMIREZ', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('4428', 'OSCAR JAVIER CABRERA SANTOS', '2009-07-26', '2', '1');
INSERT INTO `persona` VALUES ('4429', 'LUIS FELIPE ZHANG LANDA', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('4430', 'TATIANA NUÑEZ ELORZA', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('4431', 'JUAN CARLOS DOS SANTOS CASTILLO', '2010-08-30', '2', '1');
INSERT INTO `persona` VALUES ('4432', 'DIANA STEFANIA PISFIL SANZ', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('4433', 'CLAUDIA SOCORRO PUEMAPE ARMENTIA', '2010-09-09', '2', '1');
INSERT INTO `persona` VALUES ('4434', 'ELKIN FLORES OCHOA', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('4435', 'LILIANA STEFANNY VARGAS DELGADO', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('4436', 'CARLOS ESTEBAN GONZALES RAMIREZ', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('4437', 'JUAN MANUEL VERA SANTOS', '2009-12-22', '2', '1');
INSERT INTO `persona` VALUES ('4438', 'CHRISTIAN MIGUEL MONSALVE LANDA', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('4439', 'HECTOR GENTIL PEREZ ELORZA', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('4440', 'NELLY YAZMIN BENAVIDES CASTILLO', '2010-02-18', '2', '1');
INSERT INTO `persona` VALUES ('4441', 'DAMARIS PISFIL PUEMAPE', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('4442', 'AMANDA FLORES VARGAS', '2009-11-11', '2', '1');
INSERT INTO `persona` VALUES ('4443', 'ANGIE LORENA RODRIGUEZ GARCIA', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4444', 'JOSE DENIS GARCIA FERNANDEZ', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('4445', 'KAROL JOE GONZALEZ MARTINEZ', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('4446', 'CARLOS ALBEIRO LOPEZ GONZALEZ', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('4447', 'HERNAN ALEXIS PEREZ PEREZ', '2010-02-23', '2', '1');
INSERT INTO `persona` VALUES ('4448', 'JORGE ALIRIO MARTINEZ LOPEZ', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('4449', 'YESNARDA NAIROBI SANCHEZ RODRIGUEZ', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('4450', 'DIANA CAROLINA FERNANDEZ SANCHEZ', '2009-09-26', '2', '1');
INSERT INTO `persona` VALUES ('4451', 'HAROLD ORLANDO GOMEZ JIMENEZ', '2009-07-26', '2', '1');
INSERT INTO `persona` VALUES ('4452', 'ZULLY JOHANA HERNANDEZ RUIZ', '2009-12-31', '2', '1');
INSERT INTO `persona` VALUES ('4453', 'JULIAN CAMILO DIAZ GOMEZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('4454', 'MARIA RAMIREZ MARTIN', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('4455', 'FLOR ALVAREZ ALONSO', '2009-07-23', '2', '1');
INSERT INTO `persona` VALUES ('4456', 'JUAN CHEN DIAZ', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('4457', 'ARMANDO JIMENEZ HERNANDEZ', '2010-03-28', '2', '1');
INSERT INTO `persona` VALUES ('4458', 'ENRIQUE TORRES MORENO', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('4459', 'VERONICA SINGH GUTIERREZ', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('4460', 'MARIA RUIZ AGUIRRE', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('4461', 'FLORES ROJAS ALVAREZ', '2010-08-31', '2', '1');
INSERT INTO `persona` VALUES ('4462', 'TOMASA ROMERO GIL', '2009-10-11', '2', '1');
INSERT INTO `persona` VALUES ('4463', 'CRISTIAN CAMILO CASTRO SALAZAR', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('4464', 'MEYLIN VIVIANA FLORES IBAÑEZ', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('4465', 'YEFERSON RIKI MUÑOZ MUÑOZ', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('4466', 'MAURICIO JAVIER GUTIERREZ URIARTE', '2009-07-21', '2', '1');
INSERT INTO `persona` VALUES ('4467', 'MONICA ANDREA VARGAS BLANCO', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('4468', 'RENE ALBERTO DA SILVA PINEDO', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('4469', 'OSCAR JAVIER MORALES SAEZ', '2009-08-07', '2', '1');
INSERT INTO `persona` VALUES ('4470', 'LUIS FELIPE CASTILLO ORTIZ DE ZARATE', '2010-06-09', '2', '1');
INSERT INTO `persona` VALUES ('4471', 'TATIANA MARTIN ORTIZ', '2009-08-24', '2', '1');
INSERT INTO `persona` VALUES ('4472', 'JUAN CARLOS MORENO ANGULO', '2009-11-04', '2', '1');
INSERT INTO `persona` VALUES ('4473', 'DIANA STEFANIA SILVA UGARTE', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('4474', 'CLAUDIA SOCORRO ORTIZ DIEZ', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('4475', 'ELKIN PEREIRA RAMOS', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('4476', 'LILIANA STEFANNY REYES SAENZ', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4477', 'CARLOS ESTEBAN RAMOS QUINTANA', '2010-04-22', '2', '1');
INSERT INTO `persona` VALUES ('4478', 'JUAN MANUEL SUAREZ MARQUINEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('4479', 'CRISTIAN CAMILO MEDINA ROMERO', '2010-04-26', '2', '1');
INSERT INTO `persona` VALUES ('4480', 'MEYLIN VIVIANA LIN ORTEGA', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('4481', 'ENRIQUE WANG SANTAMARIA', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('4482', 'MARY HERRERA DOMINGUEZ', '2009-09-10', '2', '1');
INSERT INTO `persona` VALUES ('4483', 'CRISTIAN CAMILO CRUZ RUIZ DE AZUA', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('4484', 'MEYLIN VIVIANA MENDEZ SANZ', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('4485', 'YEFERSON RIKI MARIN ARMENTIA', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('4486', 'MAURICIO JAVIER FERREIRA OCHOA', '2010-02-13', '2', '1');
INSERT INTO `persona` VALUES ('4487', 'MONICA ANDREA MENDOZA DELGADO', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('4488', 'RENE ALBERTO VASQUEZ RAMIREZ', '2010-07-22', '2', '1');
INSERT INTO `persona` VALUES ('4489', 'OSCAR JAVIER CABRERA SANTOS', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('4490', 'LUIS FELIPE ZHANG LANDA', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('4491', 'TATIANA NUÑEZ ELORZA', '2010-05-02', '2', '1');
INSERT INTO `persona` VALUES ('4492', 'JUAN CARLOS DOS SANTOS CASTILLO', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('4493', 'DIANA STEFANIA PISFIL SANZ', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('4494', 'CLAUDIA SOCORRO PUEMAPE ARMENTIA', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('4495', 'ELKIN FLORES OCHOA', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('4496', 'LILIANA STEFANNY VARGAS DELGADO', '2010-05-28', '2', '1');
INSERT INTO `persona` VALUES ('4497', 'CARLOS ESTEBAN GONZALES RAMIREZ', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('4498', 'JUAN MANUEL VERA SANTOS', '2010-01-29', '2', '1');
INSERT INTO `persona` VALUES ('4499', 'CHRISTIAN MIGUEL MONSALVE LANDA', '2010-08-15', '2', '1');
INSERT INTO `persona` VALUES ('4500', 'HECTOR GENTIL PEREZ ELORZA', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('4501', 'NELLY YAZMIN BENAVIDES CASTILLO', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('4502', 'DAMARIS PISFIL PUEMAPE', '2010-03-09', '2', '1');
INSERT INTO `persona` VALUES ('4503', 'AMANDA FLORES VARGAS', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('4504', 'ANGIE LORENA RODRIGUEZ GARCIA', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4505', 'JOSE DENIS GARCIA FERNANDEZ', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('4506', 'KAROL JOE GONZALEZ MARTINEZ', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('4507', 'CARLOS ALBEIRO LOPEZ GONZALEZ', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('4508', 'HERNAN ALEXIS PISFIL PUEMAPE', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('4509', 'JORGE ALIRIO FLORES VARGAS', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('4510', 'YESNARDA NAIROBI RODRIGUEZ GARCIA', '2009-11-06', '2', '1');
INSERT INTO `persona` VALUES ('4511', 'DIANA CAROLINA GARCIA FERNANDEZ', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('4512', 'HAROLD ORLANDO GONZALEZ MARTINEZ', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('4513', 'ZULLY JOHANA LOPEZ GONZALEZ', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('4514', 'JULIAN CAMILO PEREZ PEREZ', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('4515', 'MARIA MARTINEZ LOPEZ', '2010-05-15', '2', '1');
INSERT INTO `persona` VALUES ('4516', 'FLOR SANCHEZ RODRIGUEZ', '2010-05-02', '2', '1');
INSERT INTO `persona` VALUES ('4517', 'JUAN FERNANDEZ SANCHEZ', '2010-01-22', '2', '1');
INSERT INTO `persona` VALUES ('4518', 'ARMANDO GOMEZ JIMENEZ', '2010-01-29', '2', '1');
INSERT INTO `persona` VALUES ('4519', 'ENRIQUE HERNANDEZ RUIZ', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('4520', 'VERONICA DIAZ GOMEZ', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('4521', 'MARIA RAMIREZ MARTIN', '2010-02-26', '2', '1');
INSERT INTO `persona` VALUES ('4522', 'FLORES ALVAREZ ALONSO', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('4523', 'TOMASA CHEN DIAZ', '2010-05-03', '2', '1');
INSERT INTO `persona` VALUES ('4524', 'CRISTIAN CAMILO JIMENEZ HERNANDEZ', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('4525', 'MEYLIN VIVIANA TORRES MORENO', '2009-11-23', '2', '1');
INSERT INTO `persona` VALUES ('4526', 'YEFERSON RIKI SINGH GUTIERREZ', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('4527', 'MAURICIO JAVIER RUIZ AGUIRRE', '2009-09-10', '2', '1');
INSERT INTO `persona` VALUES ('4528', 'MONICA ANDREA ROJAS ALVAREZ', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('4529', 'RENE ALBERTO ROMERO GIL', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('4530', 'OSCAR JAVIER CASTRO SALAZAR', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('4531', 'LUIS FELIPE FLORES IBAÑEZ', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('4532', 'TATIANA MUÑOZ MUÑOZ', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('4533', 'JUAN CARLOS GUTIERREZ URIARTE', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('4534', 'DIANA STEFANIA VARGAS BLANCO', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('4535', 'CLAUDIA SOCORRO DA SILVA PINEDO', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('4536', 'ELKIN MORALES SAEZ', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4537', 'LILIANA STEFANNY CASTILLO ORTIZ DE ZARATE', '2010-05-24', '2', '1');
INSERT INTO `persona` VALUES ('4538', 'CARLOS ESTEBAN MARTIN ORTIZ', '2009-11-19', '2', '1');
INSERT INTO `persona` VALUES ('4539', 'JUAN MANUEL MORENO ANGULO', '2009-12-13', '2', '1');
INSERT INTO `persona` VALUES ('4540', 'CRISTIAN CAMILO SILVA UGARTE', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('4541', 'MEYLIN VIVIANA ORTIZ DIEZ', '2010-07-28', '2', '1');
INSERT INTO `persona` VALUES ('4542', 'ENRIQUE PEREIRA RAMOS', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('4543', 'MARY REYES SAENZ', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('4544', 'CRISTIAN CAMILO RAMOS QUINTANA', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('4545', 'MEYLIN VIVIANA SUAREZ MARQUINEZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('4546', 'YEFERSON RIKI MEDINA ROMERO', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('4547', 'MAURICIO JAVIER LIN ORTEGA', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('4548', 'MONICA ANDREA WANG SANTAMARIA', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('4549', 'RENE ALBERTO HERRERA DOMINGUEZ', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('4550', 'OSCAR JAVIER CRUZ RUIZ DE AZUA', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('4551', 'LUIS FELIPE MENDEZ SANZ', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('4552', 'TATIANA MARIN ARMENTIA', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('4553', 'JUAN CARLOS FERREIRA OCHOA', '2010-05-15', '2', '1');
INSERT INTO `persona` VALUES ('4554', 'DIANA STEFANIA MENDOZA DELGADO', '2010-07-26', '2', '1');
INSERT INTO `persona` VALUES ('4555', 'CLAUDIA SOCORRO VASQUEZ RAMIREZ', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('4556', 'ELKIN CABRERA SANTOS', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('4557', 'LILIANA STEFANNY ZHANG LANDA', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('4558', 'CARLOS ESTEBAN NUÑEZ ELORZA', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('4559', 'JUAN MANUEL DOS SANTOS CASTILLO', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('4560', 'CHRISTIAN MIGUEL PISFIL SANZ', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('4561', 'HECTOR GENTIL PUEMAPE ARMENTIA', '2010-07-24', '2', '1');
INSERT INTO `persona` VALUES ('4562', 'NELLY YAZMIN FLORES OCHOA', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('4563', 'DAMARIS VARGAS DELGADO', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('4564', 'AMANDA GONZALES RAMIREZ', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('4565', 'ANGIE LORENA VERA SANTOS', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('4566', 'JOSE DENIS MONSALVE LANDA', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('4567', 'KAROL JOE PEREZ ELORZA', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('4568', 'CARLOS ALBEIRO BENAVIDES CASTILLO', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('4569', 'HERNAN ALEXIS PISFIL PUEMAPE', '2009-10-21', '2', '1');
INSERT INTO `persona` VALUES ('4570', 'JORGE ALIRIO FLORES VARGAS', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('4571', 'YESNARDA NAIROBI RODRIGUEZ GARCIA', '2010-07-22', '2', '1');
INSERT INTO `persona` VALUES ('4572', 'DIANA CAROLINA GARCIA FERNANDEZ', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('4573', 'HAROLD ORLANDO GONZALEZ MARTINEZ', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('4574', 'ZULLY JOHANA LOPEZ GONZALEZ', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('4575', 'JULIAN CAMILO PEREZ PEREZ', '2010-09-14', '2', '1');
INSERT INTO `persona` VALUES ('4576', 'MARIA MARTINEZ LOPEZ', '2009-12-20', '2', '1');
INSERT INTO `persona` VALUES ('4577', 'FLOR SANCHEZ RODRIGUEZ', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('4578', 'JUAN FERNANDEZ SANCHEZ', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('4579', 'ARMANDO GOMEZ JIMENEZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('4580', 'ENRIQUE HERNANDEZ RUIZ', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('4581', 'VERONICA DIAZ GOMEZ', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('4582', 'MARIA RAMIREZ MARTIN', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('4583', 'FLORES ALVAREZ ALONSO', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('4584', 'TOMASA CHEN DIAZ', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('4585', 'CRISTIAN CAMILO JIMENEZ HERNANDEZ', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('4586', 'MEYLIN VIVIANA TORRES MORENO', '2010-01-23', '2', '1');
INSERT INTO `persona` VALUES ('4587', 'YEFERSON RIKI SINGH GUTIERREZ', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('4588', 'MAURICIO JAVIER RUIZ AGUIRRE', '2010-09-08', '2', '1');
INSERT INTO `persona` VALUES ('4589', 'MONICA ANDREA ROJAS ALVAREZ', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('4590', 'RENE ALBERTO ROMERO GIL', '2009-06-27', '2', '1');
INSERT INTO `persona` VALUES ('4591', 'OSCAR JAVIER CASTRO SALAZAR', '2009-09-26', '2', '1');
INSERT INTO `persona` VALUES ('4592', 'LUIS FELIPE FLORES IBAÑEZ', '2010-08-19', '2', '1');
INSERT INTO `persona` VALUES ('4593', 'TATIANA MUÑOZ MUÑOZ', '2010-03-23', '2', '1');
INSERT INTO `persona` VALUES ('4594', 'JUAN CARLOS GUTIERREZ URIARTE', '2010-08-16', '2', '1');
INSERT INTO `persona` VALUES ('4595', 'DIANA STEFANIA VARGAS BLANCO', '2009-10-06', '2', '1');
INSERT INTO `persona` VALUES ('4596', 'CLAUDIA SOCORRO DA SILVA PINEDO', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('4597', 'ELKIN MORALES SAEZ', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('4598', 'LILIANA STEFANNY CASTILLO ORTIZ DE ZARATE', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('4599', 'CARLOS ESTEBAN MARTIN ORTIZ', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('4600', 'JUAN MANUEL MORENO ANGULO', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('4601', 'CRISTIAN CAMILO SILVA UGARTE', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('4602', 'MEYLIN VIVIANA ORTIZ DIEZ', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('4603', 'ENRIQUE PEREIRA RAMOS', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('4604', 'MARY REYES SAENZ', '2010-07-29', '2', '1');
INSERT INTO `persona` VALUES ('4605', 'CRISTIAN CAMILO RAMOS QUINTANA', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('4606', 'MEYLIN VIVIANA SUAREZ MARQUINEZ', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('4607', 'YEFERSON RIKI MEDINA ROMERO', '2010-01-11', '2', '1');
INSERT INTO `persona` VALUES ('4608', 'MAURICIO JAVIER LIN ORTEGA', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('4609', 'MONICA ANDREA WANG SANTAMARIA', '2010-04-28', '2', '1');
INSERT INTO `persona` VALUES ('4610', 'RENE ALBERTO HERRERA DOMINGUEZ', '2009-06-16', '2', '1');
INSERT INTO `persona` VALUES ('4611', 'OSCAR JAVIER CRUZ RUIZ DE AZUA', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('4612', 'LUIS FELIPE MENDEZ SANZ', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('4613', 'TATIANA MARIN ARMENTIA', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('4614', 'JUAN CARLOS FERREIRA OCHOA', '2009-11-21', '2', '1');
INSERT INTO `persona` VALUES ('4615', 'DIANA STEFANIA MENDOZA DELGADO', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('4616', 'CLAUDIA SOCORRO VASQUEZ RAMIREZ', '2010-06-26', '2', '1');
INSERT INTO `persona` VALUES ('4617', 'ELKIN CABRERA SANTOS', '2009-12-13', '2', '1');
INSERT INTO `persona` VALUES ('4618', 'LILIANA STEFANNY ZHANG LANDA', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('4619', 'CARLOS ESTEBAN NUÑEZ ELORZA', '2010-01-09', '2', '1');
INSERT INTO `persona` VALUES ('4620', 'JUAN MANUEL DOS SANTOS CASTILLO', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('4621', 'CHRISTIAN MIGUEL PISFIL SANZ', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('4622', 'HECTOR GENTIL PUEMAPE ARMENTIA', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('4623', 'NELLY YAZMIN FLORES OCHOA', '2010-03-15', '2', '1');
INSERT INTO `persona` VALUES ('4624', 'DAMARIS VARGAS DELGADO', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('4625', 'AMANDA GONZALES RAMIREZ', '2009-06-26', '2', '1');
INSERT INTO `persona` VALUES ('4626', 'ANGIE LORENA VERA SANTOS', '2009-06-26', '2', '1');
INSERT INTO `persona` VALUES ('4627', 'JOSE DENIS MONSALVE LANDA', '2009-11-03', '2', '1');
INSERT INTO `persona` VALUES ('4628', 'KAROL JOE PEREZ ELORZA', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('4629', 'CARLOS ALBEIRO BENAVIDES CASTILLO', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('4630', 'HERNAN ALEXIS PISFIL PUEMAPE', '2010-01-08', '2', '1');
INSERT INTO `persona` VALUES ('4631', 'JORGE ALIRIO FLORES VARGAS', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('4632', 'YESNARDA NAIROBI RODRIGUEZ GARCIA', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('4633', 'DIANA CAROLINA GARCIA FERNANDEZ', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('4634', 'HAROLD ORLANDO GONZALEZ MARTINEZ', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('4635', 'ZULLY JOHANA LOPEZ GONZALEZ', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('4636', 'JULIAN CAMILO PISFIL PUEMAPE', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('4637', 'MARIA FLORES VARGAS', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('4638', 'FLOR RODRIGUEZ GARCIA', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('4639', 'JUAN GARCIA FERNANDEZ', '2010-06-10', '2', '1');
INSERT INTO `persona` VALUES ('4640', 'ARMANDO GONZALEZ MARTINEZ', '2009-10-10', '2', '1');
INSERT INTO `persona` VALUES ('4641', 'ENRIQUE LOPEZ GONZALEZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('4642', 'VERONICA PEREZ PEREZ', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('4643', 'MARIA MARTINEZ LOPEZ', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('4644', 'FLORES SANCHEZ RODRIGUEZ', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('4645', 'TOMASA FERNANDEZ SANCHEZ', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('4646', 'CRISTIAN CAMILO GOMEZ JIMENEZ', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('4647', 'MEYLIN VIVIANA HERNANDEZ RUIZ', '2009-11-21', '2', '1');
INSERT INTO `persona` VALUES ('4648', 'YEFERSON RIKI DIAZ GOMEZ', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('4649', 'MAURICIO JAVIER RAMIREZ MARTIN', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('4650', 'MONICA ANDREA ALVAREZ ALONSO', '2009-12-06', '2', '1');
INSERT INTO `persona` VALUES ('4651', 'RENE ALBERTO CHEN DIAZ', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('4652', 'OSCAR JAVIER JIMENEZ HERNANDEZ', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('4653', 'LUIS FELIPE TORRES MORENO', '2010-04-22', '2', '1');
INSERT INTO `persona` VALUES ('4654', 'TATIANA SINGH GUTIERREZ', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('4655', 'JUAN CARLOS RUIZ AGUIRRE', '2010-03-03', '2', '1');
INSERT INTO `persona` VALUES ('4656', 'DIANA STEFANIA ROJAS ALVAREZ', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('4657', 'CLAUDIA SOCORRO ROMERO GIL', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4658', 'ELKIN CASTRO SALAZAR', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('4659', 'LILIANA STEFANNY FLORES IBAÑEZ', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('4660', 'CARLOS ESTEBAN MUÑOZ MUÑOZ', '2010-03-14', '2', '1');
INSERT INTO `persona` VALUES ('4661', 'JUAN MANUEL GUTIERREZ URIARTE', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('4662', 'CRISTIAN CAMILO VARGAS BLANCO', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('4663', 'MEYLIN VIVIANA DA SILVA PINEDO', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('4664', 'ENRIQUE MORALES SAEZ', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('4665', 'MARY CASTILLO ORTIZ DE ZARATE', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('4666', 'CRISTIAN CAMILO MARTIN ORTIZ', '2009-10-10', '2', '1');
INSERT INTO `persona` VALUES ('4667', 'MEYLIN VIVIANA MORENO ANGULO', '2010-08-29', '2', '1');
INSERT INTO `persona` VALUES ('4668', 'YEFERSON RIKI SILVA UGARTE', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('4669', 'MAURICIO JAVIER ORTIZ DIEZ', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('4670', 'MONICA ANDREA PEREIRA RAMOS', '2010-01-30', '2', '1');
INSERT INTO `persona` VALUES ('4671', 'RENE ALBERTO REYES SAENZ', '2009-12-24', '2', '1');
INSERT INTO `persona` VALUES ('4672', 'OSCAR JAVIER RAMOS QUINTANA', '2010-05-11', '2', '1');
INSERT INTO `persona` VALUES ('4673', 'LUIS FELIPE SUAREZ MARQUINEZ', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('4674', 'TATIANA MEDINA ROMERO', '2009-08-29', '2', '1');
INSERT INTO `persona` VALUES ('4675', 'JUAN CARLOS LIN ORTEGA', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('4676', 'DIANA STEFANIA WANG SANTAMARIA', '2009-08-04', '2', '1');
INSERT INTO `persona` VALUES ('4677', 'CLAUDIA SOCORRO HERRERA DOMINGUEZ', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('4678', 'ELKIN CRUZ RUIZ DE AZUA', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('4679', 'LILIANA STEFANNY MENDEZ SANZ', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('4680', 'CARLOS ESTEBAN MARIN ARMENTIA', '2010-05-22', '2', '1');
INSERT INTO `persona` VALUES ('4681', 'JUAN MANUEL FERREIRA OCHOA', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4682', 'CHRISTIAN MIGUEL MENDOZA DELGADO', '2010-06-06', '2', '1');
INSERT INTO `persona` VALUES ('4683', 'HECTOR GENTIL VASQUEZ RAMIREZ', '2009-08-11', '2', '1');
INSERT INTO `persona` VALUES ('4684', 'NELLY YAZMIN CABRERA SANTOS', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('4685', 'DAMARIS ZHANG LANDA', '2009-06-28', '2', '1');
INSERT INTO `persona` VALUES ('4686', 'AMANDA NUÑEZ ELORZA', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('4687', 'ANGIE LORENA DOS SANTOS CASTILLO', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('4688', 'JOSE DENIS PISFIL SANZ', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('4689', 'KAROL JOE PUEMAPE ARMENTIA', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('4690', 'CARLOS ALBEIRO FLORES OCHOA', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('4691', 'HERNAN ALEXIS VARGAS DELGADO', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('4692', 'JORGE ALIRIO GONZALES RAMIREZ', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('4693', 'YESNARDA NAIROBI VERA SANTOS', '2009-07-05', '2', '1');
INSERT INTO `persona` VALUES ('4694', 'DIANA CAROLINA MONSALVE LANDA', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('4695', 'HAROLD ORLANDO PEREZ ELORZA', '2010-06-26', '2', '1');
INSERT INTO `persona` VALUES ('4696', 'ZULLY JOHANA BENAVIDES CASTILLO', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('4697', 'JULIAN CAMILO PISFIL PUEMAPE', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('4698', 'MARIA FLORES VARGAS', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('4699', 'FLOR RODRIGUEZ GARCIA', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('4700', 'JUAN GARCIA FERNANDEZ', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('4701', 'ARMANDO GONZALEZ MARTINEZ', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('4702', 'ENRIQUE LOPEZ GONZALEZ', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('4703', 'VERONICA PEREZ PEREZ', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('4704', 'MARIA MARTINEZ LOPEZ', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('4705', 'FLORES SANCHEZ RODRIGUEZ', '2010-04-04', '2', '1');
INSERT INTO `persona` VALUES ('4706', 'TOMASA FERNANDEZ SANCHEZ', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('4707', 'CRISTIAN CAMILO GOMEZ JIMENEZ', '2010-06-09', '2', '1');
INSERT INTO `persona` VALUES ('4708', 'MEYLIN VIVIANA HERNANDEZ RUIZ', '2009-08-08', '2', '1');
INSERT INTO `persona` VALUES ('4709', 'YEFERSON RIKI DIAZ GOMEZ', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('4710', 'MAURICIO JAVIER RAMIREZ MARTIN', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('4711', 'MONICA ANDREA ALVAREZ ALONSO', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('4712', 'RENE ALBERTO CHEN DIAZ', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('4713', 'OSCAR JAVIER JIMENEZ HERNANDEZ', '2010-07-01', '2', '1');
INSERT INTO `persona` VALUES ('4714', 'LUIS FELIPE TORRES MORENO', '2010-02-26', '2', '1');
INSERT INTO `persona` VALUES ('4715', 'TATIANA SINGH GUTIERREZ', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('4716', 'JUAN CARLOS RUIZ AGUIRRE', '2009-12-28', '2', '1');
INSERT INTO `persona` VALUES ('4717', 'DIANA STEFANIA ROJAS ALVAREZ', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('4718', 'CLAUDIA SOCORRO ROMERO GIL', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('4719', 'ELKIN CASTRO SALAZAR', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('4720', 'LILIANA STEFANNY FLORES IBAÑEZ', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('4721', 'CARLOS ESTEBAN MUÑOZ MUÑOZ', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('4722', 'JUAN MANUEL GUTIERREZ URIARTE', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('4723', 'CRISTIAN CAMILO VARGAS BLANCO', '2010-09-14', '2', '1');
INSERT INTO `persona` VALUES ('4724', 'MEYLIN VIVIANA DA SILVA PINEDO', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('4725', 'ENRIQUE MORALES SAEZ', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('4726', 'MARY CASTILLO ORTIZ DE ZARATE', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('4727', 'CRISTIAN CAMILO MARTIN ORTIZ', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('4728', 'MEYLIN VIVIANA MORENO ANGULO', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('4729', 'YEFERSON RIKI SILVA UGARTE', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('4730', 'MAURICIO JAVIER ORTIZ DIEZ', '2010-01-17', '2', '1');
INSERT INTO `persona` VALUES ('4731', 'MONICA ANDREA PEREIRA RAMOS', '2009-12-24', '2', '1');
INSERT INTO `persona` VALUES ('4732', 'RENE ALBERTO REYES SAENZ', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('4733', 'OSCAR JAVIER RAMOS QUINTANA', '2009-11-15', '2', '1');
INSERT INTO `persona` VALUES ('4734', 'LUIS FELIPE SUAREZ MARQUINEZ', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('4735', 'TATIANA MEDINA ROMERO', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('4736', 'JUAN CARLOS LIN ORTEGA', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('4737', 'DIANA STEFANIA WANG SANTAMARIA', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('4738', 'CLAUDIA SOCORRO HERRERA DOMINGUEZ', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('4739', 'ELKIN CRUZ RUIZ DE AZUA', '2009-11-29', '2', '1');
INSERT INTO `persona` VALUES ('4740', 'LILIANA STEFANNY MENDEZ SANZ', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('4741', 'CARLOS ESTEBAN MARIN ARMENTIA', '2010-04-17', '2', '1');
INSERT INTO `persona` VALUES ('4742', 'JUAN MANUEL FERREIRA OCHOA', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('4743', 'CHRISTIAN MIGUEL MENDOZA DELGADO', '2010-09-05', '2', '1');
INSERT INTO `persona` VALUES ('4744', 'HECTOR GENTIL VASQUEZ RAMIREZ', '2010-05-26', '2', '1');
INSERT INTO `persona` VALUES ('4745', 'NELLY YAZMIN CABRERA SANTOS', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('4746', 'DAMARIS ZHANG LANDA', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('4747', 'AMANDA NUÑEZ ELORZA', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('4748', 'ANGIE LORENA DOS SANTOS CASTILLO', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('4749', 'JOSE DENIS PISFIL SANZ', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('4750', 'KAROL JOE PUEMAPE ARMENTIA', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('4751', 'CARLOS ALBEIRO FLORES OCHOA', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('4752', 'HERNAN ALEXIS VARGAS DELGADO', '2010-08-15', '2', '1');
INSERT INTO `persona` VALUES ('4753', 'JORGE ALIRIO GONZALES RAMIREZ', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('4754', 'YESNARDA NAIROBI VERA SANTOS', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('4755', 'DIANA CAROLINA MONSALVE LANDA', '2009-10-19', '2', '1');
INSERT INTO `persona` VALUES ('4756', 'HAROLD ORLANDO PEREZ ELORZA', '2009-10-03', '2', '1');
INSERT INTO `persona` VALUES ('4757', 'ZULLY JOHANA BENAVIDES CASTILLO', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('4758', 'JULIAN CAMILO PISFIL PUEMAPE', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('4759', 'MARIA FLORES VARGAS', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('4760', 'FLOR RODRIGUEZ GARCIA', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('4761', 'JUAN GARCIA FERNANDEZ', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('4762', 'ARMANDO GONZALEZ MARTINEZ', '2010-08-31', '2', '1');
INSERT INTO `persona` VALUES ('4763', 'ENRIQUE LOPEZ GONZALEZ', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('4764', 'VERONICA PISFIL PUEMAPE', '2010-05-13', '2', '1');
INSERT INTO `persona` VALUES ('4765', 'MARIA FLORES VARGAS', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('4766', 'FLORES RODRIGUEZ GARCIA', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('4767', 'TOMASA GARCIA FERNANDEZ', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('4768', 'CRISTIAN CAMILO GONZALEZ MARTINEZ', '2010-01-22', '2', '1');
INSERT INTO `persona` VALUES ('4769', 'MEYLIN VIVIANA LOPEZ GONZALEZ', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('4770', 'YEFERSON RIKI PEREZ PEREZ', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('4771', 'MAURICIO JAVIER MARTINEZ LOPEZ', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('4772', 'MONICA ANDREA SANCHEZ RODRIGUEZ', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('4773', 'RENE ALBERTO FERNANDEZ SANCHEZ', '2010-05-03', '2', '1');
INSERT INTO `persona` VALUES ('4774', 'OSCAR JAVIER GOMEZ JIMENEZ', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('4775', 'LUIS FELIPE HERNANDEZ RUIZ', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('4776', 'TATIANA DIAZ GOMEZ', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('4777', 'JUAN CARLOS RAMIREZ MARTIN', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('4778', 'DIANA STEFANIA ALVAREZ ALONSO', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('4779', 'CLAUDIA SOCORRO CHEN DIAZ', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('4780', 'ELKIN JIMENEZ HERNANDEZ', '2009-07-26', '2', '1');
INSERT INTO `persona` VALUES ('4781', 'LILIANA STEFANNY TORRES MORENO', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('4782', 'CARLOS ESTEBAN SINGH GUTIERREZ', '2010-05-11', '2', '1');
INSERT INTO `persona` VALUES ('4783', 'JUAN MANUEL RUIZ AGUIRRE', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('4784', 'CRISTIAN CAMILO ROJAS ALVAREZ', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('4785', 'MEYLIN VIVIANA ROMERO GIL', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('4786', 'ENRIQUE CASTRO SALAZAR', '2009-07-29', '2', '1');
INSERT INTO `persona` VALUES ('4787', 'MARY FLORES IBAÑEZ', '2010-02-20', '2', '1');
INSERT INTO `persona` VALUES ('4788', 'CRISTIAN CAMILO MUÑOZ MUÑOZ', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('4789', 'MEYLIN VIVIANA GUTIERREZ URIARTE', '2010-09-14', '2', '1');
INSERT INTO `persona` VALUES ('4790', 'YEFERSON RIKI VARGAS BLANCO', '2010-07-29', '2', '1');
INSERT INTO `persona` VALUES ('4791', 'MAURICIO JAVIER DA SILVA PINEDO', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('4792', 'MONICA ANDREA MORALES SAEZ', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('4793', 'RENE ALBERTO CASTILLO ORTIZ DE ZARATE', '2010-03-07', '2', '1');
INSERT INTO `persona` VALUES ('4794', 'OSCAR JAVIER MARTIN ORTIZ', '2010-01-29', '2', '1');
INSERT INTO `persona` VALUES ('4795', 'LUIS FELIPE MORENO ANGULO', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('4796', 'TATIANA SILVA UGARTE', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('4797', 'JUAN CARLOS ORTIZ DIEZ', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('4798', 'DIANA STEFANIA PEREIRA RAMOS', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('4799', 'CLAUDIA SOCORRO REYES SAENZ', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('4800', 'ELKIN RAMOS QUINTANA', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('4801', 'LILIANA STEFANNY SUAREZ MARQUINEZ', '2009-09-05', '2', '1');
INSERT INTO `persona` VALUES ('4802', 'CARLOS ESTEBAN MEDINA ROMERO', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('4803', 'JUAN MANUEL LIN ORTEGA', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('4804', 'CHRISTIAN MIGUEL WANG SANTAMARIA', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('4805', 'HECTOR GENTIL HERRERA DOMINGUEZ', '2010-01-27', '2', '1');
INSERT INTO `persona` VALUES ('4806', 'NELLY YAZMIN CRUZ RUIZ DE AZUA', '2009-06-25', '2', '1');
INSERT INTO `persona` VALUES ('4807', 'DAMARIS MENDEZ SANZ', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('4808', 'AMANDA MARIN ARMENTIA', '2009-11-03', '2', '1');
INSERT INTO `persona` VALUES ('4809', 'ANGIE LORENA FERREIRA OCHOA', '2010-07-20', '2', '1');
INSERT INTO `persona` VALUES ('4810', 'JOSE DENIS MENDOZA DELGADO', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('4811', 'KAROL JOE VASQUEZ RAMIREZ', '2010-06-14', '2', '1');
INSERT INTO `persona` VALUES ('4812', 'CARLOS ALBEIRO CABRERA SANTOS', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('4813', 'HERNAN ALEXIS ZHANG LANDA', '2009-08-14', '2', '1');
INSERT INTO `persona` VALUES ('4814', 'JORGE ALIRIO NUÑEZ ELORZA', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('4815', 'YESNARDA NAIROBI DOS SANTOS CASTILLO', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('4816', 'DIANA CAROLINA PISFIL SANZ', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('4817', 'HAROLD ORLANDO PUEMAPE ARMENTIA', '2010-03-23', '2', '1');
INSERT INTO `persona` VALUES ('4818', 'ZULLY JOHANA FLORES OCHOA', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('4819', 'JULIAN CAMILO VARGAS DELGADO', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('4820', 'MARIA GONZALES RAMIREZ', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('4821', 'FLOR VERA SANTOS', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('4822', 'JUAN MONSALVE LANDA', '2009-12-20', '2', '1');
INSERT INTO `persona` VALUES ('4823', 'ARMANDO PEREZ ELORZA', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('4824', 'ENRIQUE BENAVIDES CASTILLO', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('4825', 'VERONICA PISFIL PUEMAPE', '2009-06-23', '2', '1');
INSERT INTO `persona` VALUES ('4826', 'MARIA FLORES VARGAS', '2010-05-27', '2', '1');
INSERT INTO `persona` VALUES ('4827', 'FLORES RODRIGUEZ GARCIA', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('4828', 'TOMASA GARCIA FERNANDEZ', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('4829', 'CRISTIAN CAMILO GONZALEZ MARTINEZ', '2010-03-11', '2', '1');
INSERT INTO `persona` VALUES ('4830', 'MEYLIN VIVIANA LOPEZ GONZALEZ', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('4831', 'YEFERSON RIKI PEREZ PEREZ', '2010-08-05', '2', '1');
INSERT INTO `persona` VALUES ('4832', 'MAURICIO JAVIER MARTINEZ LOPEZ', '2010-05-13', '2', '1');
INSERT INTO `persona` VALUES ('4833', 'MONICA ANDREA SANCHEZ RODRIGUEZ', '2010-08-13', '2', '1');
INSERT INTO `persona` VALUES ('4834', 'RENE ALBERTO FERNANDEZ SANCHEZ', '2009-08-11', '2', '1');
INSERT INTO `persona` VALUES ('4835', 'OSCAR JAVIER GOMEZ JIMENEZ', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('4836', 'LUIS FELIPE HERNANDEZ RUIZ', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('4837', 'TATIANA DIAZ GOMEZ', '2009-12-18', '2', '1');
INSERT INTO `persona` VALUES ('4838', 'JUAN CARLOS RAMIREZ MARTIN', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('4839', 'DIANA STEFANIA ALVAREZ ALONSO', '2010-05-03', '2', '1');
INSERT INTO `persona` VALUES ('4840', 'CLAUDIA SOCORRO CHEN DIAZ', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('4841', 'ELKIN JIMENEZ HERNANDEZ', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('4842', 'LILIANA STEFANNY TORRES MORENO', '2010-05-08', '2', '1');
INSERT INTO `persona` VALUES ('4843', 'CARLOS ESTEBAN SINGH GUTIERREZ', '2010-05-24', '2', '1');
INSERT INTO `persona` VALUES ('4844', 'JUAN MANUEL RUIZ AGUIRRE', '2009-10-12', '2', '1');
INSERT INTO `persona` VALUES ('4845', 'CRISTIAN CAMILO ROJAS ALVAREZ', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('4846', 'MEYLIN VIVIANA ROMERO GIL', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('4847', 'ENRIQUE CASTRO SALAZAR', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('4848', 'MARY FLORES IBAÑEZ', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('4849', 'CRISTIAN CAMILO MUÑOZ MUÑOZ', '2009-08-04', '2', '1');
INSERT INTO `persona` VALUES ('4850', 'MEYLIN VIVIANA GUTIERREZ URIARTE', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('4851', 'YEFERSON RIKI VARGAS BLANCO', '2009-12-13', '2', '1');
INSERT INTO `persona` VALUES ('4852', 'MAURICIO JAVIER DA SILVA PINEDO', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('4853', 'MONICA ANDREA MORALES SAEZ', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('4854', 'RENE ALBERTO CASTILLO ORTIZ DE ZARATE', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('4855', 'OSCAR JAVIER MARTIN ORTIZ', '2009-12-22', '2', '1');
INSERT INTO `persona` VALUES ('4856', 'LUIS FELIPE MORENO ANGULO', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('4857', 'TATIANA SILVA UGARTE', '2010-02-20', '2', '1');
INSERT INTO `persona` VALUES ('4858', 'JUAN CARLOS ORTIZ DIEZ', '2010-05-24', '2', '1');
INSERT INTO `persona` VALUES ('4859', 'DIANA STEFANIA PEREIRA RAMOS', '2010-07-22', '2', '1');
INSERT INTO `persona` VALUES ('4860', 'CLAUDIA SOCORRO REYES SAENZ', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('4861', 'ELKIN RAMOS QUINTANA', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('4862', 'LILIANA STEFANNY SUAREZ MARQUINEZ', '2010-06-14', '2', '1');
INSERT INTO `persona` VALUES ('4863', 'CARLOS ESTEBAN MEDINA ROMERO', '2009-12-03', '2', '1');
INSERT INTO `persona` VALUES ('4864', 'JUAN MANUEL LIN ORTEGA', '2010-06-28', '2', '1');
INSERT INTO `persona` VALUES ('4865', 'CHRISTIAN MIGUEL WANG SANTAMARIA', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('4866', 'HECTOR GENTIL HERRERA DOMINGUEZ', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('4867', 'NELLY YAZMIN CRUZ RUIZ DE AZUA', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('4868', 'DAMARIS MENDEZ SANZ', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('4869', 'AMANDA MARIN ARMENTIA', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('4870', 'ANGIE LORENA FERREIRA OCHOA', '2010-07-09', '2', '1');
INSERT INTO `persona` VALUES ('4871', 'JOSE DENIS MENDOZA DELGADO', '2010-03-01', '2', '1');
INSERT INTO `persona` VALUES ('4872', 'KAROL JOE VASQUEZ RAMIREZ', '2010-06-24', '2', '1');
INSERT INTO `persona` VALUES ('4873', 'CARLOS ALBEIRO CABRERA SANTOS', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('4874', 'HERNAN ALEXIS ZHANG LANDA', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('4875', 'JORGE ALIRIO NUÑEZ ELORZA', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('4876', 'YESNARDA NAIROBI DOS SANTOS CASTILLO', '2010-03-24', '2', '1');
INSERT INTO `persona` VALUES ('4877', 'DIANA CAROLINA PISFIL SANZ', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('4878', 'HAROLD ORLANDO PUEMAPE ARMENTIA', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('4879', 'ZULLY JOHANA FLORES OCHOA', '2010-04-10', '2', '1');
INSERT INTO `persona` VALUES ('4880', 'JULIAN CAMILO VARGAS DELGADO', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('4881', 'MARIA GONZALES RAMIREZ', '2009-11-06', '2', '1');
INSERT INTO `persona` VALUES ('4882', 'FLOR VERA SANTOS', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('4883', 'JUAN MONSALVE LANDA', '2010-06-26', '2', '1');
INSERT INTO `persona` VALUES ('4884', 'ARMANDO PEREZ ELORZA', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('4885', 'ENRIQUE BENAVIDES CASTILLO', '2009-06-25', '2', '1');
INSERT INTO `persona` VALUES ('4886', 'VERONICA PISFIL PUEMAPE', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('4887', 'MARIA FLORES VARGAS', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('4888', 'FLORES RODRIGUEZ GARCIA', '2009-06-28', '2', '1');
INSERT INTO `persona` VALUES ('4889', 'TOMASA GARCIA FERNANDEZ', '2010-01-23', '2', '1');
INSERT INTO `persona` VALUES ('4890', 'CRISTIAN CAMILO GONZALEZ MARTINEZ', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('4891', 'MEYLIN VIVIANA LOPEZ GONZALEZ', '2010-06-27', '2', '1');
INSERT INTO `persona` VALUES ('4892', 'YEFERSON RIKI PISFIL PUEMAPE', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('4893', 'MAURICIO JAVIER FLORES VARGAS', '2010-04-23', '2', '1');
INSERT INTO `persona` VALUES ('4894', 'MONICA ANDREA RODRIGUEZ GARCIA', '2010-03-15', '2', '1');
INSERT INTO `persona` VALUES ('4895', 'RENE ALBERTO GARCIA FERNANDEZ', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('4896', 'OSCAR JAVIER GONZALEZ MARTINEZ', '2010-01-08', '2', '1');
INSERT INTO `persona` VALUES ('4897', 'LUIS FELIPE LOPEZ GONZALEZ', '2009-10-05', '2', '1');
INSERT INTO `persona` VALUES ('4898', 'TATIANA PEREZ PEREZ', '2009-06-26', '2', '1');
INSERT INTO `persona` VALUES ('4899', 'JUAN CARLOS MARTINEZ LOPEZ', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('4900', 'DIANA STEFANIA SANCHEZ RODRIGUEZ', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('4901', 'CLAUDIA SOCORRO FERNANDEZ SANCHEZ', '2009-12-15', '2', '1');
INSERT INTO `persona` VALUES ('4902', 'ELKIN GOMEZ JIMENEZ', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('4903', 'LILIANA STEFANNY HERNANDEZ RUIZ', '2009-08-08', '2', '1');
INSERT INTO `persona` VALUES ('4904', 'CARLOS ESTEBAN DIAZ GOMEZ', '2010-08-13', '2', '1');
INSERT INTO `persona` VALUES ('4905', 'JUAN MANUEL RAMIREZ MARTIN', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('4906', 'CRISTIAN CAMILO ALVAREZ ALONSO', '2010-03-12', '2', '1');
INSERT INTO `persona` VALUES ('4907', 'MEYLIN VIVIANA CHEN DIAZ', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('4908', 'ENRIQUE JIMENEZ HERNANDEZ', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('4909', 'MARY TORRES MORENO', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('4910', 'CRISTIAN CAMILO SINGH GUTIERREZ', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('4911', 'MEYLIN VIVIANA RUIZ AGUIRRE', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('4912', 'YEFERSON RIKI ROJAS ALVAREZ', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('4913', 'MAURICIO JAVIER ROMERO GIL', '2010-05-21', '2', '1');
INSERT INTO `persona` VALUES ('4914', 'MONICA ANDREA CASTRO SALAZAR', '2010-08-27', '2', '1');
INSERT INTO `persona` VALUES ('4915', 'RENE ALBERTO FLORES IBAÑEZ', '2009-12-16', '2', '1');
INSERT INTO `persona` VALUES ('4916', 'OSCAR JAVIER MUÑOZ MUÑOZ', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('4917', 'LUIS FELIPE GUTIERREZ URIARTE', '2010-07-09', '2', '1');
INSERT INTO `persona` VALUES ('4918', 'TATIANA VARGAS BLANCO', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('4919', 'JUAN CARLOS DA SILVA PINEDO', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('4920', 'DIANA STEFANIA MORALES SAEZ', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('4921', 'CLAUDIA SOCORRO CASTILLO ORTIZ DE ZARATE', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('4922', 'ELKIN MARTIN ORTIZ', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('4923', 'LILIANA STEFANNY MORENO ANGULO', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('4924', 'CARLOS ESTEBAN SILVA UGARTE', '2010-07-12', '2', '1');
INSERT INTO `persona` VALUES ('4925', 'JUAN MANUEL ORTIZ DIEZ', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('4926', 'CHRISTIAN MIGUEL PEREIRA RAMOS', '2010-04-09', '2', '1');
INSERT INTO `persona` VALUES ('4927', 'HECTOR GENTIL REYES SAENZ', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('4928', 'NELLY YAZMIN RAMOS QUINTANA', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('4929', 'DAMARIS SUAREZ MARQUINEZ', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('4930', 'AMANDA MEDINA ROMERO', '2010-01-20', '2', '1');
INSERT INTO `persona` VALUES ('4931', 'ANGIE LORENA LIN ORTEGA', '2010-02-13', '2', '1');
INSERT INTO `persona` VALUES ('4932', 'JOSE DENIS WANG SANTAMARIA', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('4933', 'KAROL JOE HERRERA DOMINGUEZ', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('4934', 'CARLOS ALBEIRO CRUZ RUIZ DE AZUA', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('4935', 'HERNAN ALEXIS MENDEZ SANZ', '2010-03-02', '2', '1');
INSERT INTO `persona` VALUES ('4936', 'JORGE ALIRIO MARIN ARMENTIA', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('4937', 'YESNARDA NAIROBI FERREIRA OCHOA', '2009-11-08', '2', '1');
INSERT INTO `persona` VALUES ('4938', 'DIANA CAROLINA MENDOZA DELGADO', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('4939', 'HAROLD ORLANDO VASQUEZ RAMIREZ', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('4940', 'ZULLY JOHANA CABRERA SANTOS', '2009-11-02', '2', '1');
INSERT INTO `persona` VALUES ('4941', 'JULIAN CAMILO ZHANG LANDA', '2010-07-09', '2', '1');
INSERT INTO `persona` VALUES ('4942', 'MARIA NUÑEZ ELORZA', '2009-08-11', '2', '1');
INSERT INTO `persona` VALUES ('4943', 'FLOR DOS SANTOS CASTILLO', '2010-04-05', '2', '1');
INSERT INTO `persona` VALUES ('4944', 'JUAN PISFIL SANZ', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('4945', 'ARMANDO PUEMAPE ARMENTIA', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('4946', 'ENRIQUE FLORES OCHOA', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('4947', 'VERONICA VARGAS DELGADO', '2009-12-18', '2', '1');
INSERT INTO `persona` VALUES ('4948', 'MARIA GONZALES RAMIREZ', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('4949', 'FLORES VERA SANTOS', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('4950', 'TOMASA MONSALVE LANDA', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('4951', 'CRISTIAN CAMILO PEREZ ELORZA', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('4952', 'MEYLIN VIVIANA BENAVIDES CASTILLO', '2009-06-27', '2', '1');
INSERT INTO `persona` VALUES ('4953', 'YEFERSON RIKI PISFIL PUEMAPE', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('4954', 'MAURICIO JAVIER FLORES VARGAS', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('4955', 'MONICA ANDREA RODRIGUEZ GARCIA', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('4956', 'RENE ALBERTO GARCIA FERNANDEZ', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('4957', 'OSCAR JAVIER GONZALEZ MARTINEZ', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('4958', 'LUIS FELIPE LOPEZ GONZALEZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('4959', 'TATIANA PEREZ PEREZ', '2010-01-24', '2', '1');
INSERT INTO `persona` VALUES ('4960', 'JUAN CARLOS MARTINEZ LOPEZ', '2009-06-26', '2', '1');
INSERT INTO `persona` VALUES ('4961', 'DIANA STEFANIA SANCHEZ RODRIGUEZ', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('4962', 'CLAUDIA SOCORRO FERNANDEZ SANCHEZ', '2010-06-29', '2', '1');
INSERT INTO `persona` VALUES ('4963', 'ELKIN GOMEZ JIMENEZ', '2010-05-21', '2', '1');
INSERT INTO `persona` VALUES ('4964', 'LILIANA STEFANNY HERNANDEZ RUIZ', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('4965', 'CARLOS ESTEBAN DIAZ GOMEZ', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('4966', 'JUAN MANUEL RAMIREZ MARTIN', '2010-07-06', '2', '1');
INSERT INTO `persona` VALUES ('4967', 'CRISTIAN CAMILO ALVAREZ ALONSO', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('4968', 'MEYLIN VIVIANA CHEN DIAZ', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('4969', 'ENRIQUE JIMENEZ HERNANDEZ', '2009-10-27', '2', '1');
INSERT INTO `persona` VALUES ('4970', 'MARY TORRES MORENO', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('4971', 'CRISTIAN CAMILO SINGH GUTIERREZ', '2010-06-26', '2', '1');
INSERT INTO `persona` VALUES ('4972', 'MEYLIN VIVIANA RUIZ AGUIRRE', '2009-08-07', '2', '1');
INSERT INTO `persona` VALUES ('4973', 'YEFERSON RIKI ROJAS ALVAREZ', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('4974', 'MAURICIO JAVIER ROMERO GIL', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('4975', 'MONICA ANDREA CASTRO SALAZAR', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('4976', 'RENE ALBERTO FLORES IBAÑEZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('4977', 'OSCAR JAVIER MUÑOZ MUÑOZ', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('4978', 'LUIS FELIPE GUTIERREZ URIARTE', '2009-10-10', '2', '1');
INSERT INTO `persona` VALUES ('4979', 'TATIANA VARGAS BLANCO', '2010-05-23', '2', '1');
INSERT INTO `persona` VALUES ('4980', 'JUAN CARLOS DA SILVA PINEDO', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('4981', 'DIANA STEFANIA MORALES SAEZ', '2009-11-04', '2', '1');
INSERT INTO `persona` VALUES ('4982', 'CLAUDIA SOCORRO CASTILLO ORTIZ DE ZARATE', '2010-02-01', '2', '1');
INSERT INTO `persona` VALUES ('4983', 'ELKIN MARTIN ORTIZ', '2009-10-06', '2', '1');
INSERT INTO `persona` VALUES ('4984', 'LILIANA STEFANNY MORENO ANGULO', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('4985', 'CARLOS ESTEBAN SILVA UGARTE', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('4986', 'JUAN MANUEL ORTIZ DIEZ', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('4987', 'CHRISTIAN MIGUEL PEREIRA RAMOS', '2010-09-05', '2', '1');
INSERT INTO `persona` VALUES ('4988', 'HECTOR GENTIL REYES SAENZ', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('4989', 'NELLY YAZMIN RAMOS QUINTANA', '2009-06-13', '2', '1');
INSERT INTO `persona` VALUES ('4990', 'DAMARIS SUAREZ MARQUINEZ', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('4991', 'AMANDA MEDINA ROMERO', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('4992', 'ANGIE LORENA LIN ORTEGA', '2009-09-10', '2', '1');
INSERT INTO `persona` VALUES ('4993', 'JOSE DENIS WANG SANTAMARIA', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('4994', 'KAROL JOE HERRERA DOMINGUEZ', '2009-07-01', '2', '1');
INSERT INTO `persona` VALUES ('4995', 'CARLOS ALBEIRO CRUZ RUIZ DE AZUA', '2009-12-13', '2', '1');
INSERT INTO `persona` VALUES ('4996', 'HERNAN ALEXIS MENDEZ SANZ', '2010-08-14', '2', '1');
INSERT INTO `persona` VALUES ('4997', 'JORGE ALIRIO MARIN ARMENTIA', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('4998', 'YESNARDA NAIROBI FERREIRA OCHOA', '2010-08-17', '2', '1');
INSERT INTO `persona` VALUES ('4999', 'DIANA CAROLINA MENDOZA DELGADO', '2010-03-06', '2', '1');
INSERT INTO `persona` VALUES ('5000', 'HAROLD ORLANDO VASQUEZ RAMIREZ', '2010-02-01', '2', '1');
INSERT INTO `persona` VALUES ('5001', 'ZULLY JOHANA CABRERA SANTOS', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('5002', 'JULIAN CAMILO ZHANG LANDA', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('5003', 'MARIA NUÑEZ ELORZA', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('5004', 'FLOR DOS SANTOS CASTILLO', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('5005', 'JUAN PISFIL SANZ', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('5006', 'ARMANDO PUEMAPE ARMENTIA', '2010-07-21', '2', '1');
INSERT INTO `persona` VALUES ('5007', 'ENRIQUE FLORES OCHOA', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('5008', 'VERONICA VARGAS DELGADO', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('5009', 'MARIA GONZALES RAMIREZ', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('5010', 'FLORES VERA SANTOS', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('5011', 'TOMASA MONSALVE LANDA', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('5012', 'CRISTIAN CAMILO PEREZ ELORZA', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('5013', 'MEYLIN VIVIANA BENAVIDES CASTILLO', '2009-10-02', '2', '1');
INSERT INTO `persona` VALUES ('5014', 'YEFERSON RIKI PISFIL PUEMAPE', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('5015', 'MAURICIO JAVIER FLORES VARGAS', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('5016', 'MONICA ANDREA RODRIGUEZ GARCIA', '2010-01-15', '2', '1');
INSERT INTO `persona` VALUES ('5017', 'RENE ALBERTO GARCIA FERNANDEZ', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('5018', 'OSCAR JAVIER GONZALEZ MARTINEZ', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('5019', 'LUIS FELIPE LOPEZ GONZALEZ', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('5020', 'TATIANA PISFIL PUEMAPE', '2010-08-23', '2', '1');
INSERT INTO `persona` VALUES ('5021', 'JUAN CARLOS FLORES VARGAS', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('5022', 'DIANA STEFANIA RODRIGUEZ GARCIA', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('5023', 'CLAUDIA SOCORRO GARCIA FERNANDEZ', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('5024', 'ELKIN GONZALEZ MARTINEZ', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('5025', 'LILIANA STEFANNY LOPEZ GONZALEZ', '2010-02-10', '2', '1');
INSERT INTO `persona` VALUES ('5026', 'CARLOS ESTEBAN PEREZ PEREZ', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('5027', 'JUAN MANUEL MARTINEZ LOPEZ', '2010-06-16', '2', '1');
INSERT INTO `persona` VALUES ('5028', 'CRISTIAN CAMILO SANCHEZ RODRIGUEZ', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('5029', 'MEYLIN VIVIANA FERNANDEZ SANCHEZ', '2009-07-28', '2', '1');
INSERT INTO `persona` VALUES ('5030', 'ENRIQUE GOMEZ JIMENEZ', '2009-09-13', '2', '1');
INSERT INTO `persona` VALUES ('5031', 'MARY HERNANDEZ RUIZ', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('5032', 'CRISTIAN CAMILO DIAZ GOMEZ', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('5033', 'MEYLIN VIVIANA RAMIREZ MARTIN', '2009-07-21', '2', '1');
INSERT INTO `persona` VALUES ('5034', 'YEFERSON RIKI ALVAREZ ALONSO', '2010-03-06', '2', '1');
INSERT INTO `persona` VALUES ('5035', 'MAURICIO JAVIER CHEN DIAZ', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('5036', 'MONICA ANDREA JIMENEZ HERNANDEZ', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('5037', 'RENE ALBERTO TORRES MORENO', '2010-03-08', '2', '1');
INSERT INTO `persona` VALUES ('5038', 'OSCAR JAVIER SINGH GUTIERREZ', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('5039', 'LUIS FELIPE RUIZ AGUIRRE', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('5040', 'TATIANA ROJAS ALVAREZ', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('5041', 'JUAN CARLOS ROMERO GIL', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('5042', 'DIANA STEFANIA CASTRO SALAZAR', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('5043', 'CLAUDIA SOCORRO FLORES IBAÑEZ', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('5044', 'ELKIN MUÑOZ MUÑOZ', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('5045', 'LILIANA STEFANNY GUTIERREZ URIARTE', '2010-01-17', '2', '1');
INSERT INTO `persona` VALUES ('5046', 'CARLOS ESTEBAN VARGAS BLANCO', '2010-01-24', '2', '1');
INSERT INTO `persona` VALUES ('5047', 'JUAN MANUEL DA SILVA PINEDO', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('5048', 'CHRISTIAN MIGUEL MORALES SAEZ', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('5049', 'HECTOR GENTIL CASTILLO ORTIZ DE ZARATE', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('5050', 'NELLY YAZMIN MARTIN ORTIZ', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('5051', 'DAMARIS MORENO ANGULO', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('5052', 'AMANDA SILVA UGARTE', '2010-03-29', '2', '1');
INSERT INTO `persona` VALUES ('5053', 'ANGIE LORENA ORTIZ DIEZ', '2010-01-15', '2', '1');
INSERT INTO `persona` VALUES ('5054', 'JOSE DENIS PEREIRA RAMOS', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('5055', 'KAROL JOE REYES SAENZ', '2010-05-02', '2', '1');
INSERT INTO `persona` VALUES ('5056', 'CARLOS ALBEIRO RAMOS QUINTANA', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('5057', 'HERNAN ALEXIS SUAREZ MARQUINEZ', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('5058', 'JORGE ALIRIO MEDINA ROMERO', '2009-09-29', '2', '1');
INSERT INTO `persona` VALUES ('5059', 'YESNARDA NAIROBI LIN ORTEGA', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('5060', 'DIANA CAROLINA WANG SANTAMARIA', '2010-05-13', '2', '1');
INSERT INTO `persona` VALUES ('5061', 'HAROLD ORLANDO HERRERA DOMINGUEZ', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('5062', 'ZULLY JOHANA CRUZ RUIZ DE AZUA', '2009-11-15', '2', '1');
INSERT INTO `persona` VALUES ('5063', 'JULIAN CAMILO MENDEZ SANZ', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('5064', 'MARIA MARIN ARMENTIA', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('5065', 'FLOR FERREIRA OCHOA', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('5066', 'JUAN MENDOZA DELGADO', '2010-07-21', '2', '1');
INSERT INTO `persona` VALUES ('5067', 'ARMANDO VASQUEZ RAMIREZ', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('5068', 'ENRIQUE CABRERA SANTOS', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('5069', 'VERONICA ZHANG LANDA', '2010-05-21', '2', '1');
INSERT INTO `persona` VALUES ('5070', 'MARIA NUÑEZ ELORZA', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('5071', 'FLORES DOS SANTOS CASTILLO', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('5072', 'TOMASA PISFIL SANZ', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('5073', 'CRISTIAN CAMILO PUEMAPE ARMENTIA', '2010-04-17', '2', '1');
INSERT INTO `persona` VALUES ('5074', 'MEYLIN VIVIANA FLORES OCHOA', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('5075', 'YEFERSON RIKI VARGAS DELGADO', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('5076', 'MAURICIO JAVIER GONZALES RAMIREZ', '2010-01-26', '2', '1');
INSERT INTO `persona` VALUES ('5077', 'MONICA ANDREA VERA SANTOS', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('5078', 'RENE ALBERTO MONSALVE LANDA', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('5079', 'OSCAR JAVIER PEREZ ELORZA', '2010-06-02', '2', '1');
INSERT INTO `persona` VALUES ('5080', 'LUIS FELIPE BENAVIDES CASTILLO', '2010-03-07', '2', '1');
INSERT INTO `persona` VALUES ('5081', 'TATIANA PISFIL PUEMAPE', '2010-08-13', '2', '1');
INSERT INTO `persona` VALUES ('5082', 'JUAN CARLOS FLORES VARGAS', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('5083', 'DIANA STEFANIA RODRIGUEZ GARCIA', '2010-06-24', '2', '1');
INSERT INTO `persona` VALUES ('5084', 'CLAUDIA SOCORRO GARCIA FERNANDEZ', '2009-10-23', '2', '1');
INSERT INTO `persona` VALUES ('5085', 'ELKIN GONZALEZ MARTINEZ', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('5086', 'LILIANA STEFANNY LOPEZ GONZALEZ', '2010-01-24', '2', '1');
INSERT INTO `persona` VALUES ('5087', 'CARLOS ESTEBAN PEREZ PEREZ', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('5088', 'JUAN MANUEL MARTINEZ LOPEZ', '2010-02-18', '2', '1');
INSERT INTO `persona` VALUES ('5089', 'CRISTIAN CAMILO SANCHEZ RODRIGUEZ', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('5090', 'MEYLIN VIVIANA FERNANDEZ SANCHEZ', '2009-11-15', '2', '1');
INSERT INTO `persona` VALUES ('5091', 'ENRIQUE GOMEZ JIMENEZ', '2010-01-30', '2', '1');
INSERT INTO `persona` VALUES ('5092', 'MARY HERNANDEZ RUIZ', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('5093', 'CRISTIAN CAMILO DIAZ GOMEZ', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('5094', 'MEYLIN VIVIANA RAMIREZ MARTIN', '2010-01-29', '2', '1');
INSERT INTO `persona` VALUES ('5095', 'YEFERSON RIKI ALVAREZ ALONSO', '2010-06-30', '2', '1');
INSERT INTO `persona` VALUES ('5096', 'MAURICIO JAVIER CHEN DIAZ', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('5097', 'MONICA ANDREA JIMENEZ HERNANDEZ', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('5098', 'RENE ALBERTO TORRES MORENO', '2009-10-11', '2', '1');
INSERT INTO `persona` VALUES ('5099', 'OSCAR JAVIER SINGH GUTIERREZ', '2009-06-20', '2', '1');
INSERT INTO `persona` VALUES ('5100', 'LUIS FELIPE RUIZ AGUIRRE', '2010-01-27', '2', '1');
INSERT INTO `persona` VALUES ('5101', 'TATIANA ROJAS ALVAREZ', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('5102', 'JUAN CARLOS ROMERO GIL', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('5103', 'DIANA STEFANIA CASTRO SALAZAR', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('5104', 'CLAUDIA SOCORRO FLORES IBAÑEZ', '2009-10-10', '2', '1');
INSERT INTO `persona` VALUES ('5105', 'ELKIN MUÑOZ MUÑOZ', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('5106', 'LILIANA STEFANNY GUTIERREZ URIARTE', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('5107', 'CARLOS ESTEBAN VARGAS BLANCO', '2010-01-23', '2', '1');
INSERT INTO `persona` VALUES ('5108', 'JUAN MANUEL DA SILVA PINEDO', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('5109', 'CHRISTIAN MIGUEL MORALES SAEZ', '2010-02-17', '2', '1');
INSERT INTO `persona` VALUES ('5110', 'HECTOR GENTIL CASTILLO ORTIZ DE ZARATE', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('5111', 'NELLY YAZMIN MARTIN ORTIZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('5112', 'DAMARIS MORENO ANGULO', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('5113', 'AMANDA SILVA UGARTE', '2010-08-05', '2', '1');
INSERT INTO `persona` VALUES ('5114', 'ANGIE LORENA ORTIZ DIEZ', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('5115', 'JOSE DENIS PEREIRA RAMOS', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('5116', 'KAROL JOE REYES SAENZ', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('5117', 'CARLOS ALBEIRO RAMOS QUINTANA', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('5118', 'HERNAN ALEXIS SUAREZ MARQUINEZ', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('5119', 'JORGE ALIRIO MEDINA ROMERO', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('5120', 'YESNARDA NAIROBI LIN ORTEGA', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('5121', 'DIANA CAROLINA WANG SANTAMARIA', '2009-12-29', '2', '1');
INSERT INTO `persona` VALUES ('5122', 'HAROLD ORLANDO HERRERA DOMINGUEZ', '2009-09-25', '2', '1');
INSERT INTO `persona` VALUES ('5123', 'ZULLY JOHANA CRUZ RUIZ DE AZUA', '2009-11-19', '2', '1');
INSERT INTO `persona` VALUES ('5124', 'JULIAN CAMILO MENDEZ SANZ', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('5125', 'MARIA MARIN ARMENTIA', '2009-11-11', '2', '1');
INSERT INTO `persona` VALUES ('5126', 'FLOR FERREIRA OCHOA', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('5127', 'JUAN MENDOZA DELGADO', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('5128', 'ARMANDO VASQUEZ RAMIREZ', '2010-02-08', '2', '1');
INSERT INTO `persona` VALUES ('5129', 'ENRIQUE CABRERA SANTOS', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('5130', 'VERONICA ZHANG LANDA', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('5131', 'MARIA NUÑEZ ELORZA', '2010-07-29', '2', '1');
INSERT INTO `persona` VALUES ('5132', 'FLORES DOS SANTOS CASTILLO', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('5133', 'TOMASA PISFIL SANZ', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('5134', 'CRISTIAN CAMILO PUEMAPE ARMENTIA', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('5135', 'MEYLIN VIVIANA FLORES OCHOA', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('5136', 'YEFERSON RIKI VARGAS DELGADO', '2010-04-28', '2', '1');
INSERT INTO `persona` VALUES ('5137', 'MAURICIO JAVIER GONZALES RAMIREZ', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('5138', 'MONICA ANDREA VERA SANTOS', '2010-02-21', '2', '1');
INSERT INTO `persona` VALUES ('5139', 'RENE ALBERTO MONSALVE LANDA', '2009-08-20', '2', '1');
INSERT INTO `persona` VALUES ('5140', 'OSCAR JAVIER PEREZ ELORZA', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('5141', 'LUIS FELIPE BENAVIDES CASTILLO', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('5142', 'TATIANA PISFIL PUEMAPE', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('5143', 'JUAN CARLOS FLORES VARGAS', '2010-07-31', '2', '1');
INSERT INTO `persona` VALUES ('5144', 'DIANA STEFANIA RODRIGUEZ GARCIA', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('5145', 'CLAUDIA SOCORRO GARCIA FERNANDEZ', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('5146', 'ELKIN GONZALEZ MARTINEZ', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('5147', 'LILIANA STEFANNY LOPEZ GONZALEZ', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('5148', 'CARLOS ESTEBAN PISFIL PUEMAPE', '2010-07-26', '2', '1');
INSERT INTO `persona` VALUES ('5149', 'JUAN MANUEL FLORES VARGAS', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('5150', 'CRISTIAN CAMILO RODRIGUEZ GARCIA', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('5151', 'MEYLIN VIVIANA GARCIA FERNANDEZ', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('5152', 'ENRIQUE GONZALEZ MARTINEZ', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('5153', 'MARY LOPEZ GONZALEZ', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('5154', 'CRISTIAN CAMILO PEREZ PEREZ', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('5155', 'MEYLIN VIVIANA MARTINEZ LOPEZ', '2010-02-06', '2', '1');
INSERT INTO `persona` VALUES ('5156', 'YEFERSON RIKI SANCHEZ RODRIGUEZ', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('5157', 'MAURICIO JAVIER FERNANDEZ SANCHEZ', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('5158', 'MONICA ANDREA GOMEZ JIMENEZ', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('5159', 'RENE ALBERTO HERNANDEZ RUIZ', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('5160', 'OSCAR JAVIER DIAZ GOMEZ', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('5161', 'LUIS FELIPE RAMIREZ MARTIN', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('5162', 'TATIANA ALVAREZ ALONSO', '2010-05-23', '2', '1');
INSERT INTO `persona` VALUES ('5163', 'JUAN CARLOS CHEN DIAZ', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('5164', 'DIANA STEFANIA JIMENEZ HERNANDEZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('5165', 'CLAUDIA SOCORRO TORRES MORENO', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('5166', 'ELKIN SINGH GUTIERREZ', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('5167', 'LILIANA STEFANNY RUIZ AGUIRRE', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('5168', 'CARLOS ESTEBAN ROJAS ALVAREZ', '2009-07-21', '2', '1');
INSERT INTO `persona` VALUES ('5169', 'JUAN MANUEL ROMERO GIL', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('5170', 'CHRISTIAN MIGUEL CASTRO SALAZAR', '2009-08-24', '2', '1');
INSERT INTO `persona` VALUES ('5171', 'HECTOR GENTIL FLORES IBAÑEZ', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('5172', 'NELLY YAZMIN MUÑOZ MUÑOZ', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('5173', 'DAMARIS GUTIERREZ URIARTE', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('5174', 'AMANDA VARGAS BLANCO', '2010-08-15', '2', '1');
INSERT INTO `persona` VALUES ('5175', 'ANGIE LORENA DA SILVA PINEDO', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('5176', 'JOSE DENIS MORALES SAEZ', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('5177', 'KAROL JOE CASTILLO ORTIZ DE ZARATE', '2010-08-30', '2', '1');
INSERT INTO `persona` VALUES ('5178', 'CARLOS ALBEIRO MARTIN ORTIZ', '2010-01-08', '2', '1');
INSERT INTO `persona` VALUES ('5179', 'HERNAN ALEXIS MORENO ANGULO', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('5180', 'JORGE ALIRIO SILVA UGARTE', '2010-03-07', '2', '1');
INSERT INTO `persona` VALUES ('5181', 'YESNARDA NAIROBI ORTIZ DIEZ', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('5182', 'DIANA CAROLINA PEREIRA RAMOS', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('5183', 'HAROLD ORLANDO REYES SAENZ', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('5184', 'ZULLY JOHANA RAMOS QUINTANA', '2009-09-03', '2', '1');
INSERT INTO `persona` VALUES ('5185', 'JULIAN CAMILO SUAREZ MARQUINEZ', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('5186', 'MARIA MEDINA ROMERO', '2010-04-25', '2', '1');
INSERT INTO `persona` VALUES ('5187', 'FLOR LIN ORTEGA', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('5188', 'JUAN WANG SANTAMARIA', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('5189', 'ARMANDO HERRERA DOMINGUEZ', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('5190', 'ENRIQUE CRUZ RUIZ DE AZUA', '2010-08-29', '2', '1');
INSERT INTO `persona` VALUES ('5191', 'VERONICA MENDEZ SANZ', '2010-07-19', '2', '1');
INSERT INTO `persona` VALUES ('5192', 'MARIA MARIN ARMENTIA', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('5193', 'FLORES FERREIRA OCHOA', '2009-06-27', '2', '1');
INSERT INTO `persona` VALUES ('5194', 'TOMASA MENDOZA DELGADO', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('5195', 'CRISTIAN CAMILO VASQUEZ RAMIREZ', '2009-11-12', '2', '1');
INSERT INTO `persona` VALUES ('5196', 'MEYLIN VIVIANA CABRERA SANTOS', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('5197', 'YEFERSON RIKI ZHANG LANDA', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('5198', 'MAURICIO JAVIER NUÑEZ ELORZA', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('5199', 'MONICA ANDREA DOS SANTOS CASTILLO', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('5200', 'RENE ALBERTO PISFIL SANZ', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('5201', 'OSCAR JAVIER PUEMAPE ARMENTIA', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('5202', 'LUIS FELIPE FLORES OCHOA', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('5203', 'TATIANA VARGAS DELGADO', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('5204', 'JUAN CARLOS GONZALES RAMIREZ', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('5205', 'DIANA STEFANIA VERA SANTOS', '2010-02-14', '2', '1');
INSERT INTO `persona` VALUES ('5206', 'CLAUDIA SOCORRO MONSALVE LANDA', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('5207', 'ELKIN PEREZ ELORZA', '2010-07-29', '2', '1');
INSERT INTO `persona` VALUES ('5208', 'LILIANA STEFANNY BENAVIDES CASTILLO', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('5209', 'CARLOS ESTEBAN PISFIL PUEMAPE', '2009-10-05', '2', '1');
INSERT INTO `persona` VALUES ('5210', 'JUAN MANUEL FLORES VARGAS', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('5211', 'CRISTIAN CAMILO RODRIGUEZ GARCIA', '2009-06-17', '2', '1');
INSERT INTO `persona` VALUES ('5212', 'MEYLIN VIVIANA GARCIA FERNANDEZ', '2010-03-10', '2', '1');
INSERT INTO `persona` VALUES ('5213', 'ENRIQUE GONZALEZ MARTINEZ', '2010-01-16', '2', '1');
INSERT INTO `persona` VALUES ('5214', 'MARY LOPEZ GONZALEZ', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('5215', 'CRISTIAN CAMILO PEREZ PEREZ', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('5216', 'MEYLIN VIVIANA MARTINEZ LOPEZ', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('5217', 'YEFERSON RIKI SANCHEZ RODRIGUEZ', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('5218', 'MAURICIO JAVIER FERNANDEZ SANCHEZ', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('5219', 'MONICA ANDREA GOMEZ JIMENEZ', '2010-06-24', '2', '1');
INSERT INTO `persona` VALUES ('5220', 'RENE ALBERTO HERNANDEZ RUIZ', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('5221', 'OSCAR JAVIER DIAZ GOMEZ', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('5222', 'LUIS FELIPE RAMIREZ MARTIN', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('5223', 'TATIANA ALVAREZ ALONSO', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('5224', 'JUAN CARLOS CHEN DIAZ', '2009-08-25', '2', '1');
INSERT INTO `persona` VALUES ('5225', 'DIANA STEFANIA JIMENEZ HERNANDEZ', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('5226', 'CLAUDIA SOCORRO TORRES MORENO', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('5227', 'ELKIN SINGH GUTIERREZ', '2009-11-09', '2', '1');
INSERT INTO `persona` VALUES ('5228', 'LILIANA STEFANNY RUIZ AGUIRRE', '2010-06-17', '2', '1');
INSERT INTO `persona` VALUES ('5229', 'CARLOS ESTEBAN ROJAS ALVAREZ', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('5230', 'JUAN MANUEL ROMERO GIL', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('5231', 'CHRISTIAN MIGUEL CASTRO SALAZAR', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('5232', 'HECTOR GENTIL FLORES IBAÑEZ', '2010-09-14', '2', '1');
INSERT INTO `persona` VALUES ('5233', 'NELLY YAZMIN MUÑOZ MUÑOZ', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('5234', 'DAMARIS GUTIERREZ URIARTE', '2009-09-10', '2', '1');
INSERT INTO `persona` VALUES ('5235', 'AMANDA VARGAS BLANCO', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('5236', 'ANGIE LORENA DA SILVA PINEDO', '2010-05-08', '2', '1');
INSERT INTO `persona` VALUES ('5237', 'JOSE DENIS MORALES SAEZ', '2010-06-02', '2', '1');
INSERT INTO `persona` VALUES ('5238', 'KAROL JOE CASTILLO ORTIZ DE ZARATE', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('5239', 'CARLOS ALBEIRO MARTIN ORTIZ', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('5240', 'HERNAN ALEXIS MORENO ANGULO', '2010-08-15', '2', '1');
INSERT INTO `persona` VALUES ('5241', 'JORGE ALIRIO SILVA UGARTE', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('5242', 'YESNARDA NAIROBI ORTIZ DIEZ', '2010-07-26', '2', '1');
INSERT INTO `persona` VALUES ('5243', 'DIANA CAROLINA PEREIRA RAMOS', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('5244', 'HAROLD ORLANDO REYES SAENZ', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('5245', 'ZULLY JOHANA RAMOS QUINTANA', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('5246', 'JULIAN CAMILO SUAREZ MARQUINEZ', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('5247', 'MARIA MEDINA ROMERO', '2009-08-10', '2', '1');
INSERT INTO `persona` VALUES ('5248', 'FLOR LIN ORTEGA', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('5249', 'JUAN WANG SANTAMARIA', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('5250', 'ARMANDO HERRERA DOMINGUEZ', '2010-07-31', '2', '1');
INSERT INTO `persona` VALUES ('5251', 'ENRIQUE CRUZ RUIZ DE AZUA', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('5252', 'VERONICA MENDEZ SANZ', '2010-07-06', '2', '1');
INSERT INTO `persona` VALUES ('5253', 'MARIA MARIN ARMENTIA', '2009-12-17', '2', '1');
INSERT INTO `persona` VALUES ('5254', 'FLORES FERREIRA OCHOA', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('5255', 'TOMASA MENDOZA DELGADO', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('5256', 'CRISTIAN CAMILO VASQUEZ RAMIREZ', '2009-08-14', '2', '1');
INSERT INTO `persona` VALUES ('5257', 'MEYLIN VIVIANA CABRERA SANTOS', '2010-01-09', '2', '1');
INSERT INTO `persona` VALUES ('5258', 'YEFERSON RIKI ZHANG LANDA', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('5259', 'MAURICIO JAVIER NUÑEZ ELORZA', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('5260', 'MONICA ANDREA DOS SANTOS CASTILLO', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('5261', 'RENE ALBERTO PISFIL SANZ', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('5262', 'OSCAR JAVIER PUEMAPE ARMENTIA', '2009-09-08', '2', '1');
INSERT INTO `persona` VALUES ('5263', 'LUIS FELIPE FLORES OCHOA', '2009-10-10', '2', '1');
INSERT INTO `persona` VALUES ('5264', 'TATIANA VARGAS DELGADO', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('5265', 'JUAN CARLOS GONZALES RAMIREZ', '2010-04-22', '2', '1');
INSERT INTO `persona` VALUES ('5266', 'DIANA STEFANIA VERA SANTOS', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('5267', 'CLAUDIA SOCORRO MONSALVE LANDA', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('5268', 'ELKIN PEREZ ELORZA', '2009-09-28', '2', '1');
INSERT INTO `persona` VALUES ('5269', 'LILIANA STEFANNY BENAVIDES CASTILLO', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('5270', 'CARLOS ESTEBAN PISFIL PUEMAPE', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('5271', 'JUAN MANUEL FLORES VARGAS', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('5272', 'CRISTIAN CAMILO RODRIGUEZ GARCIA', '2010-03-07', '2', '1');
INSERT INTO `persona` VALUES ('5273', 'MEYLIN VIVIANA GARCIA FERNANDEZ', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('5274', 'ENRIQUE GONZALEZ MARTINEZ', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('5275', 'MARY LOPEZ GONZALEZ', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('5276', 'CRISTIAN CAMILO PISFIL PUEMAPE', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('5277', 'MEYLIN VIVIANA FLORES VARGAS', '2010-04-25', '2', '1');
INSERT INTO `persona` VALUES ('5278', 'YEFERSON RIKI RODRIGUEZ GARCIA', '2010-03-08', '2', '1');
INSERT INTO `persona` VALUES ('5279', 'MAURICIO JAVIER GARCIA FERNANDEZ', '2010-06-24', '2', '1');
INSERT INTO `persona` VALUES ('5280', 'MONICA ANDREA GONZALEZ MARTINEZ', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('5281', 'RENE ALBERTO LOPEZ GONZALEZ', '2010-04-23', '2', '1');
INSERT INTO `persona` VALUES ('5282', 'OSCAR JAVIER PEREZ PEREZ', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('5283', 'LUIS FELIPE MARTINEZ LOPEZ', '2009-08-04', '2', '1');
INSERT INTO `persona` VALUES ('5284', 'TATIANA SANCHEZ RODRIGUEZ', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('5285', 'JUAN CARLOS FERNANDEZ SANCHEZ', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('5286', 'DIANA STEFANIA GOMEZ JIMENEZ', '2010-04-15', '2', '1');
INSERT INTO `persona` VALUES ('5287', 'CLAUDIA SOCORRO HERNANDEZ RUIZ', '2009-12-03', '2', '1');
INSERT INTO `persona` VALUES ('5288', 'ELKIN DIAZ GOMEZ', '2010-05-28', '2', '1');
INSERT INTO `persona` VALUES ('5289', 'LILIANA STEFANNY RAMIREZ MARTIN', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('5290', 'CARLOS ESTEBAN ALVAREZ ALONSO', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('5291', 'JUAN MANUEL CHEN DIAZ', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('5292', 'CHRISTIAN MIGUEL JIMENEZ HERNANDEZ', '2009-09-14', '2', '1');
INSERT INTO `persona` VALUES ('5293', 'HECTOR GENTIL TORRES MORENO', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('5294', 'NELLY YAZMIN SINGH GUTIERREZ', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('5295', 'DAMARIS RUIZ AGUIRRE', '2010-01-31', '2', '1');
INSERT INTO `persona` VALUES ('5296', 'AMANDA ROJAS ALVAREZ', '2010-06-14', '2', '1');
INSERT INTO `persona` VALUES ('5297', 'ANGIE LORENA ROMERO GIL', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('5298', 'JOSE DENIS CASTRO SALAZAR', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('5299', 'KAROL JOE FLORES IBAÑEZ', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('5300', 'CARLOS ALBEIRO MUÑOZ MUÑOZ', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('5301', 'HERNAN ALEXIS GUTIERREZ URIARTE', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('5302', 'JORGE ALIRIO VARGAS BLANCO', '2010-03-01', '2', '1');
INSERT INTO `persona` VALUES ('5303', 'YESNARDA NAIROBI DA SILVA PINEDO', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('5304', 'DIANA CAROLINA MORALES SAEZ', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('5305', 'HAROLD ORLANDO CASTILLO ORTIZ DE ZARATE', '2010-07-13', '2', '1');
INSERT INTO `persona` VALUES ('5306', 'ZULLY JOHANA MARTIN ORTIZ', '2010-05-20', '2', '1');
INSERT INTO `persona` VALUES ('5307', 'JULIAN CAMILO MORENO ANGULO', '2009-08-23', '2', '1');
INSERT INTO `persona` VALUES ('5308', 'MARIA SILVA UGARTE', '2010-07-27', '2', '1');
INSERT INTO `persona` VALUES ('5309', 'FLOR ORTIZ DIEZ', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('5310', 'JUAN PEREIRA RAMOS', '2010-01-27', '2', '1');
INSERT INTO `persona` VALUES ('5311', 'ARMANDO REYES SAENZ', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('5312', 'ENRIQUE RAMOS QUINTANA', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('5313', 'VERONICA SUAREZ MARQUINEZ', '2010-01-27', '2', '1');
INSERT INTO `persona` VALUES ('5314', 'MARIA MEDINA ROMERO', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('5315', 'FLORES LIN ORTEGA', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('5316', 'TOMASA WANG SANTAMARIA', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('5317', 'CRISTIAN CAMILO HERRERA DOMINGUEZ', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('5318', 'MEYLIN VIVIANA CRUZ RUIZ DE AZUA', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('5319', 'YEFERSON RIKI MENDEZ SANZ', '2010-02-11', '2', '1');
INSERT INTO `persona` VALUES ('5320', 'MAURICIO JAVIER MARIN ARMENTIA', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('5321', 'MONICA ANDREA FERREIRA OCHOA', '2010-02-15', '2', '1');
INSERT INTO `persona` VALUES ('5322', 'RENE ALBERTO MENDOZA DELGADO', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('5323', 'OSCAR JAVIER VASQUEZ RAMIREZ', '2010-05-21', '2', '1');
INSERT INTO `persona` VALUES ('5324', 'LUIS FELIPE CABRERA SANTOS', '2010-04-28', '2', '1');
INSERT INTO `persona` VALUES ('5325', 'TATIANA ZHANG LANDA', '2010-06-14', '2', '1');
INSERT INTO `persona` VALUES ('5326', 'JUAN CARLOS NUÑEZ ELORZA', '2009-09-15', '2', '1');
INSERT INTO `persona` VALUES ('5327', 'DIANA STEFANIA DOS SANTOS CASTILLO', '2010-06-04', '2', '1');
INSERT INTO `persona` VALUES ('5328', 'CLAUDIA SOCORRO PISFIL SANZ', '2009-06-13', '2', '1');
INSERT INTO `persona` VALUES ('5329', 'ELKIN PUEMAPE ARMENTIA', '2009-08-26', '2', '1');
INSERT INTO `persona` VALUES ('5330', 'LILIANA STEFANNY FLORES OCHOA', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('5331', 'CARLOS ESTEBAN VARGAS DELGADO', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('5332', 'JUAN MANUEL GONZALES RAMIREZ', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('5333', 'CRISTIAN CAMILO VERA SANTOS', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('5334', 'MEYLIN VIVIANA MONSALVE LANDA', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('5335', 'ENRIQUE PEREZ ELORZA', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('5336', 'MARY BENAVIDES CASTILLO', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('5337', 'CRISTIAN CAMILO PISFIL PUEMAPE', '2010-07-23', '2', '1');
INSERT INTO `persona` VALUES ('5338', 'MEYLIN VIVIANA FLORES VARGAS', '2009-07-18', '2', '1');
INSERT INTO `persona` VALUES ('5339', 'YEFERSON RIKI RODRIGUEZ GARCIA', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('5340', 'MAURICIO JAVIER GARCIA FERNANDEZ', '2009-10-05', '2', '1');
INSERT INTO `persona` VALUES ('5341', 'MONICA ANDREA GONZALEZ MARTINEZ', '2009-09-04', '2', '1');
INSERT INTO `persona` VALUES ('5342', 'RENE ALBERTO LOPEZ GONZALEZ', '2009-08-18', '2', '1');
INSERT INTO `persona` VALUES ('5343', 'OSCAR JAVIER PEREZ PEREZ', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('5344', 'LUIS FELIPE MARTINEZ LOPEZ', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('5345', 'TATIANA SANCHEZ RODRIGUEZ', '2010-09-08', '2', '1');
INSERT INTO `persona` VALUES ('5346', 'JUAN CARLOS FERNANDEZ SANCHEZ', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('5347', 'DIANA STEFANIA GOMEZ JIMENEZ', '2009-07-12', '2', '1');
INSERT INTO `persona` VALUES ('5348', 'CLAUDIA SOCORRO HERNANDEZ RUIZ', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('5349', 'ELKIN DIAZ GOMEZ', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('5350', 'LILIANA STEFANNY RAMIREZ MARTIN', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('5351', 'CARLOS ESTEBAN ALVAREZ ALONSO', '0000-00-00', '2', '1');
INSERT INTO `persona` VALUES ('5352', 'JUAN MANUEL CHEN DIAZ', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('5353', 'CHRISTIAN MIGUEL JIMENEZ HERNANDEZ', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('5354', 'HECTOR GENTIL TORRES MORENO', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('5355', 'NELLY YAZMIN SINGH GUTIERREZ', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('5356', 'DAMARIS RUIZ AGUIRRE', '2010-05-28', '2', '1');
INSERT INTO `persona` VALUES ('5357', 'AMANDA ROJAS ALVAREZ', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('5358', 'ANGIE LORENA ROMERO GIL', '2009-08-27', '2', '1');
INSERT INTO `persona` VALUES ('5359', 'JOSE DENIS CASTRO SALAZAR', '2010-09-12', '2', '1');
INSERT INTO `persona` VALUES ('5360', 'KAROL JOE FLORES IBAÑEZ', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('5361', 'CARLOS ALBEIRO MUÑOZ MUÑOZ', '2010-03-15', '2', '1');
INSERT INTO `persona` VALUES ('5362', 'HERNAN ALEXIS GUTIERREZ URIARTE', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('5363', 'JORGE ALIRIO VARGAS BLANCO', '2010-05-23', '2', '1');
INSERT INTO `persona` VALUES ('5364', 'YESNARDA NAIROBI DA SILVA PINEDO', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('5365', 'DIANA CAROLINA MORALES SAEZ', '2009-11-21', '2', '1');
INSERT INTO `persona` VALUES ('5366', 'HAROLD ORLANDO CASTILLO ORTIZ DE ZARATE', '2010-08-04', '2', '1');
INSERT INTO `persona` VALUES ('5367', 'ZULLY JOHANA MARTIN ORTIZ', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('5368', 'JULIAN CAMILO MORENO ANGULO', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('5369', 'MARIA SILVA UGARTE', '2010-02-28', '2', '1');
INSERT INTO `persona` VALUES ('5370', 'FLOR ORTIZ DIEZ', '2009-12-28', '2', '1');
INSERT INTO `persona` VALUES ('5371', 'JUAN PEREIRA RAMOS', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('5372', 'ARMANDO REYES SAENZ', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('5373', 'ENRIQUE RAMOS QUINTANA', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('5374', 'VERONICA SUAREZ MARQUINEZ', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('5375', 'MARIA MEDINA ROMERO', '2010-01-15', '2', '1');
INSERT INTO `persona` VALUES ('5376', 'FLORES LIN ORTEGA', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('5377', 'TOMASA WANG SANTAMARIA', '2009-06-15', '2', '1');
INSERT INTO `persona` VALUES ('5378', 'CRISTIAN CAMILO HERRERA DOMINGUEZ', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('5379', 'MEYLIN VIVIANA CRUZ RUIZ DE AZUA', '2009-12-24', '2', '1');
INSERT INTO `persona` VALUES ('5380', 'YEFERSON RIKI MENDEZ SANZ', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('5381', 'MAURICIO JAVIER MARIN ARMENTIA', '2009-06-18', '2', '1');
INSERT INTO `persona` VALUES ('5382', 'MONICA ANDREA FERREIRA OCHOA', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('5383', 'RENE ALBERTO MENDOZA DELGADO', '2009-10-11', '2', '1');
INSERT INTO `persona` VALUES ('5384', 'OSCAR JAVIER VASQUEZ RAMIREZ', '2009-10-08', '2', '1');
INSERT INTO `persona` VALUES ('5385', 'LUIS FELIPE CABRERA SANTOS', '2010-06-13', '2', '1');
INSERT INTO `persona` VALUES ('5386', 'TATIANA ZHANG LANDA', '2010-01-27', '2', '1');
INSERT INTO `persona` VALUES ('5387', 'JUAN CARLOS NUÑEZ ELORZA', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('5388', 'DIANA STEFANIA DOS SANTOS CASTILLO', '2010-08-16', '2', '1');
INSERT INTO `persona` VALUES ('5389', 'CLAUDIA SOCORRO PISFIL SANZ', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('5390', 'ELKIN PUEMAPE ARMENTIA', '2010-03-09', '2', '1');
INSERT INTO `persona` VALUES ('5391', 'LILIANA STEFANNY FLORES OCHOA', '2010-08-04', '2', '1');
INSERT INTO `persona` VALUES ('5392', 'CARLOS ESTEBAN VARGAS DELGADO', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('5393', 'JUAN MANUEL GONZALES RAMIREZ', '2010-05-11', '2', '1');
INSERT INTO `persona` VALUES ('5394', 'CRISTIAN CAMILO VERA SANTOS', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('5395', 'MEYLIN VIVIANA MONSALVE LANDA', '2009-10-01', '2', '1');
INSERT INTO `persona` VALUES ('5396', 'ENRIQUE PEREZ ELORZA', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('5397', 'MARY BENAVIDES CASTILLO', '2009-10-16', '2', '1');
INSERT INTO `persona` VALUES ('5398', 'CRISTIAN CAMILO PISFIL PUEMAPE', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('5399', 'MEYLIN VIVIANA FLORES VARGAS', '2010-03-07', '2', '1');
INSERT INTO `persona` VALUES ('5400', 'YEFERSON RIKI RODRIGUEZ GARCIA', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('5401', 'MAURICIO JAVIER GARCIA FERNANDEZ', '2009-06-15', '2', '1');
INSERT INTO `persona` VALUES ('5402', 'MONICA ANDREA GONZALEZ MARTINEZ', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('5403', 'RENE ALBERTO LOPEZ GONZALEZ', '2010-06-15', '2', '1');
INSERT INTO `persona` VALUES ('5404', 'OSCAR JAVIER PISFIL PUEMAPE', '2009-06-27', '2', '1');
INSERT INTO `persona` VALUES ('5405', 'LUIS FELIPE FLORES VARGAS', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('5406', 'TATIANA RODRIGUEZ GARCIA', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('5407', 'JUAN CARLOS GARCIA FERNANDEZ', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('5408', 'DIANA STEFANIA GONZALEZ MARTINEZ', '2010-08-16', '2', '1');
INSERT INTO `persona` VALUES ('5409', 'CLAUDIA SOCORRO LOPEZ GONZALEZ', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('5410', 'ELKIN PEREZ PEREZ', '2009-12-27', '2', '1');
INSERT INTO `persona` VALUES ('5411', 'LILIANA STEFANNY MARTINEZ LOPEZ', '2009-12-10', '2', '1');
INSERT INTO `persona` VALUES ('5412', 'CARLOS ESTEBAN SANCHEZ RODRIGUEZ', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('5413', 'JUAN MANUEL FERNANDEZ SANCHEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('5414', 'CHRISTIAN MIGUEL GOMEZ JIMENEZ', '2010-05-08', '2', '1');
INSERT INTO `persona` VALUES ('5415', 'HECTOR GENTIL HERNANDEZ RUIZ', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('5416', 'NELLY YAZMIN DIAZ GOMEZ', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('5417', 'DAMARIS RAMIREZ MARTIN', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('5418', 'LORENZO AYASTA ALONSO 1', '0000-00-00', '2', '2');
INSERT INTO `persona` VALUES ('5419', 'ANGIE LORENA CHEN DIAZ', '2010-03-23', '2', '1');
INSERT INTO `persona` VALUES ('5420', 'JOSE DENIS JIMENEZ HERNANDEZ', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('5421', 'KAROL JOE TORRES MORENO', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('5422', 'CARLOS ALBEIRO SINGH GUTIERREZ', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('5423', 'HERNAN ALEXIS RUIZ AGUIRRE', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('5424', 'JORGE ALIRIO ROJAS ALVAREZ', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('5425', 'YESNARDA NAIROBI ROMERO GIL', '2010-02-06', '2', '1');
INSERT INTO `persona` VALUES ('5426', 'DIANA CAROLINA CASTRO SALAZAR', '2009-11-19', '2', '1');
INSERT INTO `persona` VALUES ('5427', 'HAROLD ORLANDO FLORES IBAÑEZ', '2010-07-06', '2', '1');
INSERT INTO `persona` VALUES ('5428', 'ZULLY JOHANA MUÑOZ MUÑOZ', '2010-02-28', '2', '1');
INSERT INTO `persona` VALUES ('5429', 'JULIAN CAMILO GUTIERREZ URIARTE', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('5430', 'MARIA VARGAS BLANCO', '2009-09-27', '2', '1');
INSERT INTO `persona` VALUES ('5431', 'FLOR DA SILVA PINEDO', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('5432', 'JUAN MORALES SAEZ', '2010-06-30', '2', '1');
INSERT INTO `persona` VALUES ('5433', 'ARMANDO CASTILLO ORTIZ DE ZARATE', '2009-11-28', '2', '1');
INSERT INTO `persona` VALUES ('5434', 'ENRIQUE MARTIN ORTIZ', '2010-07-18', '2', '1');
INSERT INTO `persona` VALUES ('5435', 'VERONICA MORENO ANGULO', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('5436', 'MARIA SILVA UGARTE', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('5437', 'FLORES ORTIZ DIEZ', '2009-11-21', '2', '1');
INSERT INTO `persona` VALUES ('5438', 'TOMASA PEREIRA RAMOS', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('5439', 'CRISTIAN CAMILO REYES SAENZ', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('5440', 'MEYLIN VIVIANA RAMOS QUINTANA', '2010-02-05', '2', '1');
INSERT INTO `persona` VALUES ('5441', 'YEFERSON RIKI SUAREZ MARQUINEZ', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('5442', 'MAURICIO JAVIER MEDINA ROMERO', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('5443', 'MONICA ANDREA LIN ORTEGA', '2009-11-11', '2', '1');
INSERT INTO `persona` VALUES ('5444', 'RENE ALBERTO WANG SANTAMARIA', '2010-06-20', '2', '1');
INSERT INTO `persona` VALUES ('5445', 'OSCAR JAVIER HERRERA DOMINGUEZ', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('5446', 'LUIS FELIPE CRUZ RUIZ DE AZUA', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('5447', 'TATIANA MENDEZ SANZ', '2010-09-14', '2', '1');
INSERT INTO `persona` VALUES ('5448', 'JUAN CARLOS MARIN ARMENTIA', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('5449', 'DIANA STEFANIA FERREIRA OCHOA', '2009-08-19', '2', '1');
INSERT INTO `persona` VALUES ('5450', 'CLAUDIA SOCORRO MENDOZA DELGADO', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('5451', 'ELKIN VASQUEZ RAMIREZ', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('5452', 'LILIANA STEFANNY CABRERA SANTOS', '2009-12-23', '2', '1');
INSERT INTO `persona` VALUES ('5453', 'CARLOS ESTEBAN ZHANG LANDA', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('5454', 'JUAN MANUEL NUÑEZ ELORZA', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('5455', 'CRISTIAN CAMILO DOS SANTOS CASTILLO', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('5456', 'MEYLIN VIVIANA PISFIL SANZ', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('5457', 'ENRIQUE PUEMAPE ARMENTIA', '2010-04-22', '2', '1');
INSERT INTO `persona` VALUES ('5458', 'MARY FLORES OCHOA', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('5459', 'CRISTIAN CAMILO VARGAS DELGADO', '2009-09-30', '2', '1');
INSERT INTO `persona` VALUES ('5460', 'MEYLIN VIVIANA GONZALES RAMIREZ', '2009-08-25', '2', '1');
INSERT INTO `persona` VALUES ('5461', 'YEFERSON RIKI VERA SANTOS', '2010-07-26', '2', '1');
INSERT INTO `persona` VALUES ('5462', 'MAURICIO JAVIER MONSALVE LANDA', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('5463', 'MONICA ANDREA PEREZ ELORZA', '2009-12-08', '2', '1');
INSERT INTO `persona` VALUES ('5464', 'RENE ALBERTO BENAVIDES CASTILLO', '2009-11-16', '2', '1');
INSERT INTO `persona` VALUES ('5465', 'OSCAR JAVIER PISFIL PUEMAPE', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('5466', 'LUIS FELIPE FLORES VARGAS', '2010-05-29', '2', '1');
INSERT INTO `persona` VALUES ('5467', 'TATIANA RODRIGUEZ GARCIA', '2010-01-05', '2', '1');
INSERT INTO `persona` VALUES ('5468', 'JUAN CARLOS GARCIA FERNANDEZ', '2010-05-21', '2', '1');
INSERT INTO `persona` VALUES ('5469', 'DIANA STEFANIA GONZALEZ MARTINEZ', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('5470', 'CLAUDIA SOCORRO LOPEZ GONZALEZ', '2009-08-01', '2', '1');
INSERT INTO `persona` VALUES ('5471', 'ELKIN PEREZ PEREZ', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('5472', 'LILIANA STEFANNY MARTINEZ LOPEZ', '2009-12-01', '2', '1');
INSERT INTO `persona` VALUES ('5473', 'CARLOS ESTEBAN SANCHEZ RODRIGUEZ', '2009-12-06', '2', '1');
INSERT INTO `persona` VALUES ('5474', 'JUAN MANUEL FERNANDEZ SANCHEZ', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('5475', 'CHRISTIAN MIGUEL GOMEZ JIMENEZ', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('5476', 'HECTOR GENTIL HERNANDEZ RUIZ', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('5477', 'NELLY YAZMIN DIAZ GOMEZ', '2009-10-21', '2', '1');
INSERT INTO `persona` VALUES ('5478', 'DAMARIS RAMIREZ MARTIN', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('5479', 'AMANDA ALVAREZ ALONSO', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('5480', 'ANGIE LORENA CHEN DIAZ', '2009-12-18', '2', '1');
INSERT INTO `persona` VALUES ('5481', 'JOSE DENIS JIMENEZ HERNANDEZ', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('5482', 'KAROL JOE TORRES MORENO', '2010-08-28', '2', '1');
INSERT INTO `persona` VALUES ('5483', 'CARLOS ALBEIRO SINGH GUTIERREZ', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('5484', 'HERNAN ALEXIS RUIZ AGUIRRE', '2010-03-15', '2', '1');
INSERT INTO `persona` VALUES ('5485', 'JORGE ALIRIO ROJAS ALVAREZ', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('5486', 'YESNARDA NAIROBI ROMERO GIL', '2009-09-20', '2', '1');
INSERT INTO `persona` VALUES ('5487', 'DIANA CAROLINA CASTRO SALAZAR', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('5488', 'HAROLD ORLANDO FLORES IBAÑEZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('5489', 'ZULLY JOHANA MUÑOZ MUÑOZ', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('5490', 'JULIAN CAMILO GUTIERREZ URIARTE', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('5491', 'MARIA VARGAS BLANCO', '2009-08-05', '2', '1');
INSERT INTO `persona` VALUES ('5492', 'FLOR DA SILVA PINEDO', '2010-03-08', '2', '1');
INSERT INTO `persona` VALUES ('5493', 'JUAN MORALES SAEZ', '2009-08-17', '2', '1');
INSERT INTO `persona` VALUES ('5494', 'ARMANDO CASTILLO ORTIZ DE ZARATE', '2010-01-03', '2', '1');
INSERT INTO `persona` VALUES ('5495', 'ENRIQUE MARTIN ORTIZ', '2010-07-07', '2', '1');
INSERT INTO `persona` VALUES ('5496', 'VERONICA MORENO ANGULO', '2010-05-11', '2', '1');
INSERT INTO `persona` VALUES ('5497', 'MARIA SILVA UGARTE', '2010-01-23', '2', '1');
INSERT INTO `persona` VALUES ('5498', 'FLORES ORTIZ DIEZ', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('5499', 'TOMASA PEREIRA RAMOS', '2010-09-05', '2', '1');
INSERT INTO `persona` VALUES ('5500', 'CRISTIAN CAMILO REYES SAENZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('5501', 'MEYLIN VIVIANA RAMOS QUINTANA', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('5502', 'YEFERSON RIKI SUAREZ MARQUINEZ', '2010-08-20', '2', '1');
INSERT INTO `persona` VALUES ('5503', 'MAURICIO JAVIER MEDINA ROMERO', '2009-11-25', '2', '1');
INSERT INTO `persona` VALUES ('5504', 'MONICA ANDREA LIN ORTEGA', '2010-08-05', '2', '1');
INSERT INTO `persona` VALUES ('5505', 'RENE ALBERTO WANG SANTAMARIA', '2010-07-26', '2', '1');
INSERT INTO `persona` VALUES ('5506', 'OSCAR JAVIER HERRERA DOMINGUEZ', '2009-08-30', '2', '1');
INSERT INTO `persona` VALUES ('5507', 'LUIS FELIPE CRUZ RUIZ DE AZUA', '2010-07-23', '2', '1');
INSERT INTO `persona` VALUES ('5508', 'TATIANA MENDEZ SANZ', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('5509', 'JUAN CARLOS MARIN ARMENTIA', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('5510', 'DIANA STEFANIA FERREIRA OCHOA', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('5511', 'CLAUDIA SOCORRO MENDOZA DELGADO', '2009-10-20', '2', '1');
INSERT INTO `persona` VALUES ('5512', 'ELKIN VASQUEZ RAMIREZ', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('5513', 'LILIANA STEFANNY CABRERA SANTOS', '2009-08-12', '2', '1');
INSERT INTO `persona` VALUES ('5514', 'CARLOS ESTEBAN ZHANG LANDA', '2009-07-21', '2', '1');
INSERT INTO `persona` VALUES ('5515', 'JUAN MANUEL NUÑEZ ELORZA', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('5516', 'CRISTIAN CAMILO DOS SANTOS CASTILLO', '2009-09-27', '2', '1');
INSERT INTO `persona` VALUES ('5517', 'MEYLIN VIVIANA PISFIL SANZ', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('5518', 'ENRIQUE PUEMAPE ARMENTIA', '2010-08-11', '2', '1');
INSERT INTO `persona` VALUES ('5519', 'MARY FLORES OCHOA', '2010-01-10', '2', '1');
INSERT INTO `persona` VALUES ('5520', 'CRISTIAN CAMILO VARGAS DELGADO', '2009-11-11', '2', '1');
INSERT INTO `persona` VALUES ('5521', 'MEYLIN VIVIANA GONZALES RAMIREZ', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('5522', 'YEFERSON RIKI VERA SANTOS', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('5523', 'MAURICIO JAVIER MONSALVE LANDA', '2009-08-10', '2', '1');
INSERT INTO `persona` VALUES ('5524', 'MONICA ANDREA PEREZ ELORZA', '2010-01-06', '2', '1');
INSERT INTO `persona` VALUES ('5525', 'RENE ALBERTO BENAVIDES CASTILLO', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('5526', 'OSCAR JAVIER PISFIL PUEMAPE', '2010-03-03', '2', '1');
INSERT INTO `persona` VALUES ('5527', 'LUIS FELIPE FLORES VARGAS', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('5528', 'TATIANA RODRIGUEZ GARCIA', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('5529', 'JUAN CARLOS GARCIA FERNANDEZ', '2010-09-04', '2', '1');
INSERT INTO `persona` VALUES ('5530', 'DIANA STEFANIA GONZALEZ MARTINEZ', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('5531', 'CLAUDIA SOCORRO LOPEZ GONZALEZ', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('5532', 'ELKIN PISFIL PUEMAPE', '2010-03-21', '2', '1');
INSERT INTO `persona` VALUES ('5533', 'LILIANA STEFANNY FLORES VARGAS', '2010-03-22', '2', '1');
INSERT INTO `persona` VALUES ('5534', 'CARLOS ESTEBAN RODRIGUEZ GARCIA', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('5535', 'JUAN MANUEL GARCIA FERNANDEZ', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('5536', 'CHRISTIAN MIGUEL GONZALEZ MARTINEZ', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('5537', 'HECTOR GENTIL LOPEZ GONZALEZ', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('5538', 'NELLY YAZMIN PEREZ PEREZ', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('5539', 'DAMARIS MARTINEZ LOPEZ', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('5540', 'AMANDA SANCHEZ RODRIGUEZ', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('5541', 'ANGIE LORENA FERNANDEZ SANCHEZ', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('5542', 'JOSE DENIS GOMEZ JIMENEZ', '2009-06-10', '2', '1');
INSERT INTO `persona` VALUES ('5543', 'KAROL JOE HERNANDEZ RUIZ', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('5544', 'CARLOS ALBEIRO DIAZ GOMEZ', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('5545', 'HERNAN ALEXIS RAMIREZ MARTIN', '2010-04-28', '2', '1');
INSERT INTO `persona` VALUES ('5546', 'JORGE ALIRIO ALVAREZ ALONSO', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('5547', 'YESNARDA NAIROBI CHEN DIAZ', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('5548', 'DIANA CAROLINA JIMENEZ HERNANDEZ', '2010-03-06', '2', '1');
INSERT INTO `persona` VALUES ('5549', 'HAROLD ORLANDO TORRES MORENO', '2009-08-15', '2', '1');
INSERT INTO `persona` VALUES ('5550', 'ZULLY JOHANA SINGH GUTIERREZ', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('5551', 'JULIAN CAMILO RUIZ AGUIRRE', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('5552', 'MARIA ROJAS ALVAREZ', '2009-11-12', '2', '1');
INSERT INTO `persona` VALUES ('5553', 'FLOR ROMERO GIL', '2010-05-09', '2', '1');
INSERT INTO `persona` VALUES ('5554', 'JUAN CASTRO SALAZAR', '2009-10-05', '2', '1');
INSERT INTO `persona` VALUES ('5555', 'ARMANDO FLORES IBAÑEZ', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('5556', 'ENRIQUE MUÑOZ MUÑOZ', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('5557', 'VERONICA GUTIERREZ URIARTE', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('5558', 'MARIA VARGAS BLANCO', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('5559', 'FLORES DA SILVA PINEDO', '2010-06-26', '2', '1');
INSERT INTO `persona` VALUES ('5560', 'TOMASA MORALES SAEZ', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('5561', 'CRISTIAN CAMILO CASTILLO ORTIZ DE ZARATE', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('5562', 'MEYLIN VIVIANA MARTIN ORTIZ', '2010-06-12', '2', '1');
INSERT INTO `persona` VALUES ('5563', 'YEFERSON RIKI MORENO ANGULO', '2009-11-13', '2', '1');
INSERT INTO `persona` VALUES ('5564', 'MAURICIO JAVIER SILVA UGARTE', '2009-06-24', '2', '1');
INSERT INTO `persona` VALUES ('5565', 'MONICA ANDREA ORTIZ DIEZ', '2010-06-09', '2', '1');
INSERT INTO `persona` VALUES ('5566', 'RENE ALBERTO PEREIRA RAMOS', '2009-09-21', '2', '1');
INSERT INTO `persona` VALUES ('5567', 'OSCAR JAVIER REYES SAENZ', '2009-09-11', '2', '1');
INSERT INTO `persona` VALUES ('5568', 'LUIS FELIPE RAMOS QUINTANA', '2010-05-16', '2', '1');
INSERT INTO `persona` VALUES ('5569', 'TATIANA SUAREZ MARQUINEZ', '2009-11-06', '2', '1');
INSERT INTO `persona` VALUES ('5570', 'JUAN CARLOS MEDINA ROMERO', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('5571', 'DIANA STEFANIA LIN ORTEGA', '2009-06-26', '2', '1');
INSERT INTO `persona` VALUES ('5572', 'CLAUDIA SOCORRO WANG SANTAMARIA', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('5573', 'ELKIN HERRERA DOMINGUEZ', '2009-08-14', '2', '1');
INSERT INTO `persona` VALUES ('5574', 'LILIANA STEFANNY CRUZ RUIZ DE AZUA', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('5575', 'CARLOS ESTEBAN MENDEZ SANZ', '2010-03-27', '2', '1');
INSERT INTO `persona` VALUES ('5576', 'JUAN MANUEL MARIN ARMENTIA', '2009-08-16', '2', '1');
INSERT INTO `persona` VALUES ('5577', 'CRISTIAN CAMILO FERREIRA OCHOA', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('5578', 'MEYLIN VIVIANA MENDOZA DELGADO', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('5579', 'ENRIQUE VASQUEZ RAMIREZ', '2009-10-06', '2', '1');
INSERT INTO `persona` VALUES ('5580', 'MARY CABRERA SANTOS', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('5581', 'CRISTIAN CAMILO ZHANG LANDA', '2009-09-01', '2', '1');
INSERT INTO `persona` VALUES ('5582', 'MEYLIN VIVIANA NUÑEZ ELORZA', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('5583', 'YEFERSON RIKI DOS SANTOS CASTILLO', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('5584', 'MAURICIO JAVIER PISFIL SANZ', '2010-02-12', '2', '1');
INSERT INTO `persona` VALUES ('5585', 'MONICA ANDREA PUEMAPE ARMENTIA', '2009-09-27', '2', '1');
INSERT INTO `persona` VALUES ('5586', 'RENE ALBERTO FLORES OCHOA', '2010-03-09', '2', '1');
INSERT INTO `persona` VALUES ('5587', 'OSCAR JAVIER VARGAS DELGADO', '2009-06-25', '2', '1');
INSERT INTO `persona` VALUES ('5588', 'LUIS FELIPE GONZALES RAMIREZ', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('5589', 'TATIANA VERA SANTOS', '2010-02-20', '2', '1');
INSERT INTO `persona` VALUES ('5590', 'ENRIQUE MONSALVE LANDA', '2010-03-28', '2', '1');
INSERT INTO `persona` VALUES ('5591', 'MARY PEREZ ELORZA', '2009-07-24', '2', '1');
INSERT INTO `persona` VALUES ('5592', 'CRISTIAN CAMILO BENAVIDES CASTILLO', '2009-10-19', '2', '1');
INSERT INTO `persona` VALUES ('5593', 'MEYLIN VIVIANA PISFIL PUEMAPE', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('5594', 'YEFERSON RIKI FLORES VARGAS', '2009-06-22', '2', '1');
INSERT INTO `persona` VALUES ('5595', 'MAURICIO JAVIER RODRIGUEZ GARCIA', '2010-02-02', '2', '1');
INSERT INTO `persona` VALUES ('5596', 'MONICA ANDREA GARCIA FERNANDEZ', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('5597', 'RENE ALBERTO GONZALEZ MARTINEZ', '2009-09-24', '2', '1');
INSERT INTO `persona` VALUES ('5598', 'OSCAR JAVIER LOPEZ GONZALEZ', '2010-02-01', '2', '1');
INSERT INTO `persona` VALUES ('5599', 'LUIS FELIPE PEREZ PEREZ', '2010-09-08', '2', '1');
INSERT INTO `persona` VALUES ('5600', 'TATIANA MARTINEZ LOPEZ', '2010-09-05', '2', '1');
INSERT INTO `persona` VALUES ('5601', 'JUAN CARLOS SANCHEZ RODRIGUEZ', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('5602', 'DIANA STEFANIA FERNANDEZ SANCHEZ', '2009-12-15', '2', '1');
INSERT INTO `persona` VALUES ('5603', 'CLAUDIA SOCORRO GOMEZ JIMENEZ', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('5604', 'ELKIN HERNANDEZ RUIZ', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('5605', 'LILIANA STEFANNY DIAZ GOMEZ', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('5606', 'CARLOS ESTEBAN RAMIREZ MARTIN', '2010-02-03', '2', '1');
INSERT INTO `persona` VALUES ('5607', 'JUAN MANUEL ALVAREZ ALONSO', '2009-12-06', '2', '1');
INSERT INTO `persona` VALUES ('5608', 'CHRISTIAN MIGUEL CHEN DIAZ', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('5609', 'HECTOR GENTIL JIMENEZ HERNANDEZ', '2009-07-13', '2', '1');
INSERT INTO `persona` VALUES ('5610', 'NELLY YAZMIN TORRES MORENO', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('5611', 'DAMARIS SINGH GUTIERREZ', '2010-07-04', '2', '1');
INSERT INTO `persona` VALUES ('5612', 'AMANDA RUIZ AGUIRRE', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('5613', 'ANGIE LORENA ROJAS ALVAREZ', '2009-08-21', '2', '1');
INSERT INTO `persona` VALUES ('5614', 'JOSE DENIS ROMERO GIL', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('5615', 'KAROL JOE CASTRO SALAZAR', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('5616', 'CARLOS ALBEIRO FLORES IBAÑEZ', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('5617', 'HERNAN ALEXIS MUÑOZ MUÑOZ', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('5618', 'JORGE ALIRIO GUTIERREZ URIARTE', '2009-08-10', '2', '1');
INSERT INTO `persona` VALUES ('5619', 'YESNARDA NAIROBI VARGAS BLANCO', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('5620', 'DIANA CAROLINA DA SILVA PINEDO', '2009-07-22', '2', '1');
INSERT INTO `persona` VALUES ('5621', 'HAROLD ORLANDO MORALES SAEZ', '2009-08-18', '2', '1');
INSERT INTO `persona` VALUES ('5622', 'ZULLY JOHANA CASTILLO ORTIZ DE ZARATE', '2010-04-06', '2', '1');
INSERT INTO `persona` VALUES ('5623', 'JULIAN CAMILO MARTIN ORTIZ', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('5624', 'MARIA MORENO ANGULO', '2010-08-07', '2', '1');
INSERT INTO `persona` VALUES ('5625', 'FLOR SILVA UGARTE', '2010-03-31', '2', '1');
INSERT INTO `persona` VALUES ('5626', 'JUAN ORTIZ DIEZ', '2010-02-20', '2', '1');
INSERT INTO `persona` VALUES ('5627', 'ARMANDO PEREIRA RAMOS', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('5628', 'ENRIQUE REYES SAENZ', '2009-12-05', '2', '1');
INSERT INTO `persona` VALUES ('5629', 'MARY RAMOS QUINTANA', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('5630', 'CRISTIAN CAMILO SUAREZ MARQUINEZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('5631', 'MEYLIN VIVIANA MEDINA ROMERO', '2009-10-29', '2', '1');
INSERT INTO `persona` VALUES ('5632', 'YEFERSON RIKI LIN ORTEGA', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('5633', 'MAURICIO JAVIER WANG SANTAMARIA', '2009-07-19', '2', '1');
INSERT INTO `persona` VALUES ('5634', 'MONICA ANDREA HERRERA DOMINGUEZ', '2009-09-10', '2', '1');
INSERT INTO `persona` VALUES ('5635', 'RENE ALBERTO CRUZ RUIZ DE AZUA', '2010-04-18', '2', '1');
INSERT INTO `persona` VALUES ('5636', 'OSCAR JAVIER MENDEZ SANZ', '2010-07-28', '2', '1');
INSERT INTO `persona` VALUES ('5637', 'LUIS FELIPE MARIN ARMENTIA', '2009-11-03', '2', '1');
INSERT INTO `persona` VALUES ('5638', 'TATIANA FERREIRA OCHOA', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('5639', 'JUAN CARLOS MENDOZA DELGADO', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('5640', 'DIANA STEFANIA VASQUEZ RAMIREZ', '2010-02-20', '2', '1');
INSERT INTO `persona` VALUES ('5641', 'CLAUDIA SOCORRO CABRERA SANTOS', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('5642', 'ELKIN ZHANG LANDA', '2010-03-25', '2', '1');
INSERT INTO `persona` VALUES ('5643', 'LILIANA STEFANNY NUÑEZ ELORZA', '2009-09-09', '2', '1');
INSERT INTO `persona` VALUES ('5644', 'CARLOS ESTEBAN DOS SANTOS CASTILLO', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('5645', 'JUAN MANUEL PISFIL SANZ', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('5646', 'CHRISTIAN MIGUEL PUEMAPE ARMENTIA', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('5647', 'HECTOR GENTIL FLORES OCHOA', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('5648', 'NELLY YAZMIN VARGAS DELGADO', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('5649', 'DAMARIS GONZALES RAMIREZ', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('5650', 'AMANDA VERA SANTOS', '2009-07-10', '2', '1');
INSERT INTO `persona` VALUES ('5651', 'ANGIE LORENA MONSALVE LANDA', '2009-12-20', '2', '1');
INSERT INTO `persona` VALUES ('5652', 'JOSE DENIS PEREZ ELORZA', '2010-06-08', '2', '1');
INSERT INTO `persona` VALUES ('5653', 'KAROL JOE BENAVIDES CASTILLO', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('5654', 'CARLOS ALBEIRO PISFIL PUEMAPE', '2010-01-30', '2', '1');
INSERT INTO `persona` VALUES ('5655', 'HERNAN ALEXIS FLORES VARGAS', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('5656', 'JORGE ALIRIO RODRIGUEZ GARCIA', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('5657', 'YESNARDA NAIROBI GARCIA FERNANDEZ', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('5658', 'DIANA CAROLINA GONZALEZ MARTINEZ', '2009-06-13', '2', '1');
INSERT INTO `persona` VALUES ('5659', 'HAROLD ORLANDO LOPEZ GONZALEZ', '2010-05-21', '2', '1');
INSERT INTO `persona` VALUES ('5660', 'ZULLY JOHANA PISFIL PUEMAPE', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('5661', 'JULIAN CAMILO FLORES VARGAS', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('5662', 'MARIA RODRIGUEZ GARCIA', '2009-06-14', '2', '1');
INSERT INTO `persona` VALUES ('5663', 'FLOR GARCIA FERNANDEZ', '2009-09-10', '2', '1');
INSERT INTO `persona` VALUES ('5664', 'JUAN GONZALEZ MARTINEZ', '2009-12-02', '2', '1');
INSERT INTO `persona` VALUES ('5665', 'ARMANDO LOPEZ GONZALEZ', '2009-10-28', '2', '1');
INSERT INTO `persona` VALUES ('5666', 'ENRIQUE PEREZ PEREZ', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('5667', 'VERONICA MARTINEZ LOPEZ', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('5668', 'MARIA SANCHEZ RODRIGUEZ', '2009-09-17', '2', '1');
INSERT INTO `persona` VALUES ('5669', 'FLORES FERNANDEZ SANCHEZ', '2010-06-21', '2', '1');
INSERT INTO `persona` VALUES ('5670', 'TOMASA GOMEZ JIMENEZ', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('5671', 'CRISTIAN CAMILO HERNANDEZ RUIZ', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('5672', 'MEYLIN VIVIANA DIAZ GOMEZ', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('5673', 'YEFERSON RIKI RAMIREZ MARTIN', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('5674', 'MAURICIO JAVIER ALVAREZ ALONSO', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('5675', 'MONICA ANDREA CHEN DIAZ', '2010-05-18', '2', '1');
INSERT INTO `persona` VALUES ('5676', 'RENE ALBERTO JIMENEZ HERNANDEZ', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('5677', 'OSCAR JAVIER TORRES MORENO', '2010-01-04', '2', '1');
INSERT INTO `persona` VALUES ('5678', 'LUIS FELIPE SINGH GUTIERREZ', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('5679', 'TATIANA RUIZ AGUIRRE', '2010-09-11', '2', '1');
INSERT INTO `persona` VALUES ('5680', 'JUAN CARLOS ROJAS ALVAREZ', '2009-12-12', '2', '1');
INSERT INTO `persona` VALUES ('5681', 'DIANA STEFANIA ROMERO GIL', '2010-03-16', '2', '1');
INSERT INTO `persona` VALUES ('5682', 'CLAUDIA SOCORRO CASTRO SALAZAR', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('5683', 'ELKIN FLORES IBAÑEZ', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('5684', 'LILIANA STEFANNY MUÑOZ MUÑOZ', '2009-07-30', '2', '1');
INSERT INTO `persona` VALUES ('5685', 'CARLOS ESTEBAN GUTIERREZ URIARTE', '2010-09-01', '2', '1');
INSERT INTO `persona` VALUES ('5686', 'JUAN MANUEL VARGAS BLANCO', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('5687', 'CRISTIAN CAMILO DA SILVA PINEDO', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('5688', 'MEYLIN VIVIANA MORALES SAEZ', '2010-08-14', '2', '1');
INSERT INTO `persona` VALUES ('5689', 'ENRIQUE CASTILLO ORTIZ DE ZARATE', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('5690', 'MARY MARTIN ORTIZ', '2009-09-22', '2', '1');
INSERT INTO `persona` VALUES ('5691', 'CRISTIAN CAMILO MORENO ANGULO', '2010-01-16', '2', '1');
INSERT INTO `persona` VALUES ('5692', 'MEYLIN VIVIANA SILVA UGARTE', '2009-12-11', '2', '1');
INSERT INTO `persona` VALUES ('5693', 'YEFERSON RIKI ORTIZ DIEZ', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('5694', 'MAURICIO JAVIER PEREIRA RAMOS', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('5695', 'MONICA ANDREA REYES SAENZ', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('5696', 'RENE ALBERTO RAMOS QUINTANA', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('5697', 'OSCAR JAVIER SUAREZ MARQUINEZ', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('5698', 'LUIS FELIPE MEDINA ROMERO', '2010-03-03', '2', '1');
INSERT INTO `persona` VALUES ('5699', 'TATIANA LIN ORTEGA', '2010-06-23', '2', '1');
INSERT INTO `persona` VALUES ('5700', 'JUAN CARLOS WANG SANTAMARIA', '2010-08-03', '2', '1');
INSERT INTO `persona` VALUES ('5701', 'DIANA STEFANIA HERRERA DOMINGUEZ', '2010-06-26', '2', '1');
INSERT INTO `persona` VALUES ('5702', 'CLAUDIA SOCORRO CRUZ RUIZ DE AZUA', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('5703', 'ELKIN MENDEZ SANZ', '2009-11-06', '2', '1');
INSERT INTO `persona` VALUES ('5704', 'LILIANA STEFANNY MARIN ARMENTIA', '2009-09-02', '2', '1');
INSERT INTO `persona` VALUES ('5705', 'CARLOS ESTEBAN FERREIRA OCHOA', '2010-07-25', '2', '1');
INSERT INTO `persona` VALUES ('5706', 'JUAN MANUEL MENDOZA DELGADO', '2009-07-04', '2', '1');
INSERT INTO `persona` VALUES ('5707', 'CHRISTIAN MIGUEL VASQUEZ RAMIREZ', '2009-08-20', '2', '1');
INSERT INTO `persona` VALUES ('5708', 'HECTOR GENTIL CABRERA SANTOS', '2009-11-24', '2', '1');
INSERT INTO `persona` VALUES ('5709', 'NELLY YAZMIN ZHANG LANDA', '2009-07-14', '2', '1');
INSERT INTO `persona` VALUES ('5710', 'DAMARIS NUÑEZ ELORZA', '2010-04-19', '2', '1');
INSERT INTO `persona` VALUES ('5711', 'AMANDA DOS SANTOS CASTILLO', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('5712', 'ANGIE LORENA PISFIL SANZ', '2010-04-14', '2', '1');
INSERT INTO `persona` VALUES ('5713', 'JOSE DENIS PUEMAPE ARMENTIA', '2009-11-01', '2', '1');
INSERT INTO `persona` VALUES ('5714', 'KAROL JOE FLORES OCHOA', '2010-06-05', '2', '1');
INSERT INTO `persona` VALUES ('5715', 'CARLOS ALBEIRO VARGAS DELGADO', '2009-06-27', '2', '1');
INSERT INTO `persona` VALUES ('5716', 'HERNAN ALEXIS GONZALES RAMIREZ', '2009-07-09', '2', '1');
INSERT INTO `persona` VALUES ('5717', 'JORGE ALIRIO VERA SANTOS', '2009-10-07', '2', '1');
INSERT INTO `persona` VALUES ('5718', 'YESNARDA NAIROBI MONSALVE LANDA', '2009-10-22', '2', '1');
INSERT INTO `persona` VALUES ('5719', 'DIANA CAROLINA PEREZ ELORZA', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('5720', 'HAROLD ORLANDO BENAVIDES CASTILLO', '2010-05-10', '2', '1');
INSERT INTO `persona` VALUES ('5721', 'ZULLY JOHANA PISFIL PUEMAPE', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('5722', 'JULIAN CAMILO FLORES VARGAS', '2009-07-17', '2', '1');
INSERT INTO `persona` VALUES ('5723', 'MARIA RODRIGUEZ GARCIA', '2010-04-25', '2', '1');
INSERT INTO `persona` VALUES ('5724', 'FLOR GARCIA FERNANDEZ', '2009-08-13', '2', '1');
INSERT INTO `persona` VALUES ('5725', 'JUAN GONZALEZ MARTINEZ', '2010-06-25', '2', '1');
INSERT INTO `persona` VALUES ('5726', 'ARMANDO LOPEZ GONZALEZ', '2009-10-04', '2', '1');
INSERT INTO `persona` VALUES ('5727', 'ENRIQUE PEREZ PEREZ', '2009-06-29', '2', '1');
INSERT INTO `persona` VALUES ('5728', 'VERONICA MARTINEZ LOPEZ', '2010-07-05', '2', '1');
INSERT INTO `persona` VALUES ('5729', 'MARIA SANCHEZ RODRIGUEZ', '2010-07-03', '2', '1');
INSERT INTO `persona` VALUES ('5730', 'FLORES FERNANDEZ SANCHEZ', '2010-08-18', '2', '1');
INSERT INTO `persona` VALUES ('5731', 'TOMASA GOMEZ JIMENEZ', '2010-06-03', '2', '1');
INSERT INTO `persona` VALUES ('5732', 'CRISTIAN CAMILO HERNANDEZ RUIZ', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('5733', 'MEYLIN VIVIANA DIAZ GOMEZ', '2010-03-09', '2', '1');
INSERT INTO `persona` VALUES ('5734', 'YEFERSON RIKI RAMIREZ MARTIN', '2010-06-28', '2', '1');
INSERT INTO `persona` VALUES ('5735', 'MAURICIO JAVIER ALVAREZ ALONSO', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('5736', 'MONICA ANDREA CHEN DIAZ', '2010-08-25', '2', '1');
INSERT INTO `persona` VALUES ('5737', 'RENE ALBERTO JIMENEZ HERNANDEZ', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('5738', 'OSCAR JAVIER TORRES MORENO', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('5739', 'LUIS FELIPE SINGH GUTIERREZ', '2010-07-16', '2', '1');
INSERT INTO `persona` VALUES ('5740', 'TATIANA RUIZ AGUIRRE', '2009-11-07', '2', '1');
INSERT INTO `persona` VALUES ('5741', 'JUAN CARLOS ROJAS ALVAREZ', '2010-03-12', '2', '1');
INSERT INTO `persona` VALUES ('5742', 'DIANA STEFANIA ROMERO GIL', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('5743', 'CLAUDIA SOCORRO CASTRO SALAZAR', '2010-04-01', '2', '1');
INSERT INTO `persona` VALUES ('5744', 'ELKIN FLORES IBAÑEZ', '2009-10-12', '2', '1');
INSERT INTO `persona` VALUES ('5745', 'LILIANA STEFANNY MUÑOZ MUÑOZ', '2009-09-05', '2', '1');
INSERT INTO `persona` VALUES ('5746', 'CARLOS ESTEBAN GUTIERREZ URIARTE', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('5747', 'JUAN MANUEL VARGAS BLANCO', '2010-03-05', '2', '1');
INSERT INTO `persona` VALUES ('5748', 'CRISTIAN CAMILO DA SILVA PINEDO', '2010-08-22', '2', '1');
INSERT INTO `persona` VALUES ('5749', 'MEYLIN VIVIANA MORALES SAEZ', '2010-08-02', '2', '1');
INSERT INTO `persona` VALUES ('5750', 'ENRIQUE CASTILLO ORTIZ DE ZARATE', '2010-04-26', '2', '1');
INSERT INTO `persona` VALUES ('5751', 'MARY MARTIN ORTIZ', '2009-06-12', '2', '1');
INSERT INTO `persona` VALUES ('5752', 'CRISTIAN CAMILO MORENO ANGULO', '2010-01-18', '2', '1');
INSERT INTO `persona` VALUES ('5753', 'MEYLIN VIVIANA SILVA UGARTE', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('5754', 'YEFERSON RIKI ORTIZ DIEZ', '2010-02-04', '2', '1');
INSERT INTO `persona` VALUES ('5755', 'MAURICIO JAVIER PEREIRA RAMOS', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('5756', 'MONICA ANDREA REYES SAENZ', '2009-07-16', '2', '1');
INSERT INTO `persona` VALUES ('5757', 'RENE ALBERTO RAMOS QUINTANA', '2010-09-02', '2', '1');
INSERT INTO `persona` VALUES ('5758', 'OSCAR JAVIER SUAREZ MARQUINEZ', '2009-08-06', '2', '1');
INSERT INTO `persona` VALUES ('5759', 'LUIS FELIPE MEDINA ROMERO', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('5760', 'TATIANA LIN ORTEGA', '2009-09-23', '2', '1');
INSERT INTO `persona` VALUES ('5761', 'JUAN CARLOS WANG SANTAMARIA', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('5762', 'DIANA STEFANIA HERRERA DOMINGUEZ', '2009-10-19', '2', '1');
INSERT INTO `persona` VALUES ('5763', 'CLAUDIA SOCORRO CRUZ RUIZ DE AZUA', '2010-09-06', '2', '1');
INSERT INTO `persona` VALUES ('5764', 'ELKIN MENDEZ SANZ', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('5765', 'LILIANA STEFANNY MARIN ARMENTIA', '2010-02-07', '2', '1');
INSERT INTO `persona` VALUES ('5766', 'CARLOS ESTEBAN FERREIRA OCHOA', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('5767', 'JUAN MANUEL MENDOZA DELGADO', '2010-01-14', '2', '1');
INSERT INTO `persona` VALUES ('5768', 'CHRISTIAN MIGUEL VASQUEZ RAMIREZ', '2010-07-11', '2', '1');
INSERT INTO `persona` VALUES ('5769', 'HECTOR GENTIL CABRERA SANTOS', '2010-08-26', '2', '1');
INSERT INTO `persona` VALUES ('5770', 'NELLY YAZMIN ZHANG LANDA', '2010-04-29', '2', '1');
INSERT INTO `persona` VALUES ('5771', 'DAMARIS NUÑEZ ELORZA', '2009-08-31', '2', '1');
INSERT INTO `persona` VALUES ('5772', 'AMANDA DOS SANTOS CASTILLO', '2009-07-06', '2', '1');
INSERT INTO `persona` VALUES ('5773', 'ANGIE LORENA PISFIL SANZ', '2010-08-24', '2', '1');
INSERT INTO `persona` VALUES ('5774', 'JOSE DENIS PUEMAPE ARMENTIA', '2009-11-12', '2', '1');
INSERT INTO `persona` VALUES ('5775', 'KAROL JOE FLORES OCHOA', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('5776', 'CARLOS ALBEIRO VARGAS DELGADO', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('5777', 'HERNAN ALEXIS GONZALES RAMIREZ', '2010-06-17', '2', '1');
INSERT INTO `persona` VALUES ('5778', 'JORGE ALIRIO VERA SANTOS', '2009-08-28', '2', '1');
INSERT INTO `persona` VALUES ('5779', 'YESNARDA NAIROBI MONSALVE LANDA', '2009-07-23', '2', '1');
INSERT INTO `persona` VALUES ('5780', 'DIANA CAROLINA PEREZ ELORZA', '2010-01-25', '2', '1');
INSERT INTO `persona` VALUES ('5781', 'HAROLD ORLANDO BENAVIDES CASTILLO', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('5782', 'ZULLY JOHANA PISFIL PUEMAPE', '2009-09-18', '2', '1');
INSERT INTO `persona` VALUES ('5783', 'JULIAN CAMILO FLORES VARGAS', '2010-03-12', '2', '1');
INSERT INTO `persona` VALUES ('5784', 'MARIA RODRIGUEZ GARCIA', '2010-08-29', '2', '1');
INSERT INTO `persona` VALUES ('5785', 'FLOR GARCIA FERNANDEZ', '2009-11-04', '2', '1');
INSERT INTO `persona` VALUES ('5786', 'JUAN GONZALEZ MARTINEZ', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('5787', 'ARMANDO LOPEZ GONZALEZ', '2009-10-30', '2', '1');
INSERT INTO `persona` VALUES ('5788', 'ENRIQUE PISFIL PUEMAPE', '2009-07-25', '2', '1');
INSERT INTO `persona` VALUES ('5789', 'VERONICA FLORES VARGAS', '2010-06-22', '2', '1');
INSERT INTO `persona` VALUES ('5790', 'MARIA RODRIGUEZ GARCIA', '2010-04-10', '2', '1');
INSERT INTO `persona` VALUES ('5791', 'FLORES GARCIA FERNANDEZ', '2009-09-07', '2', '1');
INSERT INTO `persona` VALUES ('5792', 'TOMASA GONZALEZ MARTINEZ', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('5793', 'CRISTIAN CAMILO LOPEZ GONZALEZ', '2010-01-02', '2', '1');
INSERT INTO `persona` VALUES ('5794', 'MEYLIN VIVIANA PEREZ PEREZ', '2009-07-08', '2', '1');
INSERT INTO `persona` VALUES ('5795', 'YEFERSON RIKI MARTINEZ LOPEZ', '2010-07-09', '2', '1');
INSERT INTO `persona` VALUES ('5796', 'MAURICIO JAVIER SANCHEZ RODRIGUEZ', '2009-09-06', '2', '1');
INSERT INTO `persona` VALUES ('5797', 'MONICA ANDREA FERNANDEZ SANCHEZ', '2010-07-24', '2', '1');
INSERT INTO `persona` VALUES ('5798', 'RENE ALBERTO GOMEZ JIMENEZ', '2009-12-20', '2', '1');
INSERT INTO `persona` VALUES ('5799', 'OSCAR JAVIER HERNANDEZ RUIZ', '2010-03-13', '2', '1');
INSERT INTO `persona` VALUES ('5800', 'LUIS FELIPE DIAZ GOMEZ', '2009-12-04', '2', '1');
INSERT INTO `persona` VALUES ('5801', 'TATIANA RAMIREZ MARTIN', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('5802', 'JUAN CARLOS ALVAREZ ALONSO', '2009-12-09', '2', '1');
INSERT INTO `persona` VALUES ('5803', 'DIANA STEFANIA CHEN DIAZ', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('5804', 'CLAUDIA SOCORRO JIMENEZ HERNANDEZ', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('5805', 'ELKIN TORRES MORENO', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('5806', 'LILIANA STEFANNY SINGH GUTIERREZ', '2010-05-07', '2', '1');
INSERT INTO `persona` VALUES ('5807', 'CARLOS ESTEBAN RUIZ AGUIRRE', '2009-10-09', '2', '1');
INSERT INTO `persona` VALUES ('5808', 'JUAN MANUEL ROJAS ALVAREZ', '2010-04-13', '2', '1');
INSERT INTO `persona` VALUES ('5809', 'CRISTIAN CAMILO ROMERO GIL', '2009-08-25', '2', '1');
INSERT INTO `persona` VALUES ('5810', 'MEYLIN VIVIANA CASTRO SALAZAR', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('5811', 'ENRIQUE FLORES IBAÑEZ', '2010-05-17', '2', '1');
INSERT INTO `persona` VALUES ('5812', 'MARY MUÑOZ MUÑOZ', '2009-12-14', '2', '1');
INSERT INTO `persona` VALUES ('5813', 'CRISTIAN CAMILO GUTIERREZ URIARTE', '2009-09-12', '2', '1');
INSERT INTO `persona` VALUES ('5814', 'MEYLIN VIVIANA VARGAS BLANCO', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('5815', 'YEFERSON RIKI DA SILVA PINEDO', '2009-10-06', '2', '1');
INSERT INTO `persona` VALUES ('5816', 'MAURICIO JAVIER MORALES SAEZ', '2010-08-16', '2', '1');
INSERT INTO `persona` VALUES ('5817', 'MONICA ANDREA CASTILLO ORTIZ DE ZARATE', '2010-01-12', '2', '1');
INSERT INTO `persona` VALUES ('5818', 'RENE ALBERTO MARTIN ORTIZ', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('5819', 'OSCAR JAVIER MORENO ANGULO', '2010-05-04', '2', '1');
INSERT INTO `persona` VALUES ('5820', 'LUIS FELIPE SILVA UGARTE', '2009-07-01', '2', '1');
INSERT INTO `persona` VALUES ('5821', 'TATIANA ORTIZ DIEZ', '2010-01-07', '2', '1');
INSERT INTO `persona` VALUES ('5822', 'JUAN CARLOS PEREIRA RAMOS', '2009-06-20', '2', '1');
INSERT INTO `persona` VALUES ('5823', 'DIANA STEFANIA REYES SAENZ', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('5824', 'CLAUDIA SOCORRO RAMOS QUINTANA', '2010-08-12', '2', '1');
INSERT INTO `persona` VALUES ('5825', 'ELKIN SUAREZ MARQUINEZ', '2009-11-14', '2', '1');
INSERT INTO `persona` VALUES ('5826', 'LILIANA STEFANNY MEDINA ROMERO', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('5827', 'CARLOS ESTEBAN LIN ORTEGA', '2009-07-15', '2', '1');
INSERT INTO `persona` VALUES ('5828', 'JUAN MANUEL WANG SANTAMARIA', '2010-01-22', '2', '1');
INSERT INTO `persona` VALUES ('5829', 'CHRISTIAN MIGUEL HERRERA DOMINGUEZ', '2009-10-11', '2', '1');
INSERT INTO `persona` VALUES ('5830', 'HECTOR GENTIL CRUZ RUIZ DE AZUA', '2009-10-15', '2', '1');
INSERT INTO `persona` VALUES ('5831', 'NELLY YAZMIN MENDEZ SANZ', '2010-07-14', '2', '1');
INSERT INTO `persona` VALUES ('5832', 'DAMARIS MARIN ARMENTIA', '2009-09-16', '2', '1');
INSERT INTO `persona` VALUES ('5833', 'AMANDA FERREIRA OCHOA', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('5834', 'ANGIE LORENA MENDOZA DELGADO', '2010-07-10', '2', '1');
INSERT INTO `persona` VALUES ('5835', 'JOSE DENIS VASQUEZ RAMIREZ', '2009-11-03', '2', '1');
INSERT INTO `persona` VALUES ('5836', 'KAROL JOE CABRERA SANTOS', '2010-03-04', '2', '1');
INSERT INTO `persona` VALUES ('5837', 'CARLOS ALBEIRO ZHANG LANDA', '2010-05-31', '2', '1');
INSERT INTO `persona` VALUES ('5838', 'HERNAN ALEXIS NUÑEZ ELORZA', '2009-10-13', '2', '1');
INSERT INTO `persona` VALUES ('5839', 'JORGE ALIRIO DOS SANTOS CASTILLO', '2010-06-27', '2', '1');
INSERT INTO `persona` VALUES ('5840', 'YESNARDA NAIROBI PISFIL SANZ', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('5841', 'DIANA CAROLINA PUEMAPE ARMENTIA', '2010-09-10', '2', '1');
INSERT INTO `persona` VALUES ('5842', 'HAROLD ORLANDO FLORES OCHOA', '2009-09-19', '2', '1');
INSERT INTO `persona` VALUES ('5843', 'ZULLY JOHANA VARGAS DELGADO', '2010-07-31', '2', '1');
INSERT INTO `persona` VALUES ('5844', 'JULIAN CAMILO GONZALES RAMIREZ', '2010-07-30', '2', '1');
INSERT INTO `persona` VALUES ('5845', 'MARIA VERA SANTOS', '2010-05-11', '2', '1');
INSERT INTO `persona` VALUES ('5846', 'FLOR MONSALVE LANDA', '2010-01-01', '2', '1');
INSERT INTO `persona` VALUES ('5847', 'JUAN PEREZ ELORZA', '2009-08-02', '2', '1');
INSERT INTO `persona` VALUES ('5848', 'ARMANDO BENAVIDES CASTILLO', '2009-11-18', '2', '1');
INSERT INTO `persona` VALUES ('5849', 'ENRIQUE PISFIL PUEMAPE', '2010-08-31', '2', '1');
INSERT INTO `persona` VALUES ('5850', 'VERONICA FLORES VARGAS', '2010-03-18', '2', '1');
INSERT INTO `persona` VALUES ('5851', 'MARIA RODRIGUEZ GARCIA', '2009-08-09', '2', '1');
INSERT INTO `persona` VALUES ('5852', 'FLORES GARCIA FERNANDEZ', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('5853', 'TOMASA GONZALEZ MARTINEZ', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('5854', 'CRISTIAN CAMILO LOPEZ GONZALEZ', '2010-06-18', '2', '1');
INSERT INTO `persona` VALUES ('5855', 'MEYLIN VIVIANA PEREZ PEREZ', '2010-09-03', '2', '1');
INSERT INTO `persona` VALUES ('5856', 'YEFERSON RIKI MARTINEZ LOPEZ', '2010-05-08', '2', '1');
INSERT INTO `persona` VALUES ('5857', 'MAURICIO JAVIER SANCHEZ RODRIGUEZ', '2010-07-15', '2', '1');
INSERT INTO `persona` VALUES ('5858', 'MONICA ANDREA FERNANDEZ SANCHEZ', '2010-03-26', '2', '1');
INSERT INTO `persona` VALUES ('5859', 'RENE ALBERTO GOMEZ JIMENEZ', '2010-08-13', '2', '1');
INSERT INTO `persona` VALUES ('5860', 'OSCAR JAVIER HERNANDEZ RUIZ', '2009-11-23', '2', '1');
INSERT INTO `persona` VALUES ('5861', 'LUIS FELIPE DIAZ GOMEZ', '2010-04-08', '2', '1');
INSERT INTO `persona` VALUES ('5862', 'TATIANA RAMIREZ MARTIN', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('5863', 'CARLOS JUAN ALONSO ALVAREZ', '2009-10-17', '2', '1');
INSERT INTO `persona` VALUES ('5864', 'DIANA STEFANIA CHEN DIAZ', '2009-11-05', '2', '1');
INSERT INTO `persona` VALUES ('5865', 'CLAUDIA SOCORRO JIMENEZ HERNANDEZ', '2009-07-31', '2', '1');
INSERT INTO `persona` VALUES ('5866', 'ELKIN TORRES MORENO', '2010-04-24', '2', '1');
INSERT INTO `persona` VALUES ('5867', 'LILIANA STEFANNY SINGH GUTIERREZ', '2010-03-23', '2', '1');
INSERT INTO `persona` VALUES ('5868', 'CARLOS ESTEBAN RUIZ AGUIRRE', '2010-08-06', '2', '1');
INSERT INTO `persona` VALUES ('5869', 'JUAN MANUEL ROJAS ALVAREZ', '2010-02-28', '2', '1');
INSERT INTO `persona` VALUES ('5870', 'CRISTIAN CAMILO ROMERO GIL', '2009-08-03', '2', '1');
INSERT INTO `persona` VALUES ('5871', 'MEYLIN VIVIANA CASTRO SALAZAR', '2010-04-11', '2', '1');
INSERT INTO `persona` VALUES ('5872', 'ENRIQUE FLORES IBAÑEZ', '2010-09-07', '2', '1');
INSERT INTO `persona` VALUES ('5873', 'MARY MUÑOZ MUÑOZ', '2009-12-07', '2', '1');
INSERT INTO `persona` VALUES ('5874', 'CRISTIAN CAMILO GUTIERREZ URIARTE', '2010-03-20', '2', '1');
INSERT INTO `persona` VALUES ('5875', 'MEYLIN VIVIANA VARGAS BLANCO', '2010-02-22', '2', '1');
INSERT INTO `persona` VALUES ('5876', 'YEFERSON RIKI DA SILVA PINEDO', '2010-03-14', '2', '1');
INSERT INTO `persona` VALUES ('5877', 'MAURICIO JAVIER MORALES SAEZ', '2010-04-16', '2', '1');
INSERT INTO `persona` VALUES ('5878', 'MONICA ANDREA CASTILLO ORTIZ DE ZARATE', '2010-03-19', '2', '1');
INSERT INTO `persona` VALUES ('5879', 'RENE ALBERTO MARTIN ORTIZ', '2009-06-11', '2', '1');
INSERT INTO `persona` VALUES ('5880', 'OSCAR JAVIER MORENO ANGULO', '2009-12-25', '2', '1');
INSERT INTO `persona` VALUES ('5881', 'LUIS FELIPE SILVA UGARTE', '2010-02-24', '2', '1');
INSERT INTO `persona` VALUES ('5882', 'TATIANA ORTIZ DIEZ', '2010-01-13', '2', '1');
INSERT INTO `persona` VALUES ('5883', 'JUAN CARLOS PEREIRA RAMOS', '2010-03-17', '2', '1');
INSERT INTO `persona` VALUES ('5884', 'DIANA STEFANIA REYES SAENZ', '2009-10-14', '2', '1');
INSERT INTO `persona` VALUES ('5885', 'CLAUDIA SOCORRO RAMOS QUINTANA', '2010-02-01', '2', '1');
INSERT INTO `persona` VALUES ('5886', 'ELKIN SUAREZ MARQUINEZ', '2009-12-19', '2', '1');
INSERT INTO `persona` VALUES ('5887', 'LILIANA STEFANNY MEDINA ROMERO', '2010-05-12', '2', '1');
INSERT INTO `persona` VALUES ('5888', 'CARLOS ESTEBAN LIN ORTEGA', '2010-04-30', '2', '1');
INSERT INTO `persona` VALUES ('5889', 'JUAN MANUEL WANG SANTAMARIA', '2010-09-15', '2', '1');
INSERT INTO `persona` VALUES ('5890', 'CHRISTIAN MIGUEL HERRERA DOMINGUEZ', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('5891', 'HECTOR GENTIL CRUZ RUIZ DE AZUA', '2009-06-30', '2', '1');
INSERT INTO `persona` VALUES ('5892', 'NELLY YAZMIN MENDEZ SANZ', '2010-03-14', '2', '1');
INSERT INTO `persona` VALUES ('5893', 'DAMARIS MARIN ARMENTIA', '2010-09-06', '2', '1');
INSERT INTO `persona` VALUES ('5894', 'AMANDA FERREIRA OCHOA', '2010-06-01', '2', '1');
INSERT INTO `persona` VALUES ('5895', 'ANGIE LORENA MENDOZA DELGADO', '2010-04-20', '2', '1');
INSERT INTO `persona` VALUES ('5896', 'JOSE DENIS VASQUEZ RAMIREZ', '2009-07-11', '2', '1');
INSERT INTO `persona` VALUES ('5897', 'KAROL JOE CABRERA SANTOS', '2010-05-19', '2', '1');
INSERT INTO `persona` VALUES ('5898', 'CARLOS ALBEIRO ZHANG LANDA', '2010-04-27', '2', '1');
INSERT INTO `persona` VALUES ('5899', 'HERNAN ALEXIS NUÑEZ ELORZA', '2009-06-15', '2', '1');
INSERT INTO `persona` VALUES ('5900', 'JORGE ALIRIO DOS SANTOS CASTILLO', '2010-05-10', '2', '1');
INSERT INTO `persona` VALUES ('5901', 'YESNARDA NAIROBI PISFIL SANZ', '2010-04-21', '2', '1');
INSERT INTO `persona` VALUES ('5902', 'DIANA CAROLINA PUEMAPE ARMENTIA', '2009-11-30', '2', '1');
INSERT INTO `persona` VALUES ('5903', 'HAROLD ORLANDO FLORES OCHOA', '2009-11-19', '2', '1');
INSERT INTO `persona` VALUES ('5904', 'ZULLY JOHANA VARGAS DELGADO', '2009-07-27', '2', '1');
INSERT INTO `persona` VALUES ('5905', 'JULIAN CAMILO GONZALES RAMIREZ', '2009-07-02', '2', '1');
INSERT INTO `persona` VALUES ('5906', 'MARIA VERA SANTOS', '2009-12-26', '2', '1');
INSERT INTO `persona` VALUES ('5907', 'FLOR MONSALVE LANDA', '2010-08-10', '2', '1');
INSERT INTO `persona` VALUES ('5908', 'JUAN PEREZ ELORZA', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('5909', 'ARMANDO BENAVIDES CASTILLO', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('5910', 'ENRIQUE PISFIL PUEMAPE', '2009-11-20', '2', '1');
INSERT INTO `persona` VALUES ('5911', 'VERONICA FLORES VARGAS', '2010-01-11', '2', '1');
INSERT INTO `persona` VALUES ('5912', 'MARIA RODRIGUEZ GARCIA', '2010-05-14', '2', '1');
INSERT INTO `persona` VALUES ('5913', 'FLORES GARCIA FERNANDEZ', '2010-02-19', '2', '1');
INSERT INTO `persona` VALUES ('5914', 'TOMASA GONZALEZ MARTINEZ', '2009-12-21', '2', '1');
INSERT INTO `persona` VALUES ('5915', 'CRISTIAN CAMILO LOPEZ GONZALEZ', '2010-06-19', '2', '1');
INSERT INTO `persona` VALUES ('5916', 'MEYLIN VIVIANA PISFIL PUEMAPE', '2010-01-19', '2', '1');
INSERT INTO `persona` VALUES ('5917', 'YEFERSON RIKI FLORES VARGAS', '2009-08-22', '2', '1');
INSERT INTO `persona` VALUES ('5918', 'MAURICIO JAVIER RODRIGUEZ GARCIA', '2009-10-11', '2', '1');
INSERT INTO `persona` VALUES ('5919', 'MONICA ANDREA GARCIA FERNANDEZ', '2009-10-24', '2', '1');
INSERT INTO `persona` VALUES ('5920', 'RENE ALBERTO GONZALEZ MARTINEZ', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('5921', 'OSCAR JAVIER LOPEZ GONZALEZ', '2009-07-20', '2', '1');
INSERT INTO `persona` VALUES ('5922', 'LUIS FELIPE PEREZ PEREZ', '2010-06-11', '2', '1');
INSERT INTO `persona` VALUES ('5923', 'TATIANA MARTINEZ LOPEZ', '2010-03-01', '2', '1');
INSERT INTO `persona` VALUES ('5924', 'JUAN CARLOS SANCHEZ RODRIGUEZ', '2010-08-26', '2', '1');
INSERT INTO `persona` VALUES ('5925', 'DIANA STEFANIA FERNANDEZ SANCHEZ', '2010-04-12', '2', '1');
INSERT INTO `persona` VALUES ('5926', 'CLAUDIA SOCORRO GOMEZ JIMENEZ', '2010-03-30', '2', '1');
INSERT INTO `persona` VALUES ('5927', 'ELKIN HERNANDEZ RUIZ', '2010-02-09', '2', '1');
INSERT INTO `persona` VALUES ('5928', 'LILIANA STEFANNY DIAZ GOMEZ', '2009-11-10', '2', '1');
INSERT INTO `persona` VALUES ('5929', 'CARLOS ESTEBAN RAMIREZ MARTIN', '2010-09-07', '2', '1');
INSERT INTO `persona` VALUES ('5930', 'JUAN MANUEL ALVAREZ ALONSO', '2009-10-25', '2', '1');
INSERT INTO `persona` VALUES ('5931', 'CRISTIAN CAMILO CHEN DIAZ', '2009-12-30', '2', '1');
INSERT INTO `persona` VALUES ('5932', 'MEYLIN VIVIANA JIMENEZ HERNANDEZ', '2010-05-25', '2', '1');
INSERT INTO `persona` VALUES ('5933', 'ENRIQUE TORRES MORENO', '2009-06-19', '2', '1');
INSERT INTO `persona` VALUES ('5934', 'MARY SINGH GUTIERREZ', '2010-07-08', '2', '1');
INSERT INTO `persona` VALUES ('5935', 'CRISTIAN CAMILO RUIZ AGUIRRE', '2010-05-30', '2', '1');
INSERT INTO `persona` VALUES ('5936', 'MEYLIN VIVIANA ROJAS ALVAREZ', '2010-02-27', '2', '1');
INSERT INTO `persona` VALUES ('5937', 'YEFERSON RIKI ROMERO GIL', '2010-01-29', '2', '1');
INSERT INTO `persona` VALUES ('5938', 'MAURICIO JAVIER CASTRO SALAZAR', '2010-04-02', '2', '1');
INSERT INTO `persona` VALUES ('5939', 'MONICA ANDREA FLORES IBAÑEZ', '2009-11-26', '2', '1');
INSERT INTO `persona` VALUES ('5940', 'RENE ALBERTO MUÑOZ MUÑOZ', '2010-02-25', '2', '1');
INSERT INTO `persona` VALUES ('5941', 'OSCAR JAVIER GUTIERREZ URIARTE', '2009-10-31', '2', '1');
INSERT INTO `persona` VALUES ('5942', 'LUIS FELIPE VARGAS BLANCO', '2010-06-07', '2', '1');
INSERT INTO `persona` VALUES ('5943', 'PEDRO AMANTA ANALIAS', '0000-00-00', '2', '1');
INSERT INTO `persona` VALUES ('5944', 'SANTOS MODIFICADO  RAMIREZ VARGAS MODIFICADO  ', '0000-00-00', '2', '1');
INSERT INTO `persona` VALUES ('5945', '85678 5678567 5678567', '0000-00-00', '2', '1');
INSERT INTO `persona` VALUES ('5946', 'CRUZ GONZALES AYASTA', '0000-00-00', '2', '1');
INSERT INTO `persona` VALUES ('5947', 'LORENZO FLORES VARGAS', '0000-00-00', '2', '1');
INSERT INTO `persona` VALUES ('5948', 'JUANITA FLOREZ SAMPEN', '0000-00-00', '2', '1');
INSERT INTO `persona` VALUES ('5949', 'RONALD BELGARA NOSECUENTO', '0000-00-00', '2', '1');
INSERT INTO `persona` VALUES ('5950', 'Armando Enrique Pisfil Puemape', '2085-11-11', '1', '1');
INSERT INTO `persona` VALUES ('5951', 'Pisfil Puemape', '0000-00-00', '212121', '1');
INSERT INTO `persona` VALUES ('5952', 'Enrique Pisfil Puemape', '0000-00-00', '1', '1');

-- ----------------------------
-- Table structure for persona_correo
-- ----------------------------
DROP TABLE IF EXISTS `persona_correo`;
CREATE TABLE `persona_correo` (
  `idpersonacorreo` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idtipocorreo` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idpersonacorreo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of persona_correo
-- ----------------------------
INSERT INTO `persona_correo` VALUES ('10', '1', '25', '1', 'joseluis_16ds@hotmail.com', '1');
INSERT INTO `persona_correo` VALUES ('11', '1', '26', '1', 'jlds161089@gmail.com', '1');
INSERT INTO `persona_correo` VALUES ('12', '1', '27', '1', 'alberto_17jads@hotmail.com', '1');

-- ----------------------------
-- Table structure for persona_direccion
-- ----------------------------
DROP TABLE IF EXISTS `persona_direccion`;
CREATE TABLE `persona_direccion` (
  `idpersonadireccion` int(11) NOT NULL AUTO_INCREMENT,
  `idtipodireccion` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idubigeo` int(11) NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `referencia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idpersonadireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of persona_direccion
-- ----------------------------
INSERT INTO `persona_direccion` VALUES ('19', '1', '24', '0', 'Los naranjos # 239 - Brisas', '', '1');

-- ----------------------------
-- Table structure for persona_documento
-- ----------------------------
DROP TABLE IF EXISTS `persona_documento`;
CREATE TABLE `persona_documento` (
  `idpersonadocumento` int(11) NOT NULL AUTO_INCREMENT,
  `idtipodocumento` int(11) DEFAULT NULL,
  `idpersona` int(11) NOT NULL,
  `numero` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `caducidad` date DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idpersonadocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of persona_documento
-- ----------------------------
INSERT INTO `persona_documento` VALUES ('1', '3', '1', '20539225031', '0000-00-00', 'documento-defecto.jpg', '1');
INSERT INTO `persona_documento` VALUES ('20', '3', '24', '20480678592', '0000-00-00', 'documento-defecto.jpg', '1');
INSERT INTO `persona_documento` VALUES ('21', '1', '26', '46003328', '0000-00-00', 'documento-defecto.jpg', '1');
INSERT INTO `persona_documento` VALUES ('22', '1', '27', '46003327', '0000-00-00', 'documento-defecto.jpg', '1');

-- ----------------------------
-- Table structure for persona_juridica
-- ----------------------------
DROP TABLE IF EXISTS `persona_juridica`;
CREATE TABLE `persona_juridica` (
  `idpersonajuridica` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) NOT NULL,
  `razonsocial` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idrubro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpersonajuridica`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of persona_juridica
-- ----------------------------
INSERT INTO `persona_juridica` VALUES ('1', '1', 'INNOVA TI GROUP S.A.C', '0');
INSERT INTO `persona_juridica` VALUES ('21', '24', 'CATMEDIA SAC', '0');

-- ----------------------------
-- Table structure for persona_natural
-- ----------------------------
DROP TABLE IF EXISTS `persona_natural`;
CREATE TABLE `persona_natural` (
  `idpersonanatural` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) NOT NULL,
  `nombres` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apepat` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apemat` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idgenero` int(11) DEFAULT NULL,
  `idestadocivil` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpersonanatural`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of persona_natural
-- ----------------------------
INSERT INTO `persona_natural` VALUES ('1', '25', 'Jose Luis', 'Damián', 'Saavedra', '0', '0');
INSERT INTO `persona_natural` VALUES ('2', '26', 'Jose Luis', 'Damian', 'Saavedra', '0', '0');
INSERT INTO `persona_natural` VALUES ('3', '27', 'Jose Alberto', 'Damian', 'Saavedra', '0', '0');

-- ----------------------------
-- Table structure for persona_telefono
-- ----------------------------
DROP TABLE IF EXISTS `persona_telefono`;
CREATE TABLE `persona_telefono` (
  `idpersonatelefono` int(11) NOT NULL AUTO_INCREMENT,
  `idtipotelefono` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `numero` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idpersonatelefono`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of persona_telefono
-- ----------------------------
INSERT INTO `persona_telefono` VALUES ('40', '1', '24', '1', '061-574814', '1');
INSERT INTO `persona_telefono` VALUES ('41', '4', '24', '1', '061-574841', '1');
INSERT INTO `persona_telefono` VALUES ('42', '2', '25', '1', '992703459', '1');
INSERT INTO `persona_telefono` VALUES ('43', '2', '26', '1', '992703459', '1');
INSERT INTO `persona_telefono` VALUES ('44', '2', '27', '1', '961088007', '1');

-- ----------------------------
-- Table structure for persona_web
-- ----------------------------
DROP TABLE IF EXISTS `persona_web`;
CREATE TABLE `persona_web` (
  `idpersonaweb` int(11) NOT NULL AUTO_INCREMENT,
  `idtipoweb` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `url` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idpersonaweb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of persona_web
-- ----------------------------

-- ----------------------------
-- Table structure for plan
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `idplan` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idplan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of plan
-- ----------------------------

-- ----------------------------
-- Table structure for relacion
-- ----------------------------
DROP TABLE IF EXISTS `relacion`;
CREATE TABLE `relacion` (
  `idrelacion` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonaindep` int(11) NOT NULL,
  `idtiporelacion` int(11) NOT NULL,
  `idpersonadepen` int(11) NOT NULL,
  `registro` datetime NOT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idrelacion`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of relacion
-- ----------------------------
INSERT INTO `relacion` VALUES ('18', '1', '2', '24', '2014-12-26 22:36:27', 'cliente', '1');
INSERT INTO `relacion` VALUES ('19', '24', '3', '25', '2014-12-26 22:36:27', 'usuario', '1');
INSERT INTO `relacion` VALUES ('20', '24', '3', '26', '2015-01-06 23:08:37', 'usuario', '1');
INSERT INTO `relacion` VALUES ('21', '24', '3', '27', '2015-01-06 23:19:57', 'usuario', '1');

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of rol
-- ----------------------------
INSERT INTO `rol` VALUES ('1', 'Administrador', '1');
INSERT INTO `rol` VALUES ('2', 'Super Usuario Cliente', '1');
INSERT INTO `rol` VALUES ('3', 'Sub Usuario Cliente', '1');

-- ----------------------------
-- Table structure for rol_control
-- ----------------------------
DROP TABLE IF EXISTS `rol_control`;
CREATE TABLE `rol_control` (
  `idrolcontrol` int(11) NOT NULL AUTO_INCREMENT,
  `idrol` int(11) DEFAULT NULL,
  `idcontrol` int(11) DEFAULT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idrolcontrol`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of rol_control
-- ----------------------------
INSERT INTO `rol_control` VALUES ('1', '1', '1', '-', '1');
INSERT INTO `rol_control` VALUES ('2', '1', '2', '-', '1');
INSERT INTO `rol_control` VALUES ('3', '1', '3', '-', '1');
INSERT INTO `rol_control` VALUES ('4', '1', '4', '-', '1');
INSERT INTO `rol_control` VALUES ('5', '1', '5', '-', '1');
INSERT INTO `rol_control` VALUES ('6', '1', '6', '-', '1');
INSERT INTO `rol_control` VALUES ('7', '1', '7', '-', '1');
INSERT INTO `rol_control` VALUES ('8', '1', '8', '-', '1');
INSERT INTO `rol_control` VALUES ('9', '1', '9', '-', '1');
INSERT INTO `rol_control` VALUES ('10', '1', '10', '-', '1');
INSERT INTO `rol_control` VALUES ('11', '1', '11', '-', '1');
INSERT INTO `rol_control` VALUES ('12', '1', '12', '-', '1');
INSERT INTO `rol_control` VALUES ('13', '1', '13', '-', '1');
INSERT INTO `rol_control` VALUES ('14', '1', '14', '-', '1');
INSERT INTO `rol_control` VALUES ('15', '1', '15', '-', '1');
INSERT INTO `rol_control` VALUES ('16', '1', '16', '-', '1');

-- ----------------------------
-- Table structure for servicio_contratado
-- ----------------------------
DROP TABLE IF EXISTS `servicio_contratado`;
CREATE TABLE `servicio_contratado` (
  `idserviciocontratado` int(11) NOT NULL AUTO_INCREMENT,
  `idvehiculo` int(11) NOT NULL,
  `idtiposervicio` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idtiporelacion` int(11) DEFAULT NULL,
  `codigo` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `registro` datetime NOT NULL,
  `emision` date NOT NULL,
  `caducidad` date NOT NULL,
  `archivo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `glosa` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idserviciocontratado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of servicio_contratado
-- ----------------------------

-- ----------------------------
-- Table structure for tipo_caracteristica
-- ----------------------------
DROP TABLE IF EXISTS `tipo_caracteristica`;
CREATE TABLE `tipo_caracteristica` (
  `idtipocaracteristica` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtipocaracteristica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_caracteristica
-- ----------------------------

-- ----------------------------
-- Table structure for tipo_control
-- ----------------------------
DROP TABLE IF EXISTS `tipo_control`;
CREATE TABLE `tipo_control` (
  `idtipocontrol` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtipocontrol`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_control
-- ----------------------------
INSERT INTO `tipo_control` VALUES ('1', 'Modulo', '1');
INSERT INTO `tipo_control` VALUES ('2', 'Menu', '1');
INSERT INTO `tipo_control` VALUES ('3', 'Seccion', '1');
INSERT INTO `tipo_control` VALUES ('4', 'Boton', '1');

-- ----------------------------
-- Table structure for tipo_correo
-- ----------------------------
DROP TABLE IF EXISTS `tipo_correo`;
CREATE TABLE `tipo_correo` (
  `idtipocorreo` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtipocorreo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_correo
-- ----------------------------
INSERT INTO `tipo_correo` VALUES ('1', 'Correo Personal', '1');
INSERT INTO `tipo_correo` VALUES ('2', 'Correo Coorporativo', '1');

-- ----------------------------
-- Table structure for tipo_direccion
-- ----------------------------
DROP TABLE IF EXISTS `tipo_direccion`;
CREATE TABLE `tipo_direccion` (
  `idtipodireccion` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtipodireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_direccion
-- ----------------------------
INSERT INTO `tipo_direccion` VALUES ('1', 'Direccion Fiscal', '1');

-- ----------------------------
-- Table structure for tipo_documento
-- ----------------------------
DROP TABLE IF EXISTS `tipo_documento`;
CREATE TABLE `tipo_documento` (
  `idtipodocumento` int(11) NOT NULL AUTO_INCREMENT,
  `codigosunat` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtipodocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_documento
-- ----------------------------
INSERT INTO `tipo_documento` VALUES ('1', '1', 'DOCUMENTO NACIONAL DE IDENTIDAD (DNI)', '1');
INSERT INTO `tipo_documento` VALUES ('2', '4', 'CARNET DE EXTRANJERIA', '1');
INSERT INTO `tipo_documento` VALUES ('3', '6', 'REGISTRO UNICO DE CONTRIBUYENTES (RUC)', '1');
INSERT INTO `tipo_documento` VALUES ('4', '7', 'PASAPORTE', '1');

-- ----------------------------
-- Table structure for tipo_entidad
-- ----------------------------
DROP TABLE IF EXISTS `tipo_entidad`;
CREATE TABLE `tipo_entidad` (
  `idtipoentidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtipoentidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_entidad
-- ----------------------------

-- ----------------------------
-- Table structure for tipo_objeto
-- ----------------------------
DROP TABLE IF EXISTS `tipo_objeto`;
CREATE TABLE `tipo_objeto` (
  `idtipoobjeto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtipoobjeto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_objeto
-- ----------------------------
INSERT INTO `tipo_objeto` VALUES ('1', 'Caja de texto', '1');
INSERT INTO `tipo_objeto` VALUES ('2', 'Lista desplegable', '1');

-- ----------------------------
-- Table structure for tipo_operacion
-- ----------------------------
DROP TABLE IF EXISTS `tipo_operacion`;
CREATE TABLE `tipo_operacion` (
  `idtipooperacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtipooperacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_operacion
-- ----------------------------

-- ----------------------------
-- Table structure for tipo_relacion
-- ----------------------------
DROP TABLE IF EXISTS `tipo_relacion`;
CREATE TABLE `tipo_relacion` (
  `idtiporelacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtiporelacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_relacion
-- ----------------------------
INSERT INTO `tipo_relacion` VALUES ('1', 'Empleado Transcarga', '1');
INSERT INTO `tipo_relacion` VALUES ('2', 'Cliente Transcarga', '1');
INSERT INTO `tipo_relacion` VALUES ('3', 'Usuario del Cliente Transcarga', '1');

-- ----------------------------
-- Table structure for tipo_servicio
-- ----------------------------
DROP TABLE IF EXISTS `tipo_servicio`;
CREATE TABLE `tipo_servicio` (
  `idtiposervicio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtiposervicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_servicio
-- ----------------------------

-- ----------------------------
-- Table structure for tipo_telefono
-- ----------------------------
DROP TABLE IF EXISTS `tipo_telefono`;
CREATE TABLE `tipo_telefono` (
  `idtipotelefono` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtipotelefono`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_telefono
-- ----------------------------
INSERT INTO `tipo_telefono` VALUES ('1', 'Telefono Fijo', '1');
INSERT INTO `tipo_telefono` VALUES ('2', 'Telefono Mobil', '1');
INSERT INTO `tipo_telefono` VALUES ('3', 'Red Privada Mobil', '1');
INSERT INTO `tipo_telefono` VALUES ('4', 'Fax', '1');

-- ----------------------------
-- Table structure for tipo_vehiculo
-- ----------------------------
DROP TABLE IF EXISTS `tipo_vehiculo`;
CREATE TABLE `tipo_vehiculo` (
  `idtipovehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtipovehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_vehiculo
-- ----------------------------
INSERT INTO `tipo_vehiculo` VALUES ('1', 'Camion', '1');
INSERT INTO `tipo_vehiculo` VALUES ('2', 'Remolque', '1');
INSERT INTO `tipo_vehiculo` VALUES ('3', 'Autobus', '1');
INSERT INTO `tipo_vehiculo` VALUES ('4', 'Automóvil', '1');

-- ----------------------------
-- Table structure for tipo_web
-- ----------------------------
DROP TABLE IF EXISTS `tipo_web`;
CREATE TABLE `tipo_web` (
  `idtipoweb` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idtipoweb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo_web
-- ----------------------------

-- ----------------------------
-- Table structure for ubigeo
-- ----------------------------
DROP TABLE IF EXISTS `ubigeo`;
CREATE TABLE `ubigeo` (
  `idubigeo` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `lugar` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `longitud` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `latitud` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idubigeo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of ubigeo
-- ----------------------------

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `idusuario` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) NOT NULL,
  `idrol` int(11) NOT NULL,
  `idtiporelacion` int(11) NOT NULL,
  `usuario` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('10', '25', '2', '3', 'joseluis_16ds@hotmail.com', 'b4beb5d29b563037de1d1759e43fadb5', '2014-12-26', '1');
INSERT INTO `usuario` VALUES ('11', '26', '3', '3', 'jlds161089@gmail.com', 'b4beb5d29b563037de1d1759e43fadb5', '2015-01-06', '1');
INSERT INTO `usuario` VALUES ('12', '27', '3', '3', 'alberto_17jads@hotmail.com', 'b4beb5d29b563037de1d1759e43fadb5', '2015-01-06', '1');

-- ----------------------------
-- Table structure for vehiculo
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo`;
CREATE TABLE `vehiculo` (
  `idvehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `idtipovehiculo` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `placa` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modelo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `marca` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `consumo` decimal(8,2) DEFAULT NULL,
  `registro` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idvehiculo`,`estado`),
  KEY `fk_idtipovehiculo_vehiculo_idx` (`idtipovehiculo`),
  KEY `fk_idpersona_vehiculo_idx` (`idpersona`),
  CONSTRAINT `fk_idpersona_vehiculo` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idtipovehiculo_vehiculo` FOREIGN KEY (`idtipovehiculo`) REFERENCES `tipo_vehiculo` (`idtipovehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of vehiculo
-- ----------------------------
INSERT INTO `vehiculo` VALUES ('1', '4', '24', 'abc-123', 'yaris', 'gas y gasolina', 'rojo', 'toyota', '25.00', '2015-01-06 05:48:09', '1');
INSERT INTO `vehiculo` VALUES ('2', '4', '24', '123-abc', 'rio', 'gasolina', 'gris', 'kia', '30.00', '2015-01-06 06:07:16', '1');
INSERT INTO `vehiculo` VALUES ('3', '4', '24', '46003328-abc', 'sportage', 'gasolina y mecanico', 'rojo y negro', 'kia', '15.00', '2015-01-06 03:19:35', '1');
INSERT INTO `vehiculo` VALUES ('4', '4', '24', '46003328-aei', 'yaris', 'gasolina', 'purpura', 'toyota', '30.00', '2015-01-06 03:20:28', '1');
INSERT INTO `vehiculo` VALUES ('23', '1', '24', 'abc', '', '', '', '', '0.00', '2015-01-06 07:15:18', '1');
INSERT INTO `vehiculo` VALUES ('24', '2', '24', 'uss-2015-i', 'uss', 'uss', 'uss', 'uss', '2015.00', '2015-01-06 07:15:41', '1');

-- ----------------------------
-- Table structure for vehiculo_ubicacion
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo_ubicacion`;
CREATE TABLE `vehiculo_ubicacion` (
  `idvehiculoubicacion` int(11) NOT NULL AUTO_INCREMENT,
  `idvehiculo` int(11) NOT NULL,
  `coordenada` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ubigeo` varchar(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`idvehiculoubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of vehiculo_ubicacion
-- ----------------------------

-- ----------------------------
-- Procedure structure for usp_get_acceso_sistema_by_idusuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_acceso_sistema_by_idusuario`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_acceso_sistema_by_idusuario`(idusuario int(11))
BEGIN
	#Routine body goes here...
	SELECT	usuario.idusuario,
					-- rol.nombre AS rol,
					control.nombre AS control,
					control.valor AS enlace,
					control.jerarquia,
					control.idcontrolpadre AS padre,
					tipo_control.nombre AS tipo,
					tipo_control.idtipocontrol
	FROM usuario
	INNER JOIN acceso_sistema
					ON usuario.idusuario = acceso_sistema.idusuario
	INNER JOIN control
					ON acceso_sistema.idcontrol = control.idcontrol
	INNER JOIN tipo_control
					ON control.idtipocontrol = tipo_control.idtipocontrol
	INNER JOIN rol 
					ON usuario.idrol = rol.idrol
	WHERE acceso_sistema.estado = 1 
	AND usuario.idusuario = idusuario 
	ORDER BY control.jerarquia ASC 
	;

	-- usp_get_acceso_sistema_by_idusuario
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_aside_by_idusuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_aside_by_idusuario`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_aside_by_idusuario`(idusuario int(11))
BEGIN
	#Routine body goes here...
	SELECT	control.idcontrol,
					control.nombre,
					control.valor,
					control.jerarquia,
					control.idcontrolpadre,
					tipo_control.nombre AS tipocontrol, 
					control.descripcion AS icono
	FROM usuario 
	INNER JOIN acceso_sistema 
					ON usuario.idusuario = acceso_sistema.idusuario 
	INNER JOIN control 
					ON acceso_sistema.idcontrol = control.idcontrol 
	INNER JOIN tipo_control 
					ON control.idtipocontrol = tipo_control.idtipocontrol 
	INNER JOIN rol 
					ON usuario.idrol = rol.idrol 
	WHERE acceso_sistema.estado = 1 
	AND usuario.idusuario = idusuario 
	AND control.idcontrolpadre = 0
	AND control.idtipocontrol = 4 
	ORDER BY control.jerarquia ASC 
	;

	-- usp_get_aside_by_idusuario
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_configuracion_by_idconfiguracion
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_configuracion_by_idconfiguracion`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_configuracion_by_idconfiguracion`(idconfiguracion int(11))
BEGIN
	#Routine body goes here...
	SELECT configuracion.nombre, configuracion.valor 
	FROM configuracion
	WHERE configuracion.idconfiguracion = idconfiguracion
	;
	
	-- usp_get_configuracion_by_idconfiguracion
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_idempresa_by_idusuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_idempresa_by_idusuario`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_idempresa_by_idusuario`(idusuario int(11))
BEGIN
	#Routine body goes here...
	SELECT relacion.idpersonaindep AS idpersona
	FROM usuario 
	INNER JOIN persona 
													ON usuario.idpersona = persona.idpersona 
	INNER JOIN relacion
													ON persona.idpersona = relacion.idpersonadepen
																	AND relacion.idtiporelacion = 3
	WHERE usuario.idusuario = idusuario
	;
	-- usp_get_idempresa_by_idusuario
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_menu_by_idusuario_and_idcontrolpadre
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_menu_by_idusuario_and_idcontrolpadre`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_menu_by_idusuario_and_idcontrolpadre`(idusuario int(11), idcontrolpadre int(11))
BEGIN
	#Routine body goes here...
	SELECT	control.idcontrol,
					control.nombre,
					control.valor,
					control.jerarquia,
					control.idcontrolpadre,
					tipo_control.nombre AS tipocontrol, 
					control.descripcion AS icono
	FROM usuario 
	INNER JOIN acceso_sistema 
					ON usuario.idusuario = acceso_sistema.idusuario 
	INNER JOIN control 
					ON acceso_sistema.idcontrol = control.idcontrol 
	INNER JOIN tipo_control 
					ON control.idtipocontrol = tipo_control.idtipocontrol 
	INNER JOIN rol 
					ON usuario.idrol = rol.idrol 
	WHERE acceso_sistema.estado = 1 
	AND usuario.idusuario = idusuario 
	AND control.idcontrolpadre = idcontrolpadre 
	AND control.idtipocontrol = 2 
	ORDER BY control.jerarquia ASC 
	;

	-- usp_get_menu_by_idusuario_and_idcontrolpadre
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_persona
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_persona`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_persona`()
BEGIN
	SELECT 
		persona.idpersona,
		persona.nombre,
		persona.nacimiento,
		persona.tipo,
		persona.estado
	FROM persona;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_persona_by_idpersona
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_persona_by_idpersona`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_persona_by_idpersona`(idpersona BIGINT(20))
BEGIN
	SELECT 
		persona.idpersona,
		persona.nombre,
		persona.nacimiento,
		persona.tipo,
		persona.estado
	FROM persona
	WHERE persona.idpersona = idpersona ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_personacorreo_by_correo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_personacorreo_by_correo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_personacorreo_by_correo`(correo varchar(50))
BEGIN
	#Routine body goes here...
	SELECT persona_correo.idpersona, persona_correo.idtipocorreo, persona_correo.correo
	FROM persona_correo
	WHERE persona_correo.correo = correo
	LIMIT 1
	;
	-- usp_get_personacorreo_by_correo
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_personadocumento_by_idtipodocumento_and_numero
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_personadocumento_by_idtipodocumento_and_numero`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_personadocumento_by_idtipodocumento_and_numero`(idtipodocumento int(11), numero varchar(20))
BEGIN
	#Routine body goes here...
	SELECT persona_documento.idpersona, persona_documento.idtipodocumento, persona_documento.numero
	FROM persona_documento
	WHERE persona_documento.numero = numero
	AND persona_documento.idtipodocumento = idtipodocumento
	LIMIT 1
	;
	-- usp_get_personadocumento_by_idtipodocumento_and_numero
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_registogcm_by_iduser
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_registogcm_by_iduser`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_registogcm_by_iduser`(iduser bigint(20) , tipo char(1))
BEGIN
	SELECT
		registogcm.codigo,
		registogcm.tipo,
		registogcm.idregistro,
		registogcm.iduser,
		registogcm.email
	FROM registogcm
	WHERE  registogcm.iduser = iduser
	AND registogcm.tipo = tipo ;
# usp_get_registogcm_by_iduser
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_tipo_vehiculo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_tipo_vehiculo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_tipo_vehiculo`()
BEGIN
	#Routine body goes here...
	SELECT tipo_vehiculo.idtipovehiculo, tipo_vehiculo.nombre
	FROM tipo_vehiculo
	WHERE tipo_vehiculo.estado = 1
	;

	-- usp_get_tipo_vehiculo
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_usuario_by_idusuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_usuario_by_idusuario`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_usuario_by_idusuario`(idusuario int(11))
BEGIN
	#Routine body goes here...
	SELECT usuario.idusuario, usuario.idpersona, usuario.usuario
	FROM usuario
	WHERE usuario.idusuario = idusuario
	LIMIT 1
	;
	-- usp_get_usuario_by_idusuario
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_usuario_by_usuario_and_clave
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_usuario_by_usuario_and_clave`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_usuario_by_usuario_and_clave`(usuario varchar(45), clave varchar(45))
BEGIN
	#Routine body goes here...
	SELECT usuario.idusuario
	FROM usuario
	WHERE usuario.usuario = usuario	
	AND usuario.clave = clave
	AND usuario.estado = 1
	LIMIT 1
;
	-- usp_get_usuario_by_usuario_and_clave
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_vehiculo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_vehiculo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_vehiculo`(idpersona int(11))
BEGIN
	#Routine body goes here...
	SELECT vehiculo.idvehiculo, vehiculo.placa, tipo_vehiculo.nombre AS tipo, vehiculo.marca, vehiculo.modelo
	FROM vehiculo
	INNER JOIN tipo_vehiculo
	ON vehiculo.idtipovehiculo = tipo_vehiculo.idtipovehiculo
	WHERE vehiculo.estado= 1	
	AND vehiculo.idpersona = idpersona
;

	-- usp_get_vehiculo
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_vehiculo_by_idvehiculo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_vehiculo_by_idvehiculo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_vehiculo_by_idvehiculo`(idvehiculo int(11))
BEGIN
	#Routine body goes here...
	SELECT *
	FROM vehiculo
	WHERE vehiculo.idvehiculo = idvehiculo
	AND vehiculo.estado = 1
	LIMIT 1
	;
	-- usp_get_vehiculo_by_idvehiculo
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_set_cuenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_cuenta`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_cuenta`(idpersona int(11), idtiporelacion int(11), numero varchar(15), estado int(2))
BEGIN
	#Routine body goes here...
	INSERT INTO cuenta(cuenta.idpersona, cuenta.idtiporelacion, cuenta.numero, cuenta.estado) 
	VALUES (idpersona, idtiporelacion, numero, estado);

	SELECT LAST_INSERT_ID() AS idcuenta;
	-- usp_set_cuenta
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_set_persona
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_persona`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_persona`(nombre varchar(100), nacimiento date, tipo int(2), estado int(3))
BEGIN
	#Routine body goes here...
	INSERT INTO persona(persona.nombre, persona.nacimiento, persona.tipo, persona.estado) 
	VALUES (nombre, nacimiento, tipo, estado);
	
	SELECT LAST_INSERT_ID() AS idpersona;
	-- usp_set_persona
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_set_personacorreo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_personacorreo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personacorreo`(idtipocorreo int(11), idpersona int(11), correo varchar(50), estado int(2))
BEGIN
	DECLARE item_ INT;

	SELECT IFNULL(MAX(persona_correo.item), 0) + 1 INTO item_
	FROM persona_correo
	WHERE persona_correo.idpersona = idpersona
	AND persona_correo.idtipocorreo = idtipocorreo
	;
	#Routine body goes here...
	INSERT INTO persona_correo(persona_correo.idtipocorreo, 
														 persona_correo.idpersona, 
														 persona_correo.item, 
														 persona_correo.correo, 
														 persona_correo.estado) 
	VALUES (idtipocorreo, idpersona, item_, correo, estado);

	SELECT LAST_INSERT_ID() AS idpersonacorreo;
	-- usp_set_personacorreo
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_set_personadireccion
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_personadireccion`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personadireccion`(idtipodireccion int(11), idpersona int(11), idubigeo int(11), direccion varchar(100), referencia varchar(100), estado int(2))
BEGIN
	#Routine body goes here...
	INSERT INTO persona_direccion (idtipodireccion, idpersona, idubigeo, direccion, referencia, estado) 
	VALUES (idtipodireccion, idpersona, idubigeo, direccion, referencia, estado);

	SELECT LAST_INSERT_ID() AS idpersonadireccion;
	-- usp_set_personadireccion
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_set_personadocumento
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_personadocumento`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personadocumento`(idtipodocumento int(11), idpersona int(11), numero varchar(50), caducidad date, imagen varchar(50), estado int(2))
BEGIN
	#Routine body goes here...
	INSERT INTO persona_documento(persona_documento.idtipodocumento, 
																persona_documento.idpersona, 
																persona_documento.numero, 
																persona_documento.caducidad, 
																persona_documento.imagen, 
																persona_documento.estado) 
	VALUES (idtipodocumento, idpersona, numero, caducidad, imagen, estado);

	SELECT LAST_INSERT_ID() AS idpersonadocumento;
	-- usp_set_personadocumento
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_set_personajuridica
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_personajuridica`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personajuridica`(idpersona int(11), razonsocial varchar(150), idrubro varchar(5))
BEGIN
	#Routine body goes here...
	INSERT INTO persona_juridica(persona_juridica.idpersona, persona_juridica.razonsocial, persona_juridica.idrubro) 
	VALUES (idpersona, razonsocial, idrubro);

	SELECT LAST_INSERT_ID() AS idpersonajuridica;

	-- usp_set_personajuridica
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_set_personanatural
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_personanatural`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personanatural`(idpersona int(11), nombres varchar(100), apepat varchar(50), apemat varchar(50), idgenero int(2), idestadocivil int(2))
BEGIN
	#Routine body goes here...
	INSERT INTO persona_natural(persona_natural.idpersona, 
															persona_natural.nombres, 
															persona_natural.apepat, 
															persona_natural.apemat, 
															persona_natural.idgenero, 
															persona_natural.idestadocivil) 
	VALUES (idpersona, nombres, apepat, apemat, idgenero, idestadocivil);

	SELECT LAST_INSERT_ID() AS idpersonanatural;
	-- usp_set_personanatural
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_set_personatelefono
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_personatelefono`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personatelefono`(idtipotelefono int(11), idpersona int(11), numero varchar(20), estado int(2))
BEGIN
	DECLARE item_ INT;

	SELECT IFNULL(MAX(persona_telefono.item), 0) + 1 INTO item_
	FROM persona_telefono
	WHERE persona_telefono.idpersona = idpersona
	AND persona_telefono.idtipotelefono = idtipotelefono
	;
	#Routine body goes here...
	INSERT INTO persona_telefono (persona_telefono.idtipotelefono, 
																persona_telefono.idpersona, 
																persona_telefono.item, 
																persona_telefono.numero, 
																persona_telefono.estado) 
	VALUES (idtipotelefono, idpersona, item_, numero, estado);

	SELECT LAST_INSERT_ID() AS idpersonatelefono;
	-- usp_set_personatelefono
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_set_relacion
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_relacion`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_relacion`(idpersonaindep int(11), idtiporelacion int(11), idpersonadepen int(11), registro datetime, referencia varchar(50), estado int(2))
BEGIN
	#Routine body goes here...
	INSERT INTO relacion (relacion.idpersonaindep, 
												relacion.idtiporelacion, 
												relacion.idpersonadepen, 
												relacion.registro, 
												relacion.referencia, 
												relacion.estado) 
	VALUES (idpersonaindep, idtiporelacion, idpersonadepen, registro, referencia, estado);

	SELECT LAST_INSERT_ID() AS idrelacion;

	-- usp_set_relacion
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_set_usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_usuario`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_usuario`(idpersona int(11), idrol int(11), idtiporelacion int(11), usuario varchar(45), clave varchar(45), fecha date, estado int(2))
BEGIN
	#Routine body goes here...
	INSERT INTO usuario(usuario.idpersona, 
											usuario.idrol, 
											usuario.idtiporelacion, 
											usuario.usuario, 
											usuario.clave, 
											usuario.fecha, 
											usuario.estado) 
	VALUES (idpersona, idrol, idtiporelacion, usuario, clave, fecha, estado);

	SELECT LAST_INSERT_ID() AS idusuario;

	-- usp_set_usuario
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_set_vehiculo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_vehiculo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_vehiculo`(idtipovehiculo int(11), idpersona int(11), placa varchar(45), modelo varchar(45), observacion varchar(50), color varchar(50), marca varchar(50), consumo decimal, registro datetime, estado int(2))
BEGIN
	#Routine body goes here...
	INSERT INTO vehiculo (vehiculo.idtipovehiculo, 
												vehiculo.idpersona, 
												vehiculo.placa, 
												vehiculo.modelo, 
												vehiculo.observacion, 
												vehiculo.color, 
												vehiculo.marca, 
												vehiculo.consumo, 
												vehiculo.registro, 
												vehiculo.estado) 
	VALUES (idtipovehiculo, idpersona, placa, modelo, observacion, color, marca, consumo, registro, estado);

	SELECT LAST_INSERT_ID() AS idvehiculo;
	-- usp_set_vehiculo
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_upd_persona
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_upd_persona`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_upd_persona`( idpersona int(11),nombre varchar(100),nacimiento date,tipo int(11) )
BEGIN
	UPDATE persona SET
		persona.idpersona = idpersona,
		persona.nombre = nombre,
		persona.nacimiento = nacimiento,
		persona.tipo = tipo
	WHERE persona.idpersona = idpersona;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_upd_vehiculo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_upd_vehiculo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_upd_vehiculo`(idvehiculo int(11), idtipovehiculo int(11), placa varchar(45), modelo varchar(45), observacion varchar(45), color varchar(45), marca varchar(45), consumo decimal)
BEGIN
	#Routine body goes here...
	UPDATE vehiculo
	SET vehiculo.idtipovehiculo = idtipovehiculo,
					vehiculo.placa = placa,
					vehiculo.modelo = modelo,
					vehiculo.observacion = observacion,
					vehiculo.color = color,
					vehiculo.marca = marca,
					vehiculo.consumo = consumo 
	WHERE vehiculo.idvehiculo = idvehiculo
	;
	-- usp_upd_vehiculo
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_validar_registro_cliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_validar_registro_cliente`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_validar_registro_cliente`(ruc varchar(15), correo varchar(100), movil varchar(20))
BEGIN
	SELECT	IFNULL((
						SELECT persona_documento.numero
						FROM persona_documento
						WHERE persona_documento.numero = ruc
						LIMIT 1
					), '') AS ruc,
					IFNULL((
						SELECT persona_correo.correo
						FROM persona_correo
						WHERE persona_correo.correo = correo
						LIMIT 1
					), '') AS correo,
					IFNULL((
						SELECT persona_telefono.numero
						FROM persona_telefono
						WHERE persona_telefono.numero = movil
						LIMIT 1
					), '') AS movil
;

	-- usp_validar_registro_cliente

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_validar_registro_vehiculo
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_validar_registro_vehiculo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_validar_registro_vehiculo`(placa varchar(50), idvehiculo int(11))
BEGIN
	#Routine body goes here...
	SELECT vehiculo.idvehiculo, vehiculo.placa
	FROM vehiculo
	WHERE vehiculo.placa = placa
	AND vehiculo.idvehiculo <> idvehiculo
	LIMIT 1
	;
	-- usp_validar_registro_vehiculo
END
;;
DELIMITER ;
