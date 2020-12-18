-- Creando la base de datos

CREATE DATABASE Tienda;

USE Tienda;

CREATE TABLE Persona(
	id_persona int,
	nombre varchar(20),
	apellido varchar(20),
	correo varchar(50),
	telefono varchar(15),
	departamento varchar(40),
	ciudad varchar(40),

	primary key(id_persona)

);

CREATE TABLE Valoracion(
	id_valoracion int,
	id_persona int,
	puntuacion int,
	comentario varchar(255),

	primary key(id_persona),

	constraint fk_valoracion_persona foreign key(id_persona) references Persona(id_persona)

);

CREATE TABLE Pedido(
	id_pedido int,
	id_persona int,
	total_pagar int,

	primary key(id_pedido),

	constraint fk_pedido_persona foreign key(id_persona) references Persona(id_persona)

);

CREATE TABLE Producto(
	id_producto int,
	precio int,

	primary key(id_producto)

);

CREATE TABLE Pedido_producto(
	codigo_producto int,
	codigo_pedido int,

	primary key(codigo_producto,codigo_pedido),

	constraint fk_pedido_producto_producto foreign key(codigo_producto) references Producto(id_producto),
	constraint fk_pedido_producto_pedido foreign key(codigo_pedido) references Pedido(id_pedido)

);

CREATE TABLE Receta(
	id_receta int,
	id_producto int,
	cantidad_receta int,

	primary key(id_receta),

	constraint fk_receta_producto foreign key(id_producto) references Producto(id_producto)

);

CREATE TABLE Ingrediente(
	id_ingrediente int,
	nombre varchar(40),
	cantidad int,

	primary key(id_ingrediente)

);

CREATE TABLE Receta_ingrediente(
	codigo_receta int,
	codigo_ingrediente int,

	primary key(codigo_receta,codigo_ingrediente),

	constraint fk_receta_ingrediente_receta foreign key(codigo_receta) references Receta(id_receta),
	constraint fk_receta_ingrediente_ingrediente foreign key(codigo_ingrediente) references Ingrediente(id_ingrediente)


);