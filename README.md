# PI1-Henry
Proyecto individual 1

  Este proyecto se trato de un proceso ETL, para lo cual se utilizaron diferentes herramientas, como funciones de Pythob, librerias adicionales como Pandas, Numpy, Openpyxl, MySQL.
  
  El proceso de ETL, comenzo al identificar las diferentes fuentes y formatos de los datos provistos, teniendo una amplia variedad, como .parquet,.xlsx, .csv, y .txt.
  
  En todos los casos el primer procedimiento fue convertirlos a .csv para luego explorar y analizar las necesidades de corrección en cada archivo.

  Se analizaron y normalizaron los formatos de las columnas, se corrigieron diferentes errores como numeros excedentes algunos como por ej. algunos datos en productos_id, y se eliminaron filas duplicadas, o vacias en datos que no eran relevantes.
  
  Una de las fuentes provistas como la hoja de xls, referente a la semana 20200426, debido a que la columna precios presenta inconsistencias graves no solucionables.
  
  Al contar con todos los datos normalizados y corregidos se los guardo como csv para luego ser utilizados en el script de MySQL
  
  Donde se Creo la Base de datos contenedora y las tablas necesarias para su uso, donde finalmente se realizo una carga incremental de los datos existente.
  
  Finalmente se realiza la consulta de promedio precio para la sucursal 9-1-688.

  En el presente repositorio se puede encontrar: los archivos CSV correspondientes
                                                  el codigo utilizado en VSC PI01.ipynb
                                                  BD pi1Henry.sql
                                                  DERpi1Henry.mw
                                                  Diagrama de Flujo del Proceso.
