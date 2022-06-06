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

INSERT INTO Usuario VALUES (NULL, 'Pessoa1', 'pessoa1@gmail.com', '11 12345-6789', '123', '1000'),
						   (NULL, 'Pessoa2', 'pessoa2@gmail.com', '11 98273-3425', '123', '1001'),
                           (NULL, 'Pessoa3', 'pessoa3@gmail.com', '11 92635-7263', '456', '1001'),
                           (NULL, 'Pessoa4', 'pessoa4@gmail.com', '11 98347-3200', '789', '1000'),
                           (NULL, 'Pessoa5', 'pessoa5@gmail.com', '11 97163-8746', '012', '1000'),
                           (NULL, 'Pessoa6', 'pessoa6@gmail.com', '11 94022-3200', '345', '1000');
                        
SELECT Voto.Escolha, COUNT(Usuario.idUsuario) AS 'qntd_voto' FROM Usuario JOIN Voto ON fkVoto = idVoto GROUP BY Voto.Escolha;