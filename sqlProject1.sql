--crear base de datos.
create database BDAlmacen
-- poner en uso la bd
use BDAlmacen
go 
--Crear tabla
create table Producto(
	idProd int primary key not null,
	nombreProd nvarchar(60) not null,
	precioProd numeric(18,2) not null,
	existenciaProd int not null default 0,
	existMinProd int not null default 0,
	estadoProd bit default 'True',
)
go
--CRUD
--Create o insertar registros
/* Comando Inser into nombreYabla(campo1,campo2.....,campoN)
values(dato1,dato2,...,datoN)*/

insert into Producto (idProd, nombreProd, precioProd,existenciaProd, existMinProd)
values (1,'café', 85,5,3)

--Read Select o Ver
/* select * from nombreTabla */
Select *from producto 
go
--Insertar mas registros
insert into Producto(idProd, nombreProd,precioProd,
existenciaProd,existMinProd)
values(2,'limon',5,10,5),
	  (3,'Arroz libra',25,200,100),
	  (4,'Teclado',10,10,3)

--Mostrar registros por alias 
select idProd as N'Código',nombreProd as N'Producto',
precioProd as N'Precio', existenciaProd as N'Existencia actual',
existMinProd as N'Minimo'
from Producto

--Update Actualizar 
update Producto set nombreProd='Teclado gamer'
where idProd = 4

--Delete -Eliminar 
delete from Producto  where idProd=2




