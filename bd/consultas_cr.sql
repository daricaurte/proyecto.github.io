show tables;

-- Select por cada tabla
select * from datos_afiliado;
select * from afiliado_contacto;
select * from datos_contacto;
select * from tipo_empresa;
select * from relaciones;
select * from relac_contactos;
select * from contactos;
select * from relac_redes;
select * from redes;
select * from calificaciones;
select * from orden_priorizado;
select * from potenciales;

 -- Datos principales afiliado
select id_asignado as id, id_afiliado_cc as Cedula, nombres, apellidos from datos_afiliado;

 -- Datos principales contacto
select id_cr_datos_contacto as id, nombres, apellidos, cel_contacto from datos_contacto;

-- Datos contacto sector
select 
datos_afiliado.id_asignado as id_asignado,
datos_afiliado.nombres as afiliado,
datos_contacto.nombres as contacto,
tipo_empresa.sector_primario as sector_primario, 
tipo_empresa.sector_secundario as sector_secundario,
tipo_empresa.sector_terciario as sector_terciario
from datos_afiliado
right join datos_contacto on datos_contacto.id_cr_datos_contacto = datos_afiliado.id_asignado
right join tipo_empresa on tipo_empresa.id_cr_tipo_empresa = datos_afiliado.id_asignado;

-- Datos cotacto relaciones
select 
datos_contacto.nombres as contacto, 
relaciones.relacion_familiar as relacion_familiar, 
relaciones.relacion_laboral as relacion_laboral, 
relaciones.relacion_personal as relacion_personal 
from relaciones
inner join datos_contacto on datos_contacto.id_cr_datos_contacto = relaciones.datos_contacto;

-- Datos contactos
select
datos_contacto.nombres as contacto,
contactos.contac_redes_sociales as contac_redes_sociales,
contactos.contac_clientes_hl as contac_clientes_hl,
contactos.contac_empleados_hl as contac_empleados_hl,
contactos.contac_proveedores_hl as contac_proveedores_hl,
contactos.contac_ent_finan_hl as contac_ent_finan_hl,
contactos.contac_estado_hl as contac_estado_hl,
contactos.contac_academia_hl as contac_academia_hl,
contactos.contac_3cer_sector_hl as contac_3cer_sector_hl,
contactos.contac_org_comunitarias_hl as contac_org_comunitarias_hl,
contactos.contac_socios_accionistas_hl as contac_socios_accionistas_hl,
contactos.contac_internacionales_hl as contac_internacionales_hl,
contactos.contac_medios_comunc_hl as contac_medios_comunc_hl,
contactos.contac_orgnismos_reguladores_hl as contac_organismos_reguladores_hl
from datos_contacto
inner join contactos on contactos.id_cr_cont = datos_contacto.id_cr_datos_contacto;

-- Datos Redes
select
datos_contacto.nombres as contacto,
redes.redes_redes_sociales as redes_redes_sociales,
redes.redes_clientes_hl as redes_clientes_hl,
redes.redes_empleados_hl as redes_empleados_hl,
redes.redes_proveedores_hl as redes_proveedores_hl,
redes.redes_ent_finan_hl as redes_ent_finan_hl,
redes.redes_estado_hl as redes_estado_hl,
redes.redes_academia_hl as redes_academia_hl,
redes.redes_3cer_sector_hl as redes_3cer_sector_hl,
redes.redes_org_comunitarias_hl as redes_org_comunitarias_hl,
redes.redes_socios_accionistas_hl as redes_socios_accionistas_hl,
redes.redes_internacionales_hl as redes_internacionales_hl,
redes.redes_medios_comunc_hl as redes_medios_comunc_hl,
redes.redes_orgnismos_reguladores_hl as redes_organismos_reguladores_hl
from datos_contacto
inner join redes on redes.id_cr_redes = datos_contacto.id_cr_datos_contacto;

-- Datos Calificaciones
select 
datos_contacto.nombres as contacto,
calificaciones.calif_1 as calificacion_1,
calificaciones.calif_2 as calificacion_2,
calificaciones.calif_3 as calificacion_3,
calificaciones.calif_4 as calificacion_4,
round((calif_1+calif_2+calif_3+calif_4)/4, 1) as calif_total,
calificaciones.calif_viabilidad_negocio as viabilidad_de_negocio
from datos_contacto
inner join calificaciones on calificaciones.id_cr_calif = datos_contacto.id_cr_datos_contacto;

-- Datos calificaciones total
select 
datos_contacto.nombres as contacto,
round((calificaciones.calif_1+calificaciones.calif_2+calificaciones.calif_3+calificaciones.calif_4)/4, 1) as calif_total,
calificaciones.calif_viabilidad_negocio as viabilidad_de_negocio
from datos_contacto
inner join calificaciones on calificaciones.id_cr_calif = datos_contacto.id_cr_datos_contacto;

-- Datos orden priorizado
select
datos_contacto.nombres as contacto,
orden_priorizado.calif_logarit as calif_logaritmo,
orden_priorizado.clasific_afiliado as clasificacion_afiliado,
orden_priorizado.clasific_definitiva as clasificacion_definitiva
from datos_contacto
inner join orden_priorizado on orden_priorizado.id_cr_ord_prio = datos_contacto.id_cr_datos_contacto;

-- Datos potenciales 
select 
datos_contacto.nombres as contacto,
potenciales.cliente as potencial_cliente,
potenciales.proveedor as potencial_proveedor,
potenciales.referidor as potencial_referidor,
potenciales.colaborador as potencial_colaborador,
potenciales.asesor as potencial_asesor,
potenciales.aliado_intercambio as potencial_aliado_intercambio
from datos_contacto
inner join potenciales on potenciales.id_cr_pot = datos_contacto.id_cr_datos_contacto
into outfile "D:/DOCS/SENA/PROYECTO/T4/out/datos1.txt" fields terminated by '|' optionally enclosed by '"' lines starting by '->';

/*--------------------------------------------------------------------------------------------------------------------------*/


--

--
/*
select *
from datos_afiliado
cross join datos_contacto;
*/

/*
select *
from datos_afiliado
cross join relaciones;
*/

-- Consulta extensa contactos
select
afiliado_contacto.id_c_r_afil_cont as id,
--
datos_afiliado.nombres as datos_afiliado,
datos_contacto.nombres as datos_contacto,
--
tipo_empresa.sector_primario as sector_primario,
tipo_empresa.sector_secundario as sector_secundario,
tipo_empresa.sector_terciario as sector_terciario,
--
relaciones.relacion_familiar as relacion_familiar,
relaciones.relacion_laboral as relacion_laboral,
relaciones.relacion_personal as relacion_personal,
--
contactos.contac_redes_sociales as contac_redes_sociales,
contactos.contac_clientes_hl as contac_clientes_hl,
contactos.contac_empleados_hl as contac_empleados_hl,
contactos.contac_proveedores_hl as contac_proveedores_hl,
contactos.contac_ent_finan_hl as contac_ent_finan_hl,
contactos.contac_estado_hl as contac_estado_hl,
contactos.contac_academia_hl as contac_academia_hl,
contactos.contac_3cer_sector_hl as contac_3cer_sector_hl,
contactos.contac_org_comunitarias_hl as contac_org_comunitarias_hl,
contactos.contac_socios_accionistas_hl as contac_socios_accionistas_hl,
contactos.contac_internacionales_hl as contac_internacionales_hl,
contactos.contac_medios_comunc_hl as contac_medios_comunc_hl,
contactos.contac_orgnismos_reguladores_hl as contac_orgnismos_reguladores_hl,
--
calificaciones.calif_1 as calif_1,
calificaciones.calif_2 as calif_2,
calificaciones.calif_3 as calif_3,
calificaciones.calif_4 as calif_4,
calificaciones.calif_viabilidad_negocio as calif_viabilidad_negocio,
--
orden_priorizado.calif_logarit as calif_logarit,
orden_priorizado.clasific_afiliado as clasific_afiliado,
orden_priorizado.clasific_definitiva as clasific_definitiva,
--
potenciales.cliente as pot_cliente,
potenciales.proveedor as pot_proveedor,
potenciales.referidor as pot_referidor,
potenciales.colaborador as pot_colaborador,
potenciales.asesor as pot_asesor,
potenciales.aliado_intercambio as pot_aliado_intercambio

from afiliado_contacto
inner join datos_afiliado on datos_afiliado.id_asignado = afiliado_contacto.id_asignado
inner join datos_contacto on datos_contacto.id_cr_datos_contacto = afiliado_contacto.id_cr_datos_contacto
inner join tipo_empresa on tipo_empresa.id_cr_tipo_empresa = afiliado_contacto.id_cr_datos_contacto
inner join relaciones on relaciones.id_cr_relac = afiliado_contacto.id_cr_datos_contacto
inner join contactos on contactos.id_cr_cont = afiliado_contacto.id_cr_datos_contacto
inner join calificaciones on calificaciones.id_cr_calif = afiliado_contacto.id_cr_datos_contacto
inner join orden_priorizado on orden_priorizado.id_cr_ord_prio = afiliado_contacto.id_cr_datos_contacto
inner join potenciales on potenciales.id_cr_pot = afiliado_contacto.id_cr_datos_contacto
where relacion_familiar="si" or relacion_laboral="si" order by id
into outfile 'D:/DOCS/SENA/PROYECTO/T4/out/datos.txt';

-- Consulta extensa redes
select
afiliado_contacto.id_c_r_afil_cont as afiliado_contacto,
--
datos_afiliado.nombres as datos_afiliado,
datos_contacto.nombres as datos_contacto,
--
tipo_empresa.sector_primario as sector_primario,
tipo_empresa.sector_secundario as sector_secundario,
tipo_empresa.sector_terciario as sector_terciario,
--
relaciones.relacion_familiar as relacion_familiar,
relaciones.relacion_laboral as relacion_laboral,
relaciones.relacion_personal as relacion_personal,
--
redes.redes_redes_sociales as redes_redes_sociales,
redes.redes_clientes_hl as redes_clientes_hl,
redes.redes_empleados_hl as redes_empleados_hl,
redes.redes_proveedores_hl as redes_proveedores_hl,
redes.redes_ent_finan_hl as redes_ent_finan_hl,
redes.redes_estado_hl as redes_estado_hl,
redes.redes_academia_hl as redes_academia_hl,
redes.redes_3cer_sector_hl as redes_3cer_sector_hl,
redes.redes_org_comunitarias_hl as redes_org_comunitarias_hl,
redes.redes_socios_accionistas_hl as redes_socios_accionistas_hl,
redes.redes_internacionales_hl as redes_internacionales_hl,
redes.redes_medios_comunc_hl as redes_medios_comunc_hl,
redes.redes_orgnismos_reguladores_hl as redes_orgnismos_reguladores_hl,
--
calificaciones.calif_1 as calif_1,
calificaciones.calif_2 as calif_2,
calificaciones.calif_3 as calif_3,
calificaciones.calif_4 as calif_4,
calificaciones.calif_viabilidad_negocio as calif_viabilidad_negocio,
--
orden_priorizado.calif_logarit as calif_logarit,
orden_priorizado.clasific_afiliado as clasific_afiliado,
orden_priorizado.clasific_definitiva as clasific_definitiva,
--
potenciales.cliente as pot_cliente,
potenciales.proveedor as pot_proveedor,
potenciales.referidor as pot_referidor,
potenciales.colaborador as pot_colaborador,
potenciales.asesor as pot_asesor,
potenciales.aliado_intercambio as pot_aliado_intercambio

from afiliado_contacto
inner join datos_afiliado on datos_afiliado.id_asignado = afiliado_contacto.id_asignado
inner join datos_contacto on datos_contacto.id_cr_datos_contacto = afiliado_contacto.id_cr_datos_contacto
inner join tipo_empresa on tipo_empresa.id_cr_tipo_empresa = afiliado_contacto.id_cr_datos_contacto
inner join relaciones on relaciones.id_cr_relac = afiliado_contacto.id_cr_datos_contacto
inner join redes on redes.id_cr_redes = afiliado_contacto.id_cr_datos_contacto
inner join calificaciones on calificaciones.id_cr_calif = afiliado_contacto.id_cr_datos_contacto
inner join orden_priorizado on orden_priorizado.id_cr_ord_prio = afiliado_contacto.id_cr_datos_contacto
inner join potenciales on potenciales.id_cr_pot = afiliado_contacto.id_cr_datos_contacto
order by afiliado_contacto.id_c_r_afil_cont
into outfile "D:/DOCS/SENA/PROYECTO/T4/out/datos3.csv" fields terminated by ',' optionally enclosed by '"' lines terminated by '\n';

--
--

