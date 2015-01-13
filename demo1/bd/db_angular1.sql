

-- CREATE FUNCTION "usp_set_persona" -----------------------


CREATE  PROCEDURE `usp_set_persona`(nombre varchar(100), nacimiento date, tipo int(2), estado int(3))
BEGIN
	#Routine body goes here...
	INSERT INTO persona(persona.nombre, persona.nacimiento, persona.tipo, persona.estado)
	VALUES (nombre, nacimiento, tipo, estado);

	SELECT LAST_INSERT_ID() AS idpersona;
	-- usp_set_persona
END;


-- ---------------------------------------------------------


-- CREATE FUNCTION "usp_upd_persona" -----------------------


CREATE  PROCEDURE `usp_upd_persona`( idpersona int(11),nombre varchar(100),nacimiento date,tipo int(11) )
BEGIN
	UPDATE persona SET
		persona.idpersona = idpersona,
		persona.nombre = nombre,
		persona.nacimiento = nacimiento,
		persona.tipo = tipo
	WHERE persona.idpersona = idpersona;
END;


-- ---------------------------------------------------------


-- CREATE FUNCTION "usp_upd_persona_estado" ----------------


CREATE  PROCEDURE `usp_upd_persona_estado`(idpersona int(11),estado int(11))
BEGIN
	UPDATE persona SET
		persona.estado = estado
	WHERE persona.idpersona = idpersona
	LIMIT 1 ;

END;


-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


