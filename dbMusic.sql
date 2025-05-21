create database dbMusicas;
use dbMusicas;

create table tbCds (
 Codigo INT PRIMARY KEY AUTO_INCREMENT,
  Nome_cd VARCHAR(100),
  DataCompra DATE,
  ValorPago DECIMAL(8,2),
  LocalCompra VARCHAR(100),
  Album ENUM('Sim', 'Não')
);

create table tbMusicas (
Codigo INT PRIMARY KEY AUTO_INCREMENT,
  CodigoCD INT,
  Numero_musica INT,
  Nome_musica VARCHAR(100),
  Artista VARCHAR(100),
  Tempo TIME,
  FOREIGN KEY (CodigoCD) REFERENCES Cds(Codigo)
);

INSERT INTO tbCds (Nome_cd, DataCompra, ValorPago, LocalCompra, Album) VALUES
('Melhores do Rock', '2023-01-10', 39.90, 'Submarino', 'Sim'),
('Pop Hits', '2023-03-15', 29.90, 'Amazon', 'Não'),
('Sertanejo Raiz', '2023-05-12', 25.00, 'Submarino', 'Sim'),
('Jazz Classics', '2023-07-01', 34.50, 'Americanas', 'Sim'),
('MPB Especial', '2023-08-20', 42.00, 'Submarino', 'Sim');

INSERT INTO tbMusicas (CodigoCD, Numero_musica, Nome_musica, Artista, Tempo) VALUES
(1, 1, 'Back in Black', 'AC/DC', '00:04:15'),
(1, 2, 'Smoke on the Water', 'Deep Purple', '00:05:40'),
(1, 3, 'Highway to Hell', 'AC/DC', '00:03:28'),

(2, 1, 'Levitating', 'Dua Lipa', '00:03:23'),
(2, 2, 'Blinding Lights', 'The Weeknd', '00:03:20'),
(2, 3, 'Watermelon Sugar', 'Harry Styles', '00:02:53'),

(3, 1, 'Evidências', 'Chitãozinho & Xororó', '00:04:50'),
(3, 2, 'Fio de Cabelo', 'Zezé Di Camargo & Luciano', '00:03:55'),
(3, 3, 'Boate Azul', 'José Pedro', '00:05:10'),

(4, 1, 'Take Five', 'Dave Brubeck', '00:05:25'),
(4, 2, 'So What', 'Miles Davis', '00:09:22'),
(4, 3, 'Blue in Green', 'Bill Evans', '00:05:38'),

(5, 1, 'Tocando em Frente', 'Almir Sater', '00:04:10'),
(5, 2, 'Aquarela', 'Toquinho', '00:04:23'),
(5, 3, 'Canção da América', 'Milton Nascimento', '00:03:58');


select * from Cds;

use dbMusicas;

select Nome_cd, DataCompra from tbCds order by DataCompra desc;

select Nome_cd, DataCompra, ValorPago from tbCds order by ValorPago desc;

select sum(ValorPago) AS TotalGasto from tbcds;

select * from tbmusicas where CodigoCD = 1;

select Nome_musica, Artista from tbmusicas;

select Numero_musica, Nome_musica, Tempo
from tbmusicas
where CodigoCD = 5
order by Numero_musica;

select count(*) as totalMusicas from tbmusicas;

select Nome_musica from tbmusicas where Artista = 'José Pedro';

select Nome_cd from tbcds where LocalCompra = 'Submarino';

SELECT Nome_musica FROM tbmusicas ORDER BY Nome_musica;

select * from tbcds where Album = 'sim';

select avg(ValorPago) as MediaPreco from tbcds;
