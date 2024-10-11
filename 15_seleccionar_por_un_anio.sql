/**
  * RETO: Extraer los campos de hora de una fecha
  
  */
  SELECT DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion,
		DATE_PART('MONTH', fecha_incorporacion) AS MES_incorporacion,
		DATE_PART('DAY', fecha_incorporacion) AS DAY_incorporacion,
		nombre,
		id,
		DATE_PART('HOUR', fecha_incorporacion) AS HOUR_incorporacion,
		DATE_PART('MINUTE', fecha_incorporacion) AS MINUTE_incorporacion,
		DATE_PART('SECOND', fecha_incorporacion) AS SECOND_incorporacion

FROM platzi.alumnos;				 
-- Extract --
SELECT	EXTRACT(HOUR FROM fecha_incorporacion) AS hora_incorporacion,
		EXTRACT(MINUTE FROM fecha_incorporacion) AS minuto_incorporacion,
		EXTRACT(SECOND FROM fecha_incorporacion) AS segundo_incorporacion
FROM platzi.alumnos;

-- Date_Part --
SELECT  DATE_PART('HOUR', fecha_incorporacion) AS hora_incorporacion,
        DATE_PART('MINUTE', fecha_incorporacion) AS minuto_incorporacion,
        DATE_PART('SECOND', fecha_incorporacion) AS segundo_incorporacion
FROM platzi.alumnos;

/**
  * Filtrar los alumnos que se inscribieron en 2019
  */

-- Filtro EXTRACT --
SELECT *
FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2019;

SELECT *
FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2019
AND (EXTRACT(MONTH FROM fecha_incorporacion)) = 06

-- Filtro DATE_PART --
SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion)) = 2019;

SELECT *
FROM (
	SELECT *,
		DATE_PART('YEAR', fecha_incorporacion) AS anio,
		DATE_PART('MONTH', fecha_incorporacion) AS month
	FROM platzi.alumnos
	
) AS alumnos_con_anio
WHERE anio = 2020 AND month = 05;
-- Filtro subquery DATE_PART --
SELECT	*
FROM (
	SELECT	*,
			DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion
	FROM platzi.alumnos
) AS alumnos_con_anio_mes
WHERE	anio_incorporacion = 2019;
