INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `contraseña`) VALUES
(1, 'joseperez', 'password123'),
(2, 'mariagomez', 'password123'),
(3, 'juancruz', 'password123'),
(4, 'anablanco', 'password123'),
(5, 'ricardomartinez', 'password123'),
(6, 'lauragonzalez', 'password123'),
(7, 'fernandotorres', 'password123'),
(8, 'carlasosa', 'password123'),
(9, 'lucasromero', 'password123'),
(10, 'sofiacastro', 'password123'),
(11, 'usuario2', 'contraseña2'),
(12, 'usuario3', 'contraseña3'),
(13, 'usuario4', 'contraseña4'),
(14, 'usuario5', 'contraseña5'),
(15, 'usuario6', 'contraseña6'),
(16, 'usuario7', 'contraseña7'),
(17, 'usuario8', 'contraseña8'),
(18, 'usuario9', 'contraseña9'),
(19, 'usuario10', 'contraseña10'),
(20, 'usuario12', 'contraseña12'),
(21, 'usuario13', 'contraseña13'),
(22, 'usuario14', 'contraseña14'),
(23, 'usuario15', 'contraseña15'),
(24, 'usuario16', 'contraseña16'),
(25, 'usuario17', 'contraseña17'),
(26, 'usuario18', 'contraseña18'),
(27, 'usuario19', 'contraseña19'),
(28, 'usuario20', 'contraseña20'),
(29, 'usuario21', 'contraseña21'),
(30, 'usuario22', 'contraseña22'),
(31, 'usuario23', 'contraseña23'),
(32, 'usuario24', 'contraseña24'),
(33, 'usuario25', 'contraseña25'),
(34, 'usuario26', 'contraseña26'),
(35, 'usuario27', 'contraseña27'),
(36, 'usuario28', 'contraseña28'),
(37, 'usuario29', 'contraseña29'),
(38, 'usuario30', 'contraseña30');

INSERT INTO `administrativos` (`id_administrativo`, `nombre`, `apellidos`, `fecha_de_nacimiento`, `género`, `teléfono`, `dirección`, `ocupación`, `id_usuario`) VALUES
(1, 'Carlos', 'Vega', '1980-04-15', 'masculino', '5551234', 'Calle Falsa 123', 'Secretario', 29),
(2, 'Martha', 'Ruiz', '1975-08-22', 'femenino', '5555678', 'Avenida Siempre Viva 456', 'Contador', 30),
(3, 'Luis', 'Dominguez', '1982-01-30', 'masculino', '55591011', 'Boulevard de las Rosas 789', 'Coordinador Académico', 31),
(4, 'Sandra', 'Molina', '1985-09-16', 'femenino', '321654987', 'Calle 123 #45-67', 'Asistente Administrativo', 32),
(5, 'Roberto', 'Quintero', '1978-03-11', 'masculino', '987654321', 'Avenida 765 #12-34', 'Director Administrativo', 33),
(6, 'Patricia', 'Fernández', '1982-07-24', 'femenino', '654321987', 'Diagonal 89 #01-23', 'Recursos Humanos', 34),
(7, 'Jorge', 'Martinez', '1975-11-02', 'masculino', '369258147', 'Transversal 456 #78-90', 'Tesorero', 35),
(8, 'Andrea', 'Gutierrez', '1988-05-19', 'femenino', '147258369', 'Carrera 32 #58-79', 'Jefe de Departamento', 36),
(9, 'Leonardo', 'Vásquez', '1979-12-13', 'masculino', '963852741', 'Calle Falsa 123', 'Mantenimiento', 37),
(10, 'Carmen', 'López', '1983-04-27', 'femenino', '789456123', 'Avenida Principal 456', 'Secretario Ejecutivo', 38);




INSERT INTO `trimestres` (`id_trimestre`, `nombre`) VALUES
(1, 'Primer Trimestre'),
(2, 'Segundo Trimestre'),
(3, 'Tercer Trimestre');

INSERT INTO `grados` (`id_grado`, `nombre`) VALUES
(1, 'Primero'),
(2, 'Segundo'),
(3, 'Tercero'),
(4, 'Cuarto'),
(5, 'Quinto'),
(6, 'Sexto'),
(7, 'Séptimo'),
(8, 'Octavo'),
(9, 'Noveno');

INSERT INTO `profesores` (`id_profesor`, `nombre`, `apellidos`, `fecha_de_nacimiento`, `teléfono`, `dirección`, `género`, `id_grado`, `id_usuario`) VALUES
(1, 'Jose', 'Perez', '1980-05-15', '1234567890', '123 Calle Falsa, Ciudad Ficticia', 'masculino', 1, 1),
(2, 'Maria', 'Gomez', '1978-04-22', '2345678901', '456 Calle Real, Ciudad Ficticia', 'femenino', 2, 2),
(3, 'Juan', 'Cruz', '1982-03-10', '3456789012', '789 Calle Imaginaria, Ciudad Ficticia', 'masculino', 3, 3),
(4, 'Ana', 'Blanco', '1975-02-18', '4567890123', '101 Calle Inventada, Ciudad Ficticia', 'femenino', 4, 4),
(5, 'Ricardo', 'Martinez', '1984-01-28', '5678901234', '202 Calle Fabricada, Ciudad Ficticia', 'masculino', 5, 5),
(6, 'Laura', 'Gonzalez', '1986-12-30', '6789012345', '303 Calle Fingida, Ciudad Ficticia', 'femenino', 6, 6),
(7, 'Fernando', 'Torres', '1979-11-15', '7890123456', '404 Calle Noexiste, Ciudad Ficticia', 'masculino', 7, 7),
(8, 'Carla', 'Sosa', '1983-10-05', '8901234567', '505 Calle Inexistente, Ciudad Ficticia', 'femenino', 8, 8),
(9, 'Lucas', 'Romero', '1981-09-09', '9012345678', '606 Calle Falsa, Ciudad Real', 'masculino', 9, 9),
(10, 'Sofia', 'Castro', '1985-08-25', '0123456789', '707 Calle Verdadera, Ciudad Ficticia', 'femenino', 1, 10);

INSERT INTO `materias` (`id_materia`, `nombre`, `descripcion`, `id_profesor`) VALUES
(1, 'Matemáticas', 'Curso que cubre álgebra, geometría y cálculo.', 1),
(2, 'Ciencias Naturales', 'Estudio de las ciencias biológicas y físicas.', 3),
(3, 'Lengua y Literatura', 'Análisis y comprensión de textos literarios.', 2),
(4, 'Historia', 'Estudio de eventos pasados y su impacto en la sociedad.', 4),
(5, 'Educación Física', 'Promueve el desarrollo físico y la salud.', 5),
(6, 'Arte y Música', 'Exploración de diferentes formas de expresión artística.', 6),
(7, 'Tecnología e Informática', 'Uso de la tecnología y desarrollo de habilidades informáticas.', 7),
(8, 'Geografía', 'Estudio de la superficie terrestre y sus características.', 8),
(9, 'Educación Cívica', 'Enseñanza de los derechos y responsabilidades ciudadanas.', 9),
(10, 'Idiomas', 'Estudio de lenguas extranjeras y habilidades comunicativas.', 10);

INSERT INTO `llegadas_tarde_institucion` (`id_llegada_tarde_institucion`, `fecha`, `hora`, `id_profesor`, `estado`) VALUES
(1, '2024-04-11', '08:15:00', 1, 'injustificado'),
(2, '2024-04-11', '08:30:00', 2, 'justificado'),
(3, '2024-04-12', '08:20:00', 3, 'injustificado'),
(4, '2024-04-12', '08:25:00', 4, 'justificado'),
(5, '2024-04-13', '08:30:00', 5, 'injustificado'),
(6, '2024-04-13', '08:40:00', 6, 'justificado'),
(7, '2024-04-14', '08:45:00', 7, 'injustificado'),
(8, '2024-04-14', '08:50:00', 8, 'justificado'),
(9, '2024-04-15', '08:55:00', 9, 'injustificado'),
(10, '2024-04-15', '09:00:00', 10, 'justificado');

INSERT INTO `secciones` (`id_seccion`, `nombre`, `id_grado`, `id_profesor`) VALUES
(1, 'A', 1, 1),
(2, 'B', 1, 2),
(3, 'A', 2, 3),
(4, 'B', 2, 4),
(5, 'A', 3, 5),
(6, 'B', 3, 6),
(7, 'A', 4, 7),
(8, 'B', 4, 8),
(9, 'A', 5, 9),
(10, 'B', 5, 10),
(11, 'A', 6, 1),
(12, 'B', 6, 2),
(13, 'A', 7, 3),
(14, 'B', 7, 4),
(15, 'A', 8, 5),
(16, 'B', 8, 6),
(17, 'A', 9, 7),
(18, 'B', 9, 8);

INSERT INTO `estudiantes` (`id_estudiante`, `nombre`, `apellidos`, `fecha_de_nacimiento`, `género`, `id_seccion`, `id_usuario`) VALUES
(1, 'Juan', 'Pérez', '2005-03-15', 'masculino', 1, 11),
(2, 'María', 'González', '2006-07-22', 'femenino', 2, 12),
(3, 'Carlos', 'Jiménez', '2005-05-30', 'masculino', 3, 13),
(4, 'Laura', 'Ramírez', '2006-01-19', 'femenino', 4, 14),
(5, 'José', 'López', '2005-09-10', 'masculino', 5, 15),
(6, 'Ana', 'Morales', '2006-11-25', 'femenino', 6, 16),
(7, 'David', 'Hernández', '2005-02-03', 'masculino', 7, 17),
(8, 'Sofía', 'Martínez', '2006-04-17', 'femenino', 8, 18),
(9, 'Miguel', 'Álvarez', '2005-06-29', 'masculino', 9, 19),
(10, 'Lucía', 'Fernández', '2006-08-05', 'femenino', 10, 20),
(11, 'Juan', 'Pérez', '2005-03-15', 'masculino', 11, 21),
(12, 'María', 'González', '2006-07-22', 'femenino', 12, 22),
(13, 'Carlos', 'Jiménez', '2005-05-30', 'masculino', 13, 23),
(14, 'Laura', 'Ramírez', '2006-01-19', 'femenino', 14, 24),
(15, 'José', 'López', '2005-09-10', 'masculino', 15, 25),
(16, 'Ana', 'Morales', '2006-11-25', 'femenino', 16, 26),
(17, 'David', 'Hernández', '2005-02-03', 'masculino', 17, 27),
(18, 'Sofía', 'Martínez', '2006-04-17', 'femenino', 18, 28);

INSERT INTO `inscripcion` (`id_inscripcion`, `id_estudiante`, `id_materia`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 4, 1),
(10, 4, 3);

INSERT INTO `comportamiento` (`id_comportamiento`, `codigo`, `descripcion`) VALUES
(1, 'falta leve', 'Uso inapropiado del celular en clase.'),
(2, 'falta leve', 'Retraso menor a 10 minutos sin justificación.'),
(3, 'falta grave', 'Altercado con otro estudiante.'),
(4, 'falta grave', 'Daño intencional a la propiedad del colegio.'),
(5, 'falta muy grave', 'Amenazas contra personal o estudiantes.'),
(6, 'falta muy grave', 'Uso o posesión de sustancias prohibidas en la institución.'),
(7, 'falta leve', 'No completar asignaciones repetidamente.'),
(8, 'falta grave', 'Falsificación de permisos o documentos.'),
(9, 'falta leve', 'No llevar uniforme adecuadamente.'),
(10, 'falta muy grave', 'Incumplimiento grave de las normas de seguridad.');

INSERT INTO `comportamiento_estudiante` (`id_comportamiento_estudiante`, `id_estudiante`, `id_comportamiento`, `fecha`, `descripcion_adicional`) VALUES
(1, 1, 2, '2024-04-12', 'El estudiante no cumplió con las expectativas de comportamiento durante la actividad grupal.'),
(2, 3, 1, '2024-04-13', 'Retraso reiterado sin justificaciones adecuadas.'),
(3, 4, 3, '2024-04-14', 'Comportamiento disruptivo en clase de matemáticas que requirió intervención.'),
(4, 2, 5, '2024-04-15', 'Conflicto serio con un compañero que escaló a violencia física.'),
(5, 5, 2, '2024-04-16', 'Falta de respeto hacia el profesor durante la sesión.'),
(6, 6, 1, '2024-04-17', 'Uso inapropiado de dispositivos móviles en clase.'),
(7, 7, 4, '2024-04-18', 'Interrupción constante de la clase sin motivo.'),
(8, 8, 3, '2024-04-19', 'Actitud desafiante y confrontativa hacia la autoridad.'),
(9, 9, 2, '2024-04-20', 'Negligencia en la entrega de tareas importantes.'),
(10, 10, 1, '2024-04-21', 'Falta recurrente a clases sin justificación previa.');

INSERT INTO `llegadas_tarde` (`id_llegada`, `id_estudiante`, `fecha`, `hora`, `id_materia`, `id_profesor`) VALUES
(1, 1, '2024-04-11', '08:15:00', 1, 1),
(2, 2, '2024-04-11', '08:20:00', 2, 2),
(3, 3, '2024-04-12', '08:25:00', 3, 3),
(4, 4, '2024-04-12', '08:30:00', 4, 4),
(5, 5, '2024-04-13', '08:35:00', 5, 5),
(6, 6, '2024-04-13', '08:40:00', 6, 6),
(7, 7, '2024-04-14', '08:45:00', 7, 7),
(8, 8, '2024-04-14', '08:50:00', 8, 8),
(9, 9, '2024-04-15', '08:55:00', 9, 9),
(10, 10, '2024-04-15', '09:00:00', 10, 10);


INSERT INTO `notas` (`id_nota`, `id_estudiante`, `id_materia`, `nota`, `id_trimestre`, `fecha_calificacion`) VALUES
(1, 1, 1, 8.50, 1, '2024-01-15'),
(12, 1, 2, 5.00, 1, '2024-04-10'),
(13, 2, 3, 9.50, 1, '2024-04-10'),
(14, 3, 4, 5.00, 1, '2024-04-10'),
(15, 4, 5, 8.00, 1, '2024-04-10'),
(16, 5, 6, 2.50, 1, '2024-04-10'),
(17, 6, 7, 8.00, 1, '2024-04-10'),
(18, 7, 8, 3.00, 1, '2024-04-10'),
(19, 8, 9, 8.50, 1, '2024-04-10'),
(20, 9, 10, 9.00, 1, '2024-04-10');

INSERT INTO `observaciones` (`id_observacion`, `id_estudiante`, `id_profesor`, `fecha`, `observacion`) VALUES
(1, 1, 1, '2024-04-11', 'El estudiante mostró gran interés en las actividades de clase, pero necesita mejorar en la puntualidad.'),
(2, 2, 1, '2024-04-11', 'Participación excelente durante el debate en clase. Continuar así.'),
(3, 3, 2, '2024-04-12', 'Necesita ayuda adicional con los conceptos matemáticos básicos. Se recomienda tutoría adicional.'),
(4, 4, 3, '2024-04-10', 'Excelente mejora en las calificaciones de las últimas pruebas. El esfuerzo está dando frutos.'),
(5, 5, 2, '2024-04-15', 'El estudiante ha faltado a varias clases sin justificación. Es necesario abordar esta situación.'),
(6, 6, 4, '2024-04-14', 'Mostró habilidades de liderazgo durante el proyecto grupal, pero debe trabajar en cumplir los plazos establecidos.'),
(7, 7, 5, '2024-04-16', 'Tiene dificultades con la lectura comprensiva. Se recomienda participar en sesiones de apoyo.'),
(8, 8, 3, '2024-04-17', 'Excelente desempeño en las últimas pruebas de ciencias, sigue mostrando un interés constante por aprender más.'),
(9, 9, 2, '2024-04-18', 'El estudiante ha mejorado notablemente en matemáticas gracias a la asistencia regular a las tutorías.'),
(10, 10, 1, '2024-04-19', 'Falta frecuentemente a clases. Es imprescindible hablar con sus padres para discutir su situación.');

INSERT INTO `asistencia` (`id_asistencia`, `id_estudiante`, `fecha`, `estado`, `id_profesor`) VALUES
(1, 1, '2024-04-11', 'falta', 1),
(2, 2, '2024-04-10', 'asistio', 1),
(3, 3, '2024-04-10', 'falta', 1),
(4, 4, '2024-04-09', 'asistio', 2),
(5, 5, '2024-04-09', 'falta', 2),
(6, 6, '2024-04-11', 'asistio', 3),
(7, 7, '2024-04-11', 'falta', 3),
(8, 8, '2024-04-08', 'asistio', 4),
(9, 1, '2024-04-12', 'falta', 4),
(10, 9, '2024-04-12', 'asistio', 5);

