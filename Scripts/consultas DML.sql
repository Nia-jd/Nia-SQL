-- Insertar un nuevo proveedor:
INSERT INTO Proveedores (nombre, contacto, telefono, email)
VALUES ('Sporty Inc.', 'Juan Pérez', '1234567890', 'contacto@sportyinc.com');
-- Actualizar el stock de un producto:
UPDATE Productos
SET stock = 50
WHERE idProducto = 1;
-- Eliminar un cliente:
DELETE FROM Clientes
WHERE idCliente = 5;
-- Seleccionar todos los productos de una categoría específica:
SELECT * FROM Productos
WHERE categoria = 'Ropa';
-- Insertar una venta y el detalle correspondiente:
INSERT INTO Ventas (fecha, idCliente, idEmpleado, total)
VALUES ('2024-09-05', 2, 3, 150.00);

INSERT INTO DetalleVentas (idVenta, idProducto, cantidad, precioVenta)
VALUES (LAST_INSERT_ID(), 1, 2, 75.00);
