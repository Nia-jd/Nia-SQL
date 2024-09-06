-- Agregar una nueva columna a la tabla Productos:
ALTER TABLE Productos
ADD descripcion TEXT;
-- Modificar el tipo de dato de una columna en la tabla Clientes:
ALTER TABLE Clientes
MODIFY telefono VARCHAR(20);
-- Eliminar la tabla Empleados:
DROP TABLE Empleados;
-- Renombrar la tabla Ventas a VentasTienda:
RENAME TABLE Ventas TO VentasTienda;
-- Agregar un índice en la columna email de la tabla Clientes:
CREATE INDEX idx_email ON Clientes(email);
