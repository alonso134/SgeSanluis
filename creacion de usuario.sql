CREATE USER 'sge'@'localhost' IDENTIFIED BY '123';

-- Permisos DML
GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO 'sge'@'localhost';

-- Permisos para crear y ejecutar rutinas, triggers, y vistas
GRANT CREATE ROUTINE, ALTER ROUTINE, EXECUTE, TRIGGER, CREATE VIEW, SHOW VIEW ON *.* TO 'sge'@'localhost';

-- Aplicar cambios de permisos
FLUSH PRIVILEGES;