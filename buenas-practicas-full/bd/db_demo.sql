/*
Navicat MySQL Data Transfer

Source Server         : LOCAL
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : db_demo

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-01 17:15:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for transportista
-- ----------------------------
DROP TABLE IF EXISTS `transportista`;
CREATE TABLE `transportista` (
  `idtransp` bigint(20) NOT NULL AUTO_INCREMENT,
  `razonsocial` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefonos` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono2` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono3` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT 'img_avatars/avatar.jpg',
  `ruc` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `representante` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `puntuacion` decimal(6,2) NOT NULL DEFAULT '0.00',
  `permisos` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `web` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `facebook` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `twitter` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechareg` datetime NOT NULL,
  `estado` int(11) NOT NULL,
  `certificada` char(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT 'N',
  `ubigeo` varchar(6) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idtransp`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transportista
-- ----------------------------
INSERT INTO `transportista` VALUES ('71', 'INVERSIONES Y SERVICIOS SAN MARTIN  DE PORRES SRL', 'AV.BELAUNDE 595 LA PRIMAVERA CHICLAYO', '074-207037', null, null, 'transportes.issamp@gmail.com', 'img_avatars/58dc27-060214-001321.jpg', '20353823052', 'ORLANDO ENRIQUE BEJARANO PANAQUE', '4.00', 'S', '', '', '', '2014-01-22 17:48:36', '1', 'N', null);
INSERT INTO `transportista` VALUES ('73', 'INVERSIONES HEAL S.A.C.', 'AV. PANAMERICANA NRO. 600 URB. SANTA ROSA (COSTADO DE HOTEL SIESTA) PIURA - SULLANA', '#800725', '#985239399', '#800725', 'inversiones.healsac@gmail.com', 'img_avatars/a1b141-010214-031806.jpg', '20525977227', 'Erika Gabriela Galecio Morocho', '4.00', '', '', 'null', 'null', '2014-01-22 18:01:26', '1', 'N', null);
INSERT INTO `transportista` VALUES ('74', 'BARZA TRUCKS EIRL', 'jr. cotabambas 483', '994675245', null, null, 'mcvillasant@gmail.com', 'img_avatars/avatar.jpg', '20544823371', 'manuel calderon villasante', '3.00', 'S', '', 'null', 'null', '2014-01-22 19:49:05', '1', 'N', null);
INSERT INTO `transportista` VALUES ('76', 'TRANSPORTES Y SERVICIOS VANINA EIRL', 'CALLE NAZCA 112 - LOS MOCHICAS - CHICLAYO', '979211314', null, null, 'trans_vanina@hotmail.com', 'img_avatars/3cd9f8-130214-012159.jpg', '20395674235', 'NATHALY COSTILLA', '4.00', '', '', 'null', 'null', '2014-01-23 12:07:11', '1', 'N', null);
INSERT INTO `transportista` VALUES ('78', 'TRANSPORTES MONTANO E.I.R.L ', '', '', null, null, 'trans_montano@hotmail.com', 'img_avatars/33a891-230114-221320.jpg', '20509670260', 'Gianfranco Izarra ', '3.00', '', '', '', '', '2014-01-23 12:42:30', '1', 'N', null);
INSERT INTO `transportista` VALUES ('79', 'SCORPION EIRL', 'Cerro de Pasco', '947469944', null, null, 'transportes@scorpion.com.pe', 'img_avatars/7f3157-240114-191856.jpg', '20489629551', 'MARIA LOPE CARHUAS', '0.00', 'S', 'www.scorpion.com.pe', '', '', '2014-01-24 10:14:50', '1', 'N', null);
INSERT INTO `transportista` VALUES ('80', 'Max Omar Altamirano Nolazco', '', '', null, null, 'omar.altamirano@outlook.es', 'img_avatars/07ae95-240114-212519.jpg', '10403935811', 'OMAR ALTAMIRANO', '0.00', '', '', null, null, '2014-01-24 12:20:38', '1', 'N', null);
INSERT INTO `transportista` VALUES ('82', 'TRANSPORTES ANCAFER EIRL', 'Urb. Ingeniero II', '947618012', null, null, 'ancafer.eirl@hotmail.com', 'img_avatars/e0efc6-250114-003400.jpg', '20487453693', 'CARLOS SANDOVAL SANCHEZ', '4.00', '', '', '', '', '2014-01-24 15:29:12', '1', 'N', null);
INSERT INTO `transportista` VALUES ('83', 'Empresa de Servicios Melanie E.I.R.L', '', '', null, null, 'melanieirl@hotmail.com', 'img_avatars/avatar.jpg', '20522613330', 'Oscar Trujillo Solis', '0.00', '', '', 'null', 'null', '2014-01-25 11:17:11', '1', 'N', null);
INSERT INTO `transportista` VALUES ('84', 'TRANSPORTES PAKATNAMU S.A.C.', 'Carretera Chiclayo - Lambayeque Mz. A Lote 6 , Km. 4.5', '074-320114', null, null, 'mariosoto@transportespakatnamu.com', 'img_avatars/3b50a0-110214-212814.jpg', '20480582561', 'Mario Soto Ascarza', '4.00', '', '', 'http://www.facebook.com/TRANSPASAC', '', '2014-01-29 19:51:25', '1', 'N', null);
INSERT INTO `transportista` VALUES ('85', 'TRANSPORTES GRAU S.A.', '', '', null, null, 'etoro@tgrau.com', 'img_avatars/ca7ff4-300114-062336.jpg', '20100245109', 'Edgard Toro', '4.00', '', 'www.tgrau.com', null, null, '2014-01-29 21:18:19', '1', 'N', null);
INSERT INTO `transportista` VALUES ('86', 'TRANSPORTES CORPORATIVOS 3G SAC', 'Av. Huaman 135 Trujillo La Libertad', '044-423591', null, null, 'tc3g@hotmail.com', 'img_avatars/avatar.jpg', '20482492135', 'Guillermo NuÃ±ez', '4.00', '', '', '', '', '2014-01-31 19:09:39', '1', 'N', null);
INSERT INTO `transportista` VALUES ('88', 'TRANSPORTES Y SERVICIOS SAN ROMAN SAC', 'Av. Pesqueda Mza. 43 Lte. 41 Urb. La rinconada TRUJILLO', '044-329686', null, null, 'mauro.zv@hotmail.com', 'img_avatars/766bb7-060214-203740.jpg', '20481951306', 'DIANA ZAVALETA CALDERON', '3.00', '', '', '', '', '2014-02-06 11:13:06', '1', 'N', null);
INSERT INTO `transportista` VALUES ('89', 'EMPRESA DE TRANSPORTES NICMAR SAC', 'Av. Enrique Valenzuela NÂº 448 - Pacasmayo - La Libertad', '044311605', '945553685', '943470740', 'nicmarsac@hotmail.com', 'img_avatars/c03d69-080414-200738.jpg', '20481831823', 'James Carrasco Mendez', '4.00', '', '', '', '', '2014-02-07 16:19:35', '1', 'N', null);
INSERT INTO `transportista` VALUES ('90', 'TRANS BISMARCK S.R.LTDA.', '', '', null, null, 'transbismarck@gmail.com', 'img_avatars/avatar.jpg', '20201023221', 'jorge pohl ortiz', '0.00', '', '-', null, null, '2014-02-10 11:11:36', '1', 'N', null);
INSERT INTO `transportista` VALUES ('91', 'DONA SERVICIOS Y TRANSPORTES E.I.R.L', '', '', null, null, 'saida_noguera@transportesdasert.com', 'img_avatars/avatar.jpg', '20370567078', 'SAIDA NOGUERA HUANTO', '0.00', '', 'www.transportesdasert.com', null, null, '2014-02-10 16:05:20', '1', 'N', null);
INSERT INTO `transportista` VALUES ('92', 'Cabanillas Becerra Heideguer Hegel Engels', 'AV ROOSVELT #1000 J.L.O CHICLAYO', '', null, null, 'ilmer_bs_68@hotmail.com', 'img_avatars/d1f33c-180214-021801.jpg', '10413017489', 'ILMER BECERRA SANCHEZ', '0.00', 'S', '', 'null', 'null', '2014-02-14 17:17:15', '1', 'N', null);
INSERT INTO `transportista` VALUES ('93', 'Transportes Coyunde S.A.C', 'Av Panamericana Norte Km 775 Chiclayo', '944632495', null, null, 'Coyunde@yahoo.com', 'img_avatars/avatar.jpg', '20517063151', 'Marco A. Diaz Diaz', '0.00', '', '', 'null', 'null', '2014-02-18 11:37:35', '1', 'N', null);
INSERT INTO `transportista` VALUES ('94', 'Stefano Gallese', '', '', null, null, 'gallese_stefano@hotmail.com', 'img_avatars/avatar.jpg', '10473264647', 'Stefano Gallese', '0.00', '', '', null, null, '2014-02-18 17:45:16', '1', 'N', null);
INSERT INTO `transportista` VALUES ('95', 'S&S Rent a Car SAC', 'Av. Los Ingenieros 366 - 202 La Molina Lima ', '01 -3482545/ 98273771', '', '', 'asemino@ssgroup.com.pe', 'img_avatars/avatar.jpg', '20513949414', 'Andres Orlando Semino Mendez', '0.00', 'S', '', '', '', '2014-02-18 19:28:17', '1', 'N', '150114');
INSERT INTO `transportista` VALUES ('96', 'Trucks And Motors del Perú SAC', '', '', null, null, 'serviciosnorte@tymsac.com', 'img_avatars/avatar.jpg', '20174513245', 'Shirley Quiroz Montalvan', '0.00', '', 'www.tymsac.com', null, null, '2014-02-21 13:42:32', '1', 'N', null);
INSERT INTO `transportista` VALUES ('97', 'ZAFIRO EIRL', 'Jr. Jose santos chocano 1201', '955809830   RPM. # 0001980 RPC. 972710153', null, null, 'eleana.najarro@zafiro.com.pe', 'img_avatars/a4db8c-280214-003827.jpg', '20452731721', 'Eleana Carolina Najarro Prado', '2.00', '', 'www.zafiro.com.pe', '', '', '2014-02-27 15:33:23', '1', 'N', null);
INSERT INTO `transportista` VALUES ('99', 'CORLAU 88 SAC', '', '', null, null, 'info@lau88.com', 'img_avatars/594ed4-080314-005931.jpg', '20334632432', 'LENIN LAZO QUIROGA', '0.00', '', 'www.lau88.com', '', '', '2014-03-07 15:55:36', '1', 'N', null);
INSERT INTO `transportista` VALUES ('102', 'TRANSPORTES FULL CARGO SAC.', 'urb. las fresas mz. C lt.3', '955744899', '955744899', '51*113*9467', 'andyramos593@outlook.com.pe', 'img_avatars/8c54f6-100614-195308.jpg', '20516674335', 'Andy Cesar Ramos Fuente', '0.00', 'S', '', '', '', '2014-03-11 10:35:06', '1', 'N', null);
INSERT INTO `transportista` VALUES ('103', 'Transporte Inmediato Sac', 'Cal. Coronel Camilo Carrillo 175 of 402, Jesus Maria, Lima', '7779287', '#995000647', '(94)611*7860', 'cristofersanchez@hotmail.com', 'img_avatars/784637-180314-195855.jpg', '20537710765', 'magaly piedra', '3.00', 'S', 'www.transporteinmediato.pe', 'https://es-la.facebook.com/TransporteInmediatosac', '@tinmediato', '2014-03-13 08:54:43', '1', 'N', null);
INSERT INTO `transportista` VALUES ('105', 'A&P SERVICIOS LOGÍSTICOS SAC', '', '', null, null, 'aypservicioslogisticos@iclaro.com.pe', 'img_avatars/avatar.jpg', '20556041009', 'ALICIA MATALLANA ', '0.00', '', '', null, null, '2014-03-13 14:18:27', '1', 'N', null);
INSERT INTO `transportista` VALUES ('106', 'Rosel Saul Choqueanco Caceres', 'Chivay - Caylloma', '964995000 RPM *0060000', null, null, 'roselsaul@gmail.com', 'img_avatars/b37173-170314-060450.jpg', '10443437962', '', '0.00', '', '', 'https://es-la.facebook.com/Trasladus', '', '2014-03-16 20:58:52', '1', 'N', null);
INSERT INTO `transportista` VALUES ('107', 'R&M Soluciones Integrales S.R.L.', 'Jr. Sergio Morocho NÂ° 150 Callao', '(95) 510*9750  / 986037017', null, null, 'ortiz_2509@hotmail.com', 'img_avatars/avatar.jpg', '20555760923', 'Jorge Ricardo Ortiz Fierro', '0.00', 'S', '', '', '', '2014-03-17 15:27:46', '1', 'N', null);
INSERT INTO `transportista` VALUES ('109', 'TRANSPORTES PANAMUNDO S.A.C.', 'JUAN OCHOA 131 SURQUILLO-', '447 0450 / 444 2901', null, null, 'ventas@panamundo.pe', 'img_avatars/a0a6b7-200314-174422.jpg', '20522545741', 'RICARDO HUAMAN CHAMPE', '3.00', '', 'www.panamundo.pe', '', '', '2014-03-20 08:26:19', '1', 'N', null);
INSERT INTO `transportista` VALUES ('111', 'Lynder  Ponce Martinez', '', '', null, null, 'plinio_15_1@hotmail.com', 'img_avatars/avatar.jpg', '1046620090', 'Ruben ponce', '0.00', '', '', null, null, '2014-03-20 12:49:02', '0', 'N', null);
INSERT INTO `transportista` VALUES ('114', 'ABARROTERO EXPRESS', '', '994379172', null, null, 'fmorales@grupods.pe', 'img_avatars/avatar.jpg', '20321939431', 'jefe de logistica', '0.00', '', 'www.grupods.pe', 'null', 'null', '2014-03-20 16:14:08', '1', 'N', null);
INSERT INTO `transportista` VALUES ('115', 'YAGISH transportes y logística S.A.C.', 'Jr. Las Begonais A9 Los Olivos', '4850263', null, null, 'mjara@yagish.com', 'img_avatars/3beb90-230314-212610.jpg', '20555805960', 'Miguel Angel Jara P.', '0.00', '', 'www.yagish.com', '', '', '2014-03-20 22:41:43', '1', 'N', null);
INSERT INTO `transportista` VALUES ('117', 'DR-CABO SAC', '', '', null, null, 'dyrcabosac@gmail.com', 'img_avatars/avatar.jpg', '20546887686', 'Ivan Edson Aguedo Mellado', '0.00', '', '', null, null, '2014-03-21 15:11:45', '1', 'N', null);
INSERT INTO `transportista` VALUES ('118', 'BONY SALVADOR NIETO ALVAREZ', '', '981513771', null, null, 'salvador3272@yahoo.com', 'img_avatars/avatar.jpg', '10096191494', 'salvador nieto alvarez', '0.00', 'S', '', '', '', '2014-03-21 23:03:59', '0', 'N', null);
INSERT INTO `transportista` VALUES ('119', 'Grupo herol contratista i servicios generales srl ', '', '', null, null, 'grupoherolsrl@gmail.com', 'img_avatars/avatar.jpg', '20561118834', 'renzo rojas lopez ', '0.00', '', '', null, null, '2014-03-22 13:53:55', '0', 'N', null);
INSERT INTO `transportista` VALUES ('120', 'TRANSPORTE DIVAR SA', '', '', null, null, 'TRANSPORTESDIVAR@GMAIL.COM', 'img_avatars/avatar.jpg', '20548022186', 'CESAR DIAZ ', '0.00', '', '', null, null, '2014-03-23 08:48:57', '1', 'N', null);
INSERT INTO `transportista` VALUES ('123', 'CENTRAL PERU S.A.', '', '', null, null, 'luis.zumaeta@centralperu.pe', 'img_avatars/avatar.jpg', '20120545303', 'Luis Zumaeta Agurto', '3.00', '', 'www.centralperu.pe', '', '', '2014-03-25 08:54:31', '1', 'N', null);
INSERT INTO `transportista` VALUES ('125', 'Transporte Roca y Melendez Sac', '', '', null, null, 'recicladora.rym.s.a.c@hotmail.com', 'img_avatars/73d23b-250314-185811.jpg', '20545249198', 'santos oscar melendez quicaÃ±o', '0.00', '', '', null, null, '2014-03-25 09:51:58', '1', 'N', null);
INSERT INTO `transportista` VALUES ('126', 'Servicios Multiples Cotrina EIRL', 'calle lima Nro 224 Chaupimarca Pasco', '01 - 5847044', null, null, 'sermucot1@hotmail.com', 'img_avatars/avatar.jpg', '20489256003', 'ezequiel cotrina nieto', '0.00', 'S', 'www.transportescotrina.pe', 'yilmer_16@hotmail.com', '', '2014-03-25 17:05:18', '1', 'N', null);
INSERT INTO `transportista` VALUES ('127', 'Trans Global Hcjb Sac', '', '', null, null, 'transg_hcjb@hotmail.com', 'img_avatars/avatar.jpg', '29537791072', 'samuel rivera', '0.00', '', '', null, null, '2014-03-26 11:06:23', '0', 'N', null);
INSERT INTO `transportista` VALUES ('129', 'RED DE TRANSPORTES ESPERANZA EIRL', 'Av. Paseo de La Republica 1001 La Victoria', '01-3264112', '944924304', '', 'jaguilar@transportesesperanza.com', 'img_avatars/24fa32-270314-014606.jpg', '20549793046', 'Jonathan Aguilar Aguilar', '0.00', '', 'www.transportesesperanza.com ', '', '', '2014-03-26 16:36:34', '1', 'N', null);
INSERT INTO `transportista` VALUES ('130', 'IMEX INVERSIONES LOGISTICAS S.A.C', '', '', null, null, 'logistica@imexglobalperu.com', 'img_avatars/avatar.jpg', '20555001933', 'Yhonatan Maldonado', '0.00', '', 'www.imexglobalperu.com', null, null, '2014-03-26 19:27:20', '1', 'N', null);
INSERT INTO `transportista` VALUES ('131', 'Transporte y Servicio de Carga Trans Severo Sac', 'JR. FEDERICO UGARTE 229', '2760993', '990432801', '#378323', 'TRANSE.VERO@HOTMAIL.COM', 'img_avatars/a9b9af-280414-082333.jpg', '20422380150', 'naldo blanco', '3.00', 'S', '', 'trans severo sac', '', '2014-03-27 01:56:59', '1', 'N', '150133');
INSERT INTO `transportista` VALUES ('132', 'A & C  FERREYROS  SAC', 'Lim- PerÃº', '7281381', '999443202', '607*94', 'alejandro.ferreyros@hotmail.com', 'img_avatars/37f029-270314-190556.jpg', '20536893297', 'Alejandro Ferreyros', '0.00', '', 'www.mudanzasferreyros.com', 'https://www.facebook.com/mudanzaslima', '', '2014-03-27 09:48:36', '1', 'N', null);
INSERT INTO `transportista` VALUES ('133', 'TRANSPORTES CAMOA S. A. C.', '', '', '', '944643053/98914', 'transportescamoa@gmail.com', 'img_avatars/avatar.jpg', '20544201884', 'CARLOS MOSCOSO AGUAYO', '0.00', '', '', '', '', '2014-03-27 10:58:33', '1', 'N', null);
INSERT INTO `transportista` VALUES ('134', 'TRANSMERSA E.I.R.L', 'Chiclayo - PerÃº', '074-265187', null, null, 'TRANSMERSA@HOTMAIL.COM', 'img_avatars/11e2e9-270314-211207.jpg', '20552296355', 'ABRAHAM JULCA', '0.00', 'S', '', '', '', '2014-03-27 11:52:07', '1', 'N', null);
INSERT INTO `transportista` VALUES ('137', 'Mo Representaciones Generales SRL', 'calle paz Soldan 405 miraflores arequipa', '211670', null, null, 'm.o.representaciones_generales@hotmail.com', 'img_avatars/avatar.jpg', '20454848153', 'Fredy Sinti', '0.00', '', '', '', '', '2014-03-28 09:57:02', '1', 'N', null);
INSERT INTO `transportista` VALUES ('138', 'JUANA GLADYS ESPEJO PILLACA', 'MZ U LOTE 02 URB QUEBRADA VERDE - PACHACAMAC', '985006440', null, null, 'transportes.fastservice@hotmail.com', 'img_avatars/241e5e-310314-213621.jpg', '10078933521', 'JUANA ESPEJO', '0.00', '', '', '', '', '2014-03-28 12:31:05', '1', 'N', null);
INSERT INTO `transportista` VALUES ('141', 'EXPRESO D3 SAC', '', '', null, null, 'dnaranjo@expresod3.com', 'img_avatars/avatar.jpg', '20522573443', 'David Fernando Naranjo Guevara', '0.00', '', 'www.expresod3.com', null, null, '2014-03-29 09:33:24', '1', 'N', null);
INSERT INTO `transportista` VALUES ('142', 'DEVOL PERU SAC', '', '', null, null, 'oafaflores1@hotmail.com', 'img_avatars/avatar.jpg', '20535555274', 'Oscar Flores', '0.00', '', 'www.devoltires.com/', null, null, '2014-03-29 21:06:22', '1', 'N', null);
INSERT INTO `transportista` VALUES ('143', 'etracysmaj e.i.r.l.', '', '', null, null, 'juanmarinero@hotmail.com', 'img_avatars/avatar.jpg', '20550369347', 'juan rupay', '0.00', '', '', null, null, '2014-03-30 00:18:49', '0', 'N', null);
INSERT INTO `transportista` VALUES ('144', 'Godofredo Mory Varillas ', 'LIMA - LIMA - CARABAYLLO', '', null, null, 'godofredomoryvarillas@hotmail.com', 'img_avatars/avatar.jpg', '10104030438', 'slim mory ricse', '0.00', '', '', null, null, '2014-03-30 21:04:11', '1', 'N', null);
INSERT INTO `transportista` VALUES ('145', 'EMPRESA DE SERVICIOS \"TRANS. VELCAS\" EIRL', '', '', null, null, 'trans.velcas@HOTMAIL.COM', 'img_avatars/avatar.jpg', '20568645988', 'Miriam Silvia Castellanos Aquino', '0.00', '', 'http://trans-velcas.webnode.es/', null, null, '2014-03-30 23:49:28', '1', 'N', null);
INSERT INTO `transportista` VALUES ('146', 'T-TRANSPORTO EXPRESS S.A.C.', 'LOS OLIVOS', '992308427', null, null, 'tranex.sac@gmail.com', 'img_avatars/ffcf1e-310314-102133.jpg', '20538764397', 'RICHARD', '0.00', 'S', '', '', '', '2014-03-31 00:24:06', '1', 'N', null);
INSERT INTO `transportista` VALUES ('147', 'COFESA SRL', '', '', null, null, 'dino_cofesa@yahoo.com', 'img_avatars/avatar.jpg', '20395222172', 'JENNY PEREZ', '0.00', '', '', null, null, '2014-03-31 16:58:47', '0', 'N', null);
INSERT INTO `transportista` VALUES ('148', 'Empresa de Transportes y Servicios Generales Poma SAC', '', '', null, null, 'eyptransportes@gmail.com', 'img_avatars/avatar.jpg', '20553591211', 'enrique manuel poma quispe', '0.00', '', '', null, null, '2014-04-01 21:34:40', '1', 'N', null);

-- ----------------------------
-- Table structure for ubigeo
-- ----------------------------
DROP TABLE IF EXISTS `ubigeo`;
CREATE TABLE `ubigeo` (
  `codubigeo` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `lugar` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `longitud` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `latitud` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codubigeo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of ubigeo
-- ----------------------------
INSERT INTO `ubigeo` VALUES ('010000', 'Amazonas', '', '');
INSERT INTO `ubigeo` VALUES ('010100', 'Chachapoyas', '', '');
INSERT INTO `ubigeo` VALUES ('010101', 'Chachapoyas', '', '');
INSERT INTO `ubigeo` VALUES ('010102', 'Asuncion', '', '');
INSERT INTO `ubigeo` VALUES ('010103', 'Balsas', '', '');
INSERT INTO `ubigeo` VALUES ('010104', 'Cheto', '', '');
INSERT INTO `ubigeo` VALUES ('010105', 'Chiliquin', '', '');
INSERT INTO `ubigeo` VALUES ('010106', 'Chuquibamba', '', '');
INSERT INTO `ubigeo` VALUES ('010107', 'Granada', '', '');
INSERT INTO `ubigeo` VALUES ('010108', 'Huancas', '', '');
INSERT INTO `ubigeo` VALUES ('010109', 'La Jalca', '', '');
INSERT INTO `ubigeo` VALUES ('010110', 'Leimebamba', '', '');
INSERT INTO `ubigeo` VALUES ('010111', 'Levanto', '', '');
INSERT INTO `ubigeo` VALUES ('010112', 'Magdalena', '', '');
INSERT INTO `ubigeo` VALUES ('010113', 'Mariscal Castilla', '', '');
INSERT INTO `ubigeo` VALUES ('010114', 'Molinopampa', '', '');
INSERT INTO `ubigeo` VALUES ('010115', 'Montevideo', '', '');
INSERT INTO `ubigeo` VALUES ('010116', 'Olleros', '', '');
INSERT INTO `ubigeo` VALUES ('010117', 'Quinjalca', '', '');
INSERT INTO `ubigeo` VALUES ('010118', 'San Francisco de Daguas', '', '');
INSERT INTO `ubigeo` VALUES ('010119', 'San Isidro de Maino', '', '');
INSERT INTO `ubigeo` VALUES ('010120', 'Soloco', '', '');
INSERT INTO `ubigeo` VALUES ('010121', 'Sonche', '', '');
INSERT INTO `ubigeo` VALUES ('010200', 'Bagua', '', '');
INSERT INTO `ubigeo` VALUES ('010201', 'La Peca', '', '');
INSERT INTO `ubigeo` VALUES ('010202', 'Aramango', '', '');
INSERT INTO `ubigeo` VALUES ('010203', 'Copallin', '', '');
INSERT INTO `ubigeo` VALUES ('010204', 'El Parco', '', '');
INSERT INTO `ubigeo` VALUES ('010205', 'Imaza', '', '');
INSERT INTO `ubigeo` VALUES ('010300', 'Bongara', '', '');
INSERT INTO `ubigeo` VALUES ('010301', 'Jumbilla', '', '');
INSERT INTO `ubigeo` VALUES ('010302', 'Corosha', '', '');
INSERT INTO `ubigeo` VALUES ('010303', 'Cuispes', '', '');
INSERT INTO `ubigeo` VALUES ('010304', 'Chisquilla', '', '');
INSERT INTO `ubigeo` VALUES ('010305', 'Churuja', '', '');
INSERT INTO `ubigeo` VALUES ('010306', 'Florida', '', '');
INSERT INTO `ubigeo` VALUES ('010307', 'Recta', '', '');
INSERT INTO `ubigeo` VALUES ('010308', 'San Carlos', '', '');
INSERT INTO `ubigeo` VALUES ('010309', 'Shipasbamba', '', '');
INSERT INTO `ubigeo` VALUES ('010310', 'Valera', '', '');
INSERT INTO `ubigeo` VALUES ('010311', 'Yambrasbamba', '', '');
INSERT INTO `ubigeo` VALUES ('010312', 'Jazan', '', '');
INSERT INTO `ubigeo` VALUES ('010400', 'Condorcanqui', '', '');
INSERT INTO `ubigeo` VALUES ('010401', 'Nieva', '', '');
INSERT INTO `ubigeo` VALUES ('010402', 'El Cenepa', '', '');
INSERT INTO `ubigeo` VALUES ('010403', 'Rio Santiago', '', '');
INSERT INTO `ubigeo` VALUES ('010500', 'Luya', '', '');
INSERT INTO `ubigeo` VALUES ('010501', 'Lamud', '', '');
INSERT INTO `ubigeo` VALUES ('010502', 'Camporredondo', '', '');
INSERT INTO `ubigeo` VALUES ('010503', 'Cocabamba', '', '');
INSERT INTO `ubigeo` VALUES ('010504', 'Colcamar', '', '');
INSERT INTO `ubigeo` VALUES ('010505', 'Conila', '', '');
INSERT INTO `ubigeo` VALUES ('010506', 'Inguilpata', '', '');
INSERT INTO `ubigeo` VALUES ('010507', 'Longuita', '', '');
INSERT INTO `ubigeo` VALUES ('010508', 'Lonya Chico', '', '');
INSERT INTO `ubigeo` VALUES ('010509', 'Luya', '', '');
INSERT INTO `ubigeo` VALUES ('010510', 'Luya Viejo', '', '');
INSERT INTO `ubigeo` VALUES ('010511', 'Maria', '', '');
INSERT INTO `ubigeo` VALUES ('010512', 'Ocalli', '', '');
INSERT INTO `ubigeo` VALUES ('010513', 'Ocumal', '', '');
INSERT INTO `ubigeo` VALUES ('010514', 'Pisuquia', '', '');
INSERT INTO `ubigeo` VALUES ('010515', 'Providencia', '', '');
INSERT INTO `ubigeo` VALUES ('010516', 'San Cristobal', '', '');
INSERT INTO `ubigeo` VALUES ('010517', 'San Francisco del Yeso', '', '');
INSERT INTO `ubigeo` VALUES ('010518', 'San Jeronimo', '', '');
INSERT INTO `ubigeo` VALUES ('010519', 'San Juan de Lopecancha', '', '');
INSERT INTO `ubigeo` VALUES ('010520', 'Santa Catalina', '', '');
INSERT INTO `ubigeo` VALUES ('010521', 'Santo Tomas', '', '');
INSERT INTO `ubigeo` VALUES ('010522', 'Tingo', '', '');
INSERT INTO `ubigeo` VALUES ('010523', 'Trita', '', '');
INSERT INTO `ubigeo` VALUES ('010600', 'Rodriguez de Mendoza', '', '');
INSERT INTO `ubigeo` VALUES ('010601', 'San Nicolas', '', '');
INSERT INTO `ubigeo` VALUES ('010602', 'Chirimoto', '', '');
INSERT INTO `ubigeo` VALUES ('010603', 'Cochamal', '', '');
INSERT INTO `ubigeo` VALUES ('010604', 'Huambo', '', '');
INSERT INTO `ubigeo` VALUES ('010605', 'Limabamba', '', '');
INSERT INTO `ubigeo` VALUES ('010606', 'Longar', '', '');
INSERT INTO `ubigeo` VALUES ('010607', 'Mariscal Benavides', '', '');
INSERT INTO `ubigeo` VALUES ('010608', 'Milpuc', '', '');
INSERT INTO `ubigeo` VALUES ('010609', 'Omia', '', '');
INSERT INTO `ubigeo` VALUES ('010610', 'Santa Rosa', '', '');
INSERT INTO `ubigeo` VALUES ('010611', 'Totora', '', '');
INSERT INTO `ubigeo` VALUES ('010612', 'Vista Alegre', '', '');
INSERT INTO `ubigeo` VALUES ('010700', 'Utcubamba', '', '');
INSERT INTO `ubigeo` VALUES ('010701', 'Bagua Grande', '', '');
INSERT INTO `ubigeo` VALUES ('010702', 'Cajaruro', '', '');
INSERT INTO `ubigeo` VALUES ('010703', 'Cumba', '', '');
INSERT INTO `ubigeo` VALUES ('010704', 'El Milagro', '', '');
INSERT INTO `ubigeo` VALUES ('010705', 'Jamalca', '', '');
INSERT INTO `ubigeo` VALUES ('010706', 'Lonya Grande', '', '');
INSERT INTO `ubigeo` VALUES ('010707', 'Yamon', '', '');
INSERT INTO `ubigeo` VALUES ('020000', 'Ancash', '', '');
INSERT INTO `ubigeo` VALUES ('020100', 'Huaraz', '', '');
INSERT INTO `ubigeo` VALUES ('020101', 'Huaraz', '', '');
INSERT INTO `ubigeo` VALUES ('020102', 'Cochabamba', '', '');
INSERT INTO `ubigeo` VALUES ('020103', 'Colcabamba', '', '');
INSERT INTO `ubigeo` VALUES ('020104', 'Huanchay', '', '');
INSERT INTO `ubigeo` VALUES ('020105', 'Independencia', '', '');
INSERT INTO `ubigeo` VALUES ('020106', 'Jangas', '', '');
INSERT INTO `ubigeo` VALUES ('020107', 'La Libertad', '', '');
INSERT INTO `ubigeo` VALUES ('020108', 'Olleros', '', '');
INSERT INTO `ubigeo` VALUES ('020109', 'Pampas', '', '');
INSERT INTO `ubigeo` VALUES ('020110', 'Pariacoto', '', '');
INSERT INTO `ubigeo` VALUES ('020111', 'Pira', '', '');
INSERT INTO `ubigeo` VALUES ('020112', 'Tarica', '', '');
INSERT INTO `ubigeo` VALUES ('020200', 'Aija', '', '');
INSERT INTO `ubigeo` VALUES ('020201', 'Aija', '', '');
INSERT INTO `ubigeo` VALUES ('020202', 'Coris', '', '');
INSERT INTO `ubigeo` VALUES ('020203', 'Huacllan', '', '');
INSERT INTO `ubigeo` VALUES ('020204', 'La Merced', '', '');
INSERT INTO `ubigeo` VALUES ('020205', 'Succha', '', '');
INSERT INTO `ubigeo` VALUES ('020300', 'Antonio Raymondi', '', '');
INSERT INTO `ubigeo` VALUES ('020301', 'Llamellin', '', '');
INSERT INTO `ubigeo` VALUES ('020302', 'Aczo', '', '');
INSERT INTO `ubigeo` VALUES ('020303', 'Chaccho', '', '');
INSERT INTO `ubigeo` VALUES ('020304', 'Chingas', '', '');
INSERT INTO `ubigeo` VALUES ('020305', 'Mirgas', '', '');
INSERT INTO `ubigeo` VALUES ('020306', 'San Juan de Rontoy', '', '');
INSERT INTO `ubigeo` VALUES ('020400', 'Asuncion', '', '');
INSERT INTO `ubigeo` VALUES ('020401', 'Chacas', '', '');
INSERT INTO `ubigeo` VALUES ('020402', 'Acochaca', '', '');
INSERT INTO `ubigeo` VALUES ('020500', 'Bolognesi', '', '');
INSERT INTO `ubigeo` VALUES ('020501', 'Chiquian', '', '');
INSERT INTO `ubigeo` VALUES ('020502', 'Abelardo Pardo Lezameta', '', '');
INSERT INTO `ubigeo` VALUES ('020503', 'Antonio Raymondi', '', '');
INSERT INTO `ubigeo` VALUES ('020504', 'Aquia', '', '');
INSERT INTO `ubigeo` VALUES ('020505', 'Cajacay', '', '');
INSERT INTO `ubigeo` VALUES ('020506', 'Canis', '', '');
INSERT INTO `ubigeo` VALUES ('020507', 'Colquioc', '', '');
INSERT INTO `ubigeo` VALUES ('020508', 'Huallanca', '', '');
INSERT INTO `ubigeo` VALUES ('020509', 'Huasta', '', '');
INSERT INTO `ubigeo` VALUES ('020510', 'Huayllacayan', '', '');
INSERT INTO `ubigeo` VALUES ('020511', 'La Primavera', '', '');
INSERT INTO `ubigeo` VALUES ('020512', 'Mangas', '', '');
INSERT INTO `ubigeo` VALUES ('020513', 'Pacllon', '', '');
INSERT INTO `ubigeo` VALUES ('020514', 'San Miguel de Corpanqui', '', '');
INSERT INTO `ubigeo` VALUES ('020515', 'Ticllos', '', '');
INSERT INTO `ubigeo` VALUES ('020600', 'Carhuaz', '', '');
INSERT INTO `ubigeo` VALUES ('020601', 'Carhuaz', '', '');
INSERT INTO `ubigeo` VALUES ('020602', 'Acopampa', '', '');
INSERT INTO `ubigeo` VALUES ('020603', 'Amashca', '', '');
INSERT INTO `ubigeo` VALUES ('020604', 'Anta', '', '');
INSERT INTO `ubigeo` VALUES ('020605', 'Ataquero', '', '');
INSERT INTO `ubigeo` VALUES ('020606', 'Marcara', '', '');
INSERT INTO `ubigeo` VALUES ('020607', 'Pariahuanca', '', '');
INSERT INTO `ubigeo` VALUES ('020608', 'San Miguel de Aco', '', '');
INSERT INTO `ubigeo` VALUES ('020609', 'Shilla', '', '');
INSERT INTO `ubigeo` VALUES ('020610', 'Tinco', '', '');
INSERT INTO `ubigeo` VALUES ('020611', 'Yungar', '', '');
INSERT INTO `ubigeo` VALUES ('020700', 'Carlos Fermin Fitzcarrald', '', '');
INSERT INTO `ubigeo` VALUES ('020701', 'San Luis', '', '');
INSERT INTO `ubigeo` VALUES ('020702', 'San Nicolas', '', '');
INSERT INTO `ubigeo` VALUES ('020703', 'Yauya', '', '');
INSERT INTO `ubigeo` VALUES ('020800', 'Casma', '', '');
INSERT INTO `ubigeo` VALUES ('020801', 'Casma', '', '');
INSERT INTO `ubigeo` VALUES ('020802', 'Buena Vista Alta', '', '');
INSERT INTO `ubigeo` VALUES ('020803', 'Comandante Noel', '', '');
INSERT INTO `ubigeo` VALUES ('020804', 'Yautan', '', '');
INSERT INTO `ubigeo` VALUES ('020900', 'Corongo', '', '');
INSERT INTO `ubigeo` VALUES ('020901', 'Corongo', '', '');
INSERT INTO `ubigeo` VALUES ('020902', 'Aco', '', '');
INSERT INTO `ubigeo` VALUES ('020903', 'Bambas', '', '');
INSERT INTO `ubigeo` VALUES ('020904', 'Cusca', '', '');
INSERT INTO `ubigeo` VALUES ('020905', 'La Pampa', '', '');
INSERT INTO `ubigeo` VALUES ('020906', 'Yanac', '', '');
INSERT INTO `ubigeo` VALUES ('020907', 'Yupan', '', '');
INSERT INTO `ubigeo` VALUES ('021000', 'Huari', '', '');
INSERT INTO `ubigeo` VALUES ('021001', 'Huari', '', '');
INSERT INTO `ubigeo` VALUES ('021002', 'Anra', '', '');
INSERT INTO `ubigeo` VALUES ('021003', 'Cajay', '', '');
INSERT INTO `ubigeo` VALUES ('021004', 'Chavin de Huantar', '', '');
INSERT INTO `ubigeo` VALUES ('021005', 'Huacachi', '', '');
INSERT INTO `ubigeo` VALUES ('021006', 'Huacchis', '', '');
INSERT INTO `ubigeo` VALUES ('021007', 'Huachis', '', '');
INSERT INTO `ubigeo` VALUES ('021008', 'Huantar', '', '');
INSERT INTO `ubigeo` VALUES ('021009', 'Masin', '', '');
INSERT INTO `ubigeo` VALUES ('021010', 'Paucas', '', '');
INSERT INTO `ubigeo` VALUES ('021011', 'Ponto', '', '');
INSERT INTO `ubigeo` VALUES ('021012', 'Rahuapampa', '', '');
INSERT INTO `ubigeo` VALUES ('021013', 'Rapayan', '', '');
INSERT INTO `ubigeo` VALUES ('021014', 'San Marcos', '', '');
INSERT INTO `ubigeo` VALUES ('021015', 'San Pedro de Chana', '', '');
INSERT INTO `ubigeo` VALUES ('021016', 'Uco', '', '');
INSERT INTO `ubigeo` VALUES ('021100', 'Huarmey', '', '');
INSERT INTO `ubigeo` VALUES ('021101', 'Huarmey', '', '');
INSERT INTO `ubigeo` VALUES ('021102', 'Cochapeti', '', '');
INSERT INTO `ubigeo` VALUES ('021103', 'Culebras', '', '');
INSERT INTO `ubigeo` VALUES ('021104', 'Huayan', '', '');
INSERT INTO `ubigeo` VALUES ('021105', 'Malvas', '', '');
INSERT INTO `ubigeo` VALUES ('021200', 'Huaylas', '', '');
INSERT INTO `ubigeo` VALUES ('021201', 'Caraz', '', '');
INSERT INTO `ubigeo` VALUES ('021202', 'Huallanca', '', '');
INSERT INTO `ubigeo` VALUES ('021203', 'Huata', '', '');
INSERT INTO `ubigeo` VALUES ('021204', 'Huaylas', '', '');
INSERT INTO `ubigeo` VALUES ('021205', 'Mato', '', '');
INSERT INTO `ubigeo` VALUES ('021206', 'Pamparomas', '', '');
INSERT INTO `ubigeo` VALUES ('021207', 'Pueblo Libre', '', '');
INSERT INTO `ubigeo` VALUES ('021208', 'Santa Cruz', '', '');
INSERT INTO `ubigeo` VALUES ('021209', 'Santo Toribio', '', '');
INSERT INTO `ubigeo` VALUES ('021210', 'Yuracmarca', '', '');
INSERT INTO `ubigeo` VALUES ('021300', 'Mariscal Luzuriaga', '', '');
INSERT INTO `ubigeo` VALUES ('021301', 'Piscobamba', '', '');
INSERT INTO `ubigeo` VALUES ('021302', 'Casca', '', '');
INSERT INTO `ubigeo` VALUES ('021303', 'Eleazar Guzman Barron', '', '');
INSERT INTO `ubigeo` VALUES ('021304', 'Fidel Olivas Escudero', '', '');
INSERT INTO `ubigeo` VALUES ('021305', 'Llama', '', '');
INSERT INTO `ubigeo` VALUES ('021306', 'Llumpa', '', '');
INSERT INTO `ubigeo` VALUES ('021307', 'Lucma', '', '');
INSERT INTO `ubigeo` VALUES ('021308', 'Musga', '', '');
INSERT INTO `ubigeo` VALUES ('021400', 'Ocros', '', '');
INSERT INTO `ubigeo` VALUES ('021401', 'Ocros', '', '');
INSERT INTO `ubigeo` VALUES ('021402', 'Acas', '', '');
INSERT INTO `ubigeo` VALUES ('021403', 'Cajamarquilla', '', '');
INSERT INTO `ubigeo` VALUES ('021404', 'Carhuapampa', '', '');
INSERT INTO `ubigeo` VALUES ('021405', 'Cochas', '', '');
INSERT INTO `ubigeo` VALUES ('021406', 'Congas', '', '');
INSERT INTO `ubigeo` VALUES ('021407', 'Llipa', '', '');
INSERT INTO `ubigeo` VALUES ('021408', 'San Cristobal de Rajan', '', '');
INSERT INTO `ubigeo` VALUES ('021409', 'San Pedro', '', '');
INSERT INTO `ubigeo` VALUES ('021410', 'Santiago de Chilcas', '', '');
INSERT INTO `ubigeo` VALUES ('021500', 'Pallasca', '', '');
INSERT INTO `ubigeo` VALUES ('021501', 'Cabana', '', '');
INSERT INTO `ubigeo` VALUES ('021502', 'Bolognesi', '', '');
INSERT INTO `ubigeo` VALUES ('090204', 'Caja', '', '');
INSERT INTO `ubigeo` VALUES ('090205', 'Marcas', '', '');
INSERT INTO `ubigeo` VALUES ('090206', 'Paucara', '', '');
INSERT INTO `ubigeo` VALUES ('090207', 'Pomacocha', '', '');
INSERT INTO `ubigeo` VALUES ('090208', 'Rosario', '', '');
INSERT INTO `ubigeo` VALUES ('090300', 'Angaraes', '', '');
INSERT INTO `ubigeo` VALUES ('090301', 'Lircay', '', '');
INSERT INTO `ubigeo` VALUES ('090302', 'Anchonga', '', '');
INSERT INTO `ubigeo` VALUES ('090303', 'Callanmarca', '', '');
INSERT INTO `ubigeo` VALUES ('090304', 'Ccochaccasa', '', '');
INSERT INTO `ubigeo` VALUES ('090305', 'Chincho', '', '');
INSERT INTO `ubigeo` VALUES ('090306', 'Congalla', '', '');
INSERT INTO `ubigeo` VALUES ('090307', 'Huanca-Huanca', '', '');
INSERT INTO `ubigeo` VALUES ('090308', 'Huayllay Grande', '', '');
INSERT INTO `ubigeo` VALUES ('090309', 'Julcamarca', '', '');
INSERT INTO `ubigeo` VALUES ('090310', 'San Antonio de Antaparco', '', '');
INSERT INTO `ubigeo` VALUES ('090311', 'Santo Tomas de Pata', '', '');
INSERT INTO `ubigeo` VALUES ('090312', 'Secclla', '', '');
INSERT INTO `ubigeo` VALUES ('090400', 'Castrovirreyna', '', '');
INSERT INTO `ubigeo` VALUES ('090401', 'Castrovirreyna', '', '');
INSERT INTO `ubigeo` VALUES ('090402', 'Arma', '', '');
INSERT INTO `ubigeo` VALUES ('090403', 'Aurahua', '', '');
INSERT INTO `ubigeo` VALUES ('090404', 'Capillas', '', '');
INSERT INTO `ubigeo` VALUES ('090405', 'Chupamarca', '', '');
INSERT INTO `ubigeo` VALUES ('090406', 'Cocas', '', '');
INSERT INTO `ubigeo` VALUES ('090407', 'Huachos', '', '');
INSERT INTO `ubigeo` VALUES ('090408', 'Huamatambo', '', '');
INSERT INTO `ubigeo` VALUES ('090409', 'Mollepampa', '', '');
INSERT INTO `ubigeo` VALUES ('090410', 'San Juan', '', '');
INSERT INTO `ubigeo` VALUES ('090411', 'Santa Ana', '', '');
INSERT INTO `ubigeo` VALUES ('090412', 'Tantara', '', '');
INSERT INTO `ubigeo` VALUES ('090413', 'Ticrapo', '', '');
INSERT INTO `ubigeo` VALUES ('090500', 'Churcampa', '', '');
INSERT INTO `ubigeo` VALUES ('090501', 'Churcampa', '', '');
INSERT INTO `ubigeo` VALUES ('090502', 'Anco', '', '');
INSERT INTO `ubigeo` VALUES ('090503', 'Chinchihuasi', '', '');
INSERT INTO `ubigeo` VALUES ('090504', 'El Carmen', '', '');
INSERT INTO `ubigeo` VALUES ('090505', 'La Merced', '', '');
INSERT INTO `ubigeo` VALUES ('090506', 'Locroja', '', '');
INSERT INTO `ubigeo` VALUES ('090507', 'Paucarbamba', '', '');
INSERT INTO `ubigeo` VALUES ('090508', 'San Miguel de Mayocc', '', '');
INSERT INTO `ubigeo` VALUES ('090509', 'San Pedro de Coris', '', '');
INSERT INTO `ubigeo` VALUES ('090510', 'Pachamarca', '', '');
INSERT INTO `ubigeo` VALUES ('090600', 'Huaytara', '', '');
INSERT INTO `ubigeo` VALUES ('090601', 'Huaytara', '', '');
INSERT INTO `ubigeo` VALUES ('090602', 'Ayavi', '', '');
INSERT INTO `ubigeo` VALUES ('090603', 'Cordova', '', '');
INSERT INTO `ubigeo` VALUES ('090604', 'Huayacundo Arma', '', '');
INSERT INTO `ubigeo` VALUES ('090605', 'Laramarca', '', '');
INSERT INTO `ubigeo` VALUES ('090606', 'Ocoyo', '', '');
INSERT INTO `ubigeo` VALUES ('090607', 'Pilpichaca', '', '');
INSERT INTO `ubigeo` VALUES ('090608', 'Querco', '', '');
INSERT INTO `ubigeo` VALUES ('090609', 'Quito-Arma', '', '');
INSERT INTO `ubigeo` VALUES ('090610', 'San Antonio de Cusicancha', '', '');
INSERT INTO `ubigeo` VALUES ('090611', 'San Francisco de Sangayaico', '', '');
INSERT INTO `ubigeo` VALUES ('090612', 'San Isidro', '', '');
INSERT INTO `ubigeo` VALUES ('090613', 'Santiago de Chocorvos', '', '');
INSERT INTO `ubigeo` VALUES ('090614', 'Santiago de Quirahuara', '', '');
INSERT INTO `ubigeo` VALUES ('090615', 'Santo Domingo de Capillas', '', '');
INSERT INTO `ubigeo` VALUES ('090616', 'Tambo', '', '');
INSERT INTO `ubigeo` VALUES ('090700', 'Tayacaja', '', '');
INSERT INTO `ubigeo` VALUES ('090701', 'Pampas', '', '');
INSERT INTO `ubigeo` VALUES ('090702', 'Acostambo', '', '');
INSERT INTO `ubigeo` VALUES ('090703', 'Acraquia', '', '');
INSERT INTO `ubigeo` VALUES ('090704', 'Ahuaycha', '', '');
INSERT INTO `ubigeo` VALUES ('090705', 'Colcabamba', '', '');
INSERT INTO `ubigeo` VALUES ('090706', 'Daniel Hernandez', '', '');
INSERT INTO `ubigeo` VALUES ('090707', 'Huachocolpa', '', '');
INSERT INTO `ubigeo` VALUES ('090708', 'Huando', '', '');
INSERT INTO `ubigeo` VALUES ('090709', 'Huaribamba', '', '');
INSERT INTO `ubigeo` VALUES ('090710', 'Ñahuimpuquio', '', '');
INSERT INTO `ubigeo` VALUES ('090711', 'Pazos', '', '');
INSERT INTO `ubigeo` VALUES ('090712', 'Pachamarca', '', '');
INSERT INTO `ubigeo` VALUES ('090713', 'Quishuar', '', '');
INSERT INTO `ubigeo` VALUES ('090714', 'Salcabamba', '', '');
INSERT INTO `ubigeo` VALUES ('090715', 'Salcahuasi', '', '');
INSERT INTO `ubigeo` VALUES ('090716', 'San Marcos de Rocchac', '', '');
INSERT INTO `ubigeo` VALUES ('090717', 'Surcubamba', '', '');
INSERT INTO `ubigeo` VALUES ('090718', 'Tintay Puncu', '', '');
INSERT INTO `ubigeo` VALUES ('100000', 'Huanuco', '', '');
INSERT INTO `ubigeo` VALUES ('100100', 'Huanuco', '', '');
INSERT INTO `ubigeo` VALUES ('100101', 'Huanuco', '', '');
INSERT INTO `ubigeo` VALUES ('100102', 'Amarilis', '', '');
INSERT INTO `ubigeo` VALUES ('100103', 'Chinchao', '', '');
INSERT INTO `ubigeo` VALUES ('100104', 'Churubamba', '', '');
INSERT INTO `ubigeo` VALUES ('100105', 'Margos', '', '');
INSERT INTO `ubigeo` VALUES ('100106', 'Quisqui', '', '');
INSERT INTO `ubigeo` VALUES ('100107', 'San Francisco de Cayran', '', '');
INSERT INTO `ubigeo` VALUES ('100108', 'San Pedro de Chaulan', '', '');
INSERT INTO `ubigeo` VALUES ('100109', 'Santa Maria del Valle', '', '');
INSERT INTO `ubigeo` VALUES ('100110', 'Yarumayo', '', '');
INSERT INTO `ubigeo` VALUES ('100111', 'Pillcomarca', '', '');
INSERT INTO `ubigeo` VALUES ('100200', 'Ambo', '', '');
INSERT INTO `ubigeo` VALUES ('100201', 'Ambo', '', '');
INSERT INTO `ubigeo` VALUES ('100202', 'Cayna', '', '');
INSERT INTO `ubigeo` VALUES ('100203', 'Colpas', '', '');
INSERT INTO `ubigeo` VALUES ('100204', 'Conchamarca', '', '');
INSERT INTO `ubigeo` VALUES ('100205', 'Huacar', '', '');
INSERT INTO `ubigeo` VALUES ('100206', 'San Francisco', '', '');
INSERT INTO `ubigeo` VALUES ('100207', 'San Rafael', '', '');
INSERT INTO `ubigeo` VALUES ('100208', 'Tomay Kichwa', '', '');
INSERT INTO `ubigeo` VALUES ('100300', 'Dos de Mayo', '', '');
INSERT INTO `ubigeo` VALUES ('100301', 'La Union', '', '');
INSERT INTO `ubigeo` VALUES ('100307', 'Chuquis', '', '');
INSERT INTO `ubigeo` VALUES ('100311', 'Marias', '', '');
INSERT INTO `ubigeo` VALUES ('100313', 'Pachas', '', '');
INSERT INTO `ubigeo` VALUES ('100316', 'Quivilla', '', '');
INSERT INTO `ubigeo` VALUES ('100317', 'Ripan', '', '');
INSERT INTO `ubigeo` VALUES ('100321', 'Shunqui', '', '');
INSERT INTO `ubigeo` VALUES ('100322', 'Sillapata', '', '');
INSERT INTO `ubigeo` VALUES ('100323', 'Yanas', '', '');
INSERT INTO `ubigeo` VALUES ('100400', 'Huacaybamba', '', '');
INSERT INTO `ubigeo` VALUES ('100401', 'Huacaybamba', '', '');
INSERT INTO `ubigeo` VALUES ('100402', 'Canchabamba', '', '');
INSERT INTO `ubigeo` VALUES ('100403', 'Cochabamba', '', '');
INSERT INTO `ubigeo` VALUES ('100404', 'Pinra', '', '');
INSERT INTO `ubigeo` VALUES ('100500', 'Huamalies', '', '');
INSERT INTO `ubigeo` VALUES ('100501', 'Llata', '', '');
INSERT INTO `ubigeo` VALUES ('100502', 'Arancay', '', '');
INSERT INTO `ubigeo` VALUES ('100503', 'Chavin de Pariarca', '', '');
INSERT INTO `ubigeo` VALUES ('100504', 'Jacas Grande', '', '');
INSERT INTO `ubigeo` VALUES ('100505', 'Jircan', '', '');
INSERT INTO `ubigeo` VALUES ('100506', 'Miraflores', '', '');
INSERT INTO `ubigeo` VALUES ('100507', 'Monzon', '', '');
INSERT INTO `ubigeo` VALUES ('100508', 'Punchao', '', '');
INSERT INTO `ubigeo` VALUES ('100509', 'Puños', '', '');
INSERT INTO `ubigeo` VALUES ('100510', 'Singa', '', '');
INSERT INTO `ubigeo` VALUES ('100511', 'Tantamayo', '', '');
INSERT INTO `ubigeo` VALUES ('100600', 'Leoncio Prado', '', '');
INSERT INTO `ubigeo` VALUES ('100601', 'Rupa-Rupa', '', '');
INSERT INTO `ubigeo` VALUES ('100602', 'Daniel Alomias Robles', '', '');
INSERT INTO `ubigeo` VALUES ('100603', 'Hermilio Valdizan', '', '');
INSERT INTO `ubigeo` VALUES ('100604', 'Jose Crespo y Castillo', '', '');
INSERT INTO `ubigeo` VALUES ('100605', 'Luyando', '', '');
INSERT INTO `ubigeo` VALUES ('100606', 'Mariano Damaso Beraun', '', '');
INSERT INTO `ubigeo` VALUES ('100700', 'Maraqon', '', '');
INSERT INTO `ubigeo` VALUES ('100701', 'Huacrachuco', '', '');
INSERT INTO `ubigeo` VALUES ('100702', 'Cholon', '', '');
INSERT INTO `ubigeo` VALUES ('100703', 'San Buenaventura', '', '');
INSERT INTO `ubigeo` VALUES ('100800', 'Pachitea', '', '');
INSERT INTO `ubigeo` VALUES ('100801', 'Panao', '', '');
INSERT INTO `ubigeo` VALUES ('100802', 'Chaglla', '', '');
INSERT INTO `ubigeo` VALUES ('100803', 'Molino', '', '');
INSERT INTO `ubigeo` VALUES ('100804', 'Umari', '', '');
INSERT INTO `ubigeo` VALUES ('100900', 'Puerto Inca', '', '');
INSERT INTO `ubigeo` VALUES ('100901', 'Puerto Inca', '', '');
INSERT INTO `ubigeo` VALUES ('100902', 'Codo del Pozuzo', '', '');
INSERT INTO `ubigeo` VALUES ('100903', 'Honoria', '', '');
INSERT INTO `ubigeo` VALUES ('100904', 'Tournavista', '', '');
INSERT INTO `ubigeo` VALUES ('100905', 'Yuyapichis', '', '');
INSERT INTO `ubigeo` VALUES ('101000', 'Lauricocha', '', '');
INSERT INTO `ubigeo` VALUES ('101001', 'Jesus', '', '');
INSERT INTO `ubigeo` VALUES ('101002', 'Baños', '', '');
INSERT INTO `ubigeo` VALUES ('101003', 'Jivia', '', '');
INSERT INTO `ubigeo` VALUES ('101004', 'Queropalca', '', '');
INSERT INTO `ubigeo` VALUES ('101005', 'Rondos', '', '');
INSERT INTO `ubigeo` VALUES ('101006', 'San Francisco de Asis', '', '');
INSERT INTO `ubigeo` VALUES ('101007', 'San Miguel de Cauri', '', '');
INSERT INTO `ubigeo` VALUES ('101100', 'Yarowilca', '', '');
INSERT INTO `ubigeo` VALUES ('101101', 'Chavinillo', '', '');
INSERT INTO `ubigeo` VALUES ('101102', 'Cahuac', '', '');
INSERT INTO `ubigeo` VALUES ('101103', 'Chacabamba', '', '');
INSERT INTO `ubigeo` VALUES ('101104', 'Chupan', '', '');
INSERT INTO `ubigeo` VALUES ('101105', 'Jacas Chico', '', '');
INSERT INTO `ubigeo` VALUES ('101106', 'Obas', '', '');
INSERT INTO `ubigeo` VALUES ('101107', 'Pampamarca', '', '');
INSERT INTO `ubigeo` VALUES ('101108', 'Choras', '', '');
INSERT INTO `ubigeo` VALUES ('110000', 'Ica', '', '');
INSERT INTO `ubigeo` VALUES ('110100', 'Ica', '', '');
INSERT INTO `ubigeo` VALUES ('110101', 'Ica', '', '');
INSERT INTO `ubigeo` VALUES ('110102', 'La Tinguiña', '', '');
INSERT INTO `ubigeo` VALUES ('110103', 'Los Aquijes', '', '');
INSERT INTO `ubigeo` VALUES ('110104', 'Ocucaje', '', '');
INSERT INTO `ubigeo` VALUES ('110105', 'Pachacutec', '', '');
INSERT INTO `ubigeo` VALUES ('110106', 'Parcona', '', '');
INSERT INTO `ubigeo` VALUES ('110107', 'Pueblo Nuevo', '', '');
INSERT INTO `ubigeo` VALUES ('110108', 'Salas', '', '');
INSERT INTO `ubigeo` VALUES ('110109', 'San Jose de los Molinos', '', '');
INSERT INTO `ubigeo` VALUES ('110110', 'San Juan Bautista', '', '');
INSERT INTO `ubigeo` VALUES ('110111', 'Santiago', '', '');
INSERT INTO `ubigeo` VALUES ('110112', 'Subtanjalla', '', '');
INSERT INTO `ubigeo` VALUES ('110113', 'Tate', '', '');
INSERT INTO `ubigeo` VALUES ('110114', 'Yauca del Rosario  1/', '', '');
INSERT INTO `ubigeo` VALUES ('110200', 'Chincha', '', '');
INSERT INTO `ubigeo` VALUES ('110201', 'Chincha Alta', '', '');
INSERT INTO `ubigeo` VALUES ('110202', 'Alto Laran', '', '');
INSERT INTO `ubigeo` VALUES ('110203', 'Chavin', '', '');
INSERT INTO `ubigeo` VALUES ('110204', 'Chincha Baja', '', '');
INSERT INTO `ubigeo` VALUES ('110205', 'El Carmen', '', '');
INSERT INTO `ubigeo` VALUES ('110206', 'Grocio Prado', '', '');
INSERT INTO `ubigeo` VALUES ('110207', 'Pueblo Nuevo', '', '');
INSERT INTO `ubigeo` VALUES ('110208', 'San Juan de Yanac', '', '');
INSERT INTO `ubigeo` VALUES ('110209', 'San Pedro de Huacarpana', '', '');
INSERT INTO `ubigeo` VALUES ('110210', 'Sunampe', '', '');
INSERT INTO `ubigeo` VALUES ('110211', 'Tambo de Mora', '', '');
INSERT INTO `ubigeo` VALUES ('110300', 'Nazca', '', '');
INSERT INTO `ubigeo` VALUES ('110301', 'Nazca', '', '');
INSERT INTO `ubigeo` VALUES ('110302', 'Changuillo', '', '');
INSERT INTO `ubigeo` VALUES ('110303', 'El Ingenio', '', '');
INSERT INTO `ubigeo` VALUES ('110304', 'Marcona', '', '');
INSERT INTO `ubigeo` VALUES ('110305', 'Vista Alegre', '', '');
INSERT INTO `ubigeo` VALUES ('110400', 'Palpa', '', '');
INSERT INTO `ubigeo` VALUES ('110401', 'Palpa', '', '');
INSERT INTO `ubigeo` VALUES ('110402', 'Llipata', '', '');
INSERT INTO `ubigeo` VALUES ('110403', 'Rio Grande', '', '');
INSERT INTO `ubigeo` VALUES ('110404', 'Santa Cruz', '', '');
INSERT INTO `ubigeo` VALUES ('110405', 'Tibillo', '', '');
INSERT INTO `ubigeo` VALUES ('110500', 'Pisco', '', '');
INSERT INTO `ubigeo` VALUES ('110501', 'Pisco', '', '');
INSERT INTO `ubigeo` VALUES ('110502', 'Huancano', '', '');
INSERT INTO `ubigeo` VALUES ('110503', 'Humay', '', '');
INSERT INTO `ubigeo` VALUES ('110504', 'Independencia', '', '');
INSERT INTO `ubigeo` VALUES ('110505', 'Paracas', '', '');
INSERT INTO `ubigeo` VALUES ('110506', 'San Andres', '', '');
INSERT INTO `ubigeo` VALUES ('110507', 'San Clemente', '', '');
INSERT INTO `ubigeo` VALUES ('110508', 'Tupac Amaru Inca', '', '');
INSERT INTO `ubigeo` VALUES ('120000', 'Junin', '', '');
INSERT INTO `ubigeo` VALUES ('120100', 'Huancayo', '', '');
INSERT INTO `ubigeo` VALUES ('120101', 'Huancayo', '', '');
INSERT INTO `ubigeo` VALUES ('120104', 'Carhuacallanga', '', '');
INSERT INTO `ubigeo` VALUES ('120105', 'Chacapampa', '', '');
INSERT INTO `ubigeo` VALUES ('120106', 'Chicche', '', '');
INSERT INTO `ubigeo` VALUES ('120107', 'Chilca', '', '');
INSERT INTO `ubigeo` VALUES ('120108', 'Chongos Alto', '', '');
INSERT INTO `ubigeo` VALUES ('120111', 'Chupuro', '', '');
INSERT INTO `ubigeo` VALUES ('120112', 'Colca', '', '');
INSERT INTO `ubigeo` VALUES ('120113', 'Cullhuas', '', '');
INSERT INTO `ubigeo` VALUES ('120114', 'El Tambo', '', '');
INSERT INTO `ubigeo` VALUES ('120116', 'Huacrapuquio', '', '');
INSERT INTO `ubigeo` VALUES ('120117', 'Hualhuas', '', '');
INSERT INTO `ubigeo` VALUES ('120119', 'Huancan', '', '');
INSERT INTO `ubigeo` VALUES ('120120', 'Huasicancha', '', '');
INSERT INTO `ubigeo` VALUES ('120121', 'Huayucachi', '', '');
INSERT INTO `ubigeo` VALUES ('120122', 'Ingenio', '', '');
INSERT INTO `ubigeo` VALUES ('120124', 'Pariahuanca', '', '');
INSERT INTO `ubigeo` VALUES ('120125', 'Pilcomayo', '', '');
INSERT INTO `ubigeo` VALUES ('120126', 'Pucara', '', '');
INSERT INTO `ubigeo` VALUES ('120127', 'Quichuay', '', '');
INSERT INTO `ubigeo` VALUES ('120128', 'Quilcas', '', '');
INSERT INTO `ubigeo` VALUES ('120129', 'San Agustin', '', '');
INSERT INTO `ubigeo` VALUES ('120130', 'San Jeronimo de Tunan', '', '');
INSERT INTO `ubigeo` VALUES ('120132', 'Saño', '', '');
INSERT INTO `ubigeo` VALUES ('120133', 'Sapallanga', '', '');
INSERT INTO `ubigeo` VALUES ('120134', 'Sicaya', '', '');
INSERT INTO `ubigeo` VALUES ('120135', 'Santo Domingo de Acobamba', '', '');
INSERT INTO `ubigeo` VALUES ('120136', 'Viques', '', '');
INSERT INTO `ubigeo` VALUES ('120200', 'Concepcion', '', '');
INSERT INTO `ubigeo` VALUES ('120201', 'Concepcion', '', '');
INSERT INTO `ubigeo` VALUES ('120202', 'Aco', '', '');
INSERT INTO `ubigeo` VALUES ('120203', 'Andamarca', '', '');
INSERT INTO `ubigeo` VALUES ('120204', 'Chambara', '', '');
INSERT INTO `ubigeo` VALUES ('120205', 'Cochas', '', '');
INSERT INTO `ubigeo` VALUES ('120206', 'Comas', '', '');
INSERT INTO `ubigeo` VALUES ('120207', 'Heroinas Toledo', '', '');
INSERT INTO `ubigeo` VALUES ('120208', 'Manzanares', '', '');
INSERT INTO `ubigeo` VALUES ('120209', 'Mariscal Castilla', '', '');
INSERT INTO `ubigeo` VALUES ('120210', 'Matahuasi', '', '');
INSERT INTO `ubigeo` VALUES ('120211', 'Mito', '', '');
INSERT INTO `ubigeo` VALUES ('120212', 'Nueve de Julio', '', '');
INSERT INTO `ubigeo` VALUES ('120213', 'Orcotuna', '', '');
INSERT INTO `ubigeo` VALUES ('120214', 'San Jose de Quero', '', '');
INSERT INTO `ubigeo` VALUES ('120215', 'Santa Rosa de Ocopa', '', '');
INSERT INTO `ubigeo` VALUES ('120300', 'Chanchamayo', '', '');
INSERT INTO `ubigeo` VALUES ('120301', 'Chanchamayo', '', '');
INSERT INTO `ubigeo` VALUES ('120302', 'Perene', '', '');
INSERT INTO `ubigeo` VALUES ('120303', 'Pichanaqui', '', '');
INSERT INTO `ubigeo` VALUES ('120304', 'San Luis de Shuaro', '', '');
INSERT INTO `ubigeo` VALUES ('120305', 'San Ramon', '', '');
INSERT INTO `ubigeo` VALUES ('120306', 'Vitoc', '', '');
INSERT INTO `ubigeo` VALUES ('120400', 'Jauja', '', '');
INSERT INTO `ubigeo` VALUES ('120401', 'Jauja', '', '');
INSERT INTO `ubigeo` VALUES ('120402', 'Acolla', '', '');
INSERT INTO `ubigeo` VALUES ('120403', 'Apata', '', '');
INSERT INTO `ubigeo` VALUES ('120404', 'Ataura', '', '');
INSERT INTO `ubigeo` VALUES ('120405', 'Canchayllo', '', '');
INSERT INTO `ubigeo` VALUES ('120406', 'Curicaca', '', '');
INSERT INTO `ubigeo` VALUES ('120407', 'El Mantaro', '', '');
INSERT INTO `ubigeo` VALUES ('120408', 'Huamali', '', '');
INSERT INTO `ubigeo` VALUES ('120409', 'Huaripampa', '', '');
INSERT INTO `ubigeo` VALUES ('120410', 'Huertas', '', '');
INSERT INTO `ubigeo` VALUES ('120411', 'Janjaillo', '', '');
INSERT INTO `ubigeo` VALUES ('120412', 'Julcan', '', '');
INSERT INTO `ubigeo` VALUES ('120413', 'Leonor Ordoñez', '', '');
INSERT INTO `ubigeo` VALUES ('120414', 'Llocllapampa', '', '');
INSERT INTO `ubigeo` VALUES ('120415', 'Marco', '', '');
INSERT INTO `ubigeo` VALUES ('120416', 'Masma', '', '');
INSERT INTO `ubigeo` VALUES ('120417', 'Masma Chicche', '', '');
INSERT INTO `ubigeo` VALUES ('120418', 'Molinos', '', '');
INSERT INTO `ubigeo` VALUES ('120419', 'Monobamba', '', '');
INSERT INTO `ubigeo` VALUES ('120420', 'Muqui', '', '');
INSERT INTO `ubigeo` VALUES ('120421', 'Muquiyauyo', '', '');
INSERT INTO `ubigeo` VALUES ('120422', 'Paca', '', '');
INSERT INTO `ubigeo` VALUES ('120423', 'Paccha', '', '');
INSERT INTO `ubigeo` VALUES ('120424', 'Pancan', '', '');
INSERT INTO `ubigeo` VALUES ('120425', 'Parco', '', '');
INSERT INTO `ubigeo` VALUES ('120426', 'Pomacancha', '', '');
INSERT INTO `ubigeo` VALUES ('120427', 'Ricran', '', '');
INSERT INTO `ubigeo` VALUES ('120428', 'San Lorenzo', '', '');
INSERT INTO `ubigeo` VALUES ('120429', 'San Pedro de Chunan', '', '');
INSERT INTO `ubigeo` VALUES ('120430', 'Sausa', '', '');
INSERT INTO `ubigeo` VALUES ('120431', 'Sincos', '', '');
INSERT INTO `ubigeo` VALUES ('120432', 'Tunan Marca', '', '');
INSERT INTO `ubigeo` VALUES ('120433', 'Yauli', '', '');
INSERT INTO `ubigeo` VALUES ('120434', 'Yauyos', '', '');
INSERT INTO `ubigeo` VALUES ('120500', 'Junin', '', '');
INSERT INTO `ubigeo` VALUES ('120501', 'Junin', '', '');
INSERT INTO `ubigeo` VALUES ('120502', 'Carhuamayo', '', '');
INSERT INTO `ubigeo` VALUES ('120503', 'Ondores', '', '');
INSERT INTO `ubigeo` VALUES ('120504', 'Ulcumayo', '', '');
INSERT INTO `ubigeo` VALUES ('120600', 'Satipo', '', '');
INSERT INTO `ubigeo` VALUES ('120601', 'Satipo', '', '');
INSERT INTO `ubigeo` VALUES ('120602', 'Coviriali', '', '');
INSERT INTO `ubigeo` VALUES ('120603', 'Llaylla', '', '');
INSERT INTO `ubigeo` VALUES ('120604', 'Mazamari', '', '');
INSERT INTO `ubigeo` VALUES ('120605', 'Pampa Hermosa', '', '');
INSERT INTO `ubigeo` VALUES ('120606', 'Pangoa', '', '');
INSERT INTO `ubigeo` VALUES ('120607', 'Rio Negro', '', '');
INSERT INTO `ubigeo` VALUES ('120608', 'Rio Tambo', '', '');
INSERT INTO `ubigeo` VALUES ('120700', 'Tarma', '', '');
INSERT INTO `ubigeo` VALUES ('120701', 'Tarma', '', '');
INSERT INTO `ubigeo` VALUES ('120702', 'Acobamba', '', '');
INSERT INTO `ubigeo` VALUES ('120703', 'Huaricolca', '', '');
INSERT INTO `ubigeo` VALUES ('120704', 'Huasahuasi', '', '');
INSERT INTO `ubigeo` VALUES ('120705', 'La Union', '', '');
INSERT INTO `ubigeo` VALUES ('120706', 'Palca', '', '');
INSERT INTO `ubigeo` VALUES ('120707', 'Palcamayo', '', '');
INSERT INTO `ubigeo` VALUES ('120708', 'San Pedro de Cajas', '', '');
INSERT INTO `ubigeo` VALUES ('120709', 'Tapo', '', '');
INSERT INTO `ubigeo` VALUES ('120800', 'Yauli', '', '');
INSERT INTO `ubigeo` VALUES ('120801', 'La Oroya', '', '');
INSERT INTO `ubigeo` VALUES ('120802', 'Chacapalpa', '', '');
INSERT INTO `ubigeo` VALUES ('120803', 'Huay-Huay', '', '');
INSERT INTO `ubigeo` VALUES ('120804', 'Marcapomacocha', '', '');
INSERT INTO `ubigeo` VALUES ('120805', 'Morococha', '', '');
INSERT INTO `ubigeo` VALUES ('120806', 'Paccha', '', '');
INSERT INTO `ubigeo` VALUES ('120807', 'Santa Barbara de Carhuacayan', '', '');
INSERT INTO `ubigeo` VALUES ('120808', 'Santa Rosa de Sacco', '', '');
INSERT INTO `ubigeo` VALUES ('120809', 'Suitucancha', '', '');
INSERT INTO `ubigeo` VALUES ('120810', 'Yauli', '', '');
INSERT INTO `ubigeo` VALUES ('120900', 'Chupaca', '', '');
INSERT INTO `ubigeo` VALUES ('120901', 'Chupaca', '', '');
INSERT INTO `ubigeo` VALUES ('120902', 'Ahuac', '', '');
INSERT INTO `ubigeo` VALUES ('120903', 'Chongos Bajo', '', '');
INSERT INTO `ubigeo` VALUES ('120904', 'Huachac', '', '');
INSERT INTO `ubigeo` VALUES ('120905', 'Huamancaca Chico', '', '');
INSERT INTO `ubigeo` VALUES ('120906', 'San Juan de Iscos', '', '');
INSERT INTO `ubigeo` VALUES ('120907', 'San Juan de Jarpa', '', '');
INSERT INTO `ubigeo` VALUES ('120908', 'Tres de Diciembre', '', '');
INSERT INTO `ubigeo` VALUES ('120909', 'Yanacancha', '', '');
INSERT INTO `ubigeo` VALUES ('130000', 'La Libertad', '', '');
INSERT INTO `ubigeo` VALUES ('130100', 'Trujillo', '', '');
INSERT INTO `ubigeo` VALUES ('130101', 'Trujillo', '', '');
INSERT INTO `ubigeo` VALUES ('130102', 'El Porvenir', '', '');
INSERT INTO `ubigeo` VALUES ('130103', 'Florencia de Mora', '', '');
INSERT INTO `ubigeo` VALUES ('130104', 'Huanchaco', '', '');
INSERT INTO `ubigeo` VALUES ('130105', 'La Esperanza', '', '');
INSERT INTO `ubigeo` VALUES ('130106', 'Laredo', '', '');
INSERT INTO `ubigeo` VALUES ('130107', 'Moche', '', '');
INSERT INTO `ubigeo` VALUES ('130108', 'Poroto', '', '');
INSERT INTO `ubigeo` VALUES ('130109', 'Salaverry', '', '');
INSERT INTO `ubigeo` VALUES ('130110', 'Simbal', '', '');
INSERT INTO `ubigeo` VALUES ('130111', 'Victor Larco Herrera', '', '');
INSERT INTO `ubigeo` VALUES ('130200', 'Ascope', '', '');
INSERT INTO `ubigeo` VALUES ('130201', 'Ascope', '', '');
INSERT INTO `ubigeo` VALUES ('130202', 'Chicama', '', '');
INSERT INTO `ubigeo` VALUES ('130203', 'Chocope', '', '');
INSERT INTO `ubigeo` VALUES ('130204', 'Magdalena de Cao', '', '');
INSERT INTO `ubigeo` VALUES ('130205', 'Paijan', '', '');
INSERT INTO `ubigeo` VALUES ('130206', 'Razuri', '', '');
INSERT INTO `ubigeo` VALUES ('130207', 'Santiago de Cao', '', '');
INSERT INTO `ubigeo` VALUES ('130208', 'Casa Grande', '', '');
INSERT INTO `ubigeo` VALUES ('130300', 'Bolivar', '', '');
INSERT INTO `ubigeo` VALUES ('130301', 'Bolivar', '', '');
INSERT INTO `ubigeo` VALUES ('130302', 'Bambamarca', '', '');
INSERT INTO `ubigeo` VALUES ('130303', 'Condormarca', '', '');
INSERT INTO `ubigeo` VALUES ('130304', 'Longotea', '', '');
INSERT INTO `ubigeo` VALUES ('130305', 'Uchumarca', '', '');
INSERT INTO `ubigeo` VALUES ('130306', 'Ucuncha', '', '');
INSERT INTO `ubigeo` VALUES ('130400', 'Chepen', '', '');
INSERT INTO `ubigeo` VALUES ('130401', 'Chepen', '', '');
INSERT INTO `ubigeo` VALUES ('130402', 'Pacanga', '', '');
INSERT INTO `ubigeo` VALUES ('130403', 'Pueblo Nuevo', '', '');
INSERT INTO `ubigeo` VALUES ('130500', 'Julcan', '', '');
INSERT INTO `ubigeo` VALUES ('130501', 'Julcan', '', '');
INSERT INTO `ubigeo` VALUES ('130502', 'Calamarca', '', '');
INSERT INTO `ubigeo` VALUES ('130503', 'Carabamba', '', '');
INSERT INTO `ubigeo` VALUES ('130504', 'Huaso', '', '');
INSERT INTO `ubigeo` VALUES ('130600', 'Otuzco', '', '');
INSERT INTO `ubigeo` VALUES ('130601', 'Otuzco', '', '');
INSERT INTO `ubigeo` VALUES ('130602', 'Agallpampa', '', '');
INSERT INTO `ubigeo` VALUES ('130604', 'Charat', '', '');
INSERT INTO `ubigeo` VALUES ('130605', 'Huaranchal', '', '');
INSERT INTO `ubigeo` VALUES ('130606', 'La Cuesta', '', '');
INSERT INTO `ubigeo` VALUES ('130608', 'Mache', '', '');
INSERT INTO `ubigeo` VALUES ('130610', 'Paranday', '', '');
INSERT INTO `ubigeo` VALUES ('130611', 'Salpo', '', '');
INSERT INTO `ubigeo` VALUES ('130613', 'Sinsicap', '', '');
INSERT INTO `ubigeo` VALUES ('130614', 'Usquil', '', '');
INSERT INTO `ubigeo` VALUES ('130700', 'Pacasmayo', '', '');
INSERT INTO `ubigeo` VALUES ('130701', 'San Pedro de Lloc', '', '');
INSERT INTO `ubigeo` VALUES ('130702', 'Guadalupe', '', '');
INSERT INTO `ubigeo` VALUES ('130703', 'Jequetepeque', '', '');
INSERT INTO `ubigeo` VALUES ('130704', 'Pacasmayo', '', '');
INSERT INTO `ubigeo` VALUES ('130705', 'San Jose', '', '');
INSERT INTO `ubigeo` VALUES ('130800', 'Pataz', '', '');
INSERT INTO `ubigeo` VALUES ('130801', 'Tayabamba', '', '');
INSERT INTO `ubigeo` VALUES ('130802', 'Buldibuyo', '', '');
INSERT INTO `ubigeo` VALUES ('130803', 'Chillia', '', '');
INSERT INTO `ubigeo` VALUES ('130804', 'Huancaspata', '', '');
INSERT INTO `ubigeo` VALUES ('130805', 'Huaylillas', '', '');
INSERT INTO `ubigeo` VALUES ('130806', 'Huayo', '', '');
INSERT INTO `ubigeo` VALUES ('130807', 'Ongon', '', '');
INSERT INTO `ubigeo` VALUES ('130808', 'Parcoy', '', '');
INSERT INTO `ubigeo` VALUES ('130809', 'Pataz', '', '');
INSERT INTO `ubigeo` VALUES ('130810', 'Pias', '', '');
INSERT INTO `ubigeo` VALUES ('130811', 'Santiago de Challas', '', '');
INSERT INTO `ubigeo` VALUES ('130812', 'Taurija', '', '');
INSERT INTO `ubigeo` VALUES ('130813', 'Urpay', '', '');
INSERT INTO `ubigeo` VALUES ('130900', 'Sanchez Carrion', '', '');
INSERT INTO `ubigeo` VALUES ('130901', 'Huamachuco', '', '');
INSERT INTO `ubigeo` VALUES ('130902', 'Chugay', '', '');
INSERT INTO `ubigeo` VALUES ('130903', 'Cochorco', '', '');
INSERT INTO `ubigeo` VALUES ('130904', 'Curgos', '', '');
INSERT INTO `ubigeo` VALUES ('130905', 'Marcabal', '', '');
INSERT INTO `ubigeo` VALUES ('130906', 'Sanagoran', '', '');
INSERT INTO `ubigeo` VALUES ('130907', 'Sarin', '', '');
INSERT INTO `ubigeo` VALUES ('130908', 'Sartimbamba', '', '');
INSERT INTO `ubigeo` VALUES ('131000', 'Santiago de Chuco', '', '');
INSERT INTO `ubigeo` VALUES ('131001', 'Santiago de Chuco', '', '');
INSERT INTO `ubigeo` VALUES ('131002', 'Angasmarca', '', '');
INSERT INTO `ubigeo` VALUES ('131003', 'Cachicadan', '', '');
INSERT INTO `ubigeo` VALUES ('131004', 'Mollebamba', '', '');
INSERT INTO `ubigeo` VALUES ('131005', 'Mollepata', '', '');
INSERT INTO `ubigeo` VALUES ('131006', 'Quiruvilca', '', '');
INSERT INTO `ubigeo` VALUES ('131007', 'Santa Cruz de Chuca', '', '');
INSERT INTO `ubigeo` VALUES ('131008', 'Sitabamba', '', '');
INSERT INTO `ubigeo` VALUES ('131100', 'Gran Chimu', '', '');
INSERT INTO `ubigeo` VALUES ('131101', 'Cascas', '', '');
INSERT INTO `ubigeo` VALUES ('131102', 'Lucma', '', '');
INSERT INTO `ubigeo` VALUES ('131103', 'Marmot', '', '');
INSERT INTO `ubigeo` VALUES ('131104', 'Sayapullo', '', '');
INSERT INTO `ubigeo` VALUES ('131200', 'Viru', '', '');
INSERT INTO `ubigeo` VALUES ('131201', 'Viru', '', '');
INSERT INTO `ubigeo` VALUES ('131202', 'Chao', '', '');
INSERT INTO `ubigeo` VALUES ('131203', 'Guadalupito', '', '');
INSERT INTO `ubigeo` VALUES ('140000', 'Lambayeque', '', '');
INSERT INTO `ubigeo` VALUES ('140100', 'Chiclayo', '', '');
INSERT INTO `ubigeo` VALUES ('140101', 'Chiclayo', '', '');
INSERT INTO `ubigeo` VALUES ('140102', 'Chongoyape', '', '');
INSERT INTO `ubigeo` VALUES ('140103', 'Eten', '', '');
INSERT INTO `ubigeo` VALUES ('140104', 'Eten Puerto', '', '');
INSERT INTO `ubigeo` VALUES ('140105', 'Jose Leonardo Ortiz', '', '');
INSERT INTO `ubigeo` VALUES ('140106', 'La Victoria', '', '');
INSERT INTO `ubigeo` VALUES ('140107', 'Lagunas', '', '');
INSERT INTO `ubigeo` VALUES ('140108', 'Monsefu', '', '');
INSERT INTO `ubigeo` VALUES ('140109', 'Nueva Arica', '', '');
INSERT INTO `ubigeo` VALUES ('140110', 'Oyotun', '', '');
INSERT INTO `ubigeo` VALUES ('140111', 'Picsi', '', '');
INSERT INTO `ubigeo` VALUES ('140112', 'Pimentel', '', '');
INSERT INTO `ubigeo` VALUES ('140113', 'Reque', '', '');
INSERT INTO `ubigeo` VALUES ('140114', 'Santa Rosa', '', '');
INSERT INTO `ubigeo` VALUES ('140115', 'Saña', '', '');
INSERT INTO `ubigeo` VALUES ('140116', 'Cayaltí', '', '');
INSERT INTO `ubigeo` VALUES ('140117', 'Patapo', '', '');
INSERT INTO `ubigeo` VALUES ('140118', 'Pomalca', '', '');
INSERT INTO `ubigeo` VALUES ('140119', 'Pucalá', '', '');
INSERT INTO `ubigeo` VALUES ('140120', 'Tumán', '', '');
INSERT INTO `ubigeo` VALUES ('140200', 'Ferreñafe', '', '');
INSERT INTO `ubigeo` VALUES ('140201', 'Ferreñafe', '', '');
INSERT INTO `ubigeo` VALUES ('140202', 'Cañaris', '', '');
INSERT INTO `ubigeo` VALUES ('140203', 'Incahuasi', '', '');
INSERT INTO `ubigeo` VALUES ('140204', 'Manuel Antonio Mesones Muro', '', '');
INSERT INTO `ubigeo` VALUES ('140205', 'Pitipo', '', '');
INSERT INTO `ubigeo` VALUES ('140206', 'Pueblo Nuevo', '', '');
INSERT INTO `ubigeo` VALUES ('140300', 'Lambayeque', '', '');
INSERT INTO `ubigeo` VALUES ('140301', 'Lambayeque', '', '');
INSERT INTO `ubigeo` VALUES ('140302', 'Chochope', '', '');
INSERT INTO `ubigeo` VALUES ('140303', 'Illimo', '', '');
INSERT INTO `ubigeo` VALUES ('140304', 'Jayanca', '', '');
INSERT INTO `ubigeo` VALUES ('140305', 'Mochumi', '', '');
INSERT INTO `ubigeo` VALUES ('140306', 'Morrope', '', '');
INSERT INTO `ubigeo` VALUES ('140307', 'Motupe', '', '');
INSERT INTO `ubigeo` VALUES ('140308', 'Olmos', '', '');
INSERT INTO `ubigeo` VALUES ('140309', 'Pacora', '', '');
INSERT INTO `ubigeo` VALUES ('140310', 'Salas', '', '');
INSERT INTO `ubigeo` VALUES ('140311', 'San Jose', '', '');
INSERT INTO `ubigeo` VALUES ('140312', 'Tucume', '', '');
INSERT INTO `ubigeo` VALUES ('150000', 'Lima', '', '');
INSERT INTO `ubigeo` VALUES ('150100', 'Lima', '', '');
INSERT INTO `ubigeo` VALUES ('150101', 'Lima', '', '');
INSERT INTO `ubigeo` VALUES ('150102', 'Ancon', '', '');
INSERT INTO `ubigeo` VALUES ('150103', 'Ate', '', '');
INSERT INTO `ubigeo` VALUES ('150104', 'Barranco', '', '');
INSERT INTO `ubigeo` VALUES ('150105', 'Breña', '', '');
INSERT INTO `ubigeo` VALUES ('150106', 'Carabayllo', '', '');
INSERT INTO `ubigeo` VALUES ('150107', 'Chaclacayo', '', '');
INSERT INTO `ubigeo` VALUES ('150108', 'Chorrillos', '', '');
INSERT INTO `ubigeo` VALUES ('150109', 'Cieneguilla', '', '');
INSERT INTO `ubigeo` VALUES ('150110', 'Comas', '', '');
INSERT INTO `ubigeo` VALUES ('150111', 'El Agustino', '', '');
INSERT INTO `ubigeo` VALUES ('150112', 'Independencia', '', '');
INSERT INTO `ubigeo` VALUES ('150113', 'Jesus Maria', '', '');
INSERT INTO `ubigeo` VALUES ('150114', 'La Molina', '', '');
INSERT INTO `ubigeo` VALUES ('150115', 'La Victoria', '', '');
INSERT INTO `ubigeo` VALUES ('150116', 'Lince', '', '');
INSERT INTO `ubigeo` VALUES ('150117', 'Los Olivos', '', '');
INSERT INTO `ubigeo` VALUES ('150118', 'Lurigancho', '', '');
INSERT INTO `ubigeo` VALUES ('150119', 'Lurin', '', '');
INSERT INTO `ubigeo` VALUES ('150120', 'Magdalena del Mar', '', '');
INSERT INTO `ubigeo` VALUES ('150121', 'Magdalena Vieja', '', '');
INSERT INTO `ubigeo` VALUES ('150122', 'Miraflores', '', '');
INSERT INTO `ubigeo` VALUES ('150123', 'Pachacamac', '', '');
INSERT INTO `ubigeo` VALUES ('150124', 'Pucusana', '', '');
INSERT INTO `ubigeo` VALUES ('150125', 'Puente Piedra', '', '');
INSERT INTO `ubigeo` VALUES ('150126', 'Punta Hermosa', '', '');
INSERT INTO `ubigeo` VALUES ('150127', 'Punta Negra', '', '');
INSERT INTO `ubigeo` VALUES ('150128', 'Rimac', '', '');
INSERT INTO `ubigeo` VALUES ('150129', 'San Bartolo', '', '');
INSERT INTO `ubigeo` VALUES ('150130', 'San Borja', '', '');
INSERT INTO `ubigeo` VALUES ('150131', 'San Isidro', '', '');
INSERT INTO `ubigeo` VALUES ('150132', 'San Juan de Lurigancho', '', '');
INSERT INTO `ubigeo` VALUES ('150133', 'San Juan de Miraflores', '', '');
INSERT INTO `ubigeo` VALUES ('150134', 'San Luis', '', '');
INSERT INTO `ubigeo` VALUES ('150135', 'San Martin de Porres', '', '');
INSERT INTO `ubigeo` VALUES ('150136', 'San Miguel', '', '');
INSERT INTO `ubigeo` VALUES ('150137', 'Santa Anita', '', '');
INSERT INTO `ubigeo` VALUES ('150138', 'Santa Maria del Mar', '', '');
INSERT INTO `ubigeo` VALUES ('150139', 'Santa Rosa', '', '');
INSERT INTO `ubigeo` VALUES ('150140', 'Santiago de Surco', '', '');
INSERT INTO `ubigeo` VALUES ('150141', 'Surquillo', '', '');
INSERT INTO `ubigeo` VALUES ('150142', 'Villa El Salvador', '', '');
INSERT INTO `ubigeo` VALUES ('150143', 'Villa Maria del Triunfo', '', '');
INSERT INTO `ubigeo` VALUES ('150200', 'Barranca', '', '');
INSERT INTO `ubigeo` VALUES ('150201', 'Barranca', '', '');
INSERT INTO `ubigeo` VALUES ('150202', 'Paramonga', '', '');
INSERT INTO `ubigeo` VALUES ('150203', 'Pativilca', '', '');
INSERT INTO `ubigeo` VALUES ('150204', 'Supe', '', '');
INSERT INTO `ubigeo` VALUES ('150205', 'Supe Puerto', '', '');
INSERT INTO `ubigeo` VALUES ('150300', 'Cajatambo', '', '');
INSERT INTO `ubigeo` VALUES ('150301', 'Cajatambo', '', '');
INSERT INTO `ubigeo` VALUES ('150302', 'Copa', '', '');
INSERT INTO `ubigeo` VALUES ('150303', 'Gorgor', '', '');
INSERT INTO `ubigeo` VALUES ('150304', 'Huancapon', '', '');
INSERT INTO `ubigeo` VALUES ('150305', 'Manas', '', '');
INSERT INTO `ubigeo` VALUES ('150400', 'Canta', '', '');
INSERT INTO `ubigeo` VALUES ('150401', 'Canta', '', '');
INSERT INTO `ubigeo` VALUES ('150402', 'Arahuay', '', '');
INSERT INTO `ubigeo` VALUES ('150403', 'Huamantanga', '', '');
INSERT INTO `ubigeo` VALUES ('150404', 'Huaros', '', '');
INSERT INTO `ubigeo` VALUES ('150405', 'Lachaqui', '', '');
INSERT INTO `ubigeo` VALUES ('150406', 'San Buenaventura', '', '');
INSERT INTO `ubigeo` VALUES ('150407', 'Santa Rosa de Quives', '', '');
INSERT INTO `ubigeo` VALUES ('150500', 'Cañete', '', '');
INSERT INTO `ubigeo` VALUES ('150501', 'San Vicente de Cañete', '', '');
INSERT INTO `ubigeo` VALUES ('150502', 'Asia', '', '');
INSERT INTO `ubigeo` VALUES ('150503', 'Calango', '', '');
INSERT INTO `ubigeo` VALUES ('150504', 'Cerro Azul', '', '');
INSERT INTO `ubigeo` VALUES ('150505', 'Chilca', '', '');
INSERT INTO `ubigeo` VALUES ('150506', 'Coayllo', '', '');
INSERT INTO `ubigeo` VALUES ('150507', 'Imperial', '', '');
INSERT INTO `ubigeo` VALUES ('150508', 'Lunahuana', '', '');
INSERT INTO `ubigeo` VALUES ('150509', 'Mala', '', '');
INSERT INTO `ubigeo` VALUES ('150510', 'Nuevo Imperial', '', '');
INSERT INTO `ubigeo` VALUES ('150511', 'Pacaran', '', '');
INSERT INTO `ubigeo` VALUES ('150512', 'Quilmana', '', '');
INSERT INTO `ubigeo` VALUES ('150513', 'San Antonio', '', '');
INSERT INTO `ubigeo` VALUES ('150514', 'San Luis', '', '');
INSERT INTO `ubigeo` VALUES ('150515', 'Santa Cruz de Flores', '', '');
INSERT INTO `ubigeo` VALUES ('150516', 'Zuñiga', '', '');
INSERT INTO `ubigeo` VALUES ('150600', 'Huaral', '', '');
INSERT INTO `ubigeo` VALUES ('150601', 'Huaral', '', '');
INSERT INTO `ubigeo` VALUES ('150602', 'Atavillos Alto', '', '');
INSERT INTO `ubigeo` VALUES ('150603', 'Atavillos Bajo', '', '');
INSERT INTO `ubigeo` VALUES ('150604', 'Aucallama', '', '');
INSERT INTO `ubigeo` VALUES ('150605', 'Chancay', '', '');
INSERT INTO `ubigeo` VALUES ('150606', 'Ihuari', '', '');
INSERT INTO `ubigeo` VALUES ('150607', 'Lampian', '', '');
INSERT INTO `ubigeo` VALUES ('150608', 'Pacaraos', '', '');
INSERT INTO `ubigeo` VALUES ('150609', 'San Miguel de Acos', '', '');
INSERT INTO `ubigeo` VALUES ('150610', 'Santa Cruz de Andamarca', '', '');
INSERT INTO `ubigeo` VALUES ('150611', 'Sumbilca', '', '');
INSERT INTO `ubigeo` VALUES ('150612', 'Veintisiete de Noviembre', '', '');
INSERT INTO `ubigeo` VALUES ('150700', 'Huarochiri', '', '');
INSERT INTO `ubigeo` VALUES ('150701', 'Matucana', '', '');
INSERT INTO `ubigeo` VALUES ('150702', 'Antioquia', '', '');
INSERT INTO `ubigeo` VALUES ('150703', 'Callahuanca', '', '');
INSERT INTO `ubigeo` VALUES ('150704', 'Carampoma', '', '');
INSERT INTO `ubigeo` VALUES ('150705', 'Chicla', '', '');
INSERT INTO `ubigeo` VALUES ('150706', 'Cuenca', '', '');
INSERT INTO `ubigeo` VALUES ('150707', 'Huachupampa', '', '');
INSERT INTO `ubigeo` VALUES ('150708', 'Huanza', '', '');
INSERT INTO `ubigeo` VALUES ('150709', 'Huarochiri', '', '');
INSERT INTO `ubigeo` VALUES ('150710', 'Lahuaytambo', '', '');
INSERT INTO `ubigeo` VALUES ('150711', 'Langa', '', '');
INSERT INTO `ubigeo` VALUES ('150712', 'Laraos', '', '');
INSERT INTO `ubigeo` VALUES ('150713', 'Mariatana', '', '');
INSERT INTO `ubigeo` VALUES ('150714', 'Ricardo Palma', '', '');
INSERT INTO `ubigeo` VALUES ('150715', 'San Andres de Tupicocha', '', '');
INSERT INTO `ubigeo` VALUES ('150716', 'San Antonio', '', '');
INSERT INTO `ubigeo` VALUES ('150717', 'San Bartolome', '', '');
INSERT INTO `ubigeo` VALUES ('150718', 'San Damian', '', '');
INSERT INTO `ubigeo` VALUES ('150719', 'San Juan de Iris', '', '');
INSERT INTO `ubigeo` VALUES ('150720', 'San Juan de Tantaranche', '', '');
INSERT INTO `ubigeo` VALUES ('150721', 'San Lorenzo de Quinti', '', '');
INSERT INTO `ubigeo` VALUES ('150722', 'San Mateo', '', '');
INSERT INTO `ubigeo` VALUES ('150723', 'San Mateo de Otao', '', '');
INSERT INTO `ubigeo` VALUES ('150724', 'San Pedro de Casta', '', '');
INSERT INTO `ubigeo` VALUES ('150725', 'San Pedro de Huancayre', '', '');
INSERT INTO `ubigeo` VALUES ('150726', 'Sangallaya', '', '');
INSERT INTO `ubigeo` VALUES ('150727', 'Santa Cruz de Cocachacra', '', '');
INSERT INTO `ubigeo` VALUES ('150728', 'Santa Eulalia', '', '');
INSERT INTO `ubigeo` VALUES ('150729', 'Santiago de Anchucaya', '', '');
INSERT INTO `ubigeo` VALUES ('150730', 'Santiago de Tuna', '', '');
INSERT INTO `ubigeo` VALUES ('150731', 'Santo Domingo de los Olleros', '', '');
INSERT INTO `ubigeo` VALUES ('150732', 'Surco', '', '');
INSERT INTO `ubigeo` VALUES ('150800', 'Huaura', '', '');
INSERT INTO `ubigeo` VALUES ('150801', 'Huacho', '', '');
INSERT INTO `ubigeo` VALUES ('150802', 'Ambar', '', '');
INSERT INTO `ubigeo` VALUES ('150803', 'Caleta de Carquin', '', '');
INSERT INTO `ubigeo` VALUES ('150804', 'Checras', '', '');
INSERT INTO `ubigeo` VALUES ('150805', 'Hualmay', '', '');
INSERT INTO `ubigeo` VALUES ('150806', 'Huaura', '', '');
INSERT INTO `ubigeo` VALUES ('150807', 'Leoncio Prado', '', '');
INSERT INTO `ubigeo` VALUES ('150808', 'Paccho', '', '');
INSERT INTO `ubigeo` VALUES ('150809', 'Santa Leonor', '', '');
INSERT INTO `ubigeo` VALUES ('150810', 'Santa Maria', '', '');
INSERT INTO `ubigeo` VALUES ('150811', 'Sayan', '', '');
INSERT INTO `ubigeo` VALUES ('150812', 'Vegueta', '', '');
INSERT INTO `ubigeo` VALUES ('150900', 'Oyon', '', '');
INSERT INTO `ubigeo` VALUES ('150901', 'Oyon', '', '');
INSERT INTO `ubigeo` VALUES ('150902', 'Andajes', '', '');
INSERT INTO `ubigeo` VALUES ('150903', 'Caujul', '', '');
INSERT INTO `ubigeo` VALUES ('150904', 'Cochamarca', '', '');
INSERT INTO `ubigeo` VALUES ('150905', 'Navan', '', '');
INSERT INTO `ubigeo` VALUES ('150906', 'Pachangara', '', '');
INSERT INTO `ubigeo` VALUES ('151000', 'Yauyos', '', '');
INSERT INTO `ubigeo` VALUES ('151001', 'Yauyos', '', '');
INSERT INTO `ubigeo` VALUES ('151002', 'Alis', '', '');
INSERT INTO `ubigeo` VALUES ('151003', 'Ayauca', '', '');
INSERT INTO `ubigeo` VALUES ('151004', 'Ayaviri', '', '');
INSERT INTO `ubigeo` VALUES ('151005', 'Azangaro', '', '');
INSERT INTO `ubigeo` VALUES ('151006', 'Cacra', '', '');
INSERT INTO `ubigeo` VALUES ('151007', 'Carania', '', '');
INSERT INTO `ubigeo` VALUES ('151008', 'Catahuasi', '', '');
INSERT INTO `ubigeo` VALUES ('151009', 'Chocos', '', '');
INSERT INTO `ubigeo` VALUES ('151010', 'Cochas', '', '');
INSERT INTO `ubigeo` VALUES ('151011', 'Colonia', '', '');
INSERT INTO `ubigeo` VALUES ('151012', 'Hongos', '', '');
INSERT INTO `ubigeo` VALUES ('151013', 'Huampara', '', '');
INSERT INTO `ubigeo` VALUES ('151014', 'Huancaya', '', '');
INSERT INTO `ubigeo` VALUES ('151015', 'Huangascar', '', '');
INSERT INTO `ubigeo` VALUES ('151016', 'Huantan', '', '');
INSERT INTO `ubigeo` VALUES ('151017', 'Huañec', '', '');
INSERT INTO `ubigeo` VALUES ('151018', 'Laraos', '', '');
INSERT INTO `ubigeo` VALUES ('151019', 'Lincha', '', '');
INSERT INTO `ubigeo` VALUES ('151020', 'Madean', '', '');
INSERT INTO `ubigeo` VALUES ('151021', 'Miraflores', '', '');
INSERT INTO `ubigeo` VALUES ('151022', 'Omas', '', '');
INSERT INTO `ubigeo` VALUES ('151023', 'Putinza', '', '');
INSERT INTO `ubigeo` VALUES ('151024', 'Quinches', '', '');
INSERT INTO `ubigeo` VALUES ('151025', 'Quinocay', '', '');
INSERT INTO `ubigeo` VALUES ('151026', 'San Joaquin', '', '');
INSERT INTO `ubigeo` VALUES ('151027', 'San Pedro de Pilas', '', '');
INSERT INTO `ubigeo` VALUES ('151028', 'Tanta', '', '');
INSERT INTO `ubigeo` VALUES ('151029', 'Tauripampa', '', '');
INSERT INTO `ubigeo` VALUES ('151030', 'Tomas', '', '');
INSERT INTO `ubigeo` VALUES ('151031', 'Tupe', '', '');
INSERT INTO `ubigeo` VALUES ('151032', 'Viñac', '', '');
INSERT INTO `ubigeo` VALUES ('151033', 'Vitis', '', '');
INSERT INTO `ubigeo` VALUES ('160000', 'Loreto', '', '');
INSERT INTO `ubigeo` VALUES ('160100', 'Maynas', '', '');
INSERT INTO `ubigeo` VALUES ('160101', 'Iquitos', '', '');
INSERT INTO `ubigeo` VALUES ('160102', 'Alto Nanay', '', '');
INSERT INTO `ubigeo` VALUES ('160103', 'Fernando Lores', '', '');
INSERT INTO `ubigeo` VALUES ('160104', 'Indiana', '', '');
INSERT INTO `ubigeo` VALUES ('160105', 'Las Amazonas', '', '');
INSERT INTO `ubigeo` VALUES ('160106', 'Mazan', '', '');
INSERT INTO `ubigeo` VALUES ('160107', 'Napo', '', '');
INSERT INTO `ubigeo` VALUES ('160108', 'Punchana', '', '');
INSERT INTO `ubigeo` VALUES ('160109', 'Putumayo', '', '');
INSERT INTO `ubigeo` VALUES ('160110', 'Torres Causana', '', '');
INSERT INTO `ubigeo` VALUES ('160111', 'Yaquerana', '', '');
INSERT INTO `ubigeo` VALUES ('160112', 'Belén', '', '');
INSERT INTO `ubigeo` VALUES ('160113', 'San Juan Bautista', '', '');
INSERT INTO `ubigeo` VALUES ('160200', 'Alto Amazonas', '', '');
INSERT INTO `ubigeo` VALUES ('160201', 'Yurimaguas', '', '');
INSERT INTO `ubigeo` VALUES ('160202', 'Balsapuerto', '', '');
INSERT INTO `ubigeo` VALUES ('160203', 'Barranca', '', '');
INSERT INTO `ubigeo` VALUES ('160204', 'Cahuapanas', '', '');
INSERT INTO `ubigeo` VALUES ('160205', 'Jeberos', '', '');
INSERT INTO `ubigeo` VALUES ('160206', 'Lagunas', '', '');
INSERT INTO `ubigeo` VALUES ('160207', 'Manseriche', '', '');
INSERT INTO `ubigeo` VALUES ('160208', 'Morona', '', '');
INSERT INTO `ubigeo` VALUES ('160209', 'Pastaza', '', '');
INSERT INTO `ubigeo` VALUES ('160210', 'Santa Cruz', '', '');
INSERT INTO `ubigeo` VALUES ('160211', 'Teniente Cesar Lopez Rojas', '', '');
INSERT INTO `ubigeo` VALUES ('160300', 'Loreto', '', '');
INSERT INTO `ubigeo` VALUES ('160301', 'Nauta', '', '');
INSERT INTO `ubigeo` VALUES ('160302', 'Parinari', '', '');
INSERT INTO `ubigeo` VALUES ('160303', 'Tigre', '', '');
INSERT INTO `ubigeo` VALUES ('160304', 'Trompeteros', '', '');
INSERT INTO `ubigeo` VALUES ('160305', 'Urarinas', '', '');
INSERT INTO `ubigeo` VALUES ('160400', 'Mariscal Ramon Castilla', '', '');
INSERT INTO `ubigeo` VALUES ('160401', 'Ramon Castilla', '', '');
INSERT INTO `ubigeo` VALUES ('160402', 'Pebas', '', '');
INSERT INTO `ubigeo` VALUES ('160403', 'Yavari', '', '');
INSERT INTO `ubigeo` VALUES ('160404', 'San Pablo', '', '');
INSERT INTO `ubigeo` VALUES ('160500', 'Requena', '', '');
INSERT INTO `ubigeo` VALUES ('160501', 'Requena', '', '');
INSERT INTO `ubigeo` VALUES ('160502', 'Alto Tapiche', '', '');
INSERT INTO `ubigeo` VALUES ('160503', 'Capelo', '', '');
INSERT INTO `ubigeo` VALUES ('160504', 'Emilio San Martin', '', '');
INSERT INTO `ubigeo` VALUES ('160505', 'Maquia', '', '');
INSERT INTO `ubigeo` VALUES ('160506', 'Puinahua', '', '');
INSERT INTO `ubigeo` VALUES ('160507', 'Saquena', '', '');
INSERT INTO `ubigeo` VALUES ('160508', 'Soplin', '', '');
INSERT INTO `ubigeo` VALUES ('160509', 'Tapiche', '', '');
INSERT INTO `ubigeo` VALUES ('160510', 'Jenaro Herrera', '', '');
INSERT INTO `ubigeo` VALUES ('160511', 'Yaquerana', '', '');
INSERT INTO `ubigeo` VALUES ('160600', 'Ucayali', '', '');
INSERT INTO `ubigeo` VALUES ('160601', 'Contamana', '', '');
INSERT INTO `ubigeo` VALUES ('160602', 'Inahuaya', '', '');
INSERT INTO `ubigeo` VALUES ('160603', 'Padre Marquez', '', '');
INSERT INTO `ubigeo` VALUES ('160604', 'Pampa Hermosa', '', '');
INSERT INTO `ubigeo` VALUES ('160605', 'Sarayacu', '', '');
INSERT INTO `ubigeo` VALUES ('160606', 'Vargas Guerra', '', '');
INSERT INTO `ubigeo` VALUES ('170000', 'Madre de Dios', '', '');
INSERT INTO `ubigeo` VALUES ('170100', 'Tambopata', '', '');
INSERT INTO `ubigeo` VALUES ('170101', 'Tambopata', '', '');
INSERT INTO `ubigeo` VALUES ('170102', 'Inambari', '', '');
INSERT INTO `ubigeo` VALUES ('170103', 'Las Piedras', '', '');
INSERT INTO `ubigeo` VALUES ('170104', 'Laberinto', '', '');
INSERT INTO `ubigeo` VALUES ('170200', 'Manu', '', '');
INSERT INTO `ubigeo` VALUES ('170201', 'Manu', '', '');
INSERT INTO `ubigeo` VALUES ('170202', 'Fitzcarrald', '', '');
INSERT INTO `ubigeo` VALUES ('170203', 'Madre de Dios', '', '');
INSERT INTO `ubigeo` VALUES ('170204', 'Huepetuhe', '', '');
INSERT INTO `ubigeo` VALUES ('170300', 'Tahuamanu', '', '');
INSERT INTO `ubigeo` VALUES ('170301', 'Iñapari', '', '');
INSERT INTO `ubigeo` VALUES ('170302', 'Iberia', '', '');
INSERT INTO `ubigeo` VALUES ('170303', 'Tahuamanu', '', '');
INSERT INTO `ubigeo` VALUES ('180000', 'Moquegua', '', '');
INSERT INTO `ubigeo` VALUES ('180100', 'Mariscal Nieto', '', '');
INSERT INTO `ubigeo` VALUES ('180101', 'Moquegua', '', '');
INSERT INTO `ubigeo` VALUES ('180102', 'Carumas', '', '');
INSERT INTO `ubigeo` VALUES ('180103', 'Cuchumbaya', '', '');
INSERT INTO `ubigeo` VALUES ('180104', 'Samegua', '', '');
INSERT INTO `ubigeo` VALUES ('180105', 'San Cristobal', '', '');
INSERT INTO `ubigeo` VALUES ('180106', 'Torata', '', '');
INSERT INTO `ubigeo` VALUES ('180200', 'General Sanchez Cerro', '', '');
INSERT INTO `ubigeo` VALUES ('180201', 'Omate', '', '');
INSERT INTO `ubigeo` VALUES ('180202', 'Chojata', '', '');
INSERT INTO `ubigeo` VALUES ('180203', 'Coalaque', '', '');
INSERT INTO `ubigeo` VALUES ('180204', 'Ichuña', '', '');
INSERT INTO `ubigeo` VALUES ('180205', 'La Capilla', '', '');
INSERT INTO `ubigeo` VALUES ('180206', 'Lloque', '', '');
INSERT INTO `ubigeo` VALUES ('180207', 'Matalaque', '', '');
INSERT INTO `ubigeo` VALUES ('180208', 'Puquina', '', '');
INSERT INTO `ubigeo` VALUES ('180209', 'Quinistaquillas', '', '');
INSERT INTO `ubigeo` VALUES ('180210', 'Ubinas', '', '');
INSERT INTO `ubigeo` VALUES ('180211', 'Yunga', '', '');
INSERT INTO `ubigeo` VALUES ('180300', 'Ilo', '', '');
INSERT INTO `ubigeo` VALUES ('180301', 'Ilo', '', '');
INSERT INTO `ubigeo` VALUES ('180302', 'El Algarrobal', '', '');
INSERT INTO `ubigeo` VALUES ('180303', 'Pacocha', '', '');
INSERT INTO `ubigeo` VALUES ('190000', 'Pasco', '', '');
INSERT INTO `ubigeo` VALUES ('190100', 'Pasco', '', '');
INSERT INTO `ubigeo` VALUES ('190101', 'Chaupimarca', '', '');
INSERT INTO `ubigeo` VALUES ('190102', 'Huachon', '', '');
INSERT INTO `ubigeo` VALUES ('190103', 'Huariaca', '', '');
INSERT INTO `ubigeo` VALUES ('190104', 'Huayllay', '', '');
INSERT INTO `ubigeo` VALUES ('190105', 'Ninacaca', '', '');
INSERT INTO `ubigeo` VALUES ('190106', 'Pallanchacra', '', '');
INSERT INTO `ubigeo` VALUES ('190107', 'Paucartambo', '', '');
INSERT INTO `ubigeo` VALUES ('190108', 'San Fco.De Asis de Yarusyacan', '', '');
INSERT INTO `ubigeo` VALUES ('190109', 'Simon Bolivar', '', '');
INSERT INTO `ubigeo` VALUES ('190110', 'Ticlacayan', '', '');
INSERT INTO `ubigeo` VALUES ('190111', 'Tinyahuarco', '', '');
INSERT INTO `ubigeo` VALUES ('190112', 'Vicco', '', '');
INSERT INTO `ubigeo` VALUES ('190113', 'Yanacancha', '', '');
INSERT INTO `ubigeo` VALUES ('190200', 'Daniel Alcides Carrion', '', '');
INSERT INTO `ubigeo` VALUES ('190201', 'Yanahuanca', '', '');
INSERT INTO `ubigeo` VALUES ('190202', 'Chacayan', '', '');
INSERT INTO `ubigeo` VALUES ('190203', 'Goyllarisquizga', '', '');
INSERT INTO `ubigeo` VALUES ('190204', 'Paucar', '', '');
INSERT INTO `ubigeo` VALUES ('190205', 'San Pedro de Pillao', '', '');
INSERT INTO `ubigeo` VALUES ('190206', 'Santa Ana de Tusi', '', '');
INSERT INTO `ubigeo` VALUES ('190207', 'Tapuc', '', '');
INSERT INTO `ubigeo` VALUES ('190208', 'Vilcabamba', '', '');
INSERT INTO `ubigeo` VALUES ('190300', 'Oxapampa', '', '');
INSERT INTO `ubigeo` VALUES ('190301', 'Oxapampa', '', '');
INSERT INTO `ubigeo` VALUES ('190302', 'Chontabamba', '', '');
INSERT INTO `ubigeo` VALUES ('190303', 'Huancabamba', '', '');
INSERT INTO `ubigeo` VALUES ('190304', 'Palcazu', '', '');
INSERT INTO `ubigeo` VALUES ('190305', 'Pozuzo', '', '');
INSERT INTO `ubigeo` VALUES ('190306', 'Puerto Bermudez', '', '');
INSERT INTO `ubigeo` VALUES ('190307', 'Villa Rica', '', '');
INSERT INTO `ubigeo` VALUES ('200000', 'Piura', '', '');
INSERT INTO `ubigeo` VALUES ('200100', 'Piura', '', '');
INSERT INTO `ubigeo` VALUES ('200101', 'Piura', '', '');
INSERT INTO `ubigeo` VALUES ('200104', 'Castilla', '', '');
INSERT INTO `ubigeo` VALUES ('200105', 'Catacaos', '', '');
INSERT INTO `ubigeo` VALUES ('200107', 'Cura Mori', '', '');
INSERT INTO `ubigeo` VALUES ('200108', 'El Tallan', '', '');
INSERT INTO `ubigeo` VALUES ('200109', 'La Arena', '', '');
INSERT INTO `ubigeo` VALUES ('200110', 'La Union', '', '');
INSERT INTO `ubigeo` VALUES ('200111', 'Las Lomas', '', '');
INSERT INTO `ubigeo` VALUES ('200114', 'Tambo Grande', '', '');
INSERT INTO `ubigeo` VALUES ('200200', 'Ayabaca', '', '');
INSERT INTO `ubigeo` VALUES ('200201', 'Ayabaca', '', '');
INSERT INTO `ubigeo` VALUES ('200202', 'Frias', '', '');
INSERT INTO `ubigeo` VALUES ('200203', 'Jilili', '', '');
INSERT INTO `ubigeo` VALUES ('200204', 'Lagunas', '', '');
INSERT INTO `ubigeo` VALUES ('200205', 'Montero', '', '');
INSERT INTO `ubigeo` VALUES ('200206', 'Pacaipampa', '', '');
INSERT INTO `ubigeo` VALUES ('200207', 'Paimas', '', '');
INSERT INTO `ubigeo` VALUES ('200208', 'Sapillica', '', '');
INSERT INTO `ubigeo` VALUES ('200209', 'Sicchez', '', '');
INSERT INTO `ubigeo` VALUES ('200210', 'Suyo', '', '');
INSERT INTO `ubigeo` VALUES ('200300', 'Huancabamba', '', '');
INSERT INTO `ubigeo` VALUES ('200301', 'Huancabamba', '', '');
INSERT INTO `ubigeo` VALUES ('200302', 'Canchaque', '', '');
INSERT INTO `ubigeo` VALUES ('200303', 'El Carmen de la Frontera', '', '');
INSERT INTO `ubigeo` VALUES ('200304', 'Huarmaca', '', '');
INSERT INTO `ubigeo` VALUES ('200305', 'Lalaquiz', '', '');
INSERT INTO `ubigeo` VALUES ('200306', 'San Miguel de El Faique', '', '');
INSERT INTO `ubigeo` VALUES ('200307', 'Sondor', '', '');
INSERT INTO `ubigeo` VALUES ('200308', 'Sondorillo', '', '');
INSERT INTO `ubigeo` VALUES ('200400', 'Morropon', '', '');
INSERT INTO `ubigeo` VALUES ('200401', 'Chulucanas', '', '');
INSERT INTO `ubigeo` VALUES ('200402', 'Buenos Aires', '', '');
INSERT INTO `ubigeo` VALUES ('200403', 'Chalaco', '', '');
INSERT INTO `ubigeo` VALUES ('200404', 'La Matanza', '', '');
INSERT INTO `ubigeo` VALUES ('200405', 'Morropon', '', '');
INSERT INTO `ubigeo` VALUES ('200406', 'Salitral', '', '');
INSERT INTO `ubigeo` VALUES ('200407', 'San Juan de Bigote', '', '');
INSERT INTO `ubigeo` VALUES ('200408', 'Santa Catalina de Mossa', '', '');
INSERT INTO `ubigeo` VALUES ('200409', 'Santo Domingo', '', '');
INSERT INTO `ubigeo` VALUES ('200410', 'Yamango', '', '');
INSERT INTO `ubigeo` VALUES ('200500', 'Paita', '', '');
INSERT INTO `ubigeo` VALUES ('200501', 'Paita', '', '');
INSERT INTO `ubigeo` VALUES ('200502', 'Amotape', '', '');
INSERT INTO `ubigeo` VALUES ('200503', 'Arenal', '', '');
INSERT INTO `ubigeo` VALUES ('200504', 'Colan', '', '');
INSERT INTO `ubigeo` VALUES ('200505', 'La Huaca', '', '');
INSERT INTO `ubigeo` VALUES ('200506', 'Tamarindo', '', '');
INSERT INTO `ubigeo` VALUES ('200507', 'Vichayal', '', '');
INSERT INTO `ubigeo` VALUES ('200600', 'Sullana', '', '');
INSERT INTO `ubigeo` VALUES ('200601', 'Sullana', '', '');
INSERT INTO `ubigeo` VALUES ('200602', 'Bellavista', '', '');
INSERT INTO `ubigeo` VALUES ('200603', 'Ignacio Escudero', '', '');
INSERT INTO `ubigeo` VALUES ('200604', 'Lancones', '', '');
INSERT INTO `ubigeo` VALUES ('200605', 'Marcavelica', '', '');
INSERT INTO `ubigeo` VALUES ('200606', 'Miguel Checa', '', '');
INSERT INTO `ubigeo` VALUES ('200607', 'Querecotillo', '', '');
INSERT INTO `ubigeo` VALUES ('200608', 'Salitral', '', '');
INSERT INTO `ubigeo` VALUES ('200700', 'Talara', '', '');
INSERT INTO `ubigeo` VALUES ('200701', 'Pariñas', '', '');
INSERT INTO `ubigeo` VALUES ('200702', 'El Alto', '', '');
INSERT INTO `ubigeo` VALUES ('200703', 'La Brea', '', '');
INSERT INTO `ubigeo` VALUES ('200704', 'Lobitos', '', '');
INSERT INTO `ubigeo` VALUES ('200705', 'Los Organos', '', '');
INSERT INTO `ubigeo` VALUES ('200706', 'Mancora', '', '');
INSERT INTO `ubigeo` VALUES ('200800', 'Sechura', '', '');
INSERT INTO `ubigeo` VALUES ('200801', 'Sechura', '', '');
INSERT INTO `ubigeo` VALUES ('200802', 'Bellavista de la Union', '', '');
INSERT INTO `ubigeo` VALUES ('200803', 'Bernal', '', '');
INSERT INTO `ubigeo` VALUES ('200804', 'Cristo Nos Valga', '', '');
INSERT INTO `ubigeo` VALUES ('200805', 'Vice', '', '');
INSERT INTO `ubigeo` VALUES ('200806', 'Rinconada Llicuar', '', '');
INSERT INTO `ubigeo` VALUES ('210000', 'Puno', '', '');
INSERT INTO `ubigeo` VALUES ('210100', 'Puno', '', '');
INSERT INTO `ubigeo` VALUES ('210101', 'Puno', '', '');
INSERT INTO `ubigeo` VALUES ('210102', 'Acora', '', '');
INSERT INTO `ubigeo` VALUES ('210103', 'Amantani', '', '');
INSERT INTO `ubigeo` VALUES ('210104', 'Atuncolla', '', '');
INSERT INTO `ubigeo` VALUES ('210105', 'Capachica', '', '');
INSERT INTO `ubigeo` VALUES ('210106', 'Chucuito', '', '');
INSERT INTO `ubigeo` VALUES ('210107', 'Coata', '', '');
INSERT INTO `ubigeo` VALUES ('210108', 'Huata', '', '');
INSERT INTO `ubigeo` VALUES ('210109', 'Mañazo', '', '');
INSERT INTO `ubigeo` VALUES ('210110', 'Paucarcolla', '', '');
INSERT INTO `ubigeo` VALUES ('210111', 'Pichacani', '', '');
INSERT INTO `ubigeo` VALUES ('210112', 'Plateria', '', '');
INSERT INTO `ubigeo` VALUES ('210113', 'San Antonio', '', '');
INSERT INTO `ubigeo` VALUES ('210114', 'Tiquillaca', '', '');
INSERT INTO `ubigeo` VALUES ('210115', 'Vilque', '', '');
INSERT INTO `ubigeo` VALUES ('210200', 'Azangaro', '', '');
INSERT INTO `ubigeo` VALUES ('210201', 'Azangaro', '', '');
INSERT INTO `ubigeo` VALUES ('210202', 'Achaya', '', '');
INSERT INTO `ubigeo` VALUES ('210203', 'Arapa', '', '');
INSERT INTO `ubigeo` VALUES ('210204', 'Asillo', '', '');
INSERT INTO `ubigeo` VALUES ('210205', 'Caminaca', '', '');
INSERT INTO `ubigeo` VALUES ('210206', 'Chupa', '', '');
INSERT INTO `ubigeo` VALUES ('210207', 'Jose Domingo Choquehuanca', '', '');
INSERT INTO `ubigeo` VALUES ('210208', 'Muñani', '', '');
INSERT INTO `ubigeo` VALUES ('210209', 'Potoni', '', '');
INSERT INTO `ubigeo` VALUES ('210210', 'Saman', '', '');
INSERT INTO `ubigeo` VALUES ('210211', 'San Anton', '', '');
INSERT INTO `ubigeo` VALUES ('210212', 'San Jose', '', '');
INSERT INTO `ubigeo` VALUES ('210213', 'San Juan de Salinas', '', '');
INSERT INTO `ubigeo` VALUES ('210214', 'Santiago de Pupuja', '', '');
INSERT INTO `ubigeo` VALUES ('210215', 'Tirapata', '', '');
INSERT INTO `ubigeo` VALUES ('210300', 'Carabaya', '', '');
INSERT INTO `ubigeo` VALUES ('210301', 'Macusani', '', '');
INSERT INTO `ubigeo` VALUES ('210302', 'Ajoyani', '', '');
INSERT INTO `ubigeo` VALUES ('210303', 'Ayapata', '', '');
INSERT INTO `ubigeo` VALUES ('210304', 'Coasa', '', '');
INSERT INTO `ubigeo` VALUES ('210305', 'Corani', '', '');
INSERT INTO `ubigeo` VALUES ('210306', 'Crucero', '', '');
INSERT INTO `ubigeo` VALUES ('210307', 'Ituata', '', '');
INSERT INTO `ubigeo` VALUES ('210308', 'Ollachea', '', '');
INSERT INTO `ubigeo` VALUES ('210309', 'San Gaban', '', '');
INSERT INTO `ubigeo` VALUES ('210310', 'Usicayos', '', '');
INSERT INTO `ubigeo` VALUES ('210400', 'Chucuito', '', '');
INSERT INTO `ubigeo` VALUES ('210401', 'Juli', '', '');
INSERT INTO `ubigeo` VALUES ('210402', 'Desaguadero', '', '');
INSERT INTO `ubigeo` VALUES ('210403', 'Huacullani', '', '');
INSERT INTO `ubigeo` VALUES ('210404', 'Kelluyo', '', '');
INSERT INTO `ubigeo` VALUES ('210405', 'Pisacoma', '', '');
INSERT INTO `ubigeo` VALUES ('210406', 'Pomata', '', '');
INSERT INTO `ubigeo` VALUES ('210407', 'Zepita', '', '');
INSERT INTO `ubigeo` VALUES ('210500', 'El Collao', '', '');
INSERT INTO `ubigeo` VALUES ('210501', 'Ilave', '', '');
INSERT INTO `ubigeo` VALUES ('210502', 'Capazo', '', '');
INSERT INTO `ubigeo` VALUES ('210503', 'Pilcuyo', '', '');
INSERT INTO `ubigeo` VALUES ('210504', 'Santa Rosa', '', '');
INSERT INTO `ubigeo` VALUES ('210505', 'Conduriri', '', '');
INSERT INTO `ubigeo` VALUES ('210600', 'Huancane', '', '');
INSERT INTO `ubigeo` VALUES ('210601', 'Huancane', '', '');
INSERT INTO `ubigeo` VALUES ('210602', 'Cojata', '', '');
INSERT INTO `ubigeo` VALUES ('210603', 'Huatasani', '', '');
INSERT INTO `ubigeo` VALUES ('210604', 'Inchupalla', '', '');
INSERT INTO `ubigeo` VALUES ('210605', 'Pusi', '', '');
INSERT INTO `ubigeo` VALUES ('210606', 'Rosaspata', '', '');
INSERT INTO `ubigeo` VALUES ('210607', 'Taraco', '', '');
INSERT INTO `ubigeo` VALUES ('210608', 'Vilque Chico', '', '');
INSERT INTO `ubigeo` VALUES ('210700', 'Lampa', '', '');
INSERT INTO `ubigeo` VALUES ('210701', 'Lampa', '', '');
INSERT INTO `ubigeo` VALUES ('210702', 'Cabanilla', '', '');
INSERT INTO `ubigeo` VALUES ('210703', 'Calapuja', '', '');
INSERT INTO `ubigeo` VALUES ('210704', 'Nicasio', '', '');
INSERT INTO `ubigeo` VALUES ('210705', 'Ocuviri', '', '');
INSERT INTO `ubigeo` VALUES ('210706', 'Palca', '', '');
INSERT INTO `ubigeo` VALUES ('210707', 'Paratia', '', '');
INSERT INTO `ubigeo` VALUES ('210708', 'Pucara', '', '');
INSERT INTO `ubigeo` VALUES ('210709', 'Santa Lucia', '', '');
INSERT INTO `ubigeo` VALUES ('210710', 'Vilavila', '', '');
INSERT INTO `ubigeo` VALUES ('210800', 'Melgar', '', '');
INSERT INTO `ubigeo` VALUES ('210801', 'Ayaviri', '', '');
INSERT INTO `ubigeo` VALUES ('210802', 'Antauta', '', '');
INSERT INTO `ubigeo` VALUES ('210803', 'Cupi', '', '');
INSERT INTO `ubigeo` VALUES ('210804', 'Llalli', '', '');
INSERT INTO `ubigeo` VALUES ('210805', 'Macari', '', '');
INSERT INTO `ubigeo` VALUES ('210806', 'Nuñoa', '', '');
INSERT INTO `ubigeo` VALUES ('210807', 'Orurillo', '', '');
INSERT INTO `ubigeo` VALUES ('210808', 'Santa Rosa', '', '');
INSERT INTO `ubigeo` VALUES ('210809', 'Umachiri', '', '');
INSERT INTO `ubigeo` VALUES ('210900', 'Moho', '', '');
INSERT INTO `ubigeo` VALUES ('210901', 'Moho', '', '');
INSERT INTO `ubigeo` VALUES ('210902', 'Conima', '', '');
INSERT INTO `ubigeo` VALUES ('210903', 'Huayrapata', '', '');
INSERT INTO `ubigeo` VALUES ('210904', 'Tilali', '', '');
INSERT INTO `ubigeo` VALUES ('211000', 'San Antonio de Putina', '', '');
INSERT INTO `ubigeo` VALUES ('211001', 'Putina', '', '');
INSERT INTO `ubigeo` VALUES ('211002', 'Ananea', '', '');
INSERT INTO `ubigeo` VALUES ('211003', 'Pedro Vilca Apaza', '', '');
INSERT INTO `ubigeo` VALUES ('211004', 'Quilcapuncu', '', '');
INSERT INTO `ubigeo` VALUES ('211005', 'Sina', '', '');
INSERT INTO `ubigeo` VALUES ('211100', 'San Roman', '', '');
INSERT INTO `ubigeo` VALUES ('211101', 'Juliaca', '', '');
INSERT INTO `ubigeo` VALUES ('211102', 'Cabana', '', '');
INSERT INTO `ubigeo` VALUES ('211103', 'Cabanillas', '', '');
INSERT INTO `ubigeo` VALUES ('211104', 'Caracoto', '', '');
INSERT INTO `ubigeo` VALUES ('211200', 'Sandia', '', '');
INSERT INTO `ubigeo` VALUES ('211201', 'Sandia', '', '');
INSERT INTO `ubigeo` VALUES ('211202', 'Cuyocuyo', '', '');
INSERT INTO `ubigeo` VALUES ('211203', 'Limbani', '', '');
INSERT INTO `ubigeo` VALUES ('211204', 'Patambuco', '', '');
INSERT INTO `ubigeo` VALUES ('211205', 'Phara', '', '');
INSERT INTO `ubigeo` VALUES ('211206', 'Quiaca', '', '');
INSERT INTO `ubigeo` VALUES ('211207', 'San Juan del Oro', '', '');
INSERT INTO `ubigeo` VALUES ('211208', 'Yanahuaya', '', '');
INSERT INTO `ubigeo` VALUES ('211209', 'Alto Inambari', '', '');
INSERT INTO `ubigeo` VALUES ('211300', 'Yunguyo', '', '');
INSERT INTO `ubigeo` VALUES ('211301', 'Yunguyo', '', '');
INSERT INTO `ubigeo` VALUES ('211302', 'Anapia', '', '');
INSERT INTO `ubigeo` VALUES ('211303', 'Copani', '', '');
INSERT INTO `ubigeo` VALUES ('211304', 'Cuturapi', '', '');
INSERT INTO `ubigeo` VALUES ('211305', 'Ollaraya', '', '');
INSERT INTO `ubigeo` VALUES ('211306', 'Tinicachi', '', '');
INSERT INTO `ubigeo` VALUES ('211307', 'Unicachi', '', '');
INSERT INTO `ubigeo` VALUES ('220000', 'San Martin', '', '');
INSERT INTO `ubigeo` VALUES ('220100', 'Moyobamba', '', '');
INSERT INTO `ubigeo` VALUES ('220101', 'Moyobamba', '', '');
INSERT INTO `ubigeo` VALUES ('220102', 'Calzada', '', '');
INSERT INTO `ubigeo` VALUES ('220103', 'Habana', '', '');
INSERT INTO `ubigeo` VALUES ('220104', 'Jepelacio', '', '');
INSERT INTO `ubigeo` VALUES ('220105', 'Soritor', '', '');
INSERT INTO `ubigeo` VALUES ('220106', 'Yantalo', '', '');
INSERT INTO `ubigeo` VALUES ('220200', 'Bellavista', '', '');
INSERT INTO `ubigeo` VALUES ('220201', 'Bellavista', '', '');
INSERT INTO `ubigeo` VALUES ('220202', 'Alto Biavo', '', '');
INSERT INTO `ubigeo` VALUES ('220203', 'Bajo Biavo', '', '');
INSERT INTO `ubigeo` VALUES ('220204', 'Huallaga', '', '');
INSERT INTO `ubigeo` VALUES ('220205', 'San Pablo', '', '');
INSERT INTO `ubigeo` VALUES ('220206', 'San Rafael', '', '');
INSERT INTO `ubigeo` VALUES ('220300', 'El Dorado', '', '');
INSERT INTO `ubigeo` VALUES ('220301', 'San Jose de Sisa', '', '');
INSERT INTO `ubigeo` VALUES ('220302', 'Agua Blanca', '', '');
INSERT INTO `ubigeo` VALUES ('220303', 'San Martin', '', '');
INSERT INTO `ubigeo` VALUES ('220304', 'Santa Rosa', '', '');
INSERT INTO `ubigeo` VALUES ('220305', 'Shatoja', '', '');
INSERT INTO `ubigeo` VALUES ('220400', 'Huallaga', '', '');
INSERT INTO `ubigeo` VALUES ('220401', 'Saposoa', '', '');
INSERT INTO `ubigeo` VALUES ('220402', 'Alto Saposoa', '', '');
INSERT INTO `ubigeo` VALUES ('220403', 'El Eslabon', '', '');
INSERT INTO `ubigeo` VALUES ('220404', 'Piscoyacu', '', '');
INSERT INTO `ubigeo` VALUES ('220405', 'Sacanche', '', '');
INSERT INTO `ubigeo` VALUES ('220406', 'Tingo de Saposoa', '', '');
INSERT INTO `ubigeo` VALUES ('220500', 'Lamas', '', '');
INSERT INTO `ubigeo` VALUES ('220501', 'Lamas', '', '');
INSERT INTO `ubigeo` VALUES ('220502', 'Alonso de Alvarado', '', '');
INSERT INTO `ubigeo` VALUES ('220503', 'Barranquita', '', '');
INSERT INTO `ubigeo` VALUES ('220504', 'Caynarachi', '', '');
INSERT INTO `ubigeo` VALUES ('220505', 'Cuqumbuqui', '', '');
INSERT INTO `ubigeo` VALUES ('220506', 'Pinto Recodo', '', '');
INSERT INTO `ubigeo` VALUES ('220507', 'Rumisapa', '', '');
INSERT INTO `ubigeo` VALUES ('220508', 'San Roque de Cumbaza', '', '');
INSERT INTO `ubigeo` VALUES ('220509', 'Shanao', '', '');
INSERT INTO `ubigeo` VALUES ('220510', 'Tabalosos', '', '');
INSERT INTO `ubigeo` VALUES ('220511', 'Zapatero', '', '');
INSERT INTO `ubigeo` VALUES ('220600', 'Mariscal Caceres', '', '');
INSERT INTO `ubigeo` VALUES ('220601', 'Juanjui', '', '');
INSERT INTO `ubigeo` VALUES ('220602', 'Campanilla', '', '');
INSERT INTO `ubigeo` VALUES ('220603', 'Huicungo', '', '');
INSERT INTO `ubigeo` VALUES ('220604', 'Pachiza', '', '');
INSERT INTO `ubigeo` VALUES ('220605', 'Pajarillo', '', '');
INSERT INTO `ubigeo` VALUES ('220700', 'Picota', '', '');
INSERT INTO `ubigeo` VALUES ('220701', 'Picota', '', '');
INSERT INTO `ubigeo` VALUES ('220702', 'Buenos Aires', '', '');
INSERT INTO `ubigeo` VALUES ('220703', 'Caspisapa', '', '');
INSERT INTO `ubigeo` VALUES ('220704', 'Pilluana', '', '');
INSERT INTO `ubigeo` VALUES ('220705', 'Pucacaca', '', '');
INSERT INTO `ubigeo` VALUES ('220706', 'San Cristobal', '', '');
INSERT INTO `ubigeo` VALUES ('220707', 'San Hilarion', '', '');
INSERT INTO `ubigeo` VALUES ('220708', 'Shamboyacu', '', '');
INSERT INTO `ubigeo` VALUES ('220709', 'Tingo de Ponasa', '', '');
INSERT INTO `ubigeo` VALUES ('220710', 'Tres Unidos', '', '');
INSERT INTO `ubigeo` VALUES ('220800', 'Rioja', '', '');
INSERT INTO `ubigeo` VALUES ('220801', 'Rioja', '', '');
INSERT INTO `ubigeo` VALUES ('220802', 'Awajun', '', '');
INSERT INTO `ubigeo` VALUES ('220803', 'Elias Soplin Vargas', '', '');
INSERT INTO `ubigeo` VALUES ('220804', 'Nueva Cajamarca', '', '');
INSERT INTO `ubigeo` VALUES ('220805', 'Pardo Miguel', '', '');
INSERT INTO `ubigeo` VALUES ('220806', 'Posic', '', '');
INSERT INTO `ubigeo` VALUES ('220807', 'San Fernando', '', '');
INSERT INTO `ubigeo` VALUES ('220808', 'Yorongos', '', '');
INSERT INTO `ubigeo` VALUES ('220809', 'Yuracyacu', '', '');
INSERT INTO `ubigeo` VALUES ('220900', 'San Martin', '', '');
INSERT INTO `ubigeo` VALUES ('220901', 'Tarapoto', '', '');
INSERT INTO `ubigeo` VALUES ('220902', 'Alberto Leveau', '', '');
INSERT INTO `ubigeo` VALUES ('220903', 'Cacatachi', '', '');
INSERT INTO `ubigeo` VALUES ('220904', 'Chazuta', '', '');
INSERT INTO `ubigeo` VALUES ('220905', 'Chipurana', '', '');
INSERT INTO `ubigeo` VALUES ('220906', 'El Porvenir', '', '');
INSERT INTO `ubigeo` VALUES ('220907', 'Huimbayoc', '', '');
INSERT INTO `ubigeo` VALUES ('220908', 'Juan Guerra', '', '');
INSERT INTO `ubigeo` VALUES ('220909', 'La Banda de Shilcayo', '', '');
INSERT INTO `ubigeo` VALUES ('220910', 'Morales', '', '');
INSERT INTO `ubigeo` VALUES ('220911', 'Papaplaya', '', '');
INSERT INTO `ubigeo` VALUES ('220912', 'San Antonio', '', '');
INSERT INTO `ubigeo` VALUES ('220913', 'Sauce', '', '');
INSERT INTO `ubigeo` VALUES ('220914', 'Shapaja', '', '');
INSERT INTO `ubigeo` VALUES ('221000', 'Tocache', '', '');
INSERT INTO `ubigeo` VALUES ('221001', 'Tocache', '', '');
INSERT INTO `ubigeo` VALUES ('221002', 'Nuevo Progreso', '', '');
INSERT INTO `ubigeo` VALUES ('221003', 'Polvora', '', '');
INSERT INTO `ubigeo` VALUES ('221004', 'Shunte', '', '');
INSERT INTO `ubigeo` VALUES ('221005', 'Uchiza', '', '');
INSERT INTO `ubigeo` VALUES ('230000', 'Tacna', '', '');
INSERT INTO `ubigeo` VALUES ('230100', 'Tacna', '', '');
INSERT INTO `ubigeo` VALUES ('230101', 'Tacna', '', '');
INSERT INTO `ubigeo` VALUES ('230102', 'Alto de la Alianza', '', '');
INSERT INTO `ubigeo` VALUES ('230103', 'Calana', '', '');
INSERT INTO `ubigeo` VALUES ('230104', 'Ciudad Nueva', '', '');
INSERT INTO `ubigeo` VALUES ('230105', 'Inclan', '', '');
INSERT INTO `ubigeo` VALUES ('230106', 'Pachia', '', '');
INSERT INTO `ubigeo` VALUES ('230107', 'Palca', '', '');
INSERT INTO `ubigeo` VALUES ('230108', 'Pocollay', '', '');
INSERT INTO `ubigeo` VALUES ('230109', 'Sama', '', '');
INSERT INTO `ubigeo` VALUES ('230110', 'Cor Gregorio Albarracín', '', '');
INSERT INTO `ubigeo` VALUES ('230200', 'Candarave', '', '');
INSERT INTO `ubigeo` VALUES ('230201', 'Candarave', '', '');
INSERT INTO `ubigeo` VALUES ('230202', 'Cairani', '', '');
INSERT INTO `ubigeo` VALUES ('230203', 'Camilaca', '', '');
INSERT INTO `ubigeo` VALUES ('230204', 'Curibaya', '', '');
INSERT INTO `ubigeo` VALUES ('230205', 'Huanuara', '', '');
INSERT INTO `ubigeo` VALUES ('230206', 'Quilahuani', '', '');
INSERT INTO `ubigeo` VALUES ('230300', 'Jorge Basadre', '', '');
INSERT INTO `ubigeo` VALUES ('230301', 'Locumba', '', '');
INSERT INTO `ubigeo` VALUES ('230302', 'Ilabaya', '', '');
INSERT INTO `ubigeo` VALUES ('230303', 'Ite', '', '');
INSERT INTO `ubigeo` VALUES ('230400', 'Tarata', '', '');
INSERT INTO `ubigeo` VALUES ('230401', 'Tarata', '', '');
INSERT INTO `ubigeo` VALUES ('230402', 'Chucatamani', '', '');
INSERT INTO `ubigeo` VALUES ('230403', 'Estique', '', '');
INSERT INTO `ubigeo` VALUES ('230404', 'Estique-Pampa', '', '');
INSERT INTO `ubigeo` VALUES ('230405', 'Sitajara', '', '');
INSERT INTO `ubigeo` VALUES ('230406', 'Susapaya', '', '');
INSERT INTO `ubigeo` VALUES ('230407', 'Tarucachi', '', '');
INSERT INTO `ubigeo` VALUES ('230408', 'Ticaco', '', '');
INSERT INTO `ubigeo` VALUES ('240000', 'Tumbes', '', '');
INSERT INTO `ubigeo` VALUES ('240100', 'Tumbes', '', '');
INSERT INTO `ubigeo` VALUES ('240101', 'Tumbes', '', '');
INSERT INTO `ubigeo` VALUES ('240102', 'Corrales', '', '');
INSERT INTO `ubigeo` VALUES ('240103', 'La Cruz', '', '');
INSERT INTO `ubigeo` VALUES ('240104', 'Pampas de Hospital', '', '');
INSERT INTO `ubigeo` VALUES ('240105', 'San Jacinto', '', '');
INSERT INTO `ubigeo` VALUES ('240106', 'San Juan de la Virgen', '', '');
INSERT INTO `ubigeo` VALUES ('240200', 'Contralmirante Villar', '', '');
INSERT INTO `ubigeo` VALUES ('240201', 'Zorritos', '', '');
INSERT INTO `ubigeo` VALUES ('240202', 'Casitas', '', '');
INSERT INTO `ubigeo` VALUES ('240300', 'Zarumilla', '', '');
INSERT INTO `ubigeo` VALUES ('240301', 'Zarumilla', '', '');
INSERT INTO `ubigeo` VALUES ('240302', 'Aguas Verdes', '', '');
INSERT INTO `ubigeo` VALUES ('240303', 'Matapalo', '', '');
INSERT INTO `ubigeo` VALUES ('240304', 'Papayal', '', '');
INSERT INTO `ubigeo` VALUES ('250000', 'Ucayali', '', '');
INSERT INTO `ubigeo` VALUES ('250100', 'Coronel Portillo', '', '');
INSERT INTO `ubigeo` VALUES ('250101', 'Calleria', '', '');
INSERT INTO `ubigeo` VALUES ('250102', 'Campoverde', '', '');
INSERT INTO `ubigeo` VALUES ('250103', 'Iparia', '', '');
INSERT INTO `ubigeo` VALUES ('250104', 'Masisea', '', '');
INSERT INTO `ubigeo` VALUES ('250105', 'Yarinacocha', '', '');
INSERT INTO `ubigeo` VALUES ('250106', 'Nueva Requena', '', '');
INSERT INTO `ubigeo` VALUES ('250200', 'Atalaya', '', '');
INSERT INTO `ubigeo` VALUES ('250201', 'Raymondi', '', '');
INSERT INTO `ubigeo` VALUES ('250202', 'Sepahua', '', '');
INSERT INTO `ubigeo` VALUES ('250203', 'Tahuania', '', '');
INSERT INTO `ubigeo` VALUES ('250204', 'Yurua', '', '');
INSERT INTO `ubigeo` VALUES ('250300', 'Padre Abad', '', '');
INSERT INTO `ubigeo` VALUES ('250301', 'Padre Abad', '', '');
INSERT INTO `ubigeo` VALUES ('250302', 'Irazola', '', '');
INSERT INTO `ubigeo` VALUES ('250303', 'Curimana', '', '');
INSERT INTO `ubigeo` VALUES ('250400', 'Purus', '', '');
INSERT INTO `ubigeo` VALUES ('250401', 'Purus', '', '');
INSERT INTO `ubigeo` VALUES ('990000', 'Fuera de Perú', '', '');

-- ----------------------------
-- Procedure structure for usp_app_get_cuenta_by_tipocli_idcli
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_get_cuenta_by_tipocli_idcli`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_app_get_cuenta_by_tipocli_idcli`(tipocli CHAR(2), idcli BIGINT)
BEGIN
	SELECT
		cuenta.idcuenta,
		cuenta.saldo,
		cuenta.idcli
	FROM cuenta
	WHERE cuenta.tipocli= tipocli
	AND cuenta.idcli = idcli
	LIMIT 1
	;
# usp_app_get_cuenta_by_tipocli_idcli
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_app_upd_cuenta_saldo_mas_monto_by_idcuenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_app_upd_cuenta_saldo_mas_monto_by_idcuenta`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_app_upd_cuenta_saldo_mas_monto_by_idcuenta`(idcuenta bigint(20), monto decimal)
BEGIN

	UPDATE cuenta
	SET cuenta.saldo = cuenta.saldo + monto
	WHERE cuenta.idcuenta = idcuenta
LIMIT 1
	;
# usp_app_upd_cuenta_saldo_mas_monto_by_idcuenta
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_transportista_by_estado
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_transportista_by_estado`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_transportista_by_estado`(estado INT)
BEGIN

			SELECT
						transportista.idtransp,
						transportista.ruc,
						transportista.razonsocial,
						transportista.direccion,
						transportista.telefonos,
						transportista.telefono2,
						transportista.telefono3,
						transportista.email,
						transportista.avatar,
						transportista.representante,
						transportista.puntuacion,
						-- transportista.fechareg ,
				    DATE_FORMAT(transportista.fechareg ,'%d/%m/%Y') AS fechareg ,
					distrito.codubigeo AS coddistrito,
					distrito.lugar AS distrito  ,
					provincia.codubigeo AS codprovincia,
					provincia.lugar AS provincia  ,
					departamento.codubigeo AS coddepartamento ,
					departamento.lugar AS departamento
	FROM transportista

	LEFT JOIN ubigeo AS distrito
						ON transportista.ubigeo = distrito.codubigeo
	LEFT JOIN ubigeo AS provincia
						ON CONCAT(LEFT(transportista.ubigeo, 4), '00') =  provincia.codubigeo
	LEFT JOIN ubigeo AS departamento
						ON CONCAT(LEFT(transportista.ubigeo, 2), '0000') =  departamento.codubigeo
			 -- FROM transportista
			WHERE ((estado = -1 ) OR (transportista.estado = estado) )
			ORDER BY razonsocial ASC
			;
		#  usp_get_transportista_by_estado
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_transportista_by_idtransp
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_transportista_by_idtransp`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_transportista_by_idtransp`(idtransp bigint(20))
BEGIN

	SELECT	transportista.idtransp,
					transportista.razonsocial,
					transportista.ruc,
					transportista.email,
					transportista.representante,
					transportista.direccion,
					transportista.telefonos,
					transportista.telefono2,
					transportista.telefono3,
					transportista.permisos,
					transportista.web,
					transportista.facebook,
					transportista.twitter,
					transportista.avatar ,
				    transportista.fechareg,
					distrito.codubigeo AS coddistrito,
					distrito.lugar AS distrito  ,
					provincia.codubigeo AS codprovincia,
					provincia.lugar AS provincia  ,
					departamento.codubigeo AS coddepartamento ,
					departamento.lugar AS departamento
	FROM transportista

	LEFT JOIN ubigeo AS distrito
						ON transportista.ubigeo = distrito.codubigeo
	LEFT JOIN ubigeo AS provincia
						ON CONCAT(LEFT(transportista.ubigeo, 4), '00') =  provincia.codubigeo
	LEFT JOIN ubigeo AS departamento
						ON CONCAT(LEFT(transportista.ubigeo, 2), '0000') =  departamento.codubigeo

	WHERE transportista.idtransp = idtransp

	LIMIT 1;
# usp_get_transportista_by_idtransp
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_transportista_info_by_idtransp
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_transportista_info_by_idtransp`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_transportista_info_by_idtransp`(idtransp bigint(20))
BEGIN

	SELECT
					transportista.idtransp,
					transportista.razonsocial,
					transportista.direccion,
					transportista.telefonos,
					transportista.telefono2,
					transportista.telefono3,
					transportista.email,
					transportista.avatar,
					transportista.ruc,
					transportista.representante,
					transportista.puntuacion,
					transportista.permisos,
					transportista.web,
					transportista.facebook,
					transportista.twitter,
				 -- transportista.fechareg,
				   DATE_FORMAT(transportista.fechareg ,'%d/%m/%Y') AS fechareg ,
					transportista.estado,
					transportista.certificada,
					transportista.ubigeo,

					distrito.codubigeo AS coddistrito,
					distrito.lugar AS distrito  ,
					provincia.codubigeo AS codprovincia,
					provincia.lugar AS provincia  ,
					departamento.codubigeo AS coddepartamento ,
					departamento.lugar AS departamento
	FROM transportista

	LEFT JOIN ubigeo AS distrito
						ON transportista.ubigeo = distrito.codubigeo
	LEFT JOIN ubigeo AS provincia
						ON CONCAT(LEFT(transportista.ubigeo, 4), '00') =  provincia.codubigeo
	LEFT JOIN ubigeo AS departamento
						ON CONCAT(LEFT(transportista.ubigeo, 2), '0000') =  departamento.codubigeo
	WHERE transportista.idtransp = idtransp

	LIMIT 1;
# usp_get_transportista_info_by_idtransp
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_get_transportista_saldo_by_estado
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_transportista_saldo_by_estado`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_transportista_saldo_by_estado`(estado INT)
BEGIN

			SELECT
						transportista.idtransp,
						transportista.ruc,
						transportista.razonsocial,
						transportista.direccion,
						transportista.telefonos,
						transportista.telefono2,
						transportista.telefono3,
						transportista.email,
						transportista.avatar,
						transportista.representante,
						transportista.puntuacion,
						transportista.fechareg,
						cuenta.idcuenta,
						cuenta.saldo
			 FROM transportista INNER JOIN cuenta ON transportista.idtransp = cuenta.idcli AND cuenta.tipocli = "TR"
			WHERE ((estado = -1 ) OR (transportista.estado = estado) )
			ORDER BY razonsocial ASC
			;
		#  usp_get_transportista_saldo_by_estado
END
;;
DELIMITER ;
