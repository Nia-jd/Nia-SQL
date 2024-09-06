-- 1. Mostrar todos los productos disponibles en la tienda
SELECT * FROM Productos;

-- 2. Mostrar todos los clientes registrados
SELECT * FROM Clientes;

-- 3. Mostrar todas las ventas realizadas con los nombres de los clientes y empleados involucrados
SELECT V.idVenta, V.fecha, C.nombre AS Cliente, E.nombre AS Empleado, V.total
FROM Ventas V
JOIN Clientes C ON V.idCliente = C.idCliente
JOIN Empleados E ON V.idEmpleado = E.idEmpleado;

-- 4. Mostrar los productos que tienen un stock menor a 20 unidades
SELECT * FROM Productos WHERE stock < 20;

-- 5. Mostrar los productos con el nombre del proveedor asociado
SELECT P.nombre AS Producto, Pr.nombre AS Proveedor
FROM Productos P
JOIN Proveedores Pr ON P.idProveedor = Pr.idProveedor;

-- 6. Actualizar el precio de un producto específico (por ejemplo, aumentar el precio de la "Raqueta de Tenis")
UPDATE Productos SET precio = precio * 1.10 WHERE nombre = 'Raqueta de Tenis';

-- 7. Insertar una nueva venta y su detalle
INSERT INTO Ventas (fecha, idCliente, idEmpleado, total) VALUES ('2024-09-05', 1, 1, 59.98);
INSERT INTO DetalleVentas (idVenta, idProducto, cantidad, precioVenta) VALUES (3, 1, 2, 29.99);

-- 8. Mostrar el total de ventas realizadas por cada empleado
SELECT E.nombre, SUM(V.total) AS TotalVentas
FROM Ventas V
JOIN Empleados E ON V.idEmpleado = E.idEmpleado
GROUP BY E.nombre;

-- 9. Mostrar los productos más vendidos y la cantidad total vendida
SELECT P.nombre, SUM(DV.cantidad) AS CantidadVendida
FROM DetalleVentas DV
JOIN Productos P ON DV.idProducto = P.idProducto
GROUP BY P.nombre
ORDER BY CantidadVendida DESC;

-- 10. Mostrar el total de ingresos generados por cada categoría de productos
SELECT P.categoria, SUM(DV.precioVenta * DV.cantidad) AS Ingresos
FROM DetalleVentas DV
JOIN Productos P ON DV.idProducto = P.idProducto
GROUP BY P.categoria;

-- 11. Mostrar los detalles de una venta específica por su ID
SELECT V.idVenta, V.fecha, C.nombre AS Cliente, E.nombre AS Empleado, DV.idProducto, DV.cantidad, DV.precioVenta
FROM Ventas V
JOIN Clientes C ON V.idCliente = C.idCliente
JOIN Empleados E ON V.idEmpleado = E.idEmpleado
JOIN DetalleVentas DV ON V.idVenta = DV.idVenta
WHERE V.idVenta = 1;

-- 12. Mostrar los productos que no tienen proveedor asignado
SELECT * FROM Productos WHERE idProveedor IS NULL;

-- 13. Borrar un cliente por su nombre (Ejemplo: "Carlos López")
DELETE FROM Clientes WHERE nombre = 'Carlos López';

-- 14. Mostrar el promedio de salario de los empleados
SELECT AVG(salario) AS PromedioSalario FROM Empleados;

-- 15. Mostrar las ventas realizadas en los últimos 7 días
SELECT * FROM Ventas WHERE fecha >= DATE_SUB(CURDATE(), INTERVAL 7 DAY);
