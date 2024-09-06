-- Encontrar el total de ventas por cliente:
SELECT c.nombre, SUM(v.total) AS totalVentas
FROM Ventas v
JOIN Clientes c ON v.idCliente = c.idCliente
GROUP BY c.idCliente;
-- Listar los productos con su proveedor y stock bajo (menos de 10 unidades):
SELECT p.nombre AS producto, pr.nombre AS proveedor, p.stock
FROM Productos p
JOIN Proveedores pr ON p.idProveedor = pr.idProveedor
WHERE p.stock < 10;
-- Obtener el promedio de salario de los empleados por puesto:
SELECT puesto, AVG(salario) AS salarioPromedio
FROM Empleados
GROUP BY puesto;
-- Seleccionar las ventas del último mes y el detalle de productos vendidos:
SELECT v.idVenta, v.fecha, p.nombre AS producto, dv.cantidad, dv.precioVenta
FROM VentasTienda v
JOIN DetalleVentas dv ON v.idVenta = dv.idVenta
JOIN Productos p ON dv.idProducto = p.idProducto
WHERE v.fecha >= CURDATE() - INTERVAL 1 MONTH;
-- Listar los clientes que no han realizado ninguna compra:
SELECT c.nombre
FROM Clientes c
LEFT JOIN Ventas v ON c.idCliente = v.idCliente
WHERE v.idVenta IS NULL;
