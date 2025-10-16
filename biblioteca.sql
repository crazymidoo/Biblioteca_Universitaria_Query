-- Creo le Tabelle
Create Table Studente(
    Matricola Int Primary Key,
    Nome Varchar(50) Not Null,
    Cognome Varchar(50) Not Null,
    Corso_di_Laurea Varchar(70) Not Null
);

Create Table Prestito(
    Id_Prestito Int Primary Key,
    Inizio_Prestito Date Not Null,
    Data_Restituzione Date Not Null,
    Matricola Int Not Null,
    ISBN Int Not Null,
    Foreign Key(Matricola) References Studente(Matricola),
    Foreign Key(ISBN) References Libro(ISBN)
);

Create Table Libro(
    ISBN Int Primary Key,
    Autore Varchar(50) Not Null,
    Titolo Varchar(70) Not Null,
    Anno_di_Pubblicazione Int Not Null,
    Id_Categoria Int Not Null,
    Foreign Key(Id_Categoria) References Categoria(Id_Categoria)
);

Create Table Categoria(
    Id_Categoria Int Primary Key,
    Nome Varchar(50) Not Null
);