/**
  * RETO:  Practica los joins y trata de
  * predecir los resultados
  */


/**
  * Generar un triángulo
  */

-- Funcion lpad --
SELECT lpad('sql', 15, '*');

-- Lpad con incrementales --
SELECT lpad ('sql', id, '*')
FROM platzi.alumnos
WHERE id < 10;

-- Generar un triángulo usando Lpad --
SELECT lpad ('*', id, '*')
FROM platzi.alumnos
WHERE id < 4;

-- Desordenando el triángulo --
SELECT lpad ('*', id, '*')
FROM platzi.alumnos
WHERE id < 10
ORDER BY carrera_id;

-- Tabla con row_id --
SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id <= 5;

-- lpad con row_id --
SELECT lpad('*', CAST (row_id AS int), '*')
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id <= 10;

-- Reordenando lpad con row_id --
SELECT lpad('*', CAST (row_id AS int), '*')
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id <= 10;



--TRIANGULO--
SELECT lpad('sql','15','*');

SELECT lpad('sql',id,'*')
FROM platzi.alumnos
WHERE id < 10
ORDER BY carrera_id;

SELECT lpad('*', CAST(row_id AS int), '*')
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_id
WHERE row_id <= 5;

-- TRIANGULO 2--
SELECT lpad('','15','*');

SELECT lpad('',id,'*')
FROM platzi.alumnos
WHERE id < 10
;

--TRIANGULO 3--
SELECT lpad('*', generate_series(1,5), '*')

--TRIANGULO 4--
SELECT lpad('*', CAST(ordinality AS int), '*')
FROM generate_series(10,2,-2) WITH ordinality		  
;