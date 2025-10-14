--
-- PostgreSQL database dump
--

\restrict NgIoCitcx0HcRhG8uc54hHPPASRj6ASZYNCe06zGmgi6q75j5p0G61rGSUxFZcv

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-08 23:09:00

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16392)
-- Name: agenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agenda (
    apellido character varying(30),
    nombre character varying(20),
    domicilio character varying(30),
    telefono character varying(11)
);


ALTER TABLE public.agenda OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16416)
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    nombre character varying(20),
    documento integer,
    sexo character varying(1),
    domicilio character varying(20),
    sueldo_basico real
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16395)
-- Name: libros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libros (
    titulo character varying(20),
    autor character varying(30),
    editorial character varying(15)
);


ALTER TABLE public.libros OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16401)
-- Name: peliculas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peliculas (
    nombre character varying(20),
    actor character varying(20),
    duracion real,
    cantidad_de_copias real
);


ALTER TABLE public.peliculas OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16398)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    nombre character varying(30),
    clave character varying(10)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 16392)
-- Dependencies: 219
-- Data for Name: agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agenda (apellido, nombre, domicilio, telefono) FROM stdin;
Moreno	Alberto	Colon 123	4234567
torres	juan	avellaneda 125	4458787
\.


--
-- TOC entry 4921 (class 0 OID 16416)
-- Dependencies: 223
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (nombre, documento, sexo, domicilio, sueldo_basico) FROM stdin;
juan perez	22333444	M	sarmiento123	500
ana acosta	24555666	F	colon 123	650
bartolomeo barrios	27888999	F	urquiza 497	800
\.


--
-- TOC entry 4918 (class 0 OID 16395)
-- Dependencies: 220
-- Data for Name: libros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libros (titulo, autor, editorial) FROM stdin;
El aleph	Borges	Planeta
Martin Fierro	Jose Hernandez	Emece
Aprenda PHP	Mario Molina	Emece
\.


--
-- TOC entry 4920 (class 0 OID 16401)
-- Dependencies: 222
-- Data for Name: peliculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peliculas (nombre, actor, duracion, cantidad_de_copias) FROM stdin;
Mision imposible	Tom Cruise	128	3
Mision imposible 2	Tom Cruise	130	2
Mujer bonita	Julia Roberts	118	3
Elsa y Fred	China Zorrilla	110	2
\.


--
-- TOC entry 4919 (class 0 OID 16398)
-- Dependencies: 221
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (nombre, clave) FROM stdin;
Mariano	Payaso
Juan	River
Boca	Luis
\.


-- Completed on 2025-10-08 23:09:00

--
-- PostgreSQL database dump complete
--

\unrestrict NgIoCitcx0HcRhG8uc54hHPPASRj6ASZYNCe06zGmgi6q75j5p0G61rGSUxFZcv

