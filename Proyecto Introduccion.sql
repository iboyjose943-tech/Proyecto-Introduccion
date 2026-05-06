create database biblioteca
use biblioteca

Create table Libros 
(
	LibroID INT PRIMARY	KEY IDENTITY(1, 1),
	Titulo VARCHAR(150),
	Autor VARCHAR(100),
	Editorial VARCHAR(5000),
	Precio INT NOT NULL,
	Stock INT NOT NULL
);

create table Estudiantes 
(
	EstudianteID INT PRIMARY KEY IDENTITY(1, 1),
	Primer_Nombre VARCHAR(150),
	Apellido VARCHAR(100),
	Carrera VARCHAR(100),
	Semestre INT NOT NULL
);

create table Prestamos_Bibliotecarios
(
	PrestamoID INT PRIMARY KEY IDENTITY(1, 1),
	LibroID INT NOT NULL,
	EstudianteID INT NOT NULL,
	Fecha_prestamo Date,
	Duracion_Prestamo INT

	FOREIGN KEY (LibroID) REFERENCES Libros(LibroID),
	FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID)
);

INSERT INTO Libros (Titulo, Autor, Editorial, Precio, Stock) VALUES ('Matematicas', 'Baldor', 'susaeta', 100, 50);

INSERT INTO Estudiantes(Primer_Nombre, Apellido, Carrera, Semestre) VALUES ('Juan', 'Juares', 'Medicina', 1);

INSERT INTO Prestamos_Bibliotecarios (LibroID, EstudianteID, Fecha_prestamo, Duracion_Prestamo) VALUES (1, 1, '2026-05-01', 5);

select * from Libros



delete from Libros where LibroID = 2;
--drop table Estudiantes--
