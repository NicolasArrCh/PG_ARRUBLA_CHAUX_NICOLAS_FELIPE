insert into clientes (id, nombre, telefono, direccion)
values
	(1, 'Nicolas Arres', '3129610980', 'calle 141 #03-34'),
	(2, 'David Sozs', '3127660470', 'carrera 13 #25-04'),
	(3, 'Jolgan Gtys', '3269421940', 'calle 82 #23-34'),
	(4, 'Jesus Jomd', '3439626700', 'carrera 765 #54-45'),
	(5, 'Carlos Simeon', '3159340700', 'calle 32 #54-32'),
	(6, 'Juan Abol', '3386750940', 'carrera 2134 #65-87'),
	(7, 'Jose Artemis', '3111938990', 'calle 354 #89-09'),
	(8, 'Jorge Polosk', '3526677999', 'carrera 657 #43-56'),
	(9, 'Isral Cosm', '3590310980', 'carrera 77 #67-567'),
	(10, 'Joshep Naut', '3124650672', 'calle 88 #67-56');
	
	
insert into peliculas (id, titulo, genero, director, anio_lanzamiento, disponibilidad, precio_alquiler)
values
	(1, 'Comeoswme sesef', array['Thriller', 'Suspenso', 'NG'], 'Polasky', '01/01/1990', 'Disponible', 15),
	(2, 'asdf asdf', array['SDDS', 'sd', 'SDE'], 'Mendez', '01/01/1990', 'No disponible', 23),
	(3, 'Assdf sssdew', array['SDVBB', 'SWWW', 'ACX'], 'Strada', '01/01/1975', 'Disponible', 21),
	(4, 'Aere DFSD', array['BFGG', 'DFYHY', 'NHBV'], 'Esstarosa', '01/01/1960', 'No disponible', 16),
	(5, 'SDD', array['SCV', 'sdf', 'SAEE'], 'Deulf', '01/01/1976', 'Disponible', 18),
	(6, 'GVCB', array['SBYTY', 'HJGF', 'JHG'], 'Dima', '01/01/1985', 'No disponible', 27),
	(7, 'JGC dds', array['YTTR', 'EFFFGD', 'NWG'], 'Elieni', '01/01/2000', 'Disponible', 28),
	(8, 'Priviet', array['SD2Q', 'ERF3', 'VG65'], 'PycckN', '01/01/1991', 'No disponible', 12),
	(9, 'Kak Diela', array['54FG', 'D2F', 'NHH54'], 'MockBa', '01/01/1997', 'Disponible', 10),
	(10, 'U minya', array['EF2', 'RE4', 'CXZ'], 'Xoce', '01/01/1999', 'No disponible', 9),
	(11, 'Krakoi', array['BGHB4', 'DF43', 'CGFB'], 'XaBNep', '01/01/1986', 'Disponible', 14),
	(12, 'Prikoity Minya', array['Thriller', 'HNko1ac', 'NG'], 'Polasky', '01/01/2001', 'No disponible', 45),
	(13, 'Spaciba', array['DFG', 'CX', 'SD'], 'Appyb1a', '01/01/2001', 'Disponible', 34),
	(14, 'Payiausta', array['SDF', 'CXX', 'BG'], 'Kymn13ahNoc', '01/01/2000', 'No disponible', 10),
	(15, 'Dom', array['NHFG', 'FVV', 'DF'], 'Polasky', '01/01/2002', 'Disponible', 23);


insert into alquileres (id, cliente_id, pelicula_id, fecha_inicio, fecha_devolucion, costo_total)
values 
	(1, 1, 1, '09/07/2025', '10/19/2025', 120),
	(2, 4, 3, '09/05/2025', '10/17/2025', 133),
	(3, 5, 4, '09/06/2025', '10/18/2025', 155),
	(4, 6, 6, '09/08/2025', '10/19/2025', 135),
	(5, 9, 7, '09/09/2025', '10/19/2025', 134),
	(6, 10, 9, '09/10/2025', '10/11/2025', 126),
	(7, 1, 10, '09/14/2025', '10/19/2025', 176),
	(8, 5, 1, '09/17/2025', '10/19/2025', 156),
	(9, 8, 4, '09/04/2025', '10/19/2025', 138),
	(10, 9, 5, '09/09/2025', '10/18/2025', 111);


insert into pagos (id, cliente_id, fecha_pago, monto)
values 
	(1, 1, '10/15/2025', 120),
	(2, 5, '10/16/2025', 302),
	(3, 10, '10/19/2025', 126),
	(4, 4, '10/20/2025', 393),
	(5, 7, '10/17/2025', 134);

insert into sucursales (id, nombre, ubicacion, inventarios)
values
	(1, 'fasldkjf asdlfk', 'akskd #14-142', array['Comeoswme sesef', 'SDD', 'GVCB', 'Spaciba']),
	(2, 'sdfs sdf', 'sd #123-34', array['asdf asdf', 'GVCB', 'JGC dds', 'Priviet']),
	(3, 'ASDE sttf', 'sd #13-54', array['Aere DFSD', 'Kak Diela', 'JGC dds', 'U minya']),
	(4, 'DFfr sesE', 'sd #16-32', array['Dom', 'Payiausta', 'Kak Diela', 'JGC dds']),
	(5, 'rtD dSSCXZ', 'sd #18-21', array['Prikoity Minya', 'Assdf sssdew', 'GVCB', 'Spaciba']);