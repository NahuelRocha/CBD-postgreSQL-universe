--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    first integer,
    second integer,
    bool_one boolean,
    bool_two boolean
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'name1', 'desc1', 1, 1, true, false);
INSERT INTO public.blackhole VALUES (2, 'name1', 'desc2', 1, 1, true, false);
INSERT INTO public.blackhole VALUES (3, 'name1', 'desc3', 1, 1, true, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxia Ejemplo', 1, 2, 100000, 'Descripción de la Galaxia', true, false);
INSERT INTO public.galaxy VALUES (2, 'Galaxia Ejemplo12', 1, 2, 100000, 'Descripción de la Galaxia', true, false);
INSERT INTO public.galaxy VALUES (3, 'Galaxia Ejemplo2', 1, 2, 100000, 'Descripción de la Galaxia', true, false);
INSERT INTO public.galaxy VALUES (4, 'Galaxia Ejemplo3', 1, 2, 100000, 'Descripción de la Galaxia', true, false);
INSERT INTO public.galaxy VALUES (5, 'Galaxia Ejemplo4', 1, 2, 100000, 'Descripción de la Galaxia', true, false);
INSERT INTO public.galaxy VALUES (6, 'Galaxia Ejemplo5', 1, 2, 100000, 'Descripción de la Galaxia', true, false);
INSERT INTO public.galaxy VALUES (7, 'Galaxia Ejemplo6', 1, 2, 100000, 'Descripción de la Galaxia', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Galaxia Ejemplo', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (13, 'Galaxia Ejemplo1', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (14, 'Galaxia Ejemplo2', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (15, 'Galaxia Ejemplo3', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (16, 'Galaxia Ejemplo4', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (17, 'Galaxia Ejemplo5', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (18, 'Galaxia Ejemplo6', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (19, 'Galaxia Ejemplo7', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (20, 'Galaxia Ejemplo8', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (21, 'Galaxia Ejemplo9', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (22, 'Galaxia Ejemplo10', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (23, 'Galaxia Ejemplo11', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (24, 'Galaxia Ejemplo12', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (25, 'Galaxia Ejemplo13', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (26, 'Galaxia Ejemplo14', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (27, 'Galaxia Ejemplo15', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (28, 'Galaxia Ejemplo16', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (29, 'Galaxia Ejemplo17', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (30, 'Galaxia Ejemplo18', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.moon VALUES (31, 'Galaxia Ejemplo20', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Galaxia Ejemplo', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Galaxia Ejemplo2', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Galaxia Ejemplo3', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.planet VALUES (4, 'Galaxia Ejemplo4', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Galaxia Ejemplo5', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.planet VALUES (6, 'Galaxia Ejemplo6', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.planet VALUES (7, 'Galaxia Ejemplo7', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.planet VALUES (8, 'Galaxia Ejemplo8', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Galaxia Ejemplo9', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.planet VALUES (10, 'Galaxia Ejemplo10', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.planet VALUES (11, 'Galaxia Ejemplo11', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.planet VALUES (12, 'Galaxia Ejemplo12', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Galaxia Ejemplo', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.star VALUES (2, 'Galaxia Ejemplo6', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.star VALUES (3, 'Galaxia Ejemplo7', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.star VALUES (4, 'Galaxia Ejemplo8', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.star VALUES (5, 'Galaxia Ejemplo9', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.star VALUES (6, 'Galaxia Ejemplo10', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.star VALUES (7, 'Galaxia Ejemplo11', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);
INSERT INTO public.star VALUES (8, 'Galaxia Ejemplo12', 1, 2, 100000, 'Descripción de la Galaxia', true, false, 1);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 31, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: blackhole blackhole_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_description_key UNIQUE (description);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: star unique_names_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_names_star UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

