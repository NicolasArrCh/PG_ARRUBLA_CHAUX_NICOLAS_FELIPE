-- Calcular los ingresos generados por cada sucursal en el último mes.
select sucursales.nombre, pagos.monto
from sucursales
join pagos on pagos.monto = sucursales.id;

-- Consultar el cliente con el mayor monto total de pagos realizados.
select clientes.nombre, pagos.monto
from clientes
join pagos on pagos.monto = clientes.id
order by pagos.monto desc;

-- Obtener el porcentaje de películas alquiladas por género.
-- X X

-- Identificar las sucursales con mayor número de transacciones de
-- alquiler.
select sucursales.nombre, alquileres.costo_total 
from sucursales
join alquileres on alquileres.costo_total =sucursales.id
where alquileres.costo_total > (
	select avg(costo_total)
	from alquileres
);

-- Listar todas las películas disponibles para alquiler, incluyendo detalles
-- como título, género y precio.
select disponibilidad, titulo, genero, precio_alquiler
from peliculas 
where disponibilidad in ('Disponible');

-- Obtener el historial de alquileres de un cliente específico, incluyendo
-- las fechas y los títulos de las películas.
select clientes.nombre, clientes.historial_alquileres, alquileres.fecha_inicio,
		alquileres.fecha_devolucion, peliculas.titulo 
from clientes
join alquileres on alquileres.id = clientes.id
join peliculas on peliculas.id = clientes.id;

-- Consultar las películas con precios de alquiler superiores a un valor
-- especificado.
select *
from peliculas
where precio_alquiler < 15;

-- Listar las películas lanzadas en los últimos 5 años que están disponibles
-- para alquiler.
select titulo, anio_lanzamiento, disponibilidad
from peliculas
where anio_lanzamiento > '01/01/1998';
