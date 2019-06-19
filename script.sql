--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-1.pgdg18.04+1)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-1.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = true;

--
-- Name: motivos_es_gt; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.motivos_es_gt (
    motivo integer NOT NULL,
    des_motivo text,
    estado text,
    tipo text
);


--
-- Data for Name: motivos_es_gt; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.motivos_es_gt (motivo, des_motivo, estado, tipo) FROM stdin;
0	Por tiempo de lectura	A	E
1	Panico	A	E
2	Enganche	A	E
3	Pta cabina	A	E
5	Falla en gps	A	E
6	Fallo de Bateria Principal	A	E
7	Exceso de velocidad	A	E
9	Interrogacion posicion	A	E
11	Interrogacion programacion SMS	A	I
12	encendido del vehiculo	A	E
13	apagado del vehiculo	A	E
14	Soobrepaso limite superior ADC1	A	I
15	Soobrepaso limite inferior ADC1	A	I
16	Soobrepaso limite superior ADC2	A	I
17	Soobrepaso limite inferior ADC2	A	I
18	Ingreso a	A	E
19	Salida de	A	E
21	Reset	A	E
22	Control de audio	A	E
23	Llamada conversacion	A	E
24	Autoreporte	A	E
25	Trailer ID	A	E
26	ENGANCHE TI	A	E
27	Desenganche	A	E
28	Paquete satelital	A	E
29	Interrogacion satelital	A	E
30	Paquete inicial conduse	A	E
31	Datos conduSe	A	I
32	ConfirmaciÃ³n de recepciÃ³n de panico	A	I
33	Peticion de hora	A	I
34	Crash	A	E
35	Kilometraje	A	E
36	Paquete sensor	A	I
39	Lectura por distancia	A	I
40	Fallo de bateria backup	A	E
42	Reservado	A	I
45	apagado remoto sms	A	E
46	Habilitado encendido sms	A	E
47	Interrogacion posicion +INT	A	E
48	Fallo accesorios	A	I
50	LBS	A	I
51	Conductor no valido	A	E
54	Entrada Inalambrica 1 abierta	A	E
55	Entrada Inalambrica 1 cerrada	A	E
56	Entrada Inalambrica 2 abierta	A	E
57	Entrada Inalambrica 2 cerrada	A	E
58	Autoreporte 2	A	I
59	Programacion Sincronismo Ciclado	A	I
60	Reporte de variables de Ciclado	A	E
61	Inicio movimiento	A	E
62	Fin movivimiento	A	E
64	Programacion CP	A	I
65	Programacion PIN	A	I
66	Programacion Basica	A	I
67	Programacion IP y Puerto destino	A	I
68	Programacion APN	A	I
69	Interrogacion APN	A	I
70	Interrogacion IP	A	I
71	Lectura de ruta	A	I
72	Programacion de ruta	A	I
73	Consulta programacion	A	I
74	Respuesta consulta programacion	A	I
75	Programacion Terminal	A	I
76	Programacion Mensajes Pregrabados	A	I
77	Lectura Mensajes INBOX	A	I
78	Programacion Geofences	A	I
80	Programacion Cel	A	I
81	Conf Programacion Cel	A	I
82	Programacion Geofences	A	I
100	Por distancia recorrida	A	E
109	Autoreporte	A	E
128	Ping	A	I
129	Version	A	I
130	GPS	A	I
131	Paquete	A	I
132	PIN	A	I
133	Cobertura	A	I
134	Mensaje	A	I
135	Mensaje SkyTrack	A	E
138	PROG_BAS_SMS = 138,	A	I
139	PROG_BAS_SMS = 138	A	I
140	CALL_IN = 140	A	I
141	CALL_OUT	A	I
142	CTR_VOLUME	A	I
143	CTR_SALIDAS	A	I
144	Mensaje Satelital	A	I
145	GSM GPS Info	A	I
146	Solicitud geoposicionamiento GSM	A	I
147	Working Hour	A	I
148	Paquete extendido skytrack	A	I
150	PeticiÃ³n de agenda	A	I
200	PROG_TEL_CALL	A	I
201	PROG_TEL1	A	I
202	PROG_TEL2	A	I
203	PROG_TEL3	A	I
204	PROG_TEL_DRIVER	A	I
205	Motivo Vending	A	E
235	Falla Bateria de respaldo	A	E
237	Interrogacion posicion SMS	A	E
238	Interrogacion posicion WEB	A	E
239	Interrogacion posicion Llamada	A	E
240	Pta cabina abierta	A	E
241	Pta cabina cerrada	A	E
242	Analogo 1	A	I
243	Analogo 2	A	I
244	Contador	A	I
245	Desconexion Antena GPS	A	E
246	Reconexion Antena GPS	A	I
247	Antena GPS en corto	A	I
248	Entrada bajo consumo	A	I
249	Salida bajo consumo	A	I
250	Buffer almacenamiento lleno	A	I
251	Desconexion bateria principal	A	E
252	Temperatura	A	E
253	Apagado Remoto Activado	A	I
254	Apagado Remoto Desactivado	A	I
255	ReconexiÃ³n de Bateria Principal	A	I
260	Autorreporte Satelital	A	E
261	Distancia Recorrida	A	E
262	Tiempo de Actividad	A	E
263	Velocidad Promedio	A	E
265	Falla desbloqueo local	A	E
1001	Manually activated	A	I
1002	Vehicle rolled	A	I
1003	Air bag activated	A	I
1004	Crash sensor activated	A	I
1005	Floating car data input	A	I
1006	Tow truck needed	A	I
1007	Vehicle initiated theft tracking	A	I
1008	Vehicle is moved	A	I
1009	Other sensor activated	A	I
1010	Re-send location (TCU button pressed)	A	I
1011	Re-send location (SO sent message)	A	I
1012	Unauthorized vehicle movement as defined by Theft Alarm	A	I
1013	Siren Off	A	I
1014	Siren On	A	I
1015	Main Battery is reconnected	A	I
1016	Main Battery is disconnected	A	I
1017	Blocking is on	A	I
1018	Blocking is off	A	I
1019	GPS antenna cable disconnection	A	I
1020	GSM antenna cable disconnection	A	I
1021	GPS antenna cable reconnection	A	I
1022	GSM antenna cable reconnection	A	I
1023	Backup battery in use	A	I
1024	Backup battery disconnection	A	I
1025	Backup battery reconnection	A	I
1026	Backup battery must be replaced	A	I
1027	Self-health check OK	A	I
1028	Self-health check NOT OK	A	I
1029	Backup battery low	A	I
1030	Reconnection message	A	I
1031	Reserved	A	I
1032	Reserved	A	I
1033	Position Violation	A	I
1034	Sleep Mode	A	I
1035	Request for Positioning	A	I
1036	Backup Battery Temperature Out of Range	A	I
1037	Battery Low voltage	A	I
1038	GPS Antenna cutoff	A	I
1039	Reserved	A	I
1040	Output Short Circuit	A	I
1041	End of Useful Life for Backup Battery	A	I
1042	Backup battery Fault	A	I
1043	Low Backup Battery Voltage	A	I
1044	Weakened GSM Signal	A	I
1045	Tracking Event at Sleep mode	A	I
1046	Tracking Event	A	I
1047	Reserved	A	I
1048	Reserved	A	I
1049	Reserved	A	I
1050	GSM Antenna cutoff	A	I
1051	Number of GPS Satellite Drops to zero	A	I
1052	Course Change	A	I
1053	Maximum Speed Reached	A	I
1054	Vehicle speed present when vehicle asleep event	A	I
1055	Diagnostic Trouble Code (DTC) detected	A	I
1056	Reserved	A	I
1057	Reserved	A	I
1058	Reserved	A	I
1059	Reserved	A	I
1060	Reserved	A	I
1061	Parking Break	A	I
1062	Neutral Gear	A	I
1063	Local Unblock Fail	A	I
2000	Panic ACP245	A	I
2001	Not documented	A	I
3000	Excede tiempo pausa activa	A	E
3004	Actividad en horario no permitido	A	E
3019	Fuera del rango de velocidad	A	E
3020	Primera localizaciÃ³n despues de encendido	A	E
3021	Entrada digital deshabilitada	A	E
3022	Entrada digital habilitada	A	E
3023	Inicio carga bateria	A	E
3024	Nivel bajo de bateria	A	E
3025	Fin carga de bateria	A	E
3028	Estado antena gps	A	E
3029	Equipo encendido	A	E
3030	Equipo apagado	A	E
3032	ConexiÃ³n alimentacion externa	A	E
3033	DesconexiÃ³n alimentacion externa	A	E
4000	Sobrepaso Superior temp1	A	E
4001	Sobrepaso Inferior temp1	A	E
4002	Sobrepaso Superior temp2	A	E
4003	Sobrepaso Inferior temp2	A	E
4010	Confirmacion Comando Patrol	A	I
4011	WakeUP/IP Patrol	A	I
3011	Sin movimiento Ignicion On	A	I
4018	Frenada Fuerte	A	E
4019	Inicia Estado Ralenti	A	E
4020	Fin Estado Ralenti	A	E
4021	GPS FIX	A	E
4022	Lectura por Kilometraje	A	E
4023	Lectura Optima	A	E
4024	Cambio de Rumbo	A	E
4025	Aceleracion Fuerte	A	E
3413000	Mensaje o accion 0	A	I
3413001	Mensaje o accion 1	A	I
3413002	Mensaje o accion 2	A	I
3413003	Mensaje o accion 3	A	I
3413004	Mensaje o accion 4	A	I
3413005	Mensaje o accion 5	A	I
4034	Desconexion Bateria Backup	A	E
4035	Panel de Acceso Abierto	A	E
4036	Puesta en marcha del VehÃ­culo	A	E
4037	VehÃ­culo detenido	A	E
4038	Perdida de seÃ±al GPS 	A	E
4039	SeÃ±al GPS Recuperada 	A	E
1000	Alarmas Mantenimientos	A	I
4040	TransmisiÃ³n de datos transparente	A	E
3005	Excede tiempo sin transmitir en ruta Diaria	A	I
3006	Excede tiempo de parada en ruta Diaria	A	I
3003	Retraso en salida de ruta programada	A	I
3016	Retraso en retorno de ruta programada	A	I
79	Exceso de Velocidad Zona Equipo	A	E
41	Excede Actividad Continua	A	E
136	Ralenti	A	E
137	Horometro	A	E
3056	Llamada entrante	A	E
3057	Llamada saliente	A	E
37	Puerta carga abierta	A	I
38	Puerta carga cerrada	A	I
43	Bloqueo Seguros	A	I
44	Desbloqueo Seguros	A	I
49	Activacion alarma	A	I
53	Luces encendidas	A	I
83	Inicio LTO	A	I
84	Fin LTO	A	I
85	Error LTO	A	I
236	Mensaje SkyPatrol	A	I
3012	En movimiento Ignicion On	A	I
3013	Sin movimiento Ignicion Off	A	I
3014	En movimiento Ignicion Off	A	I
3018	Dentro del rango de velocidad	A	I
3026	Geocerca 0 desactivada	A	I
3027	Geocerca 0 activada	A	I
3031	ConexiÃ³n a GPRS	A	I
3034	Centro de geocerca 0	A	I
4012	 Sin Movimiento,seÃ±al ignicion no detectada 	A	I
4013	En Movimiento,seÃ±al ignicion no detectada	A	I
4014	Combinacion 1 activa	A	I
4015	Combinacion 2 activa	A	I
4016	Combinacion 3 activa	A	I
4017	Combinacion 4 activa	A	I
3080	Sensor de combustible Digital	A	E
3002	Exceso de Velocidad Zonas y Rutas	A	E
3089	Alarma Perdida Combustible	A	E
4032	Tiempo Ralenti	A	E
4033	Lectura por Distancia o Tiempo	A	I
52	Movimiento Ilegal	A	E
264	Deteccion de Jamming	A	E
3083	Posible ColisiÃ³n	A	E
3084	Conexion OBD	A	E
3085	Desconexion OBD	A	E
3086	Reporte Del Motor	A	E
3087	Estado OBD	A	E
3088	Camara	A	E
4042	DetenciÃ³n Prolongada	A	E
4043	Temperatura-Dispositivo fuera de rango	A	E
4044	DetenciÃ³n de Roaming	A	E
4045	Cambio en salida digital	A	E
4046	Actualizacion Remota	A	E
4047	Falla Sensor Combustible	A	E
4048	Mensaje Accesorio	A	E
3082	Salida de Geocerca por Inicion	A	E
4004	Sensor de Temperatura dentro del Rango temp1	A	E
4005	Sensor de Temperatura dentro del Rango temp2	A	E
101	Evento Sensor	A	E
4006	Conductor Autorizado	A	E
3001	Excede tiempo sin transmitir	A	E
3010	Excede Tiempo de Parada Fuera de Zona	A	E
3008	Excede tiempo de parada en Ruta	A	E
3009	Excede Tiempo Sin TX Fuera de Zona	A	E
3007	Excede tiempo sin transmitir en Ruta	A	E
5008	Frenada y DetecciÃ³n de Curva Brusca	A	E
5009	AceleraciÃ³n y DetecciÃ³n de Curva Brusca	A	E
8	Fin Exceso de Velocidad	A	I
10	Cambio de Curso	A	I
20	DetecciÃ³n de Curva Brusca	A	I
5000	Frenada rango de vel bajo	A	E
5001	Acelerada rango vel bajo	A	E
5002	Frenada rango medio	A	E
5003	Acelerada rango medio	A	E
5004	Frenada rango alto	A	E
5005	Acelerada rango alto	A	E
5010	Comportamiento Brusco	A	E
5006	Frenada Tarjeta Sensor	A	E
4	Apertura Puerta Carga	A	E
5011	Cierre Puerta Carga	A	E
5007	Arrancada Tarjeta Sensor	A	E
5012	Log Combustible	A	E
5013	Apertura de tapa de gasolina	A	E
5014	Cierre de tapa de gasolina	A	E
5015	VolcÃ³ Arriba	A	E
5016	VolcÃ³ Abajo	A	E
5017	PlanchÃ³n arriba	A	E
5018	PlanchÃ³n abajo	A	E
5019	CinturÃ³n activado	A	E
5020	CinturÃ³n desactivado	A	E
1072	Alarma conectada	A	E
1073	Reporte de alarma externa	A	E
4041	Lectura por Distancia o Tiempo	A	E
5028	Tiempo de conducciÃ³n ejemplar	A	E
3058	Estado de bateria externa	A	E
4030	Fin Ruta	A	E
4028	Inicio Ruta	A	E
6000	OK	A	E
6001	TRACK	A	E
6002	EXTREME-TRACK	A	E
6003	UNLIMITED-TRACK	A	E
6004	NEWMOVEMENT	A	E
6005	HELP	A	E
6006	HELP-CANCEL	A	E
6007	CUSTOM	A	E
6008	POI	A	E
6009	STOP	A	E
\.


--
-- Name: motivos_es_gt motivos_es_gt_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.motivos_es_gt
    ADD CONSTRAINT motivos_es_gt_pk PRIMARY KEY (motivo);


--
-- PostgreSQL database dump complete
--

