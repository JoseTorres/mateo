insert into organizaciones(id, version, codigo, nombre, nombre_completo) values(1, 0,'UM','UM','Universidad de Montemorelos A.C.');

insert into empresas(id, version, codigo, nombre, nombre_completo, organizacion_id) values(1, 0,'PF','PF','PLANTA FÍSICA', 1);

insert into almacenes(id, version, nombre, empresa_id) values(1, 0, 'CENTRAL', 1);

insert into roles(id, version, authority) values(1, 0, 'ROLE_ADMIN');
insert into roles(id, version, authority) values(2, 0, 'ROLE_ORG');
insert into roles(id, version, authority) values(3, 0, 'ROLE_EMP');
insert into roles(id, version, authority) values(4, 0, 'ROLE_USER');

insert into usuarios(id, version, username, password, enabled, nombre, apellido, correo, empresa_id, almacen_id) values(1, 0, 'admin', md5('admin'), true, 'ADMIN','USER','david.mendoza@um.edu.mx', 1, 1);
insert into usuarios(id, version, username, password, enabled, nombre, apellido, correo, empresa_id, almacen_id) values(2, 0, 'user', md5('user'), true, 'NORMAL','USER','portal@um.edu.mx', 1, 1);

insert into usuarios_roles(usuario_id, rol_id) values(1,1);
insert into usuarios_roles(usuario_id, rol_id) values(2,4);