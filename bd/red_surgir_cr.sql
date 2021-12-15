create database red_surgir_sin_fk;
use red_surgir_sin_fk;
SET SQL_SAFE_UPDATES=0; /*Por seguridad hay que poner la variable en 0 para poder borrar*/

create table datos_afiliado (id_afiliado_cc int(11) not null, id_asignado bigint not null auto_increment primary key,
							nombres varchar(50) not null, apellidos varchar(50) not null, tipo_id varchar(2) not null, pais varchar(50) not null,
                            depto_o_estado varchar(50) not null, ciudad varchar(50) not null, barrio_colonia_o_vereda varchar(50) not null,
                            indicativo varchar(4) not null, celular int(11) not null, telefono int(10), email varchar(50) not null,
                            aceptacion_ter_con enum("si","no") not null, rol_afiliado enum("afiliado","mentor") not null);
describe datos_afiliado;

INSERT INTO datos_afiliado ( id_afiliado_cc, nombres, apellidos, tipo_id, pais, depto_o_estado, ciudad, barrio_colonia_o_vereda,
                             indicativo, celular, telefono, email, aceptacion_ter_con, rol_afiliado)
VALUES (80183278, "alvaro", "cuervo sanabria", "CC", "colombia", "cundinamarca", "bogota", "compartir", "571",
		3058714160, 7507505, "krasc2930@yahoo.com", "1", "1"),
        (52961107, "lili dayana", "becerra sastoque", "CC", "colombia", "cundinamarca", "bogota", "compartir", "571",
        30144506382, 7507505, "dayanabecerra1205@gmail.com", "1", "1"),
        (1000949031, "kevin santiago", "cuervo raigoso", "CC", "colombia", "cundinamarca", "bogota", "compartir", "571",
        3115952646, 7507505, "santiagocuervoraigoso@gmail.com", "1", "1"),
        (80192457, "gustavo", "martinez rodriguez", "CC", "colombia", "santander", "bucaramanga", "los olivos", "571",
        3050203568, 7124528, "gusmar01@hotmail.com", "1", "1"),
        (52433522, "miguel angel", "cubillos medina", "CC", "colombia", "ibague", "tolima", "los robles", "571",
        3107654323, 6018245, "mikecubillos@gmail.com", "1", "1"),
        (19476359, "carlos", "murcia batancourt", "CC", "colombia", "tunja", "boyaca", "lisboa", "571",
        3115687091, 4012355, "carlosmurcia01@gmail.com", "1", "1"),
        (41057682, "lorena", "molina cantor", "CC", "colombia", "cundinamarca", "bogota", "bilbao", "571",
        3224990144, 5012772, "loremolina253@hotmail.com", "1", "1"),
        (42771690, "diana marcela", "morales bernal", "CC", "colombia", "cundinamarca", "bogota", "comuneros", "571",
        3123013314, 7210693, "dianitamora@gmail.com", "1", "1"),
        (52983461, "andrea isabel", "prieto roa", "CC", "colombia", "leticia", "amazonas", "gaitan 2", "571",
        3208712544, 6827105, "andreitaroa@gmail.com", "1", "1"),
        (1000481467, "mateo", "carvajal gomez", "CC", "colombia", "cundinamarca", "bogota", "berbenal", "571",
        3118724311, 0, "matigomez1144@gmail.com", "1", "1"),
		(80183278, "jhon jairo", "rivera barreto", "CC", "colombia", "cundinamarca", "bogota", "ciudadela colsubsidio", "571",
        3214604054, 6910028, "carlitosrivera1@hotmail.com", "si", "afiliado"),
		(10002345671, "juan carlos", "bustos ramirez", "CC", "colombia", "cundinamarca", "bogota", "bochica", "571",
        3105696651, 4105912, "juancbsen@hotmail.com", "si", "afiliado"),
		(41596732, "caludia alejandra", "farfan gonzalez", "CC", "colombia", "cundinamarca", "bogota", "pinos de lombardia", "571",
        3134340131, 6820775, "lalagonzalez@hotmail.com", "si", "afiliado"),
		(80192871, "jhon alexander", "lopez clavijo", "CC", "colombia", "cundinamarca", "bogota", "las flores", "571",
        3174283400, 2159819, "jhonlopezclavijo@gmail.com", "si", "afiliado"),
		(52871456, "nancy eliana", "monpoz joya", "CC", "colombia", "cundinamarca", "bogota", "santa maria del lago", "571",
		3208169503, 0, "nancyjoya2000@gmail.com", "si", "afiliado"),
		(80192765, "juan esteban ", "hecheverry robayo", "CC", "colombia", "cundinamarca", "bogota", "villa maria", "571",
        3123489732, 7952886, "jhechevarry1990@hotmail.com", "si", "afiliado"),
		(79438756, "fredy david", "perez cuervo", "CC", "colombia", "cundinamarca", "bogota", "fontana", "571",
        3187947614, 6254213, "fredyperezc@gmail.com", "si", "afiliado"),
		(10002453781, "mario javier", "nieto", "CC", "colombia", "cundinamarca", "ubate", "rosario urbina", "571",
        3134047231, 5056771, "marionieto00@hotmail.com", "si", "afiliado"),
		(41098751, "sara", "uribe mendoza", "CC", "colombia", "antioquia", "medellin", "el poblado", "572",
        3123456761, 8410061, "saritau1200@gmail.com", "si", "afiliado"),
		(79800454, "hermes", "urrego clavijo", "CC", "colombia", "cundinamarca", "cota", "galan", "571",
        3209903999, 3454448, "hermesuc01@yahoo.com", "si", "afiliado");

create table afiliado_contacto (id_c_r_afil_cont bigint not null auto_increment primary key,
								id_asignado bigint not null, id_cr_datos_contacto bigint not null);
describe afiliado_contacto;

insert into afiliado_contacto (id_asignado, id_cr_datos_contacto)
values (1, 1),
		(2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
        (6, 6),
        (7, 7),
        (8, 8),
        (9, 9),
        (10, 10),
        (11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 16),
		(17, 17),
		(18, 18),
		(19, 19),
		(20, 20);

create table datos_contacto (id_cr_datos_contacto bigint not null auto_increment primary key, nombres varchar(50) not null,
							apellidos varchar(50) not null, cel_contacto int(11) not null, email varchar(50) not null,
                            pais varchar(50) not null, ciudad varchar(50) not null, municipio_localidad varchar(50) not null,
                            vereda_aldea_barrio varchar(50) not null, id_cr_tipo_empresa bigint not null);
describe datos_contacto;

INSERT INTO	datos_contacto (nombres, apellidos, cel_contacto, email, pais, ciudad, municipio_localidad, vereda_aldea_barrio, id_cr_tipo_empresa)
VALUES
("ana lucia", "vasquez contreras", 3120467234, "lucivasquez1970@hotmail.com", "colombia", "bogota", "usaquen", "altos de sotileza", 1),
("carlos andres", "bustos riaño", 3104712904, "ingcarlosbustos@gmail.com", "colombia", "antioquia", "medellin", "el poblado", 2),
("ingrid johana", "rincon triviño", 3217258432, "ingridtriviño1990@hotmail.com", "colombia", "risaralda", "dos quebradas", "las galias", 3),
("sergio", "escobar forigua", 3113567781, "sergibarcelonista@gmail.com", "colombia", "popayan", "payande", "rosales", 4),
("kevin arnold", "robles cordero", 3228724536, "kevinrobles999@yahoo.com", "colombia", "bogota", "suba", "almendros", 5),
("juan david", "colorado ospina", 3185278265, "judaospina@gmail.com", "colombia", "caqueta", "rubiales", "los sauces", 6),
("luciana", "prada muñoz", 3014237659, "luciprada01@hotmail.com", "colombia", "valle", "roldanillo", "cazuca", 7),
("german jose", "benavides pinzon", 3104678211, "germanpinzon@gmail.com", "colombia", "bogota", "cedritos", "palestina", 8), 
("oswaldo angel", "clavijo joya", 3027653421, "oswillclavijo@gmail.com", "colombia", "ibague", "fontibon", "el rubi", 9),
("juan pablo", "rodrigez alfonso", 3058779901, "pachorodriguez01@yahoo.com", "colombia", "bogota", "eden", "potrerillos", 10),
("carlos alberto", "gutierrez rodriguez", 3013254132, "cgutierrez@hotmail.com", "colombia", "boyaca", "tunja", "los robles", 11),					
("lina maria", "ortiz pertuz", 311456762, "linitama1@gmail.com", "colombia", "bogota", "suba", "altilos del campo", 12),
("diana patricia", "mateus robles", 315877999, "dianamateus11@hotmail.com", "colombia", "bogota", "usaquen", "mirandela", 13),
("julian felipe", "franco valero", 322367021, "julifranco12@gmail.com", "colombia", "medellin", "comuna13", "rosales", 14),
("brian alberto", "vela", 315672433, "ingbrianvela@gmail.com", "colombia", "bucaramanga", "monte blanco", "el redentor", 15),		
("martha isabel", "briñez heredia", 302567566, "marthaisabelbriñez@hotmail.com", "colombia", "bogota", "bosa", "brasilia", 16),
("ivonne", "bulla andrade", 312576890, "ivonnebulla1260@hotmail.com", "colombia", "bogota", "fontibon", "verbenal", 17),
("kelly alejandra", "mendez dimate", 315674211, "kellymendez2000@yahoo.com", "colombia", "bogota", "engativa", "la estrella", 18),
("libardo", "garay rodriguez", 3108794135, "libardogaray1960@hotmail.com", "colombia", "bogota", "suba", "alcacerez", 19),
("luis guillermo", "lopez orjuela", 304786799, "lucholopezorjuela@hotmail.com", "colombia", "bogota", "centro", "martires", 20);

create table tipo_empresa (id_cr_tipo_empresa bigint primary key auto_increment not null, sector_primario enum("si","no") not null,
							sector_secundario enum("si","no") not null, sector_terciario enum("si","no") not null);
describe tipo_empresa;

insert into tipo_empresa (sector_primario, sector_secundario, sector_terciario)
values ("si", "no", "no"),
		("no", "si", "no"),
        ("no", "no", "si"),
        ("si", "no", "si"),
        ("no", "si", "no"),
        ("si", "no", "no"),
        ("no", "si", "no"),
        ("si", "si", "no"),
        ("no", "no", "si"),
        ("si", "no", "si"),
        ("si", "no", "no"),
		("no", "si", "no"),
        ("no", "no", "si"),
        ("si", "no", "si"),
        ("no", "si", "no"),
        ("si", "no", "no"),
        ("no", "si", "no"),
        ("si", "si", "no"),
        ("no", "no", "si"),
        ("si", "no", "si");

create table relaciones (id_cr_relac bigint not null auto_increment primary key, relacion_familiar enum("si","no") not null,
						relacion_laboral enum("si","no") not null, relacion_personal enum("si","no") not null, datos_contacto bigint not null );
describe relaciones;

INSERT INTO relaciones (relacion_familiar, relacion_laboral, relacion_personal, datos_contacto)
VALUES ("si", "no", "no", 1),
		("si", "no", "no", 2),
        ("si", "no", "no", 3),
        ("no", "si", "no", 4),
        ("no", "si", "no", 5),
        ("no", "si", "no", 6),
        ("no", "no", "si", 7),
        ("no", "no", "si", 8),
        ("no", "no", "si", 9),
        ("no", "no", "si", 10),
        ("si", "no", "no", 11),
		("no", "si", "no", 12),
		("no", "no", "si", 13),
		("si", "no", "no", 14),
		("no", "si", "no", 15),
		("no", "no", "si", 16),
		("no", "si", "no", 17),
		("si", "no", "no", 18),
		("si", "si", "no", 19),
		("no", "no", "si", 20);

create table relac_contactos (id_cr_relac_cont bigint not null auto_increment primary key, id_cr_relac bigint not null,
								id_cr_cont bigint not null);
describe relac_contactos;

insert into relac_contactos (id_cr_relac, id_cr_cont)
values (1, 1),
		(2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
        (6, 6),
        (7, 7),
        (8, 8),
        (9, 9),
        (10, 10),
        (11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 16),
		(17, 17),
		(18, 18),
		(19, 19),
		(20, 20);

create table contactos (id_cr_cont bigint not null auto_increment primary key, contac_redes_sociales enum("si","no") not null,
								contac_clientes_hl enum("si","no") not null, contac_empleados_hl enum("si","no") not null,
                                contac_proveedores_hl enum("si","no") not null, contac_ent_finan_hl enum("si","no") not null,
                                contac_estado_hl enum("si","no") not null, contac_academia_hl enum("si","no") not null,
                                contac_3cer_sector_hl enum("si","no") not null, contac_org_comunitarias_hl enum("si","no") not null,
                                contac_socios_accionistas_hl enum("si","no") not null, contac_internacionales_hl enum("si","no") not null,
                                contac_medios_comunc_hl enum("si","no") not null, contac_orgnismos_reguladores_hl enum("si","no") not null);
describe contactos;

INSERT INTO contactos (contac_redes_sociales, contac_clientes_hl, contac_empleados_hl, contac_proveedores_hl, contac_ent_finan_hl,
						contac_estado_hl, contac_academia_hl, contac_3cer_sector_hl, contac_org_comunitarias_hl,
                        contac_socios_accionistas_hl, contac_internacionales_hl,
                        contac_medios_comunc_hl, contac_orgnismos_reguladores_hl)
VALUES ("si", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "no"),
		("si", "no", "no", "si", "no", "no", "no", "si", "no", "no", "no", "no", "no"),
		("si", "no", "no", "si", "no", "no", "no", "no", "no", "no", "si", "no", "no"),
        ("no", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "no"),
        ("si", "no", "no", "si", "no", "no", "no", "no", "no", "si", "no", "no", "no"),
        ("si", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "si"),
        ("no", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "no"),
        ("si", "si", "no", "si", "no", "no", "no", "si", "no", "no", "no", "no", "no"),
        ("no", "si", "no", "si", "no", "no", "si", "no", "no", "no", "no", "si", "no"),
        ("si", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "si"),
        ("si", "no", "no", "si", "si", "no", "si", "si", "si", "si", "no", "no","si"),	
       ("no", "no", "si", "si", "si", "si", "no", "no", "si", "no", "no", "si","si"),
       ("si", "no", "no", "no", "no", "no", "no", "si", "si", "no", "no", "si","si"),
       ("no", "no", "si", "si", "si", "no", "si", "no", "si", "no", "no", "no","si"),
       ("si", "no", "no", "no", "no", "si", "no", "si", "si", "si", "no", "si","si"),
       ("no", "no", "si", "si", "si", "no", "no", "no", "si", "no", "no", "no","si"),
       ("si", "no", "no", "si", "no", "no", "no", "si", "si", "si", "no", "si","si"),
       ("no", "no", "si", "no", "si", "no", "no", "no", "si", "no", "no", "no","si"),
       ("si", "no", "no", "si", "no", "si", "si", "si", "si", "si", "no", "si","si"),
       ("no", "no", "si", "no", "si", "no", "no", "no", "si", "no", "no", "no","si");

create table relac_redes (id_cr_relac_red bigint not null auto_increment primary key, id_cr_relac bigint not null,
								id_cr_red bigint not null);
describe relac_redes;

insert into relac_redes (id_cr_relac, id_cr_red)
values (1, 1),
		(2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
        (6, 6),
        (7, 7),
        (8, 8),
        (9, 9),
        (10, 10),
        (11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 16),
		(17, 17),
		(18, 18),
		(19, 19),
		(20, 20);

create table redes (id_cr_redes bigint not null auto_increment primary key, redes_redes_sociales enum("si","no") not null,
								redes_clientes_hl enum("si","no") not null, redes_empleados_hl enum("si","no") not null,
                                redes_proveedores_hl enum("si","no") not null, redes_ent_finan_hl enum("si","no") not null,
                                redes_estado_hl enum("si","no") not null, redes_academia_hl enum("si","no") not null,
                                redes_3cer_sector_hl enum("si","no") not null, redes_org_comunitarias_hl enum("si","no") not null,
                                redes_socios_accionistas_hl enum("si","no") not null, redes_internacionales_hl enum("si","no") not null,
                                redes_medios_comunc_hl enum("si","no") not null, redes_orgnismos_reguladores_hl enum("si","no") not null);
describe redes;

INSERT INTO redes (redes_redes_sociales, redes_clientes_hl, redes_empleados_hl, redes_proveedores_hl, redes_ent_finan_hl,
					redes_estado_hl, redes_academia_hl, redes_3cer_sector_hl, redes_org_comunitarias_hl,
                    redes_socios_accionistas_hl, redes_internacionales_hl,
                    redes_medios_comunc_hl, redes_orgnismos_reguladores_hl)
VALUES ("si", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "si"),
		("no", "si", "no", "si", "no", "no", "si", "no", "no", "no", "no", "si", "no"),
        ("si", "si", "no", "si", "no", "no", "no", "si", "no", "no", "no", "no", "no"),
        ("no", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "no"),
        ("si", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "si"),
        ("si", "no", "no", "si", "no", "no", "no", "no", "no", "si", "no", "no", "no"),
        ("no", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "no"),
        ("no", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "no"),
        ("no", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "no"),
        ("no", "si", "no", "si", "no", "no", "no", "no", "no", "no", "no", "no", "no"),
        ("si", "no", "no", "si", "si", "no", "si", "si", "si", "si", "no", "no","si"),	
       ("no", "no", "si", "si", "si", "si", "no", "no", "si", "no", "no", "si","si"),
       ("si", "no", "no", "no", "no", "no", "no", "si", "si", "no", "no", "si","si"),
       ("no", "no", "si", "si", "si", "no", "si", "no", "si", "no", "no", "no","si"),
       ("si", "no", "no", "no", "no", "si", "no", "si", "si", "si", "no", "si","si"),
       ("no", "no", "si", "si", "si", "no", "no", "no", "si", "no", "no", "no","si"),
       ("si", "no", "no", "si", "no", "no", "no", "si", "si", "si", "no", "si","si"),
       ("no", "no", "si", "no", "si", "no", "no", "no", "si", "no", "no", "no","si"),
       ("si", "no", "no", "si", "no", "si", "si", "si", "si", "si", "no", "si","si"),
       ("no", "no", "si", "no", "si", "no", "no", "no", "si", "no", "no", "no","si");

create table calificaciones (id_cr_calif bigint not null auto_increment primary key, calif_1 decimal(2,1) not null, calif_2 decimal(2,1) not null,
							calif_3 decimal(2,1) not null, calif_4 decimal(2,1) not null, calif_viabilidad_negocio decimal(2,1) not null,
                            id_contactos bigint not null, id_redes bigint not null);
describe calificaciones;

INSERT INTO calificaciones (calif_1, calif_2, calif_3, calif_4, calif_viabilidad_negocio, id_contactos, id_redes)
VALUES (4, 4, 3, 4, 4, 1, 1),
		(4, 4, 4, 4, 4, 2, 2),
        (4, 3, 2, 4, 4, 3, 3),
        (5, 5, 2, 4, 4, 4, 4),
        (4, 3, 3, 4, 4, 5, 5),
        (4, 4, 3, 4, 5, 6, 6),
        (4, 4, 3, 4, 5, 7, 7),
        (3, 3, 3, 4, 5, 8, 8),
        (4, 4, 3, 2, 3, 9, 9),
        (2, 2, 2, 4, 2, 10, 10),
        (3.5, 4.0, 4.0, 3.5, 5.0, 11, 11),
		(3.5, 4.1, 4.5, 4.3, 5.0, 12, 12),
		(3.7, 4.1, 4.0, 5.0, 4.8, 13, 13),
		(3.0, 3.0, 4.0, 4.5, 5.0, 14, 14),
		(3.9, 4.8, 4.0, 4.8, 5.0, 15, 15),
		(4.6, 4.6, 4.6, 4.6, 5.0, 16, 16),
		(3.5, 3.0, 5.0, 4.6, 2.0, 17, 17),
		(5.0, 5.0, 4.8, 4.8, 5.0, 18, 18),
		(3.1, 3.1, 3.1, 3.1, 3.1, 19, 19),
		(3.5, 4.0, 4.0, 4.0, 5.0, 20, 20);

create table orden_priorizado (id_cr_ord_prio bigint not null auto_increment primary key, calif_logarit decimal(2,1) not null,
								clasific_afiliado decimal(2,1) not null, clasific_definitiva decimal(2,1) not null,
                                id_calif bigint not null);
describe orden_priorizado;

INSERT INTO orden_priorizado (calif_logarit, clasific_afiliado, clasific_definitiva, id_calif)
VALUES (3, 4, 5, 1),
		(3, 4, 5, 2),
        (3, 4, 5, 3),
        (3, 4, 5, 4),
        (3, 4, 5, 5),
        (3, 4, 5, 6),
        (3, 4, 5, 7),
        (3, 4, 5, 8),
        (3, 4, 5, 9),
        (3, 4, 5, 10),
        (7.0, 8.0, 8.3, 11),
		(9.0, 8.0, 8.5, 12),
		(8.0, 6.0, 8.3, 13),
		(8.7, 8.1, 9.3, 14),
		(7.2, 7.2, 7.3, 15),
		(7.0, 8.0, 8.3, 16),
		(7.5, 9.0, 9.3, 17),
		(9.0, 8.9, 8.7, 18),
		(8.0, 8.0, 8.0, 19),
		(7.0, 8.0, 8.3, 20);

create table potenciales (id_cr_pot bigint not null auto_increment primary key, cliente enum("si","no") not null,
							proveedor enum("si","no") not null, referidor enum("si","no") not null, colaborador enum("si","no") not null,
                            asesor enum("si","no") not null, aliado_intercambio enum("si","no") not null, id_ord_prior bigint not null);
describe potenciales;

INSERT INTO potenciales (cliente, proveedor, referidor, colaborador, asesor, aliado_intercambio, id_ord_prior)
VALUES ("no","no","si","no","si","no", 1),
		("no","si","si","no","si","no", 2),
        ("si","no","si","no","no","no", 3),
        ("si","no","si","no","si","no", 4),
        ("si","no","si","no","si","no", 5),
        ("no","si","si","no","si","no", 6),
        ("no","si","no","si","si","no", 7),
        ("si","si","si","no","si","no", 8),
        ("no","no","si","si","si","no", 9),
        ("no","no","si","no","si","si", 10),
        ("si", "no", "no", "si", "si", "no", 11),
        ("no", "no", "si", "si", "si", "si", 12),
		("si", "no", "no", "no", "no", "no", 13),
		("si", "no", "no", "si", "si", "no", 14),
		("si", "no", "no", "si", "si", "no", 15),
		("si", "no", "no", "si", "no", "si", 16),
		("no", "no", "si", "no", "si", "no", 17),
		("si", "no", "no", "si", "si", "no", 18),
		("si", "no", "no", "si", "si", "no", 19),
		("no", "no", "si", "no", "si", "no", 20);
		
update datos_afiliado set email= "santiago@gmail.com" WHERE id_afiliado_cc = 1000949031 and nombres = "kevin santiago";
select * from datos_afiliado where id_afiliado_cc = 1000949031 ;