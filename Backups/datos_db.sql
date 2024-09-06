INSERT INTO Proveedores (nombre, contacto, telefono, email) VALUES
('Proveedor Deportivo', 'Juan Pérez', '555-1234', 'juan@proveedordeportivo.com'),
('Distribuidor de Equipos', 'María García', '555-5678', 'maria@equipos.com');

-- Insertar datos en Productos
INSERT INTO Productos (nombre, categoria, precio, stock, idProveedor) VALUES
('Balón de Fútbol', 'Deportes', 29.99, 100, 1),
('Raqueta de Tenis', 'Deportes', 89.50, 50, 2),
('Pesas 10kg', 'Fitness', 45.00, 80, 1),
('Bicicleta de Montaña', 'Ciclismo', 350.00, 20, 2);

-- Insertar datos en Clientes
INSERT INTO Clientes (nombre, direccion, telefono, email) VALUES
('Carlos López', 'Calle 123, Ciudad', '555-8765', 'carlos@correo.com'),
('Ana Martínez', 'Avenida Siempre Viva 456, Ciudad', '555-4321', 'ana@correo.com');

-- Insertar datos en Empleados
INSERT INTO Empleados (nombre, puesto, salario) VALUES
('Pedro Sánchez', 'Vendedor', 1200.00),
('Lucía Fernández', 'Gerente', 2500.00);

-- Insertar datos en Ventas
INSERT INTO Ventas (fecha, idCliente, idEmpleado, total) VALUES
('2024-09-01', 1, 1, 29.99),
('2024-09-02', 2, 2, 134.50);

-- Insertar datos en DetalleVentas
INSERT INTO DetalleVentas (idVenta, idProducto, cantidad, precioVenta) VALUES
(1, 1, 1, 29.99),
(2, 2, 1, 89.50),
(2, 3, 1, 45.00);

-- Verificación: Mostrar los datos insertados en las tablas
SELECT * FROM Proveedores;
SELECT * FROM Productos;
SELECT * FROM Clientes;
SELECT * FROM Empleados;
SELECT * FROM Ventas;
SELECT * FROM DetalleVentas;