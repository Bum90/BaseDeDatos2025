--
-- PostgreSQL database dump
--

\restrict 2gTogzSbHIMIDhbVYpxbSf4VYLC8miaKGWiYhKUdNGin6F0LK0oCnW575hyG27g

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-14 00:32:26

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
-- TOC entry 222 (class 1259 OID 16448)
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
-- TOC entry 224 (class 1259 OID 16454)
-- Name: articulos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articulos (
    codigo integer,
    nombre character varying(20),
    descripcion character varying(30),
    precio double precision,
    cantidad integer
);


ALTER TABLE public.articulos OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16442)
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    nombre character varying(20),
    documento character varying(8),
    sexo character varying(1),
    domicilio character varying(30),
    sueldo_basico double precision
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16445)
-- Name: libros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libros (
    titulo character varying(40),
    autor character varying(30),
    editorial character varying(15),
    precio double precision,
    cantidad integer
);


ALTER TABLE public.libros OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16439)
-- Name: peliculas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peliculas (
    titulo character varying(20),
    actor character varying(20),
    duracion integer,
    cantidad integer
);


ALTER TABLE public.peliculas OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16451)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    nombre character varying(30),
    clave character varying(10)
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 4924 (class 0 OID 16448)
-- Dependencies: 222
-- Data for Name: agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agenda (apellido, nombre, domicilio, telefono) FROM stdin;
Acosta	Ana	Colon 123	4234567
Bustamante	Betina	Avellaneda 135	4458787
Lopez	Hector	Salta 545	4887788
Lopez	Luis	Urquiza 333	4545454
Lopez	Marisa	Urquiza 333	4545454
\.


--
-- TOC entry 4926 (class 0 OID 16454)
-- Dependencies: 224
-- Data for Name: articulos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articulos (codigo, nombre, descripcion, precio, cantidad) FROM stdin;
1	Impresora	Epson Stylus C45	400.8	20
2	Impresora	Epson Stylus C45	500	30
3	Monitor	Samsung 14	800	10
4	Teclado	ingles Biswal	100	50
5	Teclado	español Biswal	90	50
\.


--
-- TOC entry 4922 (class 0 OID 16442)
-- Dependencies: 220
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (nombre, documento, sexo, domicilio, sueldo_basico) FROM stdin;
Juan Juarez	22333444	m	Sarmiento 123	500
Ana Acosta	27888999	f	Colon 134	700
Carlos Caseres	31222333	m	Urquiza 479	850
\.


--
-- TOC entry 4923 (class 0 OID 16445)
-- Dependencies: 221
-- Data for Name: libros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libros (titulo, autor, editorial, precio, cantidad) FROM stdin;
El aleph	Borges	Emece	25.5	100
Alicia en el pais de las maravillas	Lewis Carroll	Atlantida	10	200
Matematica estas ahi	Paenza	Siglo XXI	18.8	200
El aleph	Borges	Emece	\N	\N
Martin Fierro	Jose Hernandez	Emece	\N	\N
Martin Fierro	Jose Hernandez	Planeta	\N	\N
Aprenda PHP	Mario Molina	Siglo XXI	\N	\N
\.


--
-- TOC entry 4921 (class 0 OID 16439)
-- Dependencies: 219
-- Data for Name: peliculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peliculas (titulo, actor, duracion, cantidad) FROM stdin;
Mision imposible	Tom Cruise	180	3
Mision imposible 2	Tom Cruise	190	2
Mujer bonita	Julia Roberts	118	3
Elsa y Fred	China Zorrilla	110	2
\.


--
-- TOC entry 4925 (class 0 OID 16451)
-- Dependencies: 223
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (nombre, clave) FROM stdin;
Marcelo	Boca
JuanPerez	Juancito
Susana	River
Luis	River
\.


-- Completed on 2025-10-14 00:32:27

--
-- PostgreSQL database dump complete
--

\unrestrict 2gTogzSbHIMIDhbVYpxbSf4VYLC8miaKGWiYhKUdNGin6F0LK0oCnW575hyG27g

