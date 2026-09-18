/*CREATE DATABASE IF NOT EXISTS campus_hospital
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_0900_ai_ci;

USE campus_hospital;

CREATE TABLE medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo_medico VARCHAR(50) NOT NULL,
    estado VARCHAR(30) NOT NULL,
    vacaciones VARCHAR(20) NOT NULL,
    horas INT(100) NOT NULL 
);

CREATE TABLE empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo_empleado VARCHAR(50) NOT NULL,
    vacaciones VARCHAR(20) NOT NULL
);


CREATE TABLE pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_medico INT NOT NULL,
    tipo_medico VARCHAR(50) NOT NULL,

    CONSTRAINT fk_paciente_medico
        FOREIGN KEY (id_medico)
        REFERENCES medicos(id_medico)
);


CREATE TABLE vacaciones (
    id_vacaciones INT AUTO_INCREMENT PRIMARY KEY,
    id_doctor INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    estado VARCHAR(30) NOT NULL,

    CONSTRAINT fk_vacaciones_medico
        FOREIGN KEY (id_doctor)
        REFERENCES medicos(id_medico)
);

INSERT INTO medicos (nombre, tipo_medico, estado, vacaciones, horas) VALUES
('carlos', 'general', 'Activo', 'no',10),
('laura', 'especialista', 'Activo', 'no',20),
('alex', 'pediatra', 'Activo', 'si', 15);

INSERT INTO empleados (nombre, tipo_empleado, vacaciones) VALUES
('maría', 'enfermero','no'),
('juan', 'administrativo','no'),
('Ana Torres', 'Recepcionista','no');

INSERT INTO pacientes (nombre, id_medico, tipo_medico) VALUES
('pedro', 1, 'general'),
('sofia', 2, 'especialista'),
('daniel', 3, 'pediatra');

INSERT INTO vacaciones 
(id_doctor, fecha_inicio, fecha_fin, estado) VALUES
(1, '2026-10-01', '2026-10-07', 'pendiente'),
(2, '2026-11-10', '2026-11-15', 'pendiente'),
(3, '2026-12-20', '2026-12-27', 'aprobada');*/

/*
Número de pacientes atendidos por cada médico
SELECT 	med.id_medico,
		med.nombre,
		COUNT(ped.id_paciente) AS cantidad_pacientes
FROM medicos AS med
LEFT JOIN pacientes AS ped 
    ON med.id_medico = ped.id_medico
GROUP BY med.id_medico, med.nombre;

medico con mas horas a la semana
SELECT * FROM medicos ORDER BY horas DESC; 

Médico con mayor cantidad de pacientes asignados
SELECT 	med.id_medico,
		med.nombre,
		COUNT(ped.id_paciente) AS cantidad_pacientes
FROM medicos AS med
LEFT JOIN pacientes AS ped 
    ON med.id_medico = ped.id_medico
GROUP BY med.id_medico, med.nombre
ORDER BY cantidad_pacientes; 

-- Total de pacientes por cada tipo de médico

SELECT med.tipo_medico,
    COUNT(ped.id_paciente) AS total_pacientes
FROM medicos AS med
LEFT JOIN pacientes AS ped
    ON med.id_medico = ped.id_medico
GROUP BY med.tipo_medico;

-- Total de pacientes por médico y por especialidad
SELECT 
    med.nombre AS medico,
    med.tipo_medico AS especialidad,
    COUNT(ped.id_paciente) AS total_pacientes
FROM medicos AS med
LEFT JOIN pacientes AS ped
    ON med.id_medico = ped.id_medico
GROUP BY med.id_medico, med.nombre, med.tipo_medico;
*/




