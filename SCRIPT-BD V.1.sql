-- Asignación de roles múltiples
INSERT INTO personal_rol (personal_id, rol_personal_id) VALUES
(2, 5),  -- Marta Jiménez también como Coordinador de SST (por ser supervisora)
(4, 5),  -- Patricia Núñez también como Coordinador de SST
(7, 7),  -- Alberto Ríos también como Brigadista de Emergencias
(8, 6),  -- Claudia Méndez también como Médico Ocupacional (ingeniera con formación en salud)
(10, 5); -- Verónica Castro también como Coordinador de SST


INSERT INTO personal_rol (personal_id, rol_personal_id) VALUES
-- Constructora Segura S.A.
(1, 1),  -- Luis Fernández como Operario de Producción
(2, 2),  -- Marta Jiménez como Supervisora de Línea

-- Industrias Protegidas Ltda.
(3, 1),  -- Roberto Vargas como Operario de Producción
(4, 4),  -- Patricia Núñez como Jefe de Área

-- Transportes Seguros S.A.S.
(5, 8),  -- Jorge Silva como Operador de Maquinaria (conductor)
(6, 10), -- Diana Morales como Auxiliar Administrativo

-- Minas Cuidado S.A.
(7, 1),  -- Alberto Ríos como Operario de Producción (minero)
(8, 4),  -- Claudia Méndez como Jefe de Área (ingeniera)

-- Alimentos Saludables Ltda.
(9, 1),  -- Ricardo Soto como Operario de Producción
(10, 2); -- Verónica Castro como Supervisora de Línea




INSERT INTO roles (nombre) VALUES 
('Administrador del Sistema'),
('Gerente de SST'),
('Coordinador de Seguridad'),
('Supervisor de Área'),
('Técnico en Seguridad'),
('Médico Ocupacional'),
('Recursos Humanos'),
('Trabajador'),
('Auditor Interno'),
('Contratista');

INSERT INTO usuarios (nombre_completo, correo, usuario, contraseña, estado, rol_id) VALUES 
('Juan Pérez', 'juan.perez@empresa.com', 'jperez', SHA2('Seguro123', 256), 'Activo', 1),
('María Gómez', 'maria.gomez@empresa.com', 'mgomez', SHA2('Pass1234', 256), 'Activo', 2),
('Carlos López', 'carlos.lopez@empresa.com', 'clopez', SHA2('Sst2023', 256), 'Activo', 3),
('Ana Rodríguez', 'ana.rodriguez@empresa.com', 'arodriguez', SHA2('Ana456', 256), 'Activo', 4),
('Pedro Martínez', 'pedro.martinez@empresa.com', 'pmartinez', SHA2('Martinez789', 256), 'Activo', 5),
('Laura Sánchez', 'laura.sanchez@empresa.com', 'lsanchez', SHA2('LauraSST', 256), 'Activo', 6),
('David Ramírez', 'david.ramirez@empresa.com', 'dramirez', SHA2('Rh2023', 256), 'Activo', 7),
('Sofía Castro', 'sofia.castro@empresa.com', 'scastro', SHA2('Trabajador1', 256), 'Activo', 8),
('Andrés Herrera', 'andres.herrera@empresa.com', 'aherrera', SHA2('Auditor123', 256), 'Activo', 9),
('Mónica Díaz', 'monica.diaz@contratista.com', 'mdiaz', SHA2('Contratista1', 256), 'Activo', 10);

INSERT INTO empresas (nombre, nit, estado, certificado_representacion) VALUES 
('Constructora Segura S.A.', '900123456-1', 'Activa', 'certificado_constructora.pdf'),
('Industrias Protegidas Ltda.', '800654321-2', 'Activa', 'certificado_industrias.pdf'),
('Transportes Seguros S.A.S.', '890123456-3', 'Activa', 'certificado_transportes.pdf'),
('Minas Cuidado S.A.', '901234567-4', 'Activa', 'certificado_minas.pdf'),
('Alimentos Saludables Ltda.', '812345678-5', 'Activa', 'certificado_alimentos.pdf'),
('Energía Segura S.A.', '923456789-6', 'Activa', 'certificado_energia.pdf'),
('Textiles Protegidos S.A.S.', '834567890-7', 'Inactiva', 'certificado_textiles.pdf'),
('Petroquímica Seguridad Ltda.', '945678901-8', 'Activa', 'certificado_petro.pdf'),
('Servicios de Altura S.A.', '856789012-9', 'Activa', 'certificado_altura.pdf');

INSERT INTO formatos_globales (nombre, descripcion, archivo_url, fecha_creacion) VALUES 
('Formato de Inspección de Seguridad', 'Formato para registrar inspecciones de seguridad en áreas de trabajo', 'formatos/inspeccion_seguridad.docx', '2023-01-15 09:00:00'),
('Lista de Verificación EPP', 'Formato para verificar el uso de elementos de protección personal', 'formatos/lista_epp.pdf', '2023-01-20 10:30:00'),
('Reporte de Incidentes', 'Formato estándar para reportar incidentes y accidentes laborales', 'formatos/reporte_incidentes.docx', '2023-02-01 08:45:00'),
('Permiso de Trabajo en Alturas', 'Formato para autorizar trabajos en alturas', 'formatos/permiso_alturas.pdf', '2023-02-10 14:20:00'),
('Evaluación de Riesgos', 'Formato para documentar evaluaciones de riesgo por puesto de trabajo', 'formatos/evaluacion_riesgos.docx', '2023-03-05 11:10:00'),
('Plan de Emergencias', 'Formato base para elaborar planes de emergencia', 'formatos/plan_emergencias.docx', '2023-03-15 16:30:00'),
('Registro de Capacitaciones', 'Formato para registrar asistencia a capacitaciones de SST', 'formatos/registro_capacitaciones.pdf', '2023-04-01 09:15:00'),
('Orden de Servicio Médico', 'Formato para solicitar evaluaciones médicas ocupacionales', 'formatos/orden_medica.docx', '2023-04-10 13:45:00'),
('Acta de Investigación de Accidentes', 'Formato para documentar investigación de accidentes laborales', 'formatos/acta_accidentes.pdf', '2023-05-01 10:00:00'),
('Checklist de Seguridad', 'Lista de verificación general de condiciones de seguridad', 'formatos/checklist_seguridad.docx', '2023-05-15 15:20:00');

INSERT INTO documentos_empresa (empresa_id, formato_id, nombre, archivo_url, fecha_vencimiento, estado, formato) VALUES 
(1, 1, 'Inspección Área de Construcción', 'docs/inspeccion_construccion_001.pdf', '2023-12-31', 'Aprobado', 'PDF'),
(1, 2, 'Verificación EPP Constructores', 'docs/epp_constructores_2023.pdf', '2023-12-31', 'Diligenciado', 'PDF'),
(2, 3, 'Reporte Incidente Químico', 'docs/incidente_quimico_0423.docx', '2023-12-31', 'En Proceso', 'WORD'),
(3, 4, 'Permiso Trabajo Alturas Transportes', 'docs/permiso_alturas_transportes.pdf', '2023-06-30', 'Aprobado', 'PDF'),
(4, 5, 'Evaluación Riesgo Mina Norte', 'docs/riesgo_mina_norte.docx', '2024-01-31', 'Diligenciado', 'WORD'),
(5, 6, 'Plan Emergencias Planta Alimentos', 'docs/plan_emergencias_alimentos.pdf', '2023-12-31', 'Aprobado', 'PDF'),
(6, 7, 'Registro Capacitación Energía', 'docs/capacitacion_energia_0523.pdf', '2023-12-31', 'Diligenciado', 'PDF'),
(7, 8, 'Orden Médica Textiles', 'docs/orden_medica_textiles.docx', '2023-07-15', 'Sin Diligenciar', 'WORD'),
(8, 9, 'Investigación Accidente Petroquímica', 'docs/investigacion_accidente_petro.pdf', '2023-12-31', 'En Proceso', 'PDF'),
(9, 10, 'Checklist Seguridad Andamios', 'docs/checklist_andamios_0623.docx', '2023-07-31', 'Diligenciado', 'WORD');

INSERT INTO notificaciones (documento_id, fecha_envio, dias_antes, enviada_a) VALUES 
(1, '2023-11-30 09:00:00', 30, 2),
(2, '2023-11-15 10:30:00', 45, 3),
(3, '2023-04-25 14:15:00', 5, 4),
(4, '2023-06-15 08:45:00', 15, 5),
(5, '2023-12-31 11:20:00', 30, 6),
(6, '2023-11-30 16:00:00', 30, 7),
(7, '2023-05-28 13:10:00', 3, 8),
(8, '2023-07-01 10:00:00', 14, 9),
(9, '2023-04-05 15:30:00', 1, 10),
(10, '2023-07-15 09:45:00', 15, 1);

INSERT INTO roles_personal (nombre) VALUES 
('Operario de Producción'),
('Supervisor de Línea'),
('Técnico en Mantenimiento'),
('Jefe de Área'),
('Coordinador de SST'),
('Médico Ocupacional'),
('Brigadista de Emergencias'),
('Operador de Maquinaria'),
('Almacenista'),
('Auxiliar Administrativo');

INSERT INTO personal (empresa_id, nombre_completo, documento_identidad, correo, cargo) VALUES 
(1, 'Luis Fernández', '123456789', 'luis.fernandez@constructora.com', 'Obrero'),
(1, 'Marta Jiménez', '987654321', 'marta.jimenez@constructora.com', 'Supervisora de Obra'),
(2, 'Roberto Vargas', '456789123', 'roberto.vargas@industrias.com', 'Operario'),
(2, 'Patricia Núñez', '321654987', 'patricia.nunez@industrias.com', 'Jefa de Producción'),
(3, 'Jorge Silva', '789123456', 'jorge.silva@transportes.com', 'Conductor'),
(3, 'Diana Morales', '654987321', 'diana.morales@transportes.com', 'Logística'),
(4, 'Alberto Ríos', '234567891', 'alberto.rios@minas.com', 'Minero'),
(4, 'Claudia Méndez', '918273645', 'claudia.mendez@minas.com', 'Ingeniera de Minas'),
(5, 'Ricardo Soto', '546372819', 'ricardo.soto@alimentos.com', 'Operario de Línea'),
(5, 'Verónica Castro', '192837465', 'veronica.castro@alimentos.com', 'Control de Calidad');

INSERT INTO personal_rol (personal_id, rol_personal_id) VALUES 
(1, 1),
(2, 2),
(3, 1),
(4, 4),
(5, 8),
(6, 10),
(7, 1),
(8, 4),
(9, 1),
(10, 2);

INSERT INTO hallazgos (empresa_id, descripcion, tipo, fecha) VALUES 
(1, 'Falta de barandas en plataforma de trabajo a 3 metros de altura', 'Auditoría', '2023-05-10'),
(1, 'EPP incompleto en área de soldadura', 'Auditoría', '2023-05-12'),
(2, 'Almacenamiento inadecuado de productos químicos', 'Auditoría', '2023-06-01'),
(3, 'Extintor vencido en área de taller', 'Auditoría', '2023-04-15'),
(4, 'Iluminación insuficiente en túnel de acceso', 'Auditoría', '2023-06-05'),
(5, 'Falta de señalización en área de máquinas', 'Auditoría', '2023-05-20'),
(6, 'Cables eléctricos en mal estado', 'Auditoría', '2023-04-30'),
(7, 'Ausencia de kit de derrames químicos', 'Auditoría', '2023-03-15'),
(8, 'Procedimiento de bloqueo y etiquetado no implementado', 'Auditoría', '2023-06-10'),
(9, 'Escalera de acceso sin puntos de anclaje', 'Auditoría', '2023-05-25');

INSERT INTO planes_accion (hallazgo_id, tarea, responsable_id, fecha_limite, estado) VALUES 
(1, 'Instalar barandas de protección en plataforma', 2, '2023-06-15', 'Completado'),
(2, 'Proveer EPP completo a soldadores y capacitar en su uso', 2, '2023-06-01', 'Completado'),
(3, 'Reorganizar almacén de químicos según normativa', 4, '2023-06-30', 'En Progreso'),
(4, 'Reemplazar extintor vencido y verificar los demás', 6, '2023-05-01', 'Completado'),
(5, 'Instalar luminarias adicionales en túnel', 8, '2023-07-15', 'Pendiente'),
(6, 'Señalizar áreas de máquinas según normativa', 10, '2023-06-10', 'Completado'),
(7, 'Reemplazar cables eléctricos dañados', 5, '2023-05-15', 'Completado'),
(8, 'Adquirir e instalar kit de derrames químicos', 4, '2023-04-01', 'Completado'),
(9, 'Capacitar en bloqueo y etiquetado e implementar procedimiento', 8, '2023-07-01', 'En Progreso'),
(10, 'Instalar puntos de anclaje en escalera de acceso', 2, '2023-06-15', 'Completado');

INSERT INTO incidentes (empresa_id, tipo, fecha, hora, lugar, descripcion, acciones_inmediatas, personas_afectadas) VALUES 
(1, 'Accidente', '2023-04-12', '10:30:00', 'Planta Baja Obra Norte', 'Caída de altura desde andamio', 'Primeros auxilios, traslado a clínica', 'Luis Fernández'),
(1, 'Incidente', '2023-05-03', '14:15:00', 'Área de Almacén', 'Casi accidente por desplome de materiales', 'Cordonar área, revisar apilamiento', 'Ninguna'),
(2, 'Casi Accidente', '2023-03-20', '08:45:00', 'Línea de Producción 2', 'Fuga pequeña de producto químico', 'Contención, limpieza, revisión de válvulas', 'Ninguna'),
(3, 'Accidente', '2023-02-15', '16:30:00', 'Taller Mecánico', 'Golpe por herramienta en mano', 'Primeros auxilios, puntos de sutura', 'Jorge Silva'),
(4, 'Incidente', '2023-06-01', '11:20:00', 'Túnel de Acceso Mina', 'Desprendimiento pequeño de rocas', 'Evacuación temporal, inspección geotécnica', 'Ninguna'),
(5, 'Accidente', '2023-05-18', '09:10:00', 'Línea de Envasado', 'Quemadura por vapor', 'Primeros auxilios, tratamiento médico', 'Ricardo Soto'),
(6, 'Casi Accidente', '2023-04-05', '13:45:00', 'Subestación Eléctrica', 'Chispa en tablero principal', 'Desenergizar, revisión por electricista', 'Ninguna'),
(7, 'Incidente', '2023-03-10', '10:00:00', 'Área de Teñido', 'Derrame pequeño de colorante', 'Limpieza con materiales absorbentes', 'Ninguna'),
(8, 'Accidente', '2023-05-22', '15:30:00', 'Planta de Procesos', 'Exposición a vapores químicos', 'Evacuación, atención médica', 'Alberto Ríos'),
(9, 'Casi Accidente', '2023-06-08', '07:50:00', 'Área de Andamios', 'Herramienta que cae desde altura', 'Cordonar área, revisar procedimientos', 'Ninguna');

INSERT INTO capacitaciones (empresa_id, tema, fecha, hora, responsable_id) VALUES 
(1, 'Trabajo Seguro en Alturas', '2023-06-15', '08:00:00', 2),
(1, 'Manejo de EPP', '2023-05-20', '14:00:00', 2),
(2, 'Manejo Seguro de Productos Químicos', '2023-06-10', '10:00:00', 4),
(3, 'Conducción Defensiva', '2023-05-25', '09:30:00', 6),
(4, 'Seguridad en Espacios Confinados', '2023-06-20', '08:00:00', 8),
(5, 'Procedimientos de Bloqueo y Etiquetado', '2023-06-05', '13:00:00', 10),
(6, 'Primeros Auxilios Básicos', '2023-05-15', '10:00:00', 4),
(7, 'Prevención de Incendios', '2023-06-12', '15:00:00', 8),
(8, 'Manejo de Derrames Químicos', '2023-05-30', '11:00:00', 4),
(9, 'Uso Seguro de Herramientas Manuales', '2023-06-08', '08:30:00', 2);

INSERT INTO materiales_capacitacion (capacitacion_id, archivo_url, descripcion) VALUES 
(1, 'capacitaciones/alturas_presentacion.pdf', 'Presentación Trabajo en Alturas'),
(1, 'capacitaciones/alturas_video.mp4', 'Video demostrativo uso arnés'),
(2, 'capacitaciones/epp_manual.pdf', 'Manual de EPP por área'),
(3, 'capacitaciones/quimicos_hoja_seguridad.pdf', 'Hojas de seguridad productos químicos'),
(4, 'capacitaciones/conduccion_guia.pdf', 'Guía conducción defensiva'),
(5, 'capacitaciones/confinados_checklist.pdf', 'Checklist espacios confinados'),
(6, 'capacitaciones/bloqueo_procedimiento.docx', 'Procedimiento bloqueo y etiquetado'),
(7, 'capacitaciones/primeros_auxilios.pdf', 'Manual primeros auxilios'),
(8, 'capacitaciones/incendios_presentacion.pptx', 'Presentación prevención de incendios'),
(9, 'capacitaciones/derrames_protocolo.pdf', 'Protocolo manejo derrames'),
(10, 'capacitaciones/herramientas_manuales.pdf', 'Uso seguro herramientas manuales');

INSERT INTO evaluaciones (capacitacion_id, tipo, archivo_url) VALUES 
(1, 'Pre', 'evaluaciones/alturas_pre.pdf'),
(1, 'Post', 'evaluaciones/alturas_post.pdf'),
(2, 'Pre', 'evaluaciones/epp_pre.docx'),
(2, 'Post', 'evaluaciones/epp_post.docx'),
(3, 'Pre', 'evaluaciones/quimicos_pre.pdf'),
(3, 'Post', 'evaluaciones/quimicos_post.pdf'),
(4, 'Pre', 'evaluaciones/conduccion_pre.pdf'),
(4, 'Post', 'evaluaciones/conduccion_post.pdf'),
(5, 'Pre', 'evaluaciones/confinados_pre.docx'),
(5, 'Post', 'evaluaciones/confinados_post.docx'),
(6, 'Pre', 'evaluaciones/bloqueo_pre.pdf'),
(6, 'Post', 'evaluaciones/bloqueo_post.pdf'),
(7, 'Pre', 'evaluaciones/auxilios_pre.pdf'),
(7, 'Post', 'evaluaciones/auxilios_post.pdf'),
(8, 'Pre', 'evaluaciones/incendios_pre.docx'),
(8, 'Post', 'evaluaciones/incendios_post.docx'),
(9, 'Pre', 'evaluaciones/derrames_pre.pdf'),
(9, 'Post', 'evaluaciones/derrames_post.pdf'),
(10, 'Pre', 'evaluaciones/herramientas_pre.pdf'),
(10, 'Post', 'evaluaciones/herramientas_post.pdf');

INSERT INTO evaluaciones_medicas (personal_id, fecha, archivo_url, restricciones, observaciones, recomendaciones) VALUES 
(1, '2023-01-15', 'medicas/fernandez_0123.pdf', 'No trabajar en alturas por vértigo', 'Requiere seguimiento por estrés', 'Terapia ocupacional recomendada'),
(2, '2023-02-20', 'medicas/jimenez_0223.pdf', 'Ninguna', 'Buena condición física', 'Continuar con chequeos anuales'),
(3, '2023-03-10', 'medicas/vargas_0323.pdf', 'Limitación para levantar >20kg', 'Lesión lumbar previa', 'Fortalecimiento muscular'),
(4, '2023-01-30', 'medicas/nunez_0123.pdf', 'Ninguna', 'Exposición a ruido controlada', 'Uso permanente de protectores auditivos'),
(5, '2023-04-05', 'medicas/silva_0423.pdf', 'No conducir más de 8 horas continuas', 'Fatiga visual moderada', 'Pausas activas cada 2 horas'),
(6, '2023-02-15', 'medicas/morales_0223.pdf', 'Ninguna', 'Salud óptima', 'Mantener hábitos saludables'),
(7, '2023-05-01', 'medicas/rios_0523.pdf', 'No espacios confinados por claustrofobia', 'Ansiedad controlada', 'Seguimiento psicológico'),
(8, '2023-03-20', 'medicas/mendez_0323.pdf', 'Ninguna', 'Buena condición cardiovascular', 'Continuar ejercicio regular'),
(9, '2023-04-10', 'medicas/soto_0423.pdf', 'Evitar exposición a frío extremo', 'Artritis incipiente', 'Terapia física recomendada'),
(10, '2023-02-28', 'medicas/castro_0223.pdf', 'Ninguna', 'Embarazo de 3 meses', 'Ajustar condiciones de trabajo');

INSERT INTO historial_cambios (usuario_id, entidad_afectada, id_entidad, tipo_accion, descripcion) VALUES 
(1, 'usuarios', 2, 'Editar', 'Actualización de permisos de usuario'),
(2, 'documentos_empresa', 3, 'Crear', 'Nuevo documento de incidente químico'),
(3, 'planes_accion', 5, 'Editar', 'Ajuste de fecha límite para instalación luminarias'),
(4, 'personal', 7, 'Crear', 'Registro nuevo personal minero'),
(5, 'capacitaciones', 2, 'Crear', 'Programación capacitación EPP'),
(6, 'evaluaciones_medicas', 1, 'Editar', 'Actualización de restricciones médicas'),
(7, 'incidentes', 4, 'Crear', 'Registro de accidente en taller'),
(8, 'empresas', 6, 'Editar', 'Actualización datos de empresa'),
(9, 'hallazgos', 8, 'Crear', 'Nuevo hallazgo en auditoría'),
(10, 'notificaciones', 7, 'Editar', 'Ajuste de fecha de notificación');

INSERT INTO normativas (nombre, tipo, articulo, descripcion, url_oficial) VALUES 
('Ley 1562 de 2012', 'Ley', 'Artículo 1', 'Reforma Sistema General de Riesgos Laborales', 'https://www.mintrabajo.gov.co/ley-1562-2012'),
('Resolución 1401 de 2007', 'Resolución', 'Capítulo 3', 'Investigación de accidentes de trabajo', 'https://www.arlsura.com/resolucion-1401-2007'),
('Decreto 1072 de 2015', 'Decreto', 'Título 4', 'Reglamenta SG-SST', 'https://www.mintrabajo.gov.co/decreto-1072-2015'),
('Resolución 0312 de 2019', 'Resolución', 'Anexo 1', 'Estándares mínimos SG-SST', 'https://www.mintrabajo.gov.co/resolucion-0312-2019'),
('Ley 55 de 1993', 'Ley', 'Artículo 5', 'Normas sobre Higiene y Seguridad Industrial', 'https://www.alcaldiabogota.gov.co/ley-55-1993'),
('Resolución 2400 de 1979', 'Resolución', 'Título III', 'Estatuto de Seguridad Industrial', 'https://www.arlsura.com/resolucion-2400-1979'),
('Decreto 1443 de 2014', 'Decreto', 'Artículo 2.2.4.6', 'Seguridad en trabajos en alturas', 'https://www.mintrabajo.gov.co/decreto-1443-2014'),
('Resolución 1111 de 2017', 'Resolución', 'Anexo técnico', 'Estándares para gestión del riesgo químico', 'https://www.mintrabajo.gov.co/resolucion-1111-2017'),
('Ley 361 de 1997', 'Ley', 'Artículo 10', 'Normas para protección de personas con discapacidad', 'https://www.alcaldiabogota.gov.co/ley-361-1997'),
('Decreto 1886 de 2015', 'Decreto', 'Capítulo 2', 'Seguridad en minería subterránea', 'https://www.minminas.gov.co/decreto-1886-2015');

INSERT INTO documentos_normativas (documento_id, normativa_id) VALUES 
(1, 1),
(1, 3),
(2, 4),
(3, 2),
(3, 7),
(4, 7),
(5, 10),
(6, 3),
(6, 4),
(7, 1),
(8, 5),
(9, 2),
(10, 6);

INSERT INTO firmas_digitales (documento_id, usuario_id, hash_firma, certificado) VALUES 
(1, 2, 'a1b2c3d4e5f6g7h8i9j0', 'certificado_mgomez.p12'),
(2, 3, 'b2c3d4e5f6g7h8i9j0k1', 'certificado_clopez.p12'),
(3, 4, 'c3d4e5f6g7h8i9j0k1l2', 'certificado_arodriguez.p12'),
(4, 5, 'd4e5f6g7h8i9j0k1l2m3', 'certificado_pmartinez.p12'),
(5, 6, 'e5f6g7h8i9j0k1l2m3n4', 'certificado_lsanchez.p12'),
(6, 7, 'f6g7h8i9j0k1l2m3n4o5', 'certificado_dramirez.p12'),
(7, 8, 'g7h8i9j0k1l2m3n4o5p6', 'certificado_scastro.p12'),
(8, 9, 'h8i9j0k1l2m3n4o5p6q7', 'certificado_aherrera.p12'),
(9, 10, 'i9j0k1l2m3n4o5p6q7r8', 'certificado_mdiaz.p12'),
(10, 1, 'j0k1l2m3n4o5p6q7r8s9', 'certificado_jperez.p12');

INSERT INTO peligros (empresa_id, area_trabajo, actividad, tipo_peligro, descripcion) VALUES 
(1, 'Área de Construcción', 'Trabajo en alturas', 'Seguridad', 'Riesgo de caída de personas o objetos'),
(1, 'Área de Soldadura', 'Soldadura eléctrica', 'Físico', 'Exposición a radiación UV, chispas y calor'),
(2, 'Almacén Químico', 'Almacenamiento de productos químicos', 'Químico', 'Exposición a sustancias corrosivas y tóxicas'),
(3, 'Taller Mecánico', 'Mantenimiento vehicular', 'Físico', 'Ruido, vibraciones y partículas en suspensión'),
(4, 'Frente de Mina', 'Perforación de roca', 'Físico', 'Polvo mineral, ruido y vibraciones'),
(5, 'Línea de Producción', 'Operación de máquinas', 'Seguridad', 'Partes móviles sin protección adecuada'),
(6, 'Subestación Eléctrica', 'Mantenimiento eléctrico', 'Seguridad', 'Riesgo de electrocución y arco eléctrico'),
(7, 'Área de Teñido', 'Manejo de colorantes', 'Químico', 'Exposición a vapores químicos y dermatosis'),
(8, 'Planta de Procesos', 'Operación de reactores', 'Químico', 'Presión, temperatura y sustancias peligrosas'),
(9, 'Área de Andamios', 'Montaje de estructuras', 'Ergonómico', 'Movimientos repetitivos y posturas forzadas');

INSERT INTO evaluaciones_riesgo (peligro_id, probabilidad, severidad, frecuencia, nivel_riesgo, medidas_control, fecha_evaluacion, evaluado_por) VALUES 
(1, 4, 5, 5, 20, 'Uso de EPP, barandas, redes de seguridad', '2023-01-15', 2),
(2, 3, 4, 4, 12, 'Cortinas anti-chispas, EPP, ventilación', '2023-02-10', 2),
(3, 2, 5, 3, 10, 'Almacenamiento segregado, EPP, hojas de seguridad', '2023-03-05', 4),
(4, 3, 3, 5, 15, 'Protección auditiva, extracción localizada', '2023-01-20', 6),
(5, 4, 4, 4, 16, 'Humectación, protección respiratoria, rotación', '2023-04-01', 8),
(6, 3, 5, 5, 15, 'Resguardos de máquinas, bloqueo/etiquetado', '2023-02-15', 10),
(7, 2, 5, 2, 10, 'Procedimientos de trabajo seguro, EPP dieléctrico', '2023-03-10', 4),
(8, 3, 3, 4, 12, 'Ventilación, EPP químico, rotación', '2023-01-25', 8),
(9, 2, 5, 3, 10, 'Sistemas de alarma, válvulas de seguridad', '2023-04-05', 4),
(10, 3, 2, 5, 15, 'Pausas activas, rotación, ayudas mecánicas', '2023-02-28', 2);

INSERT INTO epp (nombre, tipo_proteccion, normativa_cumplida, proveedor, vida_util_dias, fecha_vencimiento) VALUES 
('Casco de Seguridad', 'Protección cabeza', 'NTC 1583', 'Protección Total S.A.', 730, '2024-12-31'),
('Gafas de Seguridad', 'Protección ocular', 'ANSI Z87.1', 'Seguridad Visual Ltda.', 365, '2023-12-31'),
('Respirador N95', 'Protección respiratoria', 'NIOSH 42CFR84', 'Aire Limpio S.A.S.', 30, '2023-07-31'),
('Arnés de Seguridad', 'Protección caídas', 'NFPA 1983', 'Altura Segura S.A.', 365, '2025-06-10');

INSERT INTO epp_asignados (epp_id, personal_id, fecha_entrega, estado, observaciones, firmado) VALUES 
(1, 1, '2023-01-10', 'Asignado', 'Casco color amarillo talla M', TRUE),
(2, 1, '2023-01-10', 'Requiere Reposición', 'Gafas con rayones', FALSE),
(3, 3, '2023-03-15', 'Asignado', 'Respirador para área química', TRUE),
(4, 1, '2023-02-20', 'Asignado', 'Arnés para trabajo en alturas', TRUE),
(1, 2, '2023-01-05', 'Asignado', 'Casco color blanco talla L', TRUE),
(2, 4, '2023-02-01', 'Devuelto', 'Gafas retornadas por cambio de área', TRUE),
(3, 7, '2023-04-10', 'Asignado', 'Respirador para área minera', TRUE),
(4, 9, '2023-03-01', 'Requiere Reposición', 'Arnés con desgaste en costuras', FALSE),
(1, 5, '2023-01-15', 'Asignado', 'Casco color azul talla S', TRUE),
(2, 8, '2023-02-10', 'Asignado', 'Gafas con protección lateral', TRUE);

INSERT INTO solicitudes_recuperacion (usuario_id, fecha_solicitud, estado) VALUES 
(2, '2023-05-01 14:30:00', 'Atendida'),
(3, '2023-05-15 09:45:00', 'Atendida'),
(5, '2023-06-01 16:20:00', 'Pendiente'),
(7, '2023-04-20 11:10:00', 'Atendida'),
(1, '2023-05-10 08:15:00', 'Atendida'),
(4, '2023-06-05 13:25:00', 'Pendiente'),
(8, '2023-03-15 10:30:00', 'Atendida'),
(6, '2023-05-22 15:45:00', 'Atendida'),
(9, '2023-04-05 14:00:00', 'Atendida'),
(10, '2023-06-08 09:20:00', 'Pendiente');



-- RF01, RF02, RF03: Usuarios, Roles, Autenticación y Recuperación

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(100),
    correo VARCHAR(100) UNIQUE,
    usuario VARCHAR(50) UNIQUE NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    estado ENUM('Activo', 'Bloqueado'),
    intentos_fallidos INT DEFAULT 0,
    rol_id INT,
    FOREIGN KEY (rol_id) REFERENCES roles(id)
);

CREATE TABLE solicitudes_recuperacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    fecha_solicitud DATETIME,
    estado ENUM('Pendiente', 'Atendida'),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);


-- RF04, RF05: Registro y visualización de empresas

CREATE TABLE empresas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nit VARCHAR(20) UNIQUE NOT NULL,
    estado ENUM('Activa', 'Inactiva'),
    certificado_representacion VARCHAR(255) NOT NULL
);


-- RF06: Formatos Globales

CREATE TABLE formatos_globales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(300),
    archivo_url VARCHAR(255) NOT NULL,
    fecha_creacion DATETIME 
);


-- RF07, RF08: Documentos de empresas y Notificaciones

CREATE TABLE documentos_empresa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empresa_id INT,
    formato_id INT,
    nombre VARCHAR(100) NOT NULL,
    categoria_id INT,
    archivo_url VARCHAR(255) NOT NULL,
    fecha_vencimiento DATE,
    estado ENUM('Diligenciado', 'En Proceso', 'Sin Diligenciar', 'Aprobado'),
    formato ENUM('PDF', 'WORD', 'JPEG'),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (formato_id) REFERENCES formatos_globales(id)
);

CREATE TABLE notificaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    documento_id INT,
    fecha_envio DATETIME,
    dias_antes INT,
    enviada_a INT,
    FOREIGN KEY (documento_id) REFERENCES documentos_empresa(id),
    FOREIGN KEY (enviada_a) REFERENCES usuarios(id)
);


-- RF09, RF10: Registro y visualización de personal


CREATE TABLE roles_personal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE personal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empresa_id INT,
    nombre_completo VARCHAR(100) NOT NULL,
    documento_identidad VARCHAR(20),
    correo VARCHAR(100),
    cargo VARCHAR(100),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);

CREATE TABLE personal_rol (
    id INT AUTO_INCREMENT PRIMARY KEY,
    personal_id INT,
    rol_personal_id INT,
    FOREIGN KEY (personal_id) REFERENCES personal(id),
    FOREIGN KEY (rol_personal_id) REFERENCES roles_personal(id)
);


-- RF11: Plan de acción y seguimiento de hallazgos


CREATE TABLE hallazgos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empresa_id INT,
    descripcion VARCHAR(300),
    tipo ENUM('Auditoría'),
    fecha DATE,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);

CREATE TABLE planes_accion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hallazgo_id INT,
    tarea VARCHAR(300),
    responsable_id INT,
    fecha_limite DATE,
    estado ENUM('Pendiente', 'En Progreso', 'Completado'),
    FOREIGN KEY (hallazgo_id) REFERENCES hallazgos(id),
    FOREIGN KEY (responsable_id) REFERENCES personal(id)
);


-- RF12: Registro de incidentes y accidentes


CREATE TABLE incidentes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empresa_id INT,
    tipo ENUM('Accidente', 'Incidente', 'Casi Accidente'),
    fecha DATE,
    hora TIME,
    lugar VARCHAR(150),
    descripcion VARCHAR(300),
    acciones_inmediatas VARCHAR(300),
    personas_afectadas VARCHAR(300),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);


-- RF13: Capacitaciones


CREATE TABLE capacitaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empresa_id INT,
    tema VARCHAR(100),
    fecha DATE,
    hora TIME,
    responsable_id INT,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (responsable_id) REFERENCES personal(id)
);

CREATE TABLE asistente_capacitacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    capacitacion_id INT,
    personal_id INT,
    FOREIGN KEY (capacitacion_id) REFERENCES capacitaciones(id),
    FOREIGN KEY (personal_id) REFERENCES personal(id)
);

CREATE TABLE materiales_capacitacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    capacitacion_id INT,
    archivo_url VARCHAR(255),
    descripcion VARCHAR(300),
    FOREIGN KEY (capacitacion_id) REFERENCES capacitaciones(id)
);

CREATE TABLE evaluaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    capacitacion_id INT,
    tipo ENUM('Pre', 'Post'),
    archivo_url VARCHAR(255),
    FOREIGN KEY (capacitacion_id) REFERENCES capacitaciones(id)
);


-- RF14: Evaluaciones médicas


CREATE TABLE evaluaciones_medicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    personal_id INT,
    fecha DATE,
    archivo_url VARCHAR(255),
    restricciones VARCHAR(300),
    observaciones VARCHAR(300),
    recomendaciones VARCHAR(300),
    FOREIGN KEY (personal_id) REFERENCES personal(id)
);


-- RF15: Historial de cambios

CREATE TABLE historial_cambios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    entidad_afectada VARCHAR(100),
    id_entidad INT,
    tipo_accion ENUM('Crear', 'Editar', 'Eliminar'),
    fecha_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    descripcion VARCHAR(300),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);



-- RF16: Integración con Normativas Legales
CREATE TABLE normativas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo ENUM('Ley', 'Decreto', 'Resolución'),
    articulo VARCHAR(50),
    descripcion TEXT,
    url_oficial VARCHAR(255)
);

CREATE TABLE documentos_normativas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    documento_id INT,
    normativa_id INT,
    FOREIGN KEY (documento_id) REFERENCES documentos_empresa(id),
    FOREIGN KEY (normativa_id) REFERENCES normativas(id)
);

-- RF18: Firma Digital
CREATE TABLE firmas_digitales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    documento_id INT,
    usuario_id INT,
    fecha_firma DATETIME DEFAULT CURRENT_TIMESTAMP,
    hash_firma VARCHAR(255),
    certificado VARCHAR(255),
    FOREIGN KEY (documento_id) REFERENCES documentos_empresa(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- RF19: Matriz de Peligros y Evaluación de Riesgos
CREATE TABLE peligros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empresa_id INT,
    area_trabajo VARCHAR(100),
    actividad VARCHAR(255),
    tipo_peligro ENUM('Físico', 'Químico', 'Biológico', 'Ergonómico', 'Psicosocial', 'Seguridad'),
    descripcion TEXT,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);

CREATE TABLE evaluaciones_riesgo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    peligro_id INT,
    probabilidad INT,
    severidad INT,
    frecuencia INT,
    nivel_riesgo INT,
    medidas_control TEXT,
    fecha_evaluacion DATE,
    evaluado_por INT,
    FOREIGN KEY (peligro_id) REFERENCES peligros(id),
    FOREIGN KEY (evaluado_por) REFERENCES personal(id)
);

-- RF20: Gestión de Elementos de Protección Personal (EPP)
CREATE TABLE epp (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo_proteccion VARCHAR(100),
    normativa_cumplida VARCHAR(100),
    proveedor VARCHAR(100),
    vida_util_dias INT,
    fecha_vencimiento DATE
);

CREATE TABLE epp_asignados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    epp_id INT,
    personal_id INT,
    fecha_entrega DATE,
    estado ENUM('Asignado', 'Devuelto', 'Requiere Reposición'),
    observaciones VARCHAR(300),
    firmado BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (epp_id) REFERENCES epp(id),
    FOREIGN KEY (personal_id) REFERENCES personal(id)
);