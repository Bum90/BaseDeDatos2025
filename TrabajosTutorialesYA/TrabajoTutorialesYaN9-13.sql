--
-- PostgreSQL database dump
--

\restrict QfYHV863Ob7rhtjsJfew0xK8tG6pCUhYmNEsgwLUTlBWfwUGgCM5Ah7fPelKuOI

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-14 17:23:05

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
-- TOC entry 219 (class 1259 OID 16458)
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
-- TOC entry 224 (class 1259 OID 16485)
-- Name: alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumnos (
    legajo character varying(4) NOT NULL,
    documento character varying(8) NOT NULL,
    nombre character varying(30),
    domicilio character varying(30)
);


ALTER TABLE public.alumnos OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16478)
-- Name: libro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libro (
    codigo integer NOT NULL,
    titulo character varying(40) NOT NULL,
    autor character varying(20),
    editorial character varying(15)
);


ALTER TABLE public.libro OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16464)
-- Name: libros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libros (
    titulo character varying(30),
    autor character varying(20),
    editorial character varying(15),
    precio double precision
);


ALTER TABLE public.libros OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16501)
-- Name: medicamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicamento (
    codigo integer NOT NULL,
    nombre character varying(20),
    laboratorio character varying(20),
    precio double precision,
    cantidad integer
);


ALTER TABLE public.medicamento OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16500)
-- Name: medicamento_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medicamento_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.medicamento_codigo_seq OWNER TO postgres;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 225
-- Name: medicamento_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medicamento_codigo_seq OWNED BY public.medicamento.codigo;


--
-- TOC entry 221 (class 1259 OID 16467)
-- Name: medicamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicamentos (
    codigo integer NOT NULL,
    nombre character varying(20) NOT NULL,
    laboratorio character varying(20),
    precio double precision,
    cantidad integer NOT NULL
);


ALTER TABLE public.medicamentos OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16473)
-- Name: peliculas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peliculas (
    codigo integer NOT NULL,
    titulo character varying(40) NOT NULL,
    actor character varying(20),
    duracion integer
);


ALTER TABLE public.peliculas OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16509)
-- Name: videoclub; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.videoclub (
    codigo integer NOT NULL,
    titulo character varying(40),
    actor character varying(20),
    duracion integer
);


ALTER TABLE public.videoclub OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16508)
-- Name: videoclub_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.videoclub_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.videoclub_codigo_seq OWNER TO postgres;

--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 227
-- Name: videoclub_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.videoclub_codigo_seq OWNED BY public.videoclub.codigo;


--
-- TOC entry 4784 (class 2604 OID 16504)
-- Name: medicamento codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento ALTER COLUMN codigo SET DEFAULT nextval('public.medicamento_codigo_seq'::regclass);


--
-- TOC entry 4785 (class 2604 OID 16512)
-- Name: videoclub codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videoclub ALTER COLUMN codigo SET DEFAULT nextval('public.videoclub_codigo_seq'::regclass);


--
-- TOC entry 4941 (class 0 OID 16458)
-- Dependencies: 219
-- Data for Name: agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agenda (apellido, nombre, domicilio, telefono) FROM stdin;
Acosta	Alberto	Colon 123	4234567
Suarez	Susana	Gral. Paz 1234	4123456
Juarez	Juan	Avellaneda 135	4458787
Lopez	Maria	Urquiza 333	4545454
Lopez	Jose	Urquiza 333	4545454
\.


--
-- TOC entry 4946 (class 0 OID 16485)
-- Dependencies: 224
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumnos (legajo, documento, nombre, domicilio) FROM stdin;
A233	22345345	Perez Mariana	Colon 234
A567	23545345	Morales Marcos	Avellaneda 348
\.


--
-- TOC entry 4945 (class 0 OID 16478)
-- Dependencies: 223
-- Data for Name: libro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libro (codigo, titulo, autor, editorial) FROM stdin;
1	El aleph	Borges	Emece
2	Martin Fierro	Jose Hernandez	Planeta
3	Aprenda PHP	Mario Molina	Nuevo Siglo
\.


--
-- TOC entry 4942 (class 0 OID 16464)
-- Dependencies: 220
-- Data for Name: libros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libros (titulo, autor, editorial, precio) FROM stdin;
Martin Fierro	Jose Hernandez	Planeta	35.5
Matematica estas ahi	Adrian Paenza	Siglo XXI	15
El aleph	Borges	Emece S.A	25
Cervantes y el quijote	Borges	Emece S.A	25
Aprenda PHP	Mario Molina	Emece S.A	27
El aleph	Borges	Emece	20
\.


--
-- TOC entry 4948 (class 0 OID 16501)
-- Dependencies: 226
-- Data for Name: medicamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicamento (codigo, nombre, laboratorio, precio, cantidad) FROM stdin;
1	Sertal	Roche	5.2	100
2	Buscapina	Roche	4.1	200
3	Amoxidal 500	Bayer	15.6	100
\.


--
-- TOC entry 4943 (class 0 OID 16467)
-- Dependencies: 221
-- Data for Name: medicamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicamentos (codigo, nombre, laboratorio, precio, cantidad) FROM stdin;
1	Sertal gotas	\N	\N	100
2	Sertal compuesto	\N	8.89	150
3	Buscapina	Roche	\N	200
\.


--
-- TOC entry 4944 (class 0 OID 16473)
-- Dependencies: 222
-- Data for Name: peliculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peliculas (codigo, titulo, actor, duracion) FROM stdin;
1	Mision Imposible	Tom Cruise	120
2	Harry Potter y la piedra filosofal	\N	180
5	Mujer bonita	R. Gere-J. Roberts	0
3	Harry Potter y la camara secreta	Daniel R.	120
0	Mision imposible 2	Desconocido	120
\.


--
-- TOC entry 4950 (class 0 OID 16509)
-- Dependencies: 228
-- Data for Name: videoclub; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.videoclub (codigo, titulo, actor, duracion) FROM stdin;
2	Harry Potter y la piedra filosofal	xxx	180
3	Harry Potter y la camara secreta	Daniel R.	190
6	Mujer bonita	Richard Gere	120
\.


--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 225
-- Name: medicamento_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medicamento_codigo_seq', 3, true);


--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 227
-- Name: videoclub_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.videoclub_codigo_seq', 6, true);


--
-- TOC entry 4789 (class 2606 OID 16491)
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (documento);


--
-- TOC entry 4787 (class 2606 OID 16484)
-- Name: libro libro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (codigo);


--
-- TOC entry 4791 (class 2606 OID 16507)
-- Name: medicamento medicamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT medicamento_pkey PRIMARY KEY (codigo);


--
-- TOC entry 4793 (class 2606 OID 16515)
-- Name: videoclub videoclub_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videoclub
    ADD CONSTRAINT videoclub_pkey PRIMARY KEY (codigo);


-- Completed on 2025-10-14 17:23:05

--
-- PostgreSQL database dump complete
--

\unrestrict QfYHV863Ob7rhtjsJfew0xK8tG6pCUhYmNEsgwLUTlBWfwUGgCM5Ah7fPelKuOI

