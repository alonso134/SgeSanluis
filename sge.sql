-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2024 a las 01:52:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sge`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarAdministrativo` (IN `p_nombre` VARCHAR(30), IN `p_apellidos` VARCHAR(60), IN `p_fecha_de_nacimiento` DATE, IN `p_genero` ENUM('masculino','femenino'), IN `p_telefono` VARCHAR(10), IN `p_direccion` VARCHAR(200), IN `p_ocupacion` VARCHAR(100), IN `p_id_usuario` INT)   BEGIN
    INSERT INTO administrativos(nombre, apellidos, fecha_de_nacimiento, género, teléfono, dirección, ocupación, id_usuario)
    VALUES (p_nombre, p_apellidos, p_fecha_de_nacimiento, p_genero, p_telefono, p_direccion, p_ocupacion, p_id_usuario);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarAsistencia` (IN `p_id_estudiante` INT, IN `p_fecha` DATE, IN `p_estado` ENUM('asistio','falta'), IN `p_id_profesor` INT)   BEGIN
    INSERT INTO asistencia(id_estudiante, fecha, estado, id_profesor)
    VALUES (p_id_estudiante, p_fecha, p_estado, p_id_profesor);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarAusencia` (IN `p_id_asistencia` INT, IN `p_id_estudiante` INT, IN `p_fecha` DATE, IN `p_estado` ENUM('injustificada','justificada'))   BEGIN
    INSERT INTO ausencias(id_asistencia, id_estudiante, fecha, estado)
    VALUES (p_id_asistencia, p_id_estudiante, p_fecha, p_estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarComportamientoEstudiante` (IN `p_id_estudiante` INT, IN `p_id_comportamiento` INT, IN `p_fecha` DATE, IN `p_descripcion_adicional` VARCHAR(500))   BEGIN
    INSERT INTO comportamiento_estudiante (id_estudiante, id_comportamiento, fecha, descripcion_adicional)
    VALUES (p_id_estudiante, p_id_comportamiento, p_fecha, p_descripcion_adicional);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarEstudiante` (IN `p_nombre` VARCHAR(30), IN `p_apellidos` VARCHAR(60), IN `p_fecha_de_nacimiento` DATE, IN `p_genero` ENUM('masculino','femenino','otro'), IN `p_id_seccion` INT, IN `p_id_usuario` INT)   BEGIN
    INSERT INTO estudiantes(nombre, apellidos, fecha_de_nacimiento, género, id_seccion, id_usuario)
    VALUES (p_nombre, p_apellidos, p_fecha_de_nacimiento, p_genero, p_id_seccion, p_id_usuario);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarGrado` (IN `p_nombre` VARCHAR(20))   BEGIN
    INSERT INTO grados(nombre)
    VALUES (p_nombre);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarInscripcion` (IN `p_id_estudiante` INT, IN `p_id_materia` INT)   BEGIN
    INSERT INTO inscripcion (id_estudiante, id_materia)
    VALUES (p_id_estudiante, p_id_materia);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarLlegadaTarde` (IN `p_fecha` DATE, IN `p_hora` TIME, IN `p_id_profesor` INT, IN `p_estado` ENUM('justificado','injustificado'))   BEGIN
    INSERT INTO llegadas_tarde_institucion (fecha, hora, id_profesor, estado)
    VALUES (p_fecha, p_hora, p_id_profesor, p_estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarNota` (IN `p_id_estudiante` INT, IN `p_id_materia` INT, IN `p_nota` DECIMAL(5,2), IN `p_id_trimestre` INT, IN `p_fecha_calificacion` DATE)   BEGIN
    INSERT INTO notas (id_estudiante, id_materia, nota, id_trimestre, fecha_calificacion)
    VALUES (p_id_estudiante, p_id_materia, p_nota, p_id_trimestre, p_fecha_calificacion);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarObservacion` (IN `p_id_estudiante` INT, IN `p_id_profesor` INT, IN `p_fecha` DATE, IN `p_observacion` VARCHAR(500))   BEGIN
    INSERT INTO observaciones (id_estudiante, id_profesor, fecha, observacion)
    VALUES (p_id_estudiante, p_id_profesor, p_fecha, p_observacion);
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarProfesor` (IN `p_nombre` VARCHAR(30), IN `p_apellidos` VARCHAR(60), IN `p_fecha_de_nacimiento` DATE, IN `p_telefono` VARCHAR(10), IN `p_direccion` VARCHAR(200), IN `p_genero` ENUM('masculino','femenino','otro'), IN `p_id_grado` INT, IN `p_id_usuario` INT)   BEGIN
    INSERT INTO profesores(nombre, apellidos, fecha_de_nacimiento, teléfono, dirección, género, id_grado, id_usuario)
    VALUES (p_nombre, p_apellidos, p_fecha_de_nacimiento, p_telefono, p_direccion, p_genero, p_id_grado, p_id_usuario);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarSeccion` (IN `p_nombre` VARCHAR(100), IN `p_id_grado` INT, IN `p_id_profesor` INT)   BEGIN
    INSERT INTO secciones(nombre, id_grado, id_profesor)
    VALUES (p_nombre, p_id_grado, p_id_profesor);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarTrimestre` (IN `p_nombre` VARCHAR(50))   BEGIN
    INSERT INTO trimestres(nombre)
    VALUES (p_nombre);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarUsuario` (IN `p_nombre_usuario` VARCHAR(50), IN `p_contrasena` VARCHAR(100))   BEGIN
    INSERT INTO usuarios(nombre_usuario, contrasena)
    VALUES (p_nombre_usuario, p_contrasena);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_materia` (IN `p_nombre_materia` VARCHAR(100), IN `p_grupo_materia` INT, IN `p_cupos` INT, IN `p_id_profesor` VARCHAR(36))   BEGIN
    INSERT INTO materias (nombre_materia, grupo_materia, cupos, id_profesor)
    VALUES (p_nombre_materia, p_grupo_materia, p_cupos, p_id_profesor);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistrarComportamiento` (IN `p_codigo` ENUM('falta leve','falta grave','falta muy grave'), IN `p_descripcion` VARCHAR(500))   BEGIN
    INSERT INTO comportamiento (codigo, descripcion)
    VALUES (p_codigo, p_descripcion);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistrarLlegadaTardeEstudiante` (IN `p_id_estudiante` INT, IN `p_fecha` DATE, IN `p_hora` TIME, IN `p_id_materia` INT, IN `p_id_profesor` INT)   BEGIN
    INSERT INTO llegadas_tarde (id_estudiante, fecha, hora, id_materia, id_profesor)
    VALUES (p_id_estudiante, p_fecha, p_hora, p_id_materia, p_id_profesor);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativos`
--

CREATE TABLE `administrativos` (
  `id_administrativo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `género` enum('masculino','femenino') DEFAULT NULL,
  `teléfono` varchar(10) NOT NULL,
  `dirección` varchar(200) NOT NULL,
  `ocupación` varchar(100) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrativos`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id_asistencia` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estado` enum('asistio','falta') NOT NULL,
  `id_profesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`id_asistencia`, `id_estudiante`, `fecha`, `estado`, `id_profesor`) VALUES
(1, 1, '2024-04-08', 'asistio', 1),
(2, 2, '2024-04-08', 'asistio', 2),
(3, 3, '2024-04-08', 'asistio', 3),
(4, 4, '2024-04-08', 'asistio', 4),
(5, 5, '2024-04-08', 'asistio', 5),
(6, 6, '2024-04-08', 'asistio', 2),
(7, 7, '2024-04-08', 'asistio', 7),
(8, 8, '2024-04-08', 'asistio', 8),
(9, 9, '2024-04-08', 'asistio', 9),
(10, 10, '2024-04-10', 'falta', 10);

--
-- Disparadores `asistencia`
--
DELIMITER $$
CREATE TRIGGER `registrarAusencia` AFTER INSERT ON `asistencia` FOR EACH ROW BEGIN
    -- Si el estado del registro insertado es 'falta', entonces necesito actuar
    IF NEW.estado = 'falta' THEN
        -- Inserto automáticamente un registro en la tabla 'ausencias'
        -- Utilizo los datos del estudiante, la fecha y el profesor de la asistencia marcada como falta
        INSERT INTO ausencias(id_estudiante, fecha, id_profesor)
        VALUES (NEW.id_estudiante, NEW.fecha, NEW.id_profesor);
    END IF;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ausencias`
--

CREATE TABLE `ausencias` (
  `id_ausencia` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `estado_justificacion` enum('injustificada','justificada') DEFAULT 'injustificada'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ausencias`
--

INSERT INTO `ausencias` (`id_ausencia`, `id_estudiante`, `fecha`, `id_profesor`, `estado_justificacion`) VALUES
(0, 10, '2024-04-10', 10, 'injustificada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comportamiento`
--

CREATE TABLE `comportamiento` (
  `id_comportamiento` int(11) NOT NULL,
  `codigo` enum('falta leve','falta grave','falta muy grave') NOT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comportamiento`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comportamiento_estudiante`
--

CREATE TABLE `comportamiento_estudiante` (
  `id_comportamiento_estudiante` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_comportamiento` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion_adicional` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comportamiento_estudiante`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `género` enum('masculino','femenino','otro') NOT NULL,
  `id_seccion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grados`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `id_inscripcion` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscripcion`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llegadas_tarde`
--

CREATE TABLE `llegadas_tarde` (
  `id_llegada` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `llegadas_tarde`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llegadas_tarde_institucion`
--

CREATE TABLE `llegadas_tarde_institucion` (
  `id_llegada_tarde_institucion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `estado` enum('justificado','injustificado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `llegadas_tarde_institucion`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `id_profesor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id_nota` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `nota` decimal(5,2) NOT NULL,
  `id_trimestre` int(11) NOT NULL,
  `fecha_calificacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observaciones`
--

CREATE TABLE `observaciones` (
  `id_observacion` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `observacion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `observaciones`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `teléfono` varchar(10) NOT NULL,
  `dirección` varchar(200) NOT NULL,
  `género` enum('masculino','femenino','otro') NOT NULL,
  `id_grado` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id_seccion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_grado` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `secciones`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trimestres`
--

CREATE TABLE `trimestres` (
  `id_trimestre` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trimestres`
--

INSERT INTO `trimestres` (`id_trimestre`, `nombre`) VALUES
(1, 'Primer Trimestre'),
(2, 'Segundo Trimestre'),
(3, 'Tercer Trimestre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contraseña` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD PRIMARY KEY (`id_administrativo`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_asistencia`) USING BTREE,
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `ausencias`
--
ALTER TABLE `ausencias`
  ADD PRIMARY KEY (`id_ausencia`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `comportamiento`
--
ALTER TABLE `comportamiento`
  ADD PRIMARY KEY (`id_comportamiento`);

--
-- Indices de la tabla `comportamiento_estudiante`
--
ALTER TABLE `comportamiento_estudiante`
  ADD PRIMARY KEY (`id_comportamiento_estudiante`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_comportamiento` (`id_comportamiento`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `id_seccion` (`id_seccion`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`id_inscripcion`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `llegadas_tarde`
--
ALTER TABLE `llegadas_tarde`
  ADD PRIMARY KEY (`id_llegada`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `llegadas_tarde_institucion`
--
ALTER TABLE `llegadas_tarde_institucion`
  ADD PRIMARY KEY (`id_llegada_tarde_institucion`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_trimestre` (`id_trimestre`);

--
-- Indices de la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD PRIMARY KEY (`id_observacion`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_profesor`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id_seccion`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `trimestres`
--
ALTER TABLE `trimestres`
  ADD PRIMARY KEY (`id_trimestre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD CONSTRAINT `administrativos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `asistencia_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`);

--
-- Filtros para la tabla `ausencias`
--
ALTER TABLE `ausencias`
  ADD CONSTRAINT `ausencias_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `ausencias_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`);

--
-- Filtros para la tabla `comportamiento_estudiante`
--
ALTER TABLE `comportamiento_estudiante`
  ADD CONSTRAINT `comportamiento_estudiante_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `comportamiento_estudiante_ibfk_2` FOREIGN KEY (`id_comportamiento`) REFERENCES `comportamiento` (`id_comportamiento`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_seccion`) REFERENCES `secciones` (`id_seccion`),
  ADD CONSTRAINT `estudiantes_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`);

--
-- Filtros para la tabla `llegadas_tarde`
--
ALTER TABLE `llegadas_tarde`
  ADD CONSTRAINT `llegadas_tarde_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `llegadas_tarde_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`),
  ADD CONSTRAINT `llegadas_tarde_ibfk_3` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`);

--
-- Filtros para la tabla `llegadas_tarde_institucion`
--
ALTER TABLE `llegadas_tarde_institucion`
  ADD CONSTRAINT `llegadas_tarde_institucion_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`);

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`),
  ADD CONSTRAINT `notas_ibfk_3` FOREIGN KEY (`id_trimestre`) REFERENCES `trimestres` (`id_trimestre`);

--
-- Filtros para la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD CONSTRAINT `observaciones_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `observaciones_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`);

--
-- Filtros para la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD CONSTRAINT `profesores_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id_grado`),
  ADD CONSTRAINT `profesores_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD CONSTRAINT `secciones_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id_grado`),
  ADD CONSTRAINT `secciones_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
