CREATE TABLE ReservaMaterial(
  id_Reserva int not null,
  id_Material int not null,
  qtde_Reserva decimal (10,2) null,
PRIMARY KEY(
  id_Reserva,
  id_Material
  )
)

CREATE TABLE ReservaSala(
  id_Reserva int not null,
  data_reserva datetime not null,
  horario_inicio varchar(50) not null,
  hhorario_final varchar(50) not null,
  id_funcionario int not null,
  id_sala int not null
PRIMARY KEY(
  id_reserva ASC
  )
)

INSERT INTO ReservaMaterial(
  id_reserva,
  id_Material,
  qtde_Reserva
)VALUES(
  80,
  1,
  10
)

INSERT INTO ReservaMaterial(
  id_reserva,
  id_Material,
  qtde_Reserva
)VALUES(
  80,
  2,
  15
)

INSERT INTO ReservaMaterial(
  id_reserva,
  id_Material,
  qtde_Reserva
)VALUES(
  80,
  3,
  5
)

INSERT INTO ReservaMaterial(
  id_reserva,
  id_Material,
  qtde_Reserva
)VALUES(
  90,
  1,
  17
)

INSERT INTO ReservaMaterial(
  id_reserva,
  id_Material,
  qtde_Reserva
)VALUES(
  90,
  3,
  21
)

INSERT INTO ReservaMaterial(
  id_reserva,
  id_Material,
  qtde_Reserva
)VALUES(
  90,
  5,
  33
)

SELECT * FROM ReservaMaterial

SELECT id_Reserva,
  SUM(qtde_Reserva) AS Qtde
FROM ReservaMaterial
GROUP BY id_Reserva

SELECT id_Reserva,
  COUNT(*) AS Qtde_Reserva,
  SUM(qtde_Reserva) AS Total_Reservado,
  AVG(qtde_Reserva) AS Media_Reservada
FROM ReservaMaterial
GROUP BY id_Reserva

SELECT id_Material,
  SUM(qtde_Reserva) AS Soma_Reserva
FROM ReservaMaterial
GROUP BY id_Material
--------------------------------------------------------
CREATE TABLE Material(
  id_Material int not null,
  Nome_Material VARCHAR(10) not null,
  qtde_Disponivel DECIMAL(5) not null
PRIMARY KEY(
  id_Material
  )
)

INSERT INTO Material(
  id_Material,
  Nome_Material,
  qtde_Disponivel
)VALUES(
  1,
  'Sapato',
  100
)

INSERT INTO Material(
  id_Material,
  Nome_Material,
  qtde_Disponivel
)VALUES(
  2,
  'Cinto',
  100
)

INSERT INTO Material(
  id_Material,
  Nome_Material,
  qtde_Disponivel
)VALUES(
  3,
  'Meia',
  100
)

INSERT INTO Material(
  id_Material,
  Nome_Material,
  qtde_Disponivel
)VALUES(
  5,
  'Blusa',
  100
)

SELECT * FROM Material

SELECT R.id_Material,
       Nome_Material,
       SUM(Qtde_Reserva) AS Qtde_Reserva
  FROM ReservaMaterial AS R,
       Material AS M
  where R.id_Material = M.id_Material
 GROUP BY R.id_Material,
          Nome_Material
          
SELECT id_Reserva,
       MAX(qtde_Reserva) AS Maximo
  FROM ReservaMaterial
GROUP BY id_Reserva

SELECT id_Reserva,
       M.id_Material,
       qtde_Reserva,
       Nome_Material,
       qtde_Disponivel
  FROM ReservaMaterial R, Material M
  WHERE R.id_Material = M.id_Material

SELECT M.id_Material,
       M.Nome_Material,
       M.qtde_Disponivel,
       SUM(R.qtde_Reserva) as total_reserva,
       qtde_Disponivel - SUM(R.qtde_Reserva) AS Saldo
  FROM ReservaMaterial R, Material M
  where R.id_Material = M.id_Material
 GROUP BY M.id_Material,
          Nome_Material,
          qtde_Disponivel