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
-- Name: celestial; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial (
    celestial_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer,
    mass integer NOT NULL,
    danger boolean
);


ALTER TABLE public.celestial OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_celestial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_celestial_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_celestial_id_seq OWNED BY public.celestial.celestial_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    stars_bln integer,
    mass integer NOT NULL,
    weight integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer,
    mass integer NOT NULL,
    colonial boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_id integer,
    mass numeric(4,1) NOT NULL,
    latin text,
    residence boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planets integer,
    mass integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: celestial celestial_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial ALTER COLUMN celestial_id SET DEFAULT nextval('public.celestial_celestial_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: celestial; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial VALUES (1, 'one commet', 1, 100, true);
INSERT INTO public.celestial VALUES (2, 'dark hole', 1, 200, false);
INSERT INTO public.celestial VALUES (3, 'UFO', 1, 300, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 100, 100, 100);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 200, 200, 200);
INSERT INTO public.galaxy VALUES (3, 'sombrero', 300, 300, 300);
INSERT INTO public.galaxy VALUES (4, 'messier', 400, 400, 400);
INSERT INTO public.galaxy VALUES (5, 'whirpoll', 500, 500, 500);
INSERT INTO public.galaxy VALUES (6, 'orion', 600, 600, 600);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Księżyc', 1, 1, true);
INSERT INTO public.moon VALUES (2, 'Europa', 2, 2, true);
INSERT INTO public.moon VALUES (3, 'Ganimedes', 3, 3, true);
INSERT INTO public.moon VALUES (4, 'Kallisto', 4, 4, true);
INSERT INTO public.moon VALUES (5, 'Io', 5, 6, true);
INSERT INTO public.moon VALUES (6, 'Titan', 6, 7, true);
INSERT INTO public.moon VALUES (7, 'Rea', 7, 8, true);
INSERT INTO public.moon VALUES (8, 'Japet', 8, 9, true);
INSERT INTO public.moon VALUES (9, 'Dione', 9, 10, true);
INSERT INTO public.moon VALUES (10, 'Tetyda', 10, 10, true);
INSERT INTO public.moon VALUES (11, 'Enceladus', 11, 11, true);
INSERT INTO public.moon VALUES (12, 'Mimas', 12, 12, true);
INSERT INTO public.moon VALUES (13, 'Miranda', 13, 13, true);
INSERT INTO public.moon VALUES (14, 'Ariel', 14, 14, true);
INSERT INTO public.moon VALUES (15, 'Umbriel', 15, 15, true);
INSERT INTO public.moon VALUES (16, 'Tytania', 16, 16, true);
INSERT INTO public.moon VALUES (17, 'Oberon', 17, 17, true);
INSERT INTO public.moon VALUES (18, 'Triton', 18, 18, true);
INSERT INTO public.moon VALUES (19, 'Nereida', 19, 19, true);
INSERT INTO public.moon VALUES (20, 'Larisa', 20, 20, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Ziemia', 1, 10.1, 'Earth', true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 20.2, 'Mars', true);
INSERT INTO public.planet VALUES (3, 'Wenus', 1, 30.3, 'Venus', true);
INSERT INTO public.planet VALUES (4, 'Jowisz', 1, 40.4, 'Jupiter', true);
INSERT INTO public.planet VALUES (5, 'Saturn', 1, 50.5, 'Saturn', true);
INSERT INTO public.planet VALUES (6, 'Uran', 1, 60.6, 'Uranus', true);
INSERT INTO public.planet VALUES (7, 'Neptun', 1, 70.7, 'Neptune', true);
INSERT INTO public.planet VALUES (8, 'Pluton', 1, 80.8, 'Pluto', false);
INSERT INTO public.planet VALUES (9, 'Eris', 1, 90.9, 'Eris', false);
INSERT INTO public.planet VALUES (10, 'Haumea', 1, 100.1, 'Haumea', false);
INSERT INTO public.planet VALUES (11, 'Makemake', 1, 110.1, 'Makemake', false);
INSERT INTO public.planet VALUES (12, 'Ceres', 1, 120.1, 'Ceres', false);
INSERT INTO public.planet VALUES (13, 'Pallas', 1, 130.1, 'Pallas', false);
INSERT INTO public.planet VALUES (14, 'Vesta', 1, 140.1, 'Vesta', false);
INSERT INTO public.planet VALUES (15, 'Hygiea', 1, 150.2, 'Hygiea', false);
INSERT INTO public.planet VALUES (16, 'Psyche', 1, 160.2, 'Psyche', false);
INSERT INTO public.planet VALUES (17, 'Europa', 1, 170.2, 'Europa', false);
INSERT INTO public.planet VALUES (18, 'Ganimedes', 1, 180.2, 'Ganymede', false);
INSERT INTO public.planet VALUES (19, 'Kallisto', 1, 190.2, 'Callisto', false);
INSERT INTO public.planet VALUES (20, 'Io', 1, 200.2, 'Io', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star one', 5, 100, 1);
INSERT INTO public.star VALUES (2, 'our star', 6, 200, 2);
INSERT INTO public.star VALUES (3, 'some star three', 5, 300, 3);
INSERT INTO public.star VALUES (4, 'star neerby', 1, 400, 4);
INSERT INTO public.star VALUES (5, 'Lynx', 3, 500, 5);
INSERT INTO public.star VALUES (6, 'Crux', 7, 600, 6);


--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_celestial_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: celestial celestial_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_name_key UNIQUE (name);


--
-- Name: celestial celestial_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_pkey PRIMARY KEY (celestial_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: celestial celestial_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

