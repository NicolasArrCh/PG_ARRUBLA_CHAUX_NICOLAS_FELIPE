create table clientes (
	id int primary key,
	nombre varchar(255),
	telefono varchar(50),
	direccion varchar(100),
	historial_alquileres varchar(100)
);

create table peliculas (
	id int primary key,
	titulo varchar(100) not null,
	genero text[],
	director varchar(255) not null,
	anio_lanzamiento date,
	disponibilidad varchar(20) check (disponibilidad in ('Disponible', 'No disponible')) not null,
	precio_alquiler decimal(15,2)
);

create table alquileres (
	id int primary key,
	cliente_id int references clientes(id),
	pelicula_id int references peliculas(id),
	fecha_inicio date,
	fecha_devolucion timestamp,
	costo_total decimal(15,2)
);
create table pagos (
	id int primary key,
	cliente_id int references clientes(id),
	fecha_pago date,
	monto decimal(15,2) not null
);

create table categorias (
	id_categorias int primary key,
	categoria varchar(50) check (categoria in ('Acción', 'Comedia', 'Drama', 'Otros')) not null
);

create table sucursales (
	id int primary key,
	nombre varchar(255) not null,
	ubicacion varchar(100) not null,
	inventarios text[]
);