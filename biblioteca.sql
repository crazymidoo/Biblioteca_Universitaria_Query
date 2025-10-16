-- PER AVVIARE LE QUERY sqlite3 mydb.sqlite < biblioteca.sql
-- Creo le Tabelle
DROP TABLE IF EXISTS Studente;
Create Table Studente(
    Matricola Int Primary Key,
    Nome Varchar(50) Not Null,
    Cognome Varchar(50) Not Null,
    Corso_di_Laurea Varchar(70) Not Null
);

DROP TABLE IF EXISTS Prestito;
Create Table Prestito(
    Id_Prestito Int Primary Key,
    Inizio_Prestito Date Not Null,
    Data_Restituzione Date Not Null,
    Matricola Int Not Null,
    ISBN Int Not Null,
    Foreign Key(Matricola) References Studente(Matricola),
    Foreign Key(ISBN) References Libro(ISBN)
);

DROP TABLE IF EXISTS Libro;
Create Table Libro(
    ISBN Int Primary Key,
    Autore Varchar(50) Not Null,
    Titolo Varchar(70) Not Null,
    Anno_di_Pubblicazione Int Not Null,
    Id_Categoria Int Not Null,
    Foreign Key(Id_Categoria) References Categoria(Id_Categoria)
);

DROP TABLE IF EXISTS Categoria;
Create Table Categoria(
    Id_Categoria Int Primary Key,
    Nome Varchar(50) Not Null
);


-- Inserisco categorie
INSERT INTO Categoria (Id_Categoria, Nome) VALUES
(1, 'Informatica'),
(2, 'Letteratura'),
(3, 'Matematica'),
(4, 'Fisica'),
(5, 'Storia'),
(6, 'Biologia'),
(7, 'Economia'),
(8, 'Arte');

-- Inserisco libri
INSERT INTO Libro (ISBN, Autore, Titolo, Anno_di_Pubblicazione, Id_Categoria) VALUES
(1001, 'Mario Rossi', 'Programmazione SQL', 2020, 1),
(1002, 'Anna Bianchi', 'Romanzo Storico', 2018, 2),
(1003, 'Luca Verdi', 'Algebra Avanzata', 2019, 3),
(1004, 'Elena Neri', 'Fisica Quantistica', 2021, 4),
(1005, 'Carlo Galli', 'Storia Medievale', 2017, 5),
(1006, 'Paolo Russo', 'Biologia Molecolare', 2022, 6),
(1007, 'Laura Fontana', 'Economia Aziendale', 2019, 7),
(1008, 'Marco Santoro', 'Storia dell’Arte', 2016, 8),
(1009, 'Francesca Rizzo', 'Sistemi Operativi', 2020, 1),
(1010, 'Giorgio Ferrari', 'Letteratura Italiana', 2015, 2);

-- Inserisco studenti
INSERT INTO Studente (Matricola, Nome, Cognome, Corso_di_Laurea) VALUES
(101, 'Giulia', 'Neri', 'Ingegneria Informatica'),
(102, 'Marco', 'Rossi', 'Matematica'),
(103, 'Sara', 'Bianchi', 'Lettere'),
(104, 'Lorenzo', 'Verdi', 'Fisica'),
(105, 'Martina', 'Esposito', 'Biologia'),
(106, 'Alessandro', 'Romano', 'Economia'),
(107, 'Francesca', 'Costa', 'Storia'),
(108, 'Davide', 'Marino', 'Arte'),
(109, 'Simone', 'Greco', 'Informatica'),
(110, 'Chiara', 'Ferrari', 'Matematica');

-- Inserisco prestiti
INSERT INTO Prestito (Id_Prestito, Matricola, ISBN, Inizio_Prestito, Data_Restituzione) VALUES
(1, 101, 1001, '2025-10-01', '2025-10-15'),
(2, 102, 1003, '2025-10-03', '2025-10-17'),
(3, 103, 1002, '2025-10-05', '2025-10-19'),
(4, 104, 1004, '2025-10-07', '2025-10-21'),
(5, 105, 1006, '2025-10-09', '2025-10-23'),
(6, 106, 1007, '2025-10-11', '2025-10-25'),
(7, 107, 1005, '2025-10-13', '2025-10-27'),
(8, 108, 1008, '2025-10-15', '2025-10-29'),
(9, 109, 1009, '2025-10-17', '2025-10-31'),
(10, 110, 1010, '2025-10-19', '2025-11-02');

Select * From Studente;
