DELIMITER $$

-- Inserta un nuevo administrativo en la base de datos con todos sus datos personales y profesionales.
CREATE PROCEDURE `InsertarAdministrativo` (
    IN `p_nombre` VARCHAR(30), 
    IN `p_apellidos` VARCHAR(60), 
    IN `p_fecha_de_nacimiento` DATE, 
    IN `p_genero` VARCHAR(30), 
    IN `p_telefono` VARCHAR(10), 
    IN `p_direccion` VARCHAR(200), 
    IN `p_ocupacion` VARCHAR(100), 
    IN `p_id_usuario` INT
)
BEGIN
    INSERT INTO administrativos(nombre, apellidos, fecha_de_nacimiento, género, teléfono, dirección, ocupación, id_usuario)
    VALUES (p_nombre, p_apellidos, p_fecha_de_nacimiento, p_genero, p_telefono, p_direccion, p_ocupacion, p_id_usuario);
END$$

DELIMITER ;

DELIMITER $$

-- Registra la asistencia de un estudiante en una fecha específica, marcando si asistió o faltó, y asociándolo con el profesor responsable.
CREATE PROCEDURE `InsertarAsistencia` (
    IN `p_id_estudiante` INT, 
    IN `p_fecha` DATE, 
    IN `p_estado` ENUM('asistio','falta'), 
    IN `p_id_profesor` INT
)
BEGIN
    INSERT INTO asistencia(id_estudiante, fecha, estado, id_profesor)
    VALUES (p_id_estudiante, p_fecha, p_estado, p_id_profesor);
END$$

DELIMITER ;

DELIMITER $$

-- Registra las ausencias de los estudiantes, pudiendo ser justificadas o injustificadas, enlazando con un registro de asistencia existente.
CREATE PROCEDURE `InsertarAusencia` (
    IN `p_id_asistencia` INT, 
    IN `p_id_estudiante` INT, 
    IN `p_fecha` DATE, 
    IN `p_estado` ENUM('injustificada','justificada')
)
BEGIN
    INSERT INTO ausencias(id_asistencia, id_estudiante, fecha, estado)
    VALUES (p_id_asistencia, p_id_estudiante, p_fecha, p_estado);
END$$

DELIMITER ;

DELIMITER $$

-- Añade un registro de comportamiento de un estudiante, detallando el incidente y proporcionando espacio para una descripción adicional.
CREATE PROCEDURE `InsertarComportamientoEstudiante` (
    IN `p_id_estudiante` INT, 
    IN `p_id_comportamiento` INT, 
    IN `p_fecha` DATE, 
    IN `p_descripcion_adicional` VARCHAR(500)
)
BEGIN
    INSERT INTO comportamiento_estudiante (id_estudiante, id_comportamiento, fecha, descripcion_adicional)
    VALUES (p_id_estudiante, p_id_comportamiento, p_fecha, p_descripcion_adicional);
END$$

DELIMITER ;

DELIMITER $$

-- Inserta un nuevo estudiante con información básica y asociaciones clave como sección y usuario.
CREATE PROCEDURE `InsertarEstudiante` (
    IN `p_nombre` VARCHAR(30), 
    IN `p_apellidos` VARCHAR(60), 
    IN `p_fecha_de_nacimiento` DATE, 
    IN `p_genero` ENUM('masculino','femenino','otro'), 
    IN `p_id_seccion` INT, 
    IN `p_id_usuario` INT
)
BEGIN
    INSERT INTO estudiantes(nombre, apellidos, fecha_de_nacimiento, género, id_seccion, id_usuario)
    VALUES (p_nombre, p_apellidos, p_fecha_de_nacimiento, p_genero, p_id_seccion, p_id_usuario);
END$$

DELIMITER ;


DELIMITER $$

-- Inserta un nuevo grado en la base de datos, cada grado corresponde a un nivel de enseñanza en la institución.
CREATE PROCEDURE `InsertarGrado` (
    IN `p_nombre` VARCHAR(20)
)
BEGIN
    INSERT INTO grados(nombre)
    VALUES (p_nombre);
END$$

DELIMITER ;

DELIMITER $$
-- Inserta una inscripción de un estudiante a una materia específica.
-- Este procedimiento podría extenderse para incluir verificaciones de existencia de estudiante y materia.
CREATE PROCEDURE `InsertarInscripcion` (
    IN `p_id_estudiante` INT, 
    IN `p_id_materia` INT
)
BEGIN
    INSERT INTO inscripcion (id_estudiante, id_materia)
    VALUES (p_id_estudiante, p_id_materia);
END$$

DELIMITER ;

DELIMITER $$
-- Registra un caso de llegada tarde de un profesor, especificando si fue justificada o no.

CREATE PROCEDURE `InsertarLlegadaTarde` (
    IN `p_fecha` DATE, 
    IN `p_hora` TIME, 
    IN `p_id_profesor` INT, 
    IN `p_estado` ENUM('justificado','injustificado')
)
BEGIN
    INSERT INTO llegadas_tarde_institucion (fecha, hora, id_profesor, estado)
    VALUES (p_fecha, p_hora, p_id_profesor, p_estado);
END$$

DELIMITER ;


DELIMITER $$
-- Inserta una nota para un estudiante en una materia y trimestre específicos, junto con la fecha de la calificación.
CREATE PROCEDURE `InsertarNota` (
    IN `p_id_estudiante` INT, 
    IN `p_id_materia` INT, 
    IN `p_nota` DECIMAL(5,2), 
    IN `p_id_trimestre` INT, 
    IN `p_fecha_calificacion` DATE
)
BEGIN
    INSERT INTO notas (id_estudiante, id_materia, nota, id_trimestre, fecha_calificacion)
    VALUES (p_id_estudiante, p_id_materia, p_nota, p_id_trimestre, p_fecha_calificacion);
END$$

DELIMITER ;

DELIMITER $$
-- Añade una observación sobre un estudiante, realizada por un profesor en una fecha específica.
CREATE PROCEDURE `InsertarObservacion` (
    IN `p_id_estudiante` INT, 
    IN `p_id_profesor` INT, 
    IN `p_fecha` DATE, 
    IN `p_observacion` VARCHAR(500)
)
BEGIN
    INSERT INTO observaciones (id_estudiante, id_profesor, fecha, observacion)
    VALUES (p_id_estudiante, p_id_profesor, p_fecha, p_observacion);
    
END$$

DELIMITER ;


DELIMITER $$
-- Inserta los datos de un nuevo profesor incluyendo su información personal y profesional.
CREATE PROCEDURE `InsertarProfesor` (
    IN `p_nombre` VARCHAR(30), 
    IN `p_apellidos` VARCHAR(60), 
    IN `p_fecha_de_nacimiento` DATE, 
    IN `p_telefono` VARCHAR(10), 
    IN `p_direccion` VARCHAR(200), 
    IN `p_genero` ENUM('masculino','femenino','otro'), 
    IN `p_id_grado` INT, 
    IN `p_id_usuario` INT
)
BEGIN
    INSERT INTO profesores(nombre, apellidos, fecha_de_nacimiento, teléfono, dirección, género, id_grado, id_usuario)
    VALUES (p_nombre, p_apellidos, p_fecha_de_nacimiento, p_telefono, p_direccion, p_genero, p_id_grado, p_id_usuario);
END$$

DELIMITER ;

DELIMITER $$
-- Registra una nueva sección, vinculando un grado y un profesor responsable de la misma.
CREATE PROCEDURE `InsertarSeccion` (
    IN `p_nombre` VARCHAR(100), 
    IN `p_id_grado` INT, 
    IN `p_id_profesor` INT
)
BEGIN
    INSERT INTO secciones(nombre, id_grado, id_profesor)
    VALUES (p_nombre, p_id_grado, p_id_profesor);
END$$

DELIMITER ;


DELIMITER $$
-- Inserta un nuevo trimestre en el sistema educativo, utilizado para organizar el calendario académico.
CREATE PROCEDURE `InsertarTrimestre` (
    IN `p_nombre` VARCHAR(50)
)
BEGIN
    INSERT INTO trimestres(nombre)
    VALUES (p_nombre);
END$$

DELIMITER ;


DELIMITER $$
-- Registra un nuevo usuario en el sistema con su nombre de usuario y contraseña.
CREATE PROCEDURE `InsertarUsuario` (
    IN `p_nombre_usuario` VARCHAR(50), 
    IN `p_contrasena` VARCHAR(100)
)
BEGIN
    INSERT INTO usuarios(nombre_usuario, contrasena)
    VALUES (p_nombre_usuario, p_contrasena);
END$$


DELIMITER ;

DELIMITER $$

 -- Inserta una nueva materia en la base de datos con información como el nombre de la materia,
-- el grupo al que pertenece, los cupos disponibles y el profesor asignado.
CREATE PROCEDURE `insertar_materia` (
    IN `p_nombre_materia` VARCHAR(100),
    IN `p_grupo_materia` INT,
    IN `p_cupos` INT,
    IN `p_id_profesor` VARCHAR(36)
)
BEGIN
    INSERT INTO materias (nombre_materia, grupo_materia, cupos, id_profesor)
    VALUES (p_nombre_materia, p_grupo_materia, p_cupos, p_id_profesor);
END$$
DELIMITER ;

DELIMITER $$

-- Registra un nuevo tipo de comportamiento estudiantil en el sistema, categorizado por su severidad
-- (falta leve, falta grave, falta muy grave) y una descripción detallada del comportamiento.
CREATE PROCEDURE `RegistrarComportamiento` (
    IN `p_codigo` ENUM('falta leve','falta grave','falta muy grave'),
    IN `p_descripcion` VARCHAR(500)
)
BEGIN
    INSERT INTO comportamiento (codigo, descripcion)
    VALUES (p_codigo, p_descripcion);
END$$


DELIMITER ;

DELIMITER $$
-- Registra una llegada tarde de un estudiante especificando la fecha, la hora, la materia y el profesor
-- responsable en ese momento. Este registro ayuda a mantener un control sobre la puntualidad y asistencia
-- de los estudiantes.
CREATE PROCEDURE `RegistrarLlegadaTardeEstudiante` (
    IN `p_id_estudiante` INT,
    IN `p_fecha` DATE,
    IN `p_hora` TIME,
    IN `p_id_materia` INT,
    IN `p_id_profesor` INT
)
BEGIN
    INSERT INTO llegadas_tarde (id_estudiante, fecha, hora, id_materia, id_profesor)
    VALUES (p_id_estudiante, p_fecha, p_hora, p_id_materia, p_id_profesor);
END$$

DELIMITER ;

DELIMITER $$

-- Establezco un disparador que se activa después de insertar un registro en la tabla 'asistencia'
CREATE TRIGGER `registrarAusencia` AFTER INSERT ON `asistencia`
FOR EACH ROW 
BEGIN
    -- Si el estado del registro insertado es 'falta', entonces necesito actuar
    IF NEW.estado = 'falta' THEN
        -- Inserto automáticamente un registro en la tabla 'ausencias'
        -- Utilizo los datos del estudiante, la fecha y el profesor de la asistencia marcada como falta
        INSERT INTO ausencias(id_estudiante, fecha, id_profesor)
        VALUES (NEW.id_estudiante, NEW.fecha, NEW.id_profesor);
    END IF;
    END$$


DELIMITER ;
