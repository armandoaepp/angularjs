-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-01-2015 a las 18:52:59
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bd_rastreo`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_acceso_sistema_by_idusuario`(idusuario int(11))
BEGIN
	
	SELECT	usuario.idusuario,
					
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

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_aside_by_idusuario`(idusuario int(11))
BEGIN
	
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

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_cellocator_by_ExtInputF`( ExtInputF int  )
BEGIN
SELECT * FROM
 cellocator  
 WHERE cellocator.ExtInputF = ExtInputF; 
 # usp_get_cellocator_by_ExtInputF
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_conductor`(idusuario int(11))
BEGIN
	
	SELECT	
									personaConductor.idpersona, personaConductor.nombre,
									dni.numero AS dni,
									brevete.numero AS brevete,
									movil.numero AS movil
	FROM usuario AS usuarioLogin
	INNER JOIN relacion AS relacionPadre
													ON usuarioLogin.idpersona = relacionPadre.idpersonadepen
																	AND relacionPadre.idtiporelacion = 3
	INNER JOIN persona AS personaEmpresa
													ON relacionPadre.idpersonaindep = personaEmpresa.idpersona
	INNER JOIN relacion AS relacionHijo
													ON personaEmpresa.idpersona = relacionHijo.idpersonaindep
																	AND relacionHijo.idtiporelacion = 4
	INNER JOIN persona AS personaConductor
													ON relacionHijo.idpersonadepen = personaConductor.idpersona
	INNER JOIN persona_documento AS dni
													ON personaConductor.idpersona = dni.idpersona
																	AND dni.idtipodocumento = 1
	INNER JOIN persona_documento AS brevete
													ON personaConductor.idpersona = brevete.idpersona
																	AND brevete.idtipodocumento = 5
	INNER JOIN persona_telefono AS movil
													ON personaConductor.idpersona = movil.idpersona
																	AND movil.idtipotelefono = 2
	WHERE usuarioLogin.idusuario = idusuario
;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_configuracion_by_idconfiguracion`(idconfiguracion int(11))
BEGIN
	
	SELECT configuracion.nombre, configuracion.valor
	FROM configuracion
	WHERE configuracion.idconfiguracion = idconfiguracion
	;

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_idempresa_by_idusuario`(idusuario int(11))
BEGIN
	
	SELECT relacion.idpersonaindep AS idpersona
	FROM usuario
	INNER JOIN persona
													ON usuario.idpersona = persona.idpersona
	INNER JOIN relacion
													ON persona.idpersona = relacion.idpersonadepen
																	AND relacion.idtiporelacion = 3
	WHERE usuario.idusuario = idusuario
	;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_menu_by_idusuario_and_idcontrolpadre`(idusuario int(11), idcontrolpadre int(11))
BEGIN
	
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

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_persona`()
BEGIN
	SELECT 
		persona.idpersona,
		persona.nombre,
		persona.nacimiento,
		persona.tipo,
		persona.estado
	FROM persona;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_personacorreo_by_correo`(correo varchar(50))
BEGIN
	
	SELECT persona_correo.idpersona, persona_correo.idtipocorreo, persona_correo.correo
	FROM persona_correo
	WHERE persona_correo.correo = correo
	LIMIT 1
	;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_personacorreo_by_idpersona_and_idtipocorreo`(idpersona int(11), idtipocorreo int(11))
BEGIN
	
	SELECT persona_correo.correo
	FROM persona_correo
	WHERE persona_correo.idpersona = idpersona
	AND persona_correo.idtipocorreo = idtipocorreo
	;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_personadocumento_by_idpersona_idtipodocumento`(idpersona int(11), idtipodocumento int(11))
BEGIN
	
	SELECT persona_documento.numero, persona_documento.imagen
	FROM persona_documento
	WHERE persona_documento.idpersona = idpersona
	AND persona_documento.idtipodocumento = idtipodocumento
;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_personadocumento_by_idtipodocumento_and_numero`(idtipodocumento int(11), numero varchar(20))
BEGIN
	
	SELECT persona_documento.idpersona, persona_documento.idtipodocumento, persona_documento.numero
	FROM persona_documento
	WHERE persona_documento.numero = numero
	AND persona_documento.idtipodocumento = idtipodocumento
	LIMIT 1
	;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_personanatural_by_idpersona`(idpersona int(11))
BEGIN
	
	SELECT persona_natural.nombres, persona_natural.apepat, persona_natural.apemat
	FROM persona_natural
	WHERE persona_natural.idpersona = idpersona
	;

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_personatelefono_by_idpersona_and_idtipotelefono`(idpersona int(11), idtipotelefono int(11))
BEGIN
	
	SELECT persona_telefono.numero
	FROM persona_telefono
	WHERE persona_telefono.idpersona = idpersona
	AND persona_telefono.idtipotelefono = idtipotelefono
	LIMIT 1
	;
	
END$$

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

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_prueba`()
BEGIN
	SELECT 
		prueba.id,
		prueba.Nombres,
		prueba.Apellidos
	FROM prueba;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_prueba_by_id`(id int(11))
BEGIN
	SELECT
		prueba.id,
		prueba.Nombres,
		prueba.Apellidos
	FROM prueba
	WHERE  prueba.id = id;
END$$

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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_tipo_vehiculo`()
BEGIN
	
	SELECT tipo_vehiculo.idtipovehiculo, tipo_vehiculo.nombre
	FROM tipo_vehiculo
	WHERE tipo_vehiculo.estado = 1
	;

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_usuario`(idusuario int(11))
BEGIN
	SELECT 
									personaUsuario.idpersona, personaUsuario.nombre,
									usuarioLista.idusuario, usuarioLista.usuario,
									persona_telefono.numero AS telefono,
									persona_correo.correo AS correo
	FROM usuario AS usuarioLogin
	INNER JOIN relacion AS relacionPadre
													ON usuarioLogin.idpersona = relacionPadre.idpersonadepen
																	AND relacionPadre.idtiporelacion = 3
	INNER JOIN persona AS personaEmpresa
													ON relacionPadre.idpersonaindep = personaEmpresa.idpersona
	INNER JOIN relacion AS relacionHijo
													ON personaEmpresa.idpersona = relacionHijo.idpersonaindep
																	AND relacionHijo.idtiporelacion = 3
	INNER JOIN persona AS personaUsuario
													ON relacionHijo.idpersonadepen = personaUsuario.idpersona
	INNER JOIN usuario AS usuarioLista
													ON personaUsuario.idpersona = usuarioLista.idpersona
	INNER JOIN persona_telefono
													ON personaUsuario.idpersona = persona_telefono.idpersona
	INNER JOIN persona_correo
													ON personaUsuario.idpersona = persona_correo.idpersona
	WHERE usuarioLogin.idusuario = idusuario
	;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_usuario_by_idusuario`(idusuario int(11))
BEGIN
	
	SELECT usuario.idusuario, usuario.idpersona, usuario.usuario
	FROM usuario
	WHERE usuario.idusuario = idusuario
	LIMIT 1
	;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_usuario_by_usuario_and_clave`(usuario varchar(45), clave varchar(45))
BEGIN
	
	SELECT usuario.idusuario, usuario.idpersona
	FROM usuario
	WHERE usuario.usuario = usuario
	AND usuario.clave = clave
	AND usuario.estado = 1
	LIMIT 1
;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_vehiculo`(idpersona int(11))
BEGIN
	
	SELECT vehiculo.idvehiculo, vehiculo.placa, tipo_vehiculo.nombre AS tipo, vehiculo.marca, vehiculo.modelo
	FROM vehiculo
	INNER JOIN tipo_vehiculo
	ON vehiculo.idtipovehiculo = tipo_vehiculo.idtipovehiculo
	WHERE vehiculo.estado= 1
	AND vehiculo.idpersona = idpersona
;

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_vehiculo_by_idvehiculo`(idvehiculo int(11))
BEGIN
	
	SELECT *
	FROM vehiculo
	WHERE vehiculo.idvehiculo = idvehiculo
	AND vehiculo.estado = 1
	LIMIT 1
	;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_cuenta`(idpersona int(11), idtiporelacion int(11), numero varchar(15), estado int(2))
BEGIN
	
	INSERT INTO cuenta(cuenta.idpersona, cuenta.idtiporelacion, cuenta.numero, cuenta.estado)
	VALUES (idpersona, idtiporelacion, numero, estado);

	SELECT LAST_INSERT_ID() AS idcuenta;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_persona`(nombre varchar(100), nacimiento date, tipo int(2), estado int(3))
BEGIN
	
	INSERT INTO persona(persona.nombre, persona.nacimiento, persona.tipo, persona.estado)
	VALUES (nombre, nacimiento, tipo, estado);

	SELECT LAST_INSERT_ID() AS idpersona;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personacorreo`(idtipocorreo int(11), idpersona int(11), correo varchar(50), estado int(2))
BEGIN
	DECLARE item_ INT;

	SELECT IFNULL(MAX(persona_correo.item), 0) + 1 INTO item_
	FROM persona_correo
	WHERE persona_correo.idpersona = idpersona
	AND persona_correo.idtipocorreo = idtipocorreo
	;
	
	INSERT INTO persona_correo(persona_correo.idtipocorreo,
														 persona_correo.idpersona,
														 persona_correo.item,
														 persona_correo.correo,
														 persona_correo.estado)
	VALUES (idtipocorreo, idpersona, item_, correo, estado);

	SELECT LAST_INSERT_ID() AS idpersonacorreo;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personadireccion`(idtipodireccion int(11), idpersona int(11), idubigeo int(11), direccion varchar(100), referencia varchar(100), estado int(2))
BEGIN
	
	INSERT INTO persona_direccion (idtipodireccion, idpersona, idubigeo, direccion, referencia, estado)
	VALUES (idtipodireccion, idpersona, idubigeo, direccion, referencia, estado);

	SELECT LAST_INSERT_ID() AS idpersonadireccion;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personadocumento`(idtipodocumento int(11), idpersona int(11), numero varchar(50), caducidad date, imagen varchar(50), estado int(2))
BEGIN
	
	INSERT INTO persona_documento(persona_documento.idtipodocumento,
																persona_documento.idpersona,
																persona_documento.numero,
																persona_documento.caducidad,
																persona_documento.imagen,
																persona_documento.estado)
	VALUES (idtipodocumento, idpersona, numero, caducidad, imagen, estado);

	SELECT LAST_INSERT_ID() AS idpersonadocumento;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personajuridica`(idpersona int(11), razonsocial varchar(150), idrubro varchar(5))
BEGIN
	
	INSERT INTO persona_juridica(persona_juridica.idpersona, persona_juridica.razonsocial, persona_juridica.idrubro)
	VALUES (idpersona, razonsocial, idrubro);

	SELECT LAST_INSERT_ID() AS idpersonajuridica;

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personanatural`(idpersona int(11), nombres varchar(100), apepat varchar(50), apemat varchar(50), idgenero int(2), idestadocivil int(2))
BEGIN
	
	INSERT INTO persona_natural(persona_natural.idpersona,
															persona_natural.nombres,
															persona_natural.apepat,
															persona_natural.apemat,
															persona_natural.idgenero,
															persona_natural.idestadocivil)
	VALUES (idpersona, nombres, apepat, apemat, idgenero, idestadocivil);

	SELECT LAST_INSERT_ID() AS idpersonanatural;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_personatelefono`(idtipotelefono int(11), idpersona int(11), numero varchar(20), estado int(2))
BEGIN
	DECLARE item_ INT;

	SELECT IFNULL(MAX(persona_telefono.item), 0) + 1 INTO item_
	FROM persona_telefono
	WHERE persona_telefono.idpersona = idpersona
	AND persona_telefono.idtipotelefono = idtipotelefono
	;
	
	INSERT INTO persona_telefono (persona_telefono.idtipotelefono,
																persona_telefono.idpersona,
																persona_telefono.item,
																persona_telefono.numero,
																persona_telefono.estado)
	VALUES (idtipotelefono, idpersona, item_, numero, estado);

	SELECT LAST_INSERT_ID() AS idpersonatelefono;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_prueba`(Nombres VARCHAR(255),Apellidos VARCHAR(255) )
BEGIN
	INSERT INTO  prueba(	
		prueba.id ,
		prueba.Nombres,
		prueba.Apellidos
	)
	VALUES(		
		null, 
		Nombres,
		Apellidos
	);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_relacion`(idpersonaindep int(11), idtiporelacion int(11), idpersonadepen int(11), registro datetime, referencia varchar(50), estado int(2))
BEGIN
	
	INSERT INTO relacion (relacion.idpersonaindep,
												relacion.idtiporelacion,
												relacion.idpersonadepen,
												relacion.registro,
												relacion.referencia,
												relacion.estado)
	VALUES (idpersonaindep, idtiporelacion, idpersonadepen, registro, referencia, estado);

	SELECT LAST_INSERT_ID() AS idrelacion;

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_usuario`(idpersona int(11), idrol int(11), idtiporelacion int(11), usuario varchar(45), clave varchar(45), fecha date, estado int(2))
BEGIN
	
	INSERT INTO usuario(usuario.idpersona,
											usuario.idrol,
											usuario.idtiporelacion,
											usuario.usuario,
											usuario.clave,
											usuario.fecha,
											usuario.estado)
	VALUES (idpersona, idrol, idtiporelacion, usuario, clave, fecha, estado);

	SELECT LAST_INSERT_ID() AS idusuario;

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_vehiculo`(idtipovehiculo int(11), idpersona int(11), placa varchar(45), modelo varchar(45), observacion varchar(50), color varchar(50), marca varchar(50), consumo decimal, registro datetime, estado int(2))
BEGIN
	
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
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_upd_persona`(idpersona int(11), nombre varchar(100), nacimiento date)
BEGIN
	
	UPDATE persona
	SET persona.nombre = nombre,
					persona.nacimiento = nacimiento
	WHERE persona.idpersona = idpersona
	;

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_upd_personacorreo_set_correo_by_idpersona_and_idtipocorreo`(idpersona int(11), idtipocorreo int(11), correo varchar(50))
BEGIN
	
	UPDATE persona_correo
	SET persona_correo.correo = correo
	WHERE persona_correo.idpersona = idpersona
	AND persona_correo.idtipocorreo = idtipocorreo
	;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_upd_personadocumento_set_numero_by_idpersona_and_idtipodoc`(idpersona int(11), idtipodocumento int(11), numero varchar(50))
BEGIN
	
	UPDATE persona_documento
	SET persona_documento.numero = numero
	WHERE persona_documento.idpersona = idpersona
	AND persona_documento.idtipodocumento = idtipodocumento
	;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_upd_personanatural`(idpersona int(11), nombres varchar(100), apepat varchar(50), apemat varchar(50), idgenero int(2), idestadocivil int(2))
BEGIN
	
	UPDATE persona_natural
	SET persona_natural.nombres = nombres,
					persona_natural.apepat = apepat,
					persona_natural.apemat = apemat,
					persona_natural.idgenero = idgenero,
					persona_natural.idestadocivil = idestadocivil
	WHERE persona_natural.idpersona = idpersona
;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_upd_personatelefono_set_numero_by_idpersona_idtipotelefono`(idpersona int(11), idtipotelefono int(11), numero varchar(20))
BEGIN
	
	UPDATE persona_telefono
	SET persona_telefono.numero = numero
	WHERE persona_telefono.idpersona = idpersona
	AND persona_telefono.idtipotelefono = idtipotelefono
	;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_upd_prueba`( id int(11),Nombres varchar(255),Apellidos varchar(255) )
BEGIN
	UPDATE prueba SET		
		prueba.Nombres = Nombres,
		prueba.Apellidos = Apellidos
	WHERE prueba.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_upd_vehiculo`(idvehiculo int(11), idtipovehiculo int(11), placa varchar(45), modelo varchar(45), observacion varchar(45), color varchar(45), marca varchar(45), consumo decimal)
BEGIN
	
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
	
END$$

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

	

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_validar_registro_vehiculo`(placa varchar(50), idvehiculo int(11))
BEGIN
	
	SELECT vehiculo.idvehiculo, vehiculo.placa
	FROM vehiculo
	WHERE vehiculo.placa = placa
	AND vehiculo.idvehiculo <> idvehiculo
	LIMIT 1
	;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_validate_personacorreo`(idpersona int(11), idtipocorreo int(11), correo varchar(50))
BEGIN
	
	SELECT persona_correo.idpersona, persona_correo.correo
	FROM persona_correo
	WHERE persona_correo.idpersona <> idpersona
	AND persona_correo.idtipocorreo = idtipocorreo
	AND persona_correo.correo = correo
	LIMIT 1
	;

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_validate_personadocumento`(idpersona int(11), idtipodocumento int(11), numero varchar(20))
BEGIN
	
	SELECT persona_documento.idpersona, persona_documento.numero
	FROM persona_documento
	WHERE persona_documento.idpersona <> idpersona
	AND persona_documento.idtipodocumento = idtipodocumento
	AND persona_documento.numero = numero
	LIMIT 1
	;

	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_validate_personatelefono`(idpersona int(11), idtipotelefono int(11), numero varchar(50))
BEGIN
	
	SELECT persona_telefono.idpersona, persona_telefono.numero
	FROM persona_telefono
	WHERE persona_telefono.idpersona <> idpersona
	AND persona_telefono.idtipotelefono = idtipotelefono
	AND persona_telefono.numero = numero
	;
	
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso_sistema`
--

CREATE TABLE IF NOT EXISTS `acceso_sistema` (
`idaccesosistema` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idcontrol` int(11) NOT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='	';

--
-- Volcado de datos para la tabla `acceso_sistema`
--

INSERT INTO `acceso_sistema` (`idaccesosistema`, `idusuario`, `idcontrol`, `referencia`, `estado`) VALUES
(1, 10, 1, 'Ubicación actual', 1),
(2, 10, 2, 'Ubicación por zona', 1),
(3, 10, 3, 'Geocerca', 1),
(4, 10, 4, 'Reportes', 1),
(5, 10, 5, 'Zona norte', 1),
(6, 10, 6, 'Zona centro', 1),
(7, 10, 7, 'Zona sur', 1),
(8, 10, 8, 'Consumo de combustible', 1),
(9, 10, 9, 'Recorrido por horas', 1),
(10, 10, 10, 'Botón de pánico', 1),
(11, 10, 11, 'Herramientas', 1),
(12, 10, 12, '1', 1),
(13, 10, 13, '2', 1),
(14, 10, 14, '3', 1),
(15, 10, 15, '4', 1),
(16, 10, 16, '-', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso_vehiculo`
--

CREATE TABLE IF NOT EXISTS `acceso_vehiculo` (
`idaccesovehiculo` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idvehiculo` int(11) NOT NULL,
  `observacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activar`
--

CREATE TABLE IF NOT EXISTS `activar` (
`idactivar` int(11) NOT NULL,
  `idgps` int(11) NOT NULL,
  `idchip` int(11) NOT NULL,
  `registro` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE IF NOT EXISTS `bitacora` (
`idbitacora` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idtipooperacion` int(11) DEFAULT NULL,
  `registro` datetime NOT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambio`
--

CREATE TABLE IF NOT EXISTS `cambio` (
`idcambio` int(11) NOT NULL,
  `idmoneda` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `valor` decimal(10,0) NOT NULL COMMENT 'http://www.sbs.gob.pe/',
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristica`
--

CREATE TABLE IF NOT EXISTS `caracteristica` (
`idcaracteristica` int(11) NOT NULL,
  `idtipocaracteristica` int(11) NOT NULL,
  `idtipoentidad` int(11) NOT NULL,
  `identidad` int(11) NOT NULL,
  `caracteristica` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `referencia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cellocator`
--

CREATE TABLE IF NOT EXISTS `cellocator` (
`idrastreo` int(11) NOT NULL,
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
  `ItemId` mediumtext COLLATE utf8_spanish_ci
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cellocator`
--

INSERT INTO `cellocator` (`idrastreo`, `RMUId`, `CellDateTime`, `GPSX`, `GPSY`, `GPSDateTime`, `Speed`, `Direction`, `NumOfSat`, `LocQuality`, `EngineOn`, `ExtInputA`, `ExtInputB`, `ExtInputC`, `ExtInputD`, `ExtInputE`, `ExtInputF`, `VersionNum`, `IP`, `InputVoltage`, `BackBatVoltage`, `GPSPDOP`, `GPSHEIGHT`, `NetworkTypeId`, `InsertDate`, `UTCTime`, `DriverId`, `TxReasonId`, `AlertReason`, `Hibernation`, `HRNetwork`, `MileCounter`, `GPSMode1`, `GPSMode2`, `OutputA`, `OutputB`, `OutputC`, `OutputD`, `OptionalInput`, `GPSCommStatus`, `RawData`, `PLMN`, `SN`, `MessageType`, `MsgProtocol`, `TripId`, `ManeuverId`, `ManeuverUsage`, `AccidentBuffer`, `ItemId`) VALUES
(1, '812567', '2015-01-12 16:01:59', -80, -7, '2015-01-12 21:01:00', 0, 0, 15, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 29, 0, '2015-01-12 16:01:59', '2015-01-12 21:01:59', '-1', 32, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a14542104101700200063800000ba6300ffb600000000000000000041650104020ff5f1b1f7e08f4bff540b00000100000000003b01150c01df07c3', 23, 20, 0, -1, -1, -1, -1, -1, '-1'),
(2, '812567', '2015-01-12 16:01:59', -80, -7, '2015-01-12 21:01:00', 0, 0, 15, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 29, 0, '2015-01-12 16:01:59', '2015-01-12 21:01:59', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a15542104101700460063800001ba6300ffb600000000000000000041650104020ff5f1b1f7e08f4bff540b00000100000000003b01150c01df07eb', 23, 21, 0, -1, -1, -1, -1, -1, '-1'),
(3, '812567', '2015-01-12 16:02:10', -80, -7, '2015-01-12 21:02:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 29, 0, '2015-01-12 16:02:10', '2015-01-12 21:02:09', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a16542104101700460063800000ba6300ffb600000000000000000042650104020ef5f1b1f7e08f4bff540b00000000000000000902150c01df07b9', 23, 22, 0, -1, -1, -1, -1, -1, '-1'),
(4, '812567', '2015-01-12 16:03:11', -80, -7, '2015-01-12 21:03:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:03:11', '2015-01-12 21:03:11', '-1', 32, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a1e542104101700200063800000ba6300ffb600000000000000000043650104020efef1b1f7ef8f4bffb80b00000300000000000b03150c01df071e', 23, 30, 0, -1, -1, -1, -1, -1, '-1'),
(5, '812567', '2015-01-12 16:03:12', -80, -7, '2015-01-12 21:03:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:03:12', '2015-01-12 21:03:11', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a1f542104101700460063800000ba6300ffb600000000000000000043650104020efef1b1f7ef8f4bffb80b00000300000000000b03150c01df0745', 23, 31, 0, -1, -1, -1, -1, -1, '-1'),
(6, '812567', '2015-01-12 16:03:22', -80, -7, '2015-01-12 21:03:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:03:22', '2015-01-12 21:03:21', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a20542104101700460063800000ba6300ffb600000000000000000043650104020efef1b1f7ef8f4bffb80b00000200000000001503150c01df074f', 23, 32, 0, -1, -1, -1, -1, -1, '-1'),
(7, '812567', '2015-01-12 16:03:40', -80, -7, '2015-01-12 21:03:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 1, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:03:40', '2015-01-12 21:03:39', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a21542104101700460023800001ba6300ffb600000000000000000043650104020efcf1b1f7f38f4bffb80b00000400000000002703150c01df0727', 23, 33, 0, -1, -1, -1, -1, -1, '-1'),
(8, '812567', '2015-01-12 16:03:41', -80, -7, '2015-01-12 21:03:00', 0, 0, 13, -1, 0, 0, 1, 1, 0, 0, 1, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:03:41', '2015-01-12 21:03:40', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a22542104101700460023800000ba6300ffb600000000000000000043650104020dfcf1b1f7f38f4bffb80b00000300000000002803150c01df0726', 23, 34, 0, -1, -1, -1, -1, -1, '-1'),
(9, '812567', '2015-01-12 16:03:42', -80, -7, '2015-01-12 21:03:00', 0, 0, 12, -1, 0, 0, 1, 1, 0, 0, 1, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:03:42', '2015-01-12 21:03:42', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a23542104101700460023800000ba6300ffb600000000000000000043650104020cfcf1b1f7f38f4bffb80b00000400000000002a03150c01df0729', 23, 35, 0, -1, -1, -1, -1, -1, '-1'),
(10, '812567', '2015-01-12 16:03:43', -80, -7, '2015-01-12 21:03:00', 0, 0, 12, -1, 0, 0, 1, 1, 0, 0, 1, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:03:43', '2015-01-12 21:03:42', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a24542104101700460023800000ba6300ffb600000000000000000043650104020cfcf1b1f7f38f4bffb80b00000300000000002a03150c01df0729', 23, 36, 0, -1, -1, -1, -1, -1, '-1'),
(11, '812567', '2015-01-12 16:03:43', -80, -7, '2015-01-12 21:03:00', 0, 0, 12, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11529, 0, -1, 30, 0, '2015-01-12 16:03:43', '2015-01-12 21:03:43', '-1', 32, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a25542104101700200063800001ba6200ffb600000000000000000043650104020cfcf1b1f7f38f4bffb80b00000300000000002b03150c01df0745', 23, 37, 0, -1, -1, -1, -1, -1, '-1'),
(12, '812567', '2015-01-12 16:03:54', -80, -7, '2015-01-12 21:03:00', 0, 0, 13, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:03:54', '2015-01-12 21:03:53', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a26542104101700460063800000ba6300ffb600000000000000000043650104020dfcf1b1f7f38f4bffb80b00000200000000003503150c01df0776', 23, 38, 0, -1, -1, -1, -1, -1, '-1'),
(13, '812567', '2015-01-12 16:04:04', -80, -7, '2015-01-12 21:04:00', 0, 0, 15, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:04:04', '2015-01-12 21:04:03', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a27542104101700460063800000ba6300ffb600000000000000000044650104020ffcf1b1f7f38f4bffb80b00000300000000000304150c01df074a', 23, 39, 0, -1, -1, -1, -1, -1, '-1'),
(14, '812567', '2015-01-12 16:04:14', -80, -7, '2015-01-12 21:04:00', 0, 0, 15, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:04:14', '2015-01-12 21:04:13', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a28542104101700460063800000ba6300ffb600000000000000000044650104020ffcf1b1f7f38f4bffb80b00000200000000000d04150c01df0754', 23, 40, 0, -1, -1, -1, -1, -1, '-1'),
(15, '812567', '2015-01-12 16:04:15', -80, -7, '2015-01-12 21:04:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:04:15', '2015-01-12 21:04:15', '-1', 32, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a29542104101700200063800000ba6300ffb600000000000000000044650104020efcf1b1f7f38f4bffb80b00000000000000000f04150c01df072e', 23, 41, 0, -1, -1, -1, -1, -1, '-1'),
(16, '812567', '2015-01-12 16:04:19', -80, -7, '2015-01-12 21:04:00', 0, 0, 15, -1, 0, 0, 1, 1, 0, 0, 1, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:04:19', '2015-01-12 21:04:18', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a2a542104101700460023800000ba6300ffb600000000000000000044650104020ffcf1b1f7f38f4bffb80b00000300000000001204150c01df071c', 23, 42, 0, -1, -1, -1, -1, -1, '-1'),
(17, '812567', '2015-01-12 16:04:20', -80, -7, '2015-01-12 21:04:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 1, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:04:20', '2015-01-12 21:04:20', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a2b542104101700460023800000ba6300ffb600000000000000000044650104020ef7f1b1f7fa8f4bffb80b00000000000000001404150c01df071d', 23, 43, 0, -1, -1, -1, -1, -1, '-1'),
(18, '812567', '2015-01-12 16:04:22', -80, -7, '2015-01-12 21:04:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 1, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:04:22', '2015-01-12 21:04:21', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a2c542104101700460023800000ba6300ffb600000000000000000044650104020ef7f1b1f7fa8f4bffb80b00000000000000001504150c01df071f', 23, 44, 0, -1, -1, -1, -1, -1, '-1'),
(19, '812567', '2015-01-12 16:04:29', -80, -7, '2015-01-12 21:04:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 1, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:04:29', '2015-01-12 21:04:23', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a2d542104101700460023800000ba6300ffb600000000000000000044650104020ef7f1b1f7fa8f4bffb80b00000000000000001704150c01df0722', 23, 45, 0, -1, -1, -1, -1, -1, '-1'),
(20, '812567', '2015-01-12 16:04:29', -80, -7, '2015-01-12 21:04:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:04:29', '2015-01-12 21:04:28', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a2e542104101700460063800000ba6300ffb600000000000000000044650104020ef7f1b1f7fa8f4bffb80b00000100000000001c04150c01df0769', 23, 46, 0, -1, -1, -1, -1, -1, '-1'),
(21, '812567', '2015-01-12 16:04:30', -80, -7, '2015-01-12 21:04:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 1, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:04:30', '2015-01-12 21:04:29', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a2f542104101700460023800000ba6300ffb600000000000000000044650104020ef7f1b1f7fa8f4bffb80b00000200000000001d04150c01df072c', 23, 47, 0, -1, -1, -1, -1, -1, '-1'),
(22, '812567', '2015-01-12 16:04:31', -80, -7, '2015-01-12 21:04:00', 0, 0, 13, -1, 0, 0, 1, 1, 0, 0, 1, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:04:31', '2015-01-12 21:04:30', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a30542104101700460023800000ba6300ffb600000000000000000044650104020df7f1b1f7fa8f4bffb80b00000200000000001e04150c01df072d', 23, 48, 0, -1, -1, -1, -1, -1, '-1'),
(23, '812567', '2015-01-12 16:04:41', -80, -7, '2015-01-12 21:04:00', 0, 0, 14, -1, 0, 0, 1, 1, 0, 0, 0, 'Hw:<1010100> Sw:<33>', '190.113.209.123', 11647, 0, -1, 30, 0, '2015-01-12 16:04:41', '2015-01-12 21:04:40', '-1', 70, -1, -1, -1, 0, 4, 2, 0, -1, 0, 0, -1, 0, '4d4347500017660c00000a31542104101700460063800000ba6300ffb600000000000000000044650104020ef7f1b1f7fa8f4bffb80b00000100000000002804150c01df0778', 23, 49, 0, -1, -1, -1, -1, -1, '-1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chip`
--

CREATE TABLE IF NOT EXISTS `chip` (
`idchip` int(11) NOT NULL,
  `idplan` int(11) DEFAULT NULL,
  `idpersonajuridica` int(11) NOT NULL COMMENT 'codigo de la persona que es el operador movil',
  `simcard` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `numero` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante`
--

CREATE TABLE IF NOT EXISTS `comprobante` (
`idcomprobante` int(11) NOT NULL,
  `idpersonajuridica` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE IF NOT EXISTS `conductor` (
`idconductor` int(11) NOT NULL,
  `idvehiculo` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idtiporelacion` int(11) NOT NULL,
  `registro` datetime NOT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE IF NOT EXISTS `configuracion` (
`idconfiguracion` int(11) NOT NULL,
  `idtipoobjeto` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ayuda` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`idconfiguracion`, `idtipoobjeto`, `nombre`, `ayuda`, `valor`, `referencia`, `estado`) VALUES
(1, 1, 'Clave por defecto', 'Ingrese valores alfanumericos', '123+-*', 'Clave por defecto que se asigna a usuarios', 1),
(2, 2, 'Empresa principal', 'Codigo de la empresa', '1', 'Codigo de la empresa principal', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control`
--

CREATE TABLE IF NOT EXISTS `control` (
`idcontrol` int(11) NOT NULL,
  `idcontrolpadre` int(11) DEFAULT NULL,
  `idtipocontrol` int(11) DEFAULT NULL,
  `jerarquia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `control`
--

INSERT INTO `control` (`idcontrol`, `idcontrolpadre`, `idtipocontrol`, `jerarquia`, `nombre`, `valor`, `descripcion`, `estado`) VALUES
(1, 0, 2, '1001', 'Ubicación actual', '/administracion/usuario', 'icon-location', 1),
(2, 0, 2, '1002', 'Ubicación por zona', '/administracion/vehiculo', 'icon-earth', 1),
(3, 0, 2, '1003', 'Geocerca', '/administracion/menu3', 'icon-podcast', 1),
(4, 0, 2, '1004', 'Reportes', '/administracion/menu4', 'icon-file-pdf', 1),
(5, 2, 2, '100201', 'Zona norte', 'alert(''ubicacion1'');', ' ', 1),
(6, 2, 2, '100202', 'Zona centro', 'alert(''ubicacion2'');', ' ', 1),
(7, 2, 2, '100203', 'Zona sur', 'alert(''ubicacion3'');', ' ', 1),
(8, 4, 2, '100401', 'Consumo de combustible', 'alert(''reporte1'');', ' ', 1),
(9, 4, 2, '100402', 'Recorrido por horas', 'alert(''reporte2'');', ' ', 1),
(10, 4, 2, '100403', 'Botón de pánico', 'alert(''reporte3'');', ' ', 1),
(12, 0, 4, '100501', 'Mis Vehiculos', '#/vehiculo/listar', 'icon-truck', 1),
(13, 0, 4, '100502', 'Mis Usuarios', '#/usuario/listar', 'icon-user', 1),
(14, 0, 4, '100503', 'Mis Conductores', '#/conductor/listar', 'icon-user', 1),
(15, 0, 4, '100504', 'Aside nro 04', '#/', 'icon-database', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_cerca`
--

CREATE TABLE IF NOT EXISTS `control_cerca` (
`idcontrolcerca` int(11) NOT NULL,
  `idgeocerca` int(11) NOT NULL,
  `idvehiculo` int(11) NOT NULL,
  `notificar` int(11) NOT NULL,
  `registro` datetime NOT NULL COMMENT 'indicar la fecha y hora en que el vehiculo salio o ingreso de la geocerca',
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL COMMENT 'indicar si el vehiculo ingreso(1) o salio(0) de la geocerca'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctacte`
--

CREATE TABLE IF NOT EXISTS `ctacte` (
`idctacte` int(11) NOT NULL,
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
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctactecomprobante`
--

CREATE TABLE IF NOT EXISTS `ctactecomprobante` (
`idctactecomprobante` int(11) NOT NULL,
  `idctacte` int(11) DEFAULT NULL,
  `idcomprobante` int(11) DEFAULT NULL,
  `numero` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctactedetalle`
--

CREATE TABLE IF NOT EXISTS `ctactedetalle` (
`idctactedetalle` int(11) NOT NULL,
  `idctacte` int(11) NOT NULL,
  `idservicio` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `costo` decimal(10,0) NOT NULL,
  `igv` decimal(10,0) NOT NULL,
  `importe` decimal(10,0) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctactenumeracion`
--

CREATE TABLE IF NOT EXISTS `ctactenumeracion` (
`idctactenumeracion` int(11) NOT NULL,
  `idcomprobante` int(11) NOT NULL,
  `serie` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `numero` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctactepago`
--

CREATE TABLE IF NOT EXISTS `ctactepago` (
`idctactepago` int(11) NOT NULL,
  `idctacte` int(11) DEFAULT NULL,
  `idformapago` int(11) DEFAULT NULL,
  `nrooperacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechapago` datetime DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  `importe` decimal(10,0) DEFAULT NULL,
  `glosa` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctacteproducto`
--

CREATE TABLE IF NOT EXISTS `ctacteproducto` (
`idctacteproducto` int(11) NOT NULL,
  `importe` decimal(10,0) DEFAULT NULL,
  `afectoigv` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE IF NOT EXISTS `cuenta` (
`idcuenta` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idtiporelacion` int(11) NOT NULL,
  `numero` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`idcuenta`, `idpersona`, `idtiporelacion`, `numero`, `estado`) VALUES
(18, 24, 2, '20480678592', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pago`
--

CREATE TABLE IF NOT EXISTS `forma_pago` (
`idformapago` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `geocerca`
--

CREATE TABLE IF NOT EXISTS `geocerca` (
`idgeocerca` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL COMMENT 'Codigo de la persona que crea la geocerca, para este caso será el código del cliente del servicio de rastreo',
  `idtiporelacion` int(11) NOT NULL COMMENT 'Tipo de relacion de la persona con la empresa de rastreo, para este caso sera cliente',
  `coordenadas` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `referencia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gps`
--

CREATE TABLE IF NOT EXISTS `gps` (
`idgps` int(11) NOT NULL,
  `idmodelo` int(11) NOT NULL,
  `idchip` int(11) NOT NULL,
  `serie` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `hardware` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `software` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modem` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `idpersona` int(11) DEFAULT NULL COMMENT 'codigo de la persona que es cliente del servicio',
  `idtiporelacion` int(11) DEFAULT NULL COMMENT 'tipo de relacion cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='			';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
`idmarca` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE IF NOT EXISTS `modelo` (
`idmodelo` int(11) NOT NULL,
  `idmarca` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE IF NOT EXISTS `moneda` (
`idmoneda` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
`idpersona` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `nombre`, `nacimiento`, `tipo`, `estado`) VALUES
(1, 'INNOVA TI GROUP S.A.C', '2013-08-05', 2, 1),
(24, 'CATMEDIA SAC', '0000-00-00', 2, 1),
(25, 'Jose Luis ', '0000-00-00', 1, 1),
(26, 'Jose Luis Damian Saavedra.', '0000-00-00', 1, 1),
(27, 'Jose Alberto Damian Saavedra', '0000-00-00', 1, 1),
(28, 'Carlos Enrique Damian Saavedra', '0000-00-00', 1, 1),
(29, 'nombrePrueba apepatPrueba apematPrueba.', '0000-00-00', 1, 1),
(30, 'Natividad Saavedra Chavez.', '0000-00-00', 1, 1),
(43, 'Anani Diahann Ayala Paz', '0000-00-00', 1, 1),
(44, 'Juan Jose Matamoros Taype', '0000-00-00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_correo`
--

CREATE TABLE IF NOT EXISTS `persona_correo` (
`idpersonacorreo` int(11) unsigned NOT NULL,
  `idtipocorreo` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona_correo`
--

INSERT INTO `persona_correo` (`idpersonacorreo`, `idtipocorreo`, `idpersona`, `item`, `correo`, `estado`) VALUES
(10, 1, 25, 1, 'joseluis_16ds@hotmail.com', 1),
(11, 1, 26, 1, 'jlds161089@gmail.com', 1),
(12, 1, 27, 1, 'alberto_17jads@hotmail.com', 1),
(13, 1, 28, 1, 'carlos_ceds@hotmail.ocm', 1),
(14, 1, 29, 1, 'correoPrueba', 1),
(15, 1, 30, 1, 'nati_pucallpa@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_direccion`
--

CREATE TABLE IF NOT EXISTS `persona_direccion` (
`idpersonadireccion` int(11) NOT NULL,
  `idtipodireccion` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idubigeo` int(11) NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `referencia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona_direccion`
--

INSERT INTO `persona_direccion` (`idpersonadireccion`, `idtipodireccion`, `idpersona`, `idubigeo`, `direccion`, `referencia`, `estado`) VALUES
(19, 1, 24, 0, 'Los naranjos # 239 - Brisas', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_documento`
--

CREATE TABLE IF NOT EXISTS `persona_documento` (
`idpersonadocumento` int(11) NOT NULL,
  `idtipodocumento` int(11) DEFAULT NULL,
  `idpersona` int(11) NOT NULL,
  `numero` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `caducidad` date DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona_documento`
--

INSERT INTO `persona_documento` (`idpersonadocumento`, `idtipodocumento`, `idpersona`, `numero`, `caducidad`, `imagen`, `estado`) VALUES
(1, 3, 1, '20539225031', '0000-00-00', 'documento-defecto.jpg', 1),
(20, 3, 24, '20480678592', '0000-00-00', 'documento-defecto.jpg', 1),
(21, 1, 26, '46003328', '0000-00-00', 'documento-defecto.jpg', 1),
(22, 1, 27, '46003327', '0000-00-00', 'documento-defecto.jpg', 1),
(23, 1, 28, '46003326', '0000-00-00', 'documento-defecto.jpg', 1),
(24, 1, 29, '12345678', '0000-00-00', 'documento-defecto.jpg', 1),
(25, 1, 30, '40000001', '0000-00-00', 'documento-defecto.jpg', 1),
(50, 1, 43, '87654321', '0000-00-00', 'dni_43_20150110_165556.jpg', 1),
(51, 5, 43, 'Q40723053', '0000-00-00', 'brevete_43_20150110_165556.jpg', 1),
(52, 1, 44, '46003320', '0000-00-00', 'dni_44_20150110_171129.jpg', 1),
(53, 5, 44, 'VM42617113', '0000-00-00', 'brevete_44_20150110_171129.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_juridica`
--

CREATE TABLE IF NOT EXISTS `persona_juridica` (
`idpersonajuridica` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `razonsocial` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idrubro` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona_juridica`
--

INSERT INTO `persona_juridica` (`idpersonajuridica`, `idpersona`, `razonsocial`, `idrubro`) VALUES
(1, 1, 'INNOVA TI GROUP S.A.C', 0),
(21, 24, 'CATMEDIA SAC', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_natural`
--

CREATE TABLE IF NOT EXISTS `persona_natural` (
`idpersonanatural` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `nombres` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apepat` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apemat` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idgenero` int(11) DEFAULT NULL,
  `idestadocivil` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona_natural`
--

INSERT INTO `persona_natural` (`idpersonanatural`, `idpersona`, `nombres`, `apepat`, `apemat`, `idgenero`, `idestadocivil`) VALUES
(1, 25, 'Jose Luis', 'Damián', 'Saavedra', 0, 0),
(2, 26, 'Jose Luis', 'Damian', 'Saavedra.', 0, 0),
(3, 27, 'Jose Alberto', 'Damian', 'Saavedra', 0, 0),
(4, 28, 'Carlos Enrique', 'Damian', 'Saavedra', 0, 0),
(5, 29, 'nombrePrueba', 'apepatPrueba', 'apematPrueba.', 0, 0),
(6, 30, 'Natividad', 'Saavedra', 'Chavez.', 0, 0),
(19, 43, 'Anani Diahann', 'Ayala', 'Paz', 0, 0),
(20, 44, 'Juan Jose', 'Matamoros', 'Taype', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_telefono`
--

CREATE TABLE IF NOT EXISTS `persona_telefono` (
`idpersonatelefono` int(11) NOT NULL,
  `idtipotelefono` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `numero` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona_telefono`
--

INSERT INTO `persona_telefono` (`idpersonatelefono`, `idtipotelefono`, `idpersona`, `item`, `numero`, `estado`) VALUES
(40, 1, 24, 1, '061-574814', 1),
(41, 4, 24, 1, '061-574841', 1),
(42, 2, 25, 1, '992703459', 1),
(43, 2, 26, 1, '992703459', 1),
(44, 2, 27, 1, '961088007', 1),
(45, 2, 28, 1, '961920220', 1),
(46, 2, 29, 1, 'telefonoPrueba', 1),
(47, 2, 30, 1, '961088000', 1),
(60, 2, 43, 1, '123456789', 1),
(61, 2, 44, 1, '961088001', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_web`
--

CREATE TABLE IF NOT EXISTS `persona_web` (
`idpersonaweb` int(11) NOT NULL,
  `idtipoweb` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `url` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE IF NOT EXISTS `plan` (
`idplan` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba`
--

CREATE TABLE IF NOT EXISTS `prueba` (
`id` int(11) unsigned NOT NULL,
  `Nombres` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellidos` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `prueba`
--

INSERT INTO `prueba` (`id`, `Nombres`, `Apellidos`) VALUES
(2, 'armando ssssss', 'enrique'),
(3, 'armando dsfasd', 'enrique asdfasdf'),
(4, 'ARMANDO', 'ARMANDO DSVASDFASD'),
(5, 'Maria', 'Pisfil'),
(6, 'Maria asdasd', 'Pisfil'),
(7, 'Eloisa Maribel', 'Flores Flores'),
(8, 'Marcos sdzd', 'Pizarro sdfasd'),
(9, 'armado asdfasdf', 'enrique asdfasdf'),
(10, 'armand', 'armando'),
(11, 'juand peres', 'Pisfil Puemape'),
(12, 'sdsdfgsdf', 'gsdfgsdf argsdfgsdfg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion`
--

CREATE TABLE IF NOT EXISTS `relacion` (
`idrelacion` int(11) NOT NULL,
  `idpersonaindep` int(11) NOT NULL,
  `idtiporelacion` int(11) NOT NULL,
  `idpersonadepen` int(11) NOT NULL,
  `registro` datetime NOT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `relacion`
--

INSERT INTO `relacion` (`idrelacion`, `idpersonaindep`, `idtiporelacion`, `idpersonadepen`, `registro`, `referencia`, `estado`) VALUES
(18, 1, 2, 24, '2014-12-26 22:36:27', 'cliente', 1),
(19, 24, 3, 25, '2014-12-26 22:36:27', 'usuario', 1),
(20, 24, 3, 26, '2015-01-06 23:08:37', 'usuario', 1),
(21, 24, 3, 27, '2015-01-06 23:19:57', 'usuario', 1),
(22, 24, 3, 28, '2015-01-06 23:52:26', 'usuario', 1),
(23, 24, 3, 29, '2015-01-07 00:32:37', 'usuario', 1),
(24, 24, 3, 30, '2015-01-07 14:29:59', 'usuario', 1),
(37, 24, 4, 43, '2015-01-10 16:55:56', 'conductor', 1),
(38, 24, 4, 44, '2015-01-10 17:11:29', 'conductor', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
`idrol` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombre`, `estado`) VALUES
(1, 'Administrador', 1),
(2, 'Super Usuario Cliente', 1),
(3, 'Sub Usuario Cliente', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_control`
--

CREATE TABLE IF NOT EXISTS `rol_control` (
`idrolcontrol` int(11) NOT NULL,
  `idrol` int(11) DEFAULT NULL,
  `idcontrol` int(11) DEFAULT NULL,
  `referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol_control`
--

INSERT INTO `rol_control` (`idrolcontrol`, `idrol`, `idcontrol`, `referencia`, `estado`) VALUES
(1, 1, 1, '-', 1),
(2, 1, 2, '-', 1),
(3, 1, 3, '-', 1),
(4, 1, 4, '-', 1),
(5, 1, 5, '-', 1),
(6, 1, 6, '-', 1),
(7, 1, 7, '-', 1),
(8, 1, 8, '-', 1),
(9, 1, 9, '-', 1),
(10, 1, 10, '-', 1),
(11, 1, 11, '-', 1),
(12, 1, 12, '-', 1),
(13, 1, 13, '-', 1),
(14, 1, 14, '-', 1),
(15, 1, 15, '-', 1),
(16, 1, 16, '-', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_contratado`
--

CREATE TABLE IF NOT EXISTS `servicio_contratado` (
`idserviciocontratado` int(11) NOT NULL,
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
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_caracteristica`
--

CREATE TABLE IF NOT EXISTS `tipo_caracteristica` (
`idtipocaracteristica` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_control`
--

CREATE TABLE IF NOT EXISTS `tipo_control` (
`idtipocontrol` int(11) unsigned NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_control`
--

INSERT INTO `tipo_control` (`idtipocontrol`, `nombre`, `estado`) VALUES
(1, 'Modulo', 1),
(2, 'Menu', 1),
(3, 'Seccion', 1),
(4, 'Boton', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_correo`
--

CREATE TABLE IF NOT EXISTS `tipo_correo` (
`idtipocorreo` int(11) unsigned NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_correo`
--

INSERT INTO `tipo_correo` (`idtipocorreo`, `nombre`, `estado`) VALUES
(1, 'Correo Personal', 1),
(2, 'Correo Coorporativo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_direccion`
--

CREATE TABLE IF NOT EXISTS `tipo_direccion` (
`idtipodireccion` int(11) unsigned NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_direccion`
--

INSERT INTO `tipo_direccion` (`idtipodireccion`, `nombre`, `estado`) VALUES
(1, 'Direccion Fiscal', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE IF NOT EXISTS `tipo_documento` (
`idtipodocumento` int(11) NOT NULL,
  `codigosunat` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`idtipodocumento`, `codigosunat`, `nombre`, `estado`) VALUES
(1, '1', 'DOCUMENTO NACIONAL DE IDENTIDAD (DNI)', 1),
(2, '4', 'CARNET DE EXTRANJERIA', 1),
(3, '6', 'REGISTRO UNICO DE CONTRIBUYENTES (RUC)', 1),
(4, '7', 'PASAPORTE', 1),
(5, '0', 'BREVETE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_entidad`
--

CREATE TABLE IF NOT EXISTS `tipo_entidad` (
`idtipoentidad` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_objeto`
--

CREATE TABLE IF NOT EXISTS `tipo_objeto` (
`idtipoobjeto` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_objeto`
--

INSERT INTO `tipo_objeto` (`idtipoobjeto`, `nombre`, `estado`) VALUES
(1, 'Caja de texto', 1),
(2, 'Lista desplegable', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_operacion`
--

CREATE TABLE IF NOT EXISTS `tipo_operacion` (
`idtipooperacion` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_relacion`
--

CREATE TABLE IF NOT EXISTS `tipo_relacion` (
`idtiporelacion` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_relacion`
--

INSERT INTO `tipo_relacion` (`idtiporelacion`, `nombre`, `estado`) VALUES
(1, 'Empleado Transcarga', 1),
(2, 'Cliente', 1),
(3, 'Usuario', 1),
(4, 'Conductor', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicio`
--

CREATE TABLE IF NOT EXISTS `tipo_servicio` (
`idtiposervicio` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_telefono`
--

CREATE TABLE IF NOT EXISTS `tipo_telefono` (
`idtipotelefono` int(11) unsigned NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_telefono`
--

INSERT INTO `tipo_telefono` (`idtipotelefono`, `nombre`, `estado`) VALUES
(1, 'Telefono Fijo', 1),
(2, 'Telefono Mobil', 1),
(3, '-', 1),
(4, 'Fax', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vehiculo`
--

CREATE TABLE IF NOT EXISTS `tipo_vehiculo` (
`idtipovehiculo` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_vehiculo`
--

INSERT INTO `tipo_vehiculo` (`idtipovehiculo`, `nombre`, `estado`) VALUES
(1, 'Camion', 1),
(2, 'Remolque', 1),
(3, 'Autobus', 1),
(4, 'Automóvil', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_web`
--

CREATE TABLE IF NOT EXISTS `tipo_web` (
  `idtipoweb` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubigeo`
--

CREATE TABLE IF NOT EXISTS `ubigeo` (
`idubigeo` int(11) NOT NULL,
  `codigo` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `lugar` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `longitud` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `latitud` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`idusuario` int(11) unsigned NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idrol` int(11) NOT NULL,
  `idtiporelacion` int(11) NOT NULL,
  `usuario` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `idpersona`, `idrol`, `idtiporelacion`, `usuario`, `clave`, `fecha`, `estado`) VALUES
(10, 25, 2, 3, 'jlds161089@gmail.com', 'b4beb5d29b563037de1d1759e43fadb5', '2014-12-26', 1),
(11, 26, 3, 3, 'joseluis_16ds@hotmail.com', 'b4beb5d29b563037de1d1759e43fadb5', '2015-01-06', 1),
(12, 27, 3, 3, 'alberto_17jads@hotmail.com', 'b4beb5d29b563037de1d1759e43fadb5', '2015-01-06', 1),
(13, 28, 3, 3, 'carlos_ceds@hotmail.com', 'b4beb5d29b563037de1d1759e43fadb5', '2015-01-06', 1),
(14, 29, 3, 3, '', 'b4beb5d29b563037de1d1759e43fadb5', '2015-01-07', 1),
(15, 30, 3, 3, 'nati_pucallpa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2015-01-07', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE IF NOT EXISTS `vehiculo` (
`idvehiculo` int(11) NOT NULL,
  `idtipovehiculo` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `placa` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modelo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `marca` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `consumo` decimal(8,2) DEFAULT NULL,
  `registro` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`idvehiculo`, `idtipovehiculo`, `idpersona`, `placa`, `modelo`, `observacion`, `color`, `marca`, `consumo`, `registro`, `estado`) VALUES
(1, 4, 24, 'abc-123', 'yaris', 'gas y gasolina', 'rojo', 'toyota', '25.00', '2015-01-06 05:48:09', 1),
(2, 4, 24, '123-abc', 'rio', 'gasolina', 'gris', 'kia', '30.00', '2015-01-06 06:07:16', 1),
(3, 4, 24, '46003328-abc', 'sportage', 'gasolina y mecanico', 'rojo y negro', 'kia', '15.00', '2015-01-06 03:19:35', 1),
(4, 4, 24, '46003328-aei', 'yaris', 'gasolina', 'purpura', 'toyota', '30.00', '2015-01-06 03:20:28', 1),
(23, 4, 24, 'jlds-123', 'jl', 'ninguno', 'rojo', 'chip', '10.00', '2015-01-06 07:15:18', 1),
(24, 2, 24, 'uss-2015-i', 'uss', 'uss', 'uss', 'uss', '2015.00', '2015-01-06 07:15:41', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo_ubicacion`
--

CREATE TABLE IF NOT EXISTS `vehiculo_ubicacion` (
`idvehiculoubicacion` int(11) NOT NULL,
  `idvehiculo` int(11) NOT NULL,
  `coordenada` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ubigeo` varchar(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso_sistema`
--
ALTER TABLE `acceso_sistema`
 ADD PRIMARY KEY (`idaccesosistema`,`idcontrol`);

--
-- Indices de la tabla `acceso_vehiculo`
--
ALTER TABLE `acceso_vehiculo`
 ADD PRIMARY KEY (`idaccesovehiculo`);

--
-- Indices de la tabla `activar`
--
ALTER TABLE `activar`
 ADD PRIMARY KEY (`idactivar`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
 ADD PRIMARY KEY (`idbitacora`);

--
-- Indices de la tabla `cambio`
--
ALTER TABLE `cambio`
 ADD PRIMARY KEY (`idcambio`);

--
-- Indices de la tabla `caracteristica`
--
ALTER TABLE `caracteristica`
 ADD PRIMARY KEY (`idcaracteristica`);

--
-- Indices de la tabla `cellocator`
--
ALTER TABLE `cellocator`
 ADD PRIMARY KEY (`idrastreo`);

--
-- Indices de la tabla `chip`
--
ALTER TABLE `chip`
 ADD PRIMARY KEY (`idchip`);

--
-- Indices de la tabla `comprobante`
--
ALTER TABLE `comprobante`
 ADD PRIMARY KEY (`idcomprobante`);

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
 ADD PRIMARY KEY (`idconductor`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
 ADD PRIMARY KEY (`idconfiguracion`);

--
-- Indices de la tabla `control`
--
ALTER TABLE `control`
 ADD PRIMARY KEY (`idcontrol`);

--
-- Indices de la tabla `control_cerca`
--
ALTER TABLE `control_cerca`
 ADD PRIMARY KEY (`idcontrolcerca`);

--
-- Indices de la tabla `ctacte`
--
ALTER TABLE `ctacte`
 ADD PRIMARY KEY (`idctacte`);

--
-- Indices de la tabla `ctactecomprobante`
--
ALTER TABLE `ctactecomprobante`
 ADD PRIMARY KEY (`idctactecomprobante`);

--
-- Indices de la tabla `ctactedetalle`
--
ALTER TABLE `ctactedetalle`
 ADD PRIMARY KEY (`idctactedetalle`);

--
-- Indices de la tabla `ctactenumeracion`
--
ALTER TABLE `ctactenumeracion`
 ADD PRIMARY KEY (`idctactenumeracion`);

--
-- Indices de la tabla `ctactepago`
--
ALTER TABLE `ctactepago`
 ADD PRIMARY KEY (`idctactepago`);

--
-- Indices de la tabla `ctacteproducto`
--
ALTER TABLE `ctacteproducto`
 ADD PRIMARY KEY (`idctacteproducto`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
 ADD PRIMARY KEY (`idcuenta`);

--
-- Indices de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
 ADD PRIMARY KEY (`idformapago`);

--
-- Indices de la tabla `geocerca`
--
ALTER TABLE `geocerca`
 ADD PRIMARY KEY (`idgeocerca`);

--
-- Indices de la tabla `gps`
--
ALTER TABLE `gps`
 ADD PRIMARY KEY (`idgps`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
 ADD PRIMARY KEY (`idmarca`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
 ADD PRIMARY KEY (`idmodelo`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
 ADD PRIMARY KEY (`idmoneda`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
 ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `persona_correo`
--
ALTER TABLE `persona_correo`
 ADD PRIMARY KEY (`idpersonacorreo`);

--
-- Indices de la tabla `persona_direccion`
--
ALTER TABLE `persona_direccion`
 ADD PRIMARY KEY (`idpersonadireccion`);

--
-- Indices de la tabla `persona_documento`
--
ALTER TABLE `persona_documento`
 ADD PRIMARY KEY (`idpersonadocumento`);

--
-- Indices de la tabla `persona_juridica`
--
ALTER TABLE `persona_juridica`
 ADD PRIMARY KEY (`idpersonajuridica`);

--
-- Indices de la tabla `persona_natural`
--
ALTER TABLE `persona_natural`
 ADD PRIMARY KEY (`idpersonanatural`);

--
-- Indices de la tabla `persona_telefono`
--
ALTER TABLE `persona_telefono`
 ADD PRIMARY KEY (`idpersonatelefono`);

--
-- Indices de la tabla `persona_web`
--
ALTER TABLE `persona_web`
 ADD PRIMARY KEY (`idpersonaweb`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
 ADD PRIMARY KEY (`idplan`);

--
-- Indices de la tabla `prueba`
--
ALTER TABLE `prueba`
 ADD KEY `index_id` (`id`);

--
-- Indices de la tabla `relacion`
--
ALTER TABLE `relacion`
 ADD PRIMARY KEY (`idrelacion`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
 ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `rol_control`
--
ALTER TABLE `rol_control`
 ADD PRIMARY KEY (`idrolcontrol`);

--
-- Indices de la tabla `servicio_contratado`
--
ALTER TABLE `servicio_contratado`
 ADD PRIMARY KEY (`idserviciocontratado`);

--
-- Indices de la tabla `tipo_caracteristica`
--
ALTER TABLE `tipo_caracteristica`
 ADD PRIMARY KEY (`idtipocaracteristica`);

--
-- Indices de la tabla `tipo_control`
--
ALTER TABLE `tipo_control`
 ADD PRIMARY KEY (`idtipocontrol`);

--
-- Indices de la tabla `tipo_correo`
--
ALTER TABLE `tipo_correo`
 ADD PRIMARY KEY (`idtipocorreo`);

--
-- Indices de la tabla `tipo_direccion`
--
ALTER TABLE `tipo_direccion`
 ADD PRIMARY KEY (`idtipodireccion`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
 ADD PRIMARY KEY (`idtipodocumento`);

--
-- Indices de la tabla `tipo_entidad`
--
ALTER TABLE `tipo_entidad`
 ADD PRIMARY KEY (`idtipoentidad`);

--
-- Indices de la tabla `tipo_objeto`
--
ALTER TABLE `tipo_objeto`
 ADD PRIMARY KEY (`idtipoobjeto`);

--
-- Indices de la tabla `tipo_operacion`
--
ALTER TABLE `tipo_operacion`
 ADD PRIMARY KEY (`idtipooperacion`);

--
-- Indices de la tabla `tipo_relacion`
--
ALTER TABLE `tipo_relacion`
 ADD PRIMARY KEY (`idtiporelacion`);

--
-- Indices de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
 ADD PRIMARY KEY (`idtiposervicio`);

--
-- Indices de la tabla `tipo_telefono`
--
ALTER TABLE `tipo_telefono`
 ADD PRIMARY KEY (`idtipotelefono`);

--
-- Indices de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
 ADD PRIMARY KEY (`idtipovehiculo`);

--
-- Indices de la tabla `tipo_web`
--
ALTER TABLE `tipo_web`
 ADD PRIMARY KEY (`idtipoweb`);

--
-- Indices de la tabla `ubigeo`
--
ALTER TABLE `ubigeo`
 ADD PRIMARY KEY (`idubigeo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
 ADD PRIMARY KEY (`idvehiculo`,`estado`), ADD KEY `fk_idtipovehiculo_vehiculo_idx` (`idtipovehiculo`), ADD KEY `fk_idpersona_vehiculo_idx` (`idpersona`);

--
-- Indices de la tabla `vehiculo_ubicacion`
--
ALTER TABLE `vehiculo_ubicacion`
 ADD PRIMARY KEY (`idvehiculoubicacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso_sistema`
--
ALTER TABLE `acceso_sistema`
MODIFY `idaccesosistema` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `acceso_vehiculo`
--
ALTER TABLE `acceso_vehiculo`
MODIFY `idaccesovehiculo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `activar`
--
ALTER TABLE `activar`
MODIFY `idactivar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
MODIFY `idbitacora` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cambio`
--
ALTER TABLE `cambio`
MODIFY `idcambio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `caracteristica`
--
ALTER TABLE `caracteristica`
MODIFY `idcaracteristica` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cellocator`
--
ALTER TABLE `cellocator`
MODIFY `idrastreo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `chip`
--
ALTER TABLE `chip`
MODIFY `idchip` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `comprobante`
--
ALTER TABLE `comprobante`
MODIFY `idcomprobante` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `conductor`
--
ALTER TABLE `conductor`
MODIFY `idconductor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
MODIFY `idconfiguracion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `control`
--
ALTER TABLE `control`
MODIFY `idcontrol` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `control_cerca`
--
ALTER TABLE `control_cerca`
MODIFY `idcontrolcerca` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ctacte`
--
ALTER TABLE `ctacte`
MODIFY `idctacte` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ctactecomprobante`
--
ALTER TABLE `ctactecomprobante`
MODIFY `idctactecomprobante` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ctactedetalle`
--
ALTER TABLE `ctactedetalle`
MODIFY `idctactedetalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ctactenumeracion`
--
ALTER TABLE `ctactenumeracion`
MODIFY `idctactenumeracion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ctactepago`
--
ALTER TABLE `ctactepago`
MODIFY `idctactepago` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ctacteproducto`
--
ALTER TABLE `ctacteproducto`
MODIFY `idctacteproducto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
MODIFY `idcuenta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
MODIFY `idformapago` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `geocerca`
--
ALTER TABLE `geocerca`
MODIFY `idgeocerca` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gps`
--
ALTER TABLE `gps`
MODIFY `idgps` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
MODIFY `idmarca` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
MODIFY `idmodelo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
MODIFY `idmoneda` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `persona_correo`
--
ALTER TABLE `persona_correo`
MODIFY `idpersonacorreo` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `persona_direccion`
--
ALTER TABLE `persona_direccion`
MODIFY `idpersonadireccion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `persona_documento`
--
ALTER TABLE `persona_documento`
MODIFY `idpersonadocumento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT de la tabla `persona_juridica`
--
ALTER TABLE `persona_juridica`
MODIFY `idpersonajuridica` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `persona_natural`
--
ALTER TABLE `persona_natural`
MODIFY `idpersonanatural` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `persona_telefono`
--
ALTER TABLE `persona_telefono`
MODIFY `idpersonatelefono` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `persona_web`
--
ALTER TABLE `persona_web`
MODIFY `idpersonaweb` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `plan`
--
ALTER TABLE `plan`
MODIFY `idplan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `prueba`
--
ALTER TABLE `prueba`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `relacion`
--
ALTER TABLE `relacion`
MODIFY `idrelacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `rol_control`
--
ALTER TABLE `rol_control`
MODIFY `idrolcontrol` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `servicio_contratado`
--
ALTER TABLE `servicio_contratado`
MODIFY `idserviciocontratado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_caracteristica`
--
ALTER TABLE `tipo_caracteristica`
MODIFY `idtipocaracteristica` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_control`
--
ALTER TABLE `tipo_control`
MODIFY `idtipocontrol` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipo_correo`
--
ALTER TABLE `tipo_correo`
MODIFY `idtipocorreo` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_direccion`
--
ALTER TABLE `tipo_direccion`
MODIFY `idtipodireccion` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
MODIFY `idtipodocumento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipo_entidad`
--
ALTER TABLE `tipo_entidad`
MODIFY `idtipoentidad` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_objeto`
--
ALTER TABLE `tipo_objeto`
MODIFY `idtipoobjeto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_operacion`
--
ALTER TABLE `tipo_operacion`
MODIFY `idtipooperacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_relacion`
--
ALTER TABLE `tipo_relacion`
MODIFY `idtiporelacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
MODIFY `idtiposervicio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_telefono`
--
ALTER TABLE `tipo_telefono`
MODIFY `idtipotelefono` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
MODIFY `idtipovehiculo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ubigeo`
--
ALTER TABLE `ubigeo`
MODIFY `idubigeo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `idusuario` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
MODIFY `idvehiculo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `vehiculo_ubicacion`
--
ALTER TABLE `vehiculo_ubicacion`
MODIFY `idvehiculoubicacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
ADD CONSTRAINT `fk_idpersona_vehiculo` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_idtipovehiculo_vehiculo` FOREIGN KEY (`idtipovehiculo`) REFERENCES `tipo_vehiculo` (`idtipovehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
