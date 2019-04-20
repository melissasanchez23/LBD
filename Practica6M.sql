SELECT idHuesped as 'ID Cliente', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Añejos' 
from practicas.huesped;

SELECT idHuesped2 as 'ID Cliente2', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Soles vividos' 
from practicas.huesped2;

SELECT idHuesped3 as 'ID Cliente3', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Vida' 
from practicas.huesped3;

SELECT idHuesped4 as 'ID Cliente4', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Menos Vida' 
from practicas.huesped4;

SELECT idHuesped5 as 'ID Cliente5', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Dias sin morir' 
from practicas.huesped5;

SELECT idHuesped6 as 'ID Cliente6', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Años' 
from practicas.huesped6;

SELECT idHuesped7 as 'ID Cliente7', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Años' 
from practicas.huesped7;

SELECT idHuesped8 as 'ID Cliente8', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Años' 
from practicas.huesped8;

SELECT idHuesped9 as 'ID Cliente9', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Años' 
from practicas.huesped9;

SELECT idHuesped10 as 'ID Cliente10', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Años'
from practicas.huesped10;

-- Drop
DROP table practicas.huesped7; -- No utilizar

-- Insert INTO
insert into huesped(idClienteses,Nombre,ApellidoP,ApellidoM,Edad)
values('0100','Alan',' e','bien','23');

-- Insert INTO select
INSERT INTO practicas.huesped10 SELECT * FROM practicas.huesped;
SELECT * FROM practicas.huesped10;