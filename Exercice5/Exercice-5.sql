CREATE DATABASE IF NOT EXISTS School_Contacts;
USE School_Contacts;

CREATE TABLE Sujets (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL
);

CREATE TABLE Cours (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL
);

CREATE TABLE TypeCours (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL,
    ID_Cours INT,
    FOREIGN KEY (ID_Cours) REFERENCES Cours(ID)
    
);

CREATE TABLE Contacts (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Tranche_Age VARCHAR(7),
    Age INT(3),
    Nom VARCHAR(255) NOT NULL,
    Prenom VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Num_Telephone INT NOT NULL,
    Message VARCHAR(255) NOT NULL,
    Date_Envoi TIMESTAMP NOT NULL,
    ID_Sujets INT,
    ID_Type_Cours INT,
    FOREIGN KEY (ID_Sujets) REFERENCES Sujets(ID),
    FOREIGN KEY (ID_Type_Cours) REFERENCES TypeCours(ID)
);