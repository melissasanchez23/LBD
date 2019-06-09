create view Soldado
as
select id_soldado, id_cuerpo2, id_compañia2 nombre from Soldado

select * from Soldado


create view Servicio
as
select id_servicio nombre  from Servicio	

select * from Servicio


create view Cuartel
as
select id_cuartel, nombre from Cuartel

select * from Cuartel


create view Soldado_Servicio
as
select id_soldado2, id_servicio2, nombre from Soldado_Servicio

select * from Soldado_Servicio


create view Compañia
as
select id_compañia, nombre from Compañia

select * from Compañia


create view Cuerpo
as
select id_cuerpo,  nombre from Cuerpo

select * from Cuerpo

create view Compañia_cuartel
as
select id_compañia3,  nombre from Compañia_cuartel

select * from Compañia_cuartel