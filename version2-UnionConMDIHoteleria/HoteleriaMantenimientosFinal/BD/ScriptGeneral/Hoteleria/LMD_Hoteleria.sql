use hotelsancarlos;
-- ------------------------------------------------------------------------------------------------------------
-- 										LMD Módulo de Hoteleria 
-- ------------------------------------------------------------------------------------------------------------

-- tabla tipoServicio
ALTER TABLE hotelsancarlos.tiposervicio
ADD COLUMN precio FLOAT NOT NULL AFTER nombre;

-- tabla servicioDetallado
ALTER TABLE hotelsancarlos.serviciodetallado 
ADD COLUMN subtotal FLOAT NOT NULL AFTER costo;

-- tabla salon
ALTER TABLE hotelsancarlos.salon 
	DROP FOREIGN KEY salon_ibfk_1;
	ALTER TABLE hotelsancarlos.salon 
	DROP COLUMN idCuenta,
	DROP INDEX idCuenta;
;

-- tabla tipocama
ALTER TABLE hotelsancarlos.tipocama 
DROP COLUMN idCuenta;

-- tabla mesa
ALTER TABLE hotelsancarlos.mesa
DROP COLUMN idCuenta;

-- --------------------------------------
-- Insert Hoteleria
-- --------------------------------------


INSERT INTO `hotelsancarlos`.`modulo` (`pkId`, `nombre`, `descripcion`, `estado`) VALUES ('1001', 'Hoteleria', 'Módulo dedicada al área de Hotelería', 'A');

INSERT INTO `hotelsancarlos`.`aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES ('1002', '1001', 'Mantenimiento Empresa', '1', '0', '0');
INSERT INTO `hotelsancarlos`.`aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES ('1003', '1001', 'Mantenimiento Sucursal', '1', '0', '0');
INSERT INTO `hotelsancarlos`.`aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES ('1004', '1001', 'Mantenimiento Tipo Cliente', '1', '0', '0');
INSERT INTO `hotelsancarlos`.`aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES ('1005', '1001', 'Mantenimiento Tipo Cama', '1', '0', '0');
INSERT INTO `hotelsancarlos`.`aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES ('1006', '1001', 'Mantenimiento Tipo Habitación', '1', '0', '0');
INSERT INTO `hotelsancarlos`.`aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES ('1007', '1001', 'Mantenimiento Habitación', '1', '0', '0');
INSERT INTO `hotelsancarlos`.`aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES ('1008', '1001', 'Mantenimiento Tipo Servicio', '1', '0', '0');
INSERT INTO `hotelsancarlos`.`aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES ('1009', '1001', 'Mantenimiento Salon', '1', '0', '0');
INSERT INTO `hotelsancarlos`.`aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES ('1010', '1001', 'Mantenimiento Mesa', '1', '0', '0');
INSERT INTO `hotelsancarlos`.`aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES ('1011', '1001', 'Mantenimiento Reservacion', '1', '0', '0');

-- usuario aplicacion
select * from usuarioaplicacion;

insert into usuarioaplicacion values ('1', '1002', '1','1','1','1','1');
insert into usuarioaplicacion values ('1', '1003', '1','1','1','1','1');
insert into usuarioaplicacion values ('1', '1004', '1','1','1','1','1');
insert into usuarioaplicacion values ('1', '1005', '1','1','1','1','1');
insert into usuarioaplicacion values ('1', '1006', '1','1','1','1','1');
insert into usuarioaplicacion values ('1', '1007', '1','1','1','1','1');
insert into usuarioaplicacion values ('1', '1008', '1','1','1','1','1');
insert into usuarioaplicacion values ('1', '1009', '1','1','1','1','1');
insert into usuarioaplicacion values ('1', '1010', '1','1','1','1','1');
insert into usuarioaplicacion values ('1', '1011', '1','1','1','1','1');

-- updates aplicacion 
UPDATE `hotelsancarlos`.`aplicacion` SET `rutaChm` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Ayuda\\Hoteleria\\AyudasMantenimientosHoteleria.chm', `rutaHtml` = '1002-Ayuda-Mantenimiento-Empresa.html' WHERE (`pkId` = '1002');
UPDATE `hotelsancarlos`.`aplicacion` SET `rutaChm` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Ayuda\\Hoteleria\\AyudasMantenimientosHoteleria.chm', `rutaHtml` = '1003-Ayuda-Mantenimiento-Sucursal.html' WHERE (`pkId` = '1003');
UPDATE `hotelsancarlos`.`aplicacion` SET `rutaChm` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Ayuda\\Hoteleria\\AyudasMantenimientosHoteleria.chm', `rutaHtml` = '1004-Ayuda-Mantenimiento-Tipo-Cliente.html' WHERE (`pkId` = '1004');
UPDATE `hotelsancarlos`.`aplicacion` SET `rutaChm` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Ayuda\\Hoteleria\\AyudasMantenimientosHoteleria.chm', `rutaHtml` = '1005-Ayuda-Mantenimiento-Tipo-Cama.html' WHERE (`pkId` = '1005');
UPDATE `hotelsancarlos`.`aplicacion` SET `rutaChm` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Ayuda\\Hoteleria\\AyudasMantenimientosHoteleria.chm', `rutaHtml` = '1006-Ayuda-Mantenimiento-Tipo-Habitación.html' WHERE (`pkId` = '1006');
UPDATE `hotelsancarlos`.`aplicacion` SET `rutaChm` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Ayuda\\Hoteleria\\AyudasMantenimientosHoteleria.chm', `rutaHtml` = '1007-Ayuda-Mantenimiento-Habitación.html' WHERE (`pkId` = '1007');
UPDATE `hotelsancarlos`.`aplicacion` SET `rutaChm` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Ayuda\\Hoteleria\\AyudasMantenimientosHoteleria.chm', `rutaHtml` = '1008-Ayuda-Mantenimiento-Tipo-Servicio.html' WHERE (`pkId` = '1008');
UPDATE `hotelsancarlos`.`aplicacion` SET `rutaChm` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Ayuda\\Hoteleria\\AyudasMantenimientosHoteleria.chm', `rutaHtml` = '1009-Ayuda-Mantenimiento-Salón.html' WHERE (`pkId` = '1009');
UPDATE `hotelsancarlos`.`aplicacion` SET `rutaChm` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Ayuda\\Hoteleria\\AyudasMantenimientosHoteleria.chm', `rutaHtml` = '1010-Ayuda-Mantenimiento-Mesa.html' WHERE (`pkId` = '1010');
UPDATE `hotelsancarlos`.`aplicacion` SET `rutaChm` = '0' WHERE (`pkId` = '1011');


select * from reporte;

INSERT INTO `hotelsancarlos`.`reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES ('1', 'Reporte Empresa', 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Reportes\\Hoteleria\\Empresa.rpt', '1002', 'A');

INSERT INTO `hotelsancarlos`.`reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES ('1002', 'Reporte Empresa', '0', '1002', 'A');
INSERT INTO `hotelsancarlos`.`reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES ('1003', 'Reporte Sucursal', '0', '1003', 'A');
INSERT INTO `hotelsancarlos`.`reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES ('1004', 'Reporte Tipo Cliente', '0', '1004' ,'A');
INSERT INTO `hotelsancarlos`.`reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES ('1005', 'Reporte Tipo Cama', '0', '1005', 'A');
INSERT INTO `hotelsancarlos`.`reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES ('1006', 'Reporte Tipo Habitación', '0', '1006', 'A');
INSERT INTO `hotelsancarlos`.`reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES ('1007', 'Reporte Habitación', '0', '1007', 'A');
INSERT INTO `hotelsancarlos`.`reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES ('1008', 'Reporte Tipo Servicio', '0', '1008', 'A');
INSERT INTO `hotelsancarlos`.`reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES ('1009', 'Reporte Salon', '0', '1009', 'A');
INSERT INTO `hotelsancarlos`.`reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES ('1010', 'Reporte Mesa', '0', '1010', 'A');
INSERT INTO `hotelsancarlos`.`reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES ('1011', 'Reporte Reservación', '0', '1011', 'A');


/*update */
UPDATE `hotelsancarlos`.`reporte` SET `ruta` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Reportes\\Hoteleria\\Empresa.rpt' WHERE (`idReporte` = '1002');
UPDATE `hotelsancarlos`.`reporte` SET `ruta` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Reportes\\Hoteleria\\Sucursal.rpt' WHERE (`idReporte` = '1003');
UPDATE `hotelsancarlos`.`reporte` SET `ruta` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Reportes\\Hoteleria\\TipoCliente.rpt' WHERE (`idReporte` = '1004');
UPDATE `hotelsancarlos`.`reporte` SET `ruta` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Reportes\\Hoteleria\\TipoCama.rpt' WHERE (`idReporte` = '1005');
UPDATE `hotelsancarlos`.`reporte` SET `ruta` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Reportes\\Hoteleria\\TipoHabitacion.rpt' WHERE (`idReporte` = '1006');
UPDATE `hotelsancarlos`.`reporte` SET `ruta` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Reportes\\Hoteleria\\Habitacion.rpt' WHERE (`idReporte` = '1007');
UPDATE `hotelsancarlos`.`reporte` SET `ruta` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Reportes\\Hoteleria\\TipoServicio.rpt' WHERE (`idReporte` = '1008');
UPDATE `hotelsancarlos`.`reporte` SET `ruta` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Reportes\\Hoteleria\\Salon.rpt' WHERE (`idReporte` = '1009');
UPDATE `hotelsancarlos`.`reporte` SET `ruta` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Reportes\\Hoteleria\\Mesa.rpt' WHERE (`idReporte` = '1010');
UPDATE `hotelsancarlos`.`reporte` SET `ruta` = 'D:\\Proyectos_Git_Analisis\\HoteleriaMantenimientosFinal\\Reportes\\Hoteleria\\Reservacion.rpt' WHERE (`idReporte` = '1011');
select * from tipoCliente;
select * from cliente;
-- valor
INSERT INTO `hotelsancarlos`.`aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES ('1015', '1001', 'Mantenimiento Reservacion', '1', '0', '0');
insert into usuarioaplicacion values ('1', '1015', '1','1','1','1','1');
