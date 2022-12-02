USE OLAP;
select*from dbo.parque_vehicular_datos_abiertos_13NOV2018;
/*VISTAS PARA CUBO DE OLAP*/
USE OLAP;
/*VISTA1 AUTOS VIEJOS*/
SELECT dbo.parque_vehicular_datos_abiertos_13NOV2018.TIPO_PLACA, dbo.parque_vehicular_datos_abiertos_13NOV2018.ANIO_DE_FABRICACION, dbo.parque_vehicular_datos_abiertos_13NOV2018.MARCA, dbo.parque_vehicular_datos_abiertos_13NOV2018.MODELO, 
             dbo.parque_vehicular_datos_abiertos_13NOV2018.ESTADO
FROM   dbo.parque_vehicular_datos_abiertos_13NOV2018 CROSS JOIN
             dbo.parque_vehicular_datos_abiertos_13NOV2018 AS parque_vehicular_datos_abiertos_13NOV2018_1
WHERE (dbo.parque_vehicular_datos_abiertos_13NOV2018.ANIO_DE_FABRICACION < 2000)
/*VISTA2 AUTOS NUEVOS*/
SELECT dbo.parque_vehicular_datos_abiertos_13NOV2018.TIPO_PLACA, dbo.parque_vehicular_datos_abiertos_13NOV2018.ANIO_DE_FABRICACION, dbo.parque_vehicular_datos_abiertos_13NOV2018.MARCA, dbo.parque_vehicular_datos_abiertos_13NOV2018.MODELO, 
             dbo.parque_vehicular_datos_abiertos_13NOV2018.ESTADO
FROM   dbo.parque_vehicular_datos_abiertos_13NOV2018 CROSS JOIN
             dbo.parque_vehicular_datos_abiertos_13NOV2018 AS parque_vehicular_datos_abiertos_13NOV2018_1
WHERE (dbo.parque_vehicular_datos_abiertos_13NOV2018.ANIO_DE_FABRICACION > 2000)
/*VISTA3 PROPIETARIOS Y AUTOS NUEVOS*/
SELECT TIPO_PLACA, ANIO_DE_FABRICACION, MODELO, ESTADO, MARCA, PERTENENCIA, PROPIETARIO_DEPARTAMENTO, PROPIETARIO_MUNICIPIO
FROM   dbo.parque_vehicular_datos_abiertos_13NOV2018
WHERE (ANIO_DE_FABRICACION > 2000)
/*VISTA4 PROPIETARIOS Y AUTOS VIEJOS*/
SELECT TIPO_PLACA, ANIO_DE_FABRICACION, MODELO, ESTADO, MARCA, PERTENENCIA, PROPIETARIO_DEPARTAMENTO, PROPIETARIO_MUNICIPIO
FROM   dbo.parque_vehicular_datos_abiertos_13NOV2018
WHERE (ANIO_DE_FABRICACION < 2000)
/*AUTOS CON SU TIEMPO DE INGRESO EN EL PAIS*/
SELECT TOP (100) PERCENT TIPO_PLACA, MODELO, MARCA, CAPACIDAD, CONDICION_INGRESO, ESTADO, ANIO_INGRESO, FECHA_DE_INGRESO, MES_INGRESO
FROM   dbo.parque_vehicular_datos_abiertos_13NOV2018
ORDER BY ANIO_INGRESO;
/*ORDENAR POR CAPACIDAD*/
SELECT TOP (100) PERCENT TIPO_PLACA, ESTADO, PROPIETARIO_DEPARTAMENTO, PROPIETARIO_MUNICIPIO, CAPACIDAD, MODELO, MARCA, DES_CAPACIDAD, COMBUSTIBLE, CANTIDAD_DE_CILINDROS, CILINDRADA
FROM   dbo.parque_vehicular_datos_abiertos_13NOV2018
ORDER BY CAPACIDAD;
/*ORDENAR POR COSTO*/
SELECT TOP (100) PERCENT TIPO_PLACA, MARCA, MODELO, COLORES, CANTIDAD_DE_PUERTAS, CANTIDAD_DE_CILINDROS, ANIO_DE_FABRICACION, VALOR_DEL_VEHICULO, ESTADO
FROM   dbo.parque_vehicular_datos_abiertos_13NOV2018
ORDER BY VALOR_DEL_VEHICULO;
/*DATOS GENERALES DEL MOP*/
SELECT dbo.parque_vehicular_datos_abiertos_13NOV2018.*
FROM   dbo.parque_vehicular_datos_abiertos_13NOV2018

