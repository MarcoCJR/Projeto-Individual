CREATE DATABASE SWFan;
USE SWFan;

CREATE TABLE Voto (
idVoto INT PRIMARY KEY AUTO_INCREMENT,
Escolha VARCHAR(45)
)AUTO_INCREMENT = 1000;

CREATE TABLE Usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(45),
Email VARCHAR(50),
Telefone CHAR(13),
Senha VARCHAR(30),
fkVoto INT,
FOREIGN KEY (fkVoto) REFERENCES Voto(idVoto)
);

SELECT * FROM Usuario;

INSERT INTO Voto VALUES (NULL, 'Imperio'),
						(NULL, 'Rebeldes');
                        
SELECT Voto.Escolha, COUNT(Usuario.idUsuario) AS 'qntd_voto' FROM Usuario JOIN Voto ON fkVoto = idVoto GROUP BY Voto.Escolha;