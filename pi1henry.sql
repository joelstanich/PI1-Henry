CREATE DATABASE IF NOT EXISTS PI1HENRY;

USE PI1HENRY;

DROP TABLE IF EXISTS precios_semana_20200413;
CREATE TABLE precios_semana_20200413(
precio			VARCHAR(50),
producto_id		VARCHAR(50),
sucursal_id		VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8mb4 COLLATE=UTF8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\precios_semana_20200413.csv'
into table precios_semana_20200413
FIELDS terminated by ',' enclosed by "" escaped by '.'
LINES terminated by '\n' ignore 1 lines;

DROP TABLE IF EXISTS precios_semana_20200419;
CREATE TABLE precios_semana_20200419(
precio			VARCHAR(50),
producto_id		VARCHAR(50),
sucursal_id		VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8mb4 COLLATE=UTF8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\precios_semana_20200419.csv'
into table precios_semana_20200419
FIELDS terminated by ',' enclosed by "" escaped by '.'
LINES terminated by '\n' ignore 1 lines;

DROP TABLE IF EXISTS precios_semana_20200503;
CREATE TABLE precios_semana_20200503(
precio			VARCHAR(50),
producto_id		VARCHAR(50),
sucursal_id		VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8mb4 COLLATE=UTF8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\precios_semana_20200413.csv'
into table precios_semana_20200503
FIELDS terminated by ',' enclosed by "" escaped by '.'
LINES terminated by '\n' ignore 1 lines;

DROP TABLE IF EXISTS precios_semana_20200518;
CREATE TABLE precios_semana_20200518(
precio			VARCHAR(50),
producto_id		VARCHAR(50),
sucursal_id		VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8mb4 COLLATE=UTF8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\precios_semana_20200518.csv'
into table precios_semana_20200518
FIELDS terminated by ',' enclosed by "" escaped by '.'
LINES terminated by '\n' ignore 1 lines;

DROP TABLE IF EXISTS sucursal;
CREATE TABLE sucursal(
	sucursal_id			VARCHAR(50),
    comercioId			varchar(50),
    banderaId			varchar(50),
    banderaDescripcion	text(50),
    comercioRazonSocial	VARCHAR(200),
    provincia			VARCHAR(50),
    localidad			VARCHAR(50),
    direccion			VARCHAR(150),
    lat					FLOAT(50),
	lng					FLOAT(50),
    sucursalNombre		VARCHAR(200),
    sucursalTipo		VARCHAR(50),
    PRIMARY KEY (sucursal_id)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8mb4 COLLATE=UTF8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\sucursal.csv'
into table sucursal
FIELDS terminated by ',' enclosed by '"' escaped by ''
LINES terminated by '\n' ignore 1 lines;


DROP TABLE IF EXISTS producto;
CREATE TABLE producto(
producto_id		VARCHAR(50),
marca			VARCHAR(50),
nombre			VARCHAR(150),
presentacion	VARCHAR(50),
categoria1		VARCHAR(100),
categoria2		VARCHAR(100),
categoria3		VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8mb4 COLLATE=UTF8mb4_spanish_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\producto.csv'
into table producto
FIELDS terminated by ',' enclosed by '"' escaped by ''
LINES terminated by '\n' ignore 1 lines;

DROP TABLE IF EXISTS PRECIOS_AGRUPADOS;
CREATE TABLE PRECIOS_AGRUPADOS(
precio			VARCHAR(50),
producto_id		VARCHAR(50),
sucursal_id		VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8mb4 COLLATE=UTF8mb4_spanish_ci;

INSERT INTO PRECIOS_AGRUPADOS (precio, producto_id, sucursal_id)
SELECT DISTINCT precio, producto_id, sucursal_id FROM precios_semana_20200413
UNION
SELECT DISTINCT precio, producto_id, sucursal_id FROM precios_semana_20200419
UNION
SELECT DISTINCT precio, producto_id, sucursal_id FROM precios_semana_20200503
UNION
SELECT DISTINCT precio, producto_id, sucursal_id FROM precios_semana_20200518;

select avg(precio) FROM precios_agrupados GROUP BY sucursal_id = 9-1-688;

select avg(precio) AS PRECIO_PROMEDIO FROM precios_agrupados WHERE
sucursal_id = 9-1-688;




