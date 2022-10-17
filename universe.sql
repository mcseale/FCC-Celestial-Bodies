--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_description text,
    lightyears_from_earth integer,
    is_spiral boolean
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
    name character varying(30) NOT NULL,
    planet_id integer,
    has_life boolean,
    size_in_miles integer
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
    name character varying(30) NOT NULL,
    star_id integer,
    is_gaseous boolean,
    planet_color character varying(20)
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
-- Name: space_ship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_ship (
    space_ship_id integer NOT NULL,
    name character varying(30) NOT NULL,
    got_gas boolean,
    color character varying(20)
);


ALTER TABLE public.space_ship OWNER TO freecodecamp;

--
-- Name: space_ship_space_ship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_ship_space_ship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_ship_space_ship_id_seq OWNER TO freecodecamp;

--
-- Name: space_ship_space_ship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_ship_space_ship_id_seq OWNED BY public.space_ship.space_ship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    lightyears_from_earth numeric(1000,2),
    color character varying(20)
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
-- Name: space_ship space_ship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_ship ALTER COLUMN space_ship_id SET DEFAULT nextval('public.space_ship_space_ship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home galaxy of Earth', 0, true);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'Satellite of Milky Way', 70100, false);
INSERT INTO public.galaxy VALUES (3, 'DRACO II', 'Satellite of the Milky Way', 70100, false);
INSERT INTO public.galaxy VALUES (4, 'Tucana III', 'Satellite of the Milky Way Thats is being disrupted', 74700, false);
INSERT INTO public.galaxy VALUES (5, 'Segue 1', 'Satellite of the Milky Way', 75000, false);
INSERT INTO public.galaxy VALUES (6, 'Hydrus I', 'Satellite of the Milky Way', 90000, true);
INSERT INTO public.galaxy VALUES (7, 'Carina III', 'Satellite of the Milky Way', 90700, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Red Moon', 2, false, 1234);
INSERT INTO public.moon VALUES (2, 'Blue Moon', 2, false, 2345);
INSERT INTO public.moon VALUES (3, 'Green Moon', 3, false, 3456);
INSERT INTO public.moon VALUES (4, 'Yellow Moon', 3, false, 4567);
INSERT INTO public.moon VALUES (5, 'Purple Moon', 4, false, 5678);
INSERT INTO public.moon VALUES (6, 'Violet Moon', 4, false, 6789);
INSERT INTO public.moon VALUES (7, 'Teal Moon', 5, false, 7890);
INSERT INTO public.moon VALUES (8, 'Black Moon', 5, false, 1123);
INSERT INTO public.moon VALUES (9, 'White Moon', 6, false, 1123);
INSERT INTO public.moon VALUES (10, 'Grey Moon', 6, false, 1124);
INSERT INTO public.moon VALUES (11, 'Metallic Moon', 7, false, 1125);
INSERT INTO public.moon VALUES (12, 'Maroon Moon', 7, false, 1126);
INSERT INTO public.moon VALUES (13, 'Silver Moon', 8, false, 1127);
INSERT INTO public.moon VALUES (14, 'Brown Moon', 8, false, 1128);
INSERT INTO public.moon VALUES (15, 'Bronze Moon', 9, false, 1129);
INSERT INTO public.moon VALUES (16, 'Diamond Moon', 9, false, 9129);
INSERT INTO public.moon VALUES (17, 'Platinum Moon', 10, false, 8129);
INSERT INTO public.moon VALUES (18, 'Grass Moon', 10, false, 7129);
INSERT INTO public.moon VALUES (19, 'Glass Moon', 10, false, 6129);
INSERT INTO public.moon VALUES (20, 'False Moon', 11, false, 6629);
INSERT INTO public.moon VALUES (21, 'Fake Moon', 11, false, 6329);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', 3, false, 'Grey');
INSERT INTO public.planet VALUES (3, 'Venus', 3, false, 'Red');
INSERT INTO public.planet VALUES (4, 'Earth', 3, false, 'Blue');
INSERT INTO public.planet VALUES (5, 'Mars', 3, false, 'Red');
INSERT INTO public.planet VALUES (6, 'Jupiter', 3, true, 'Brown');
INSERT INTO public.planet VALUES (7, 'Saturn', 3, true, 'Yellow');
INSERT INTO public.planet VALUES (8, 'Uranus', 3, true, 'Blue');
INSERT INTO public.planet VALUES (9, 'Neptune', 3, true, 'Blue');
INSERT INTO public.planet VALUES (10, 'Pluto', 3, true, 'Grey');
INSERT INTO public.planet VALUES (11, 'Potential 1', 4, false, 'purple');
INSERT INTO public.planet VALUES (12, 'Potential 2', 4, false, 'pink');
INSERT INTO public.planet VALUES (13, 'Potential 3', 4, true, 'GREEN');


--
-- Data for Name: space_ship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_ship VALUES (1, 'Nissan', true, 'Grey');
INSERT INTO public.space_ship VALUES (2, 'Ford', true, 'Red');
INSERT INTO public.space_ship VALUES (3, 'KIA', true, 'Orange');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Sun', 1, 0.00, 'Orange');
INSERT INTO public.star VALUES (4, 'Sirius', 2, 9.00, 'White to Blue');
INSERT INTO public.star VALUES (5, 'Betelguese', 1, 643.00, 'Red');
INSERT INTO public.star VALUES (6, 'KW Sagittttarii', 1, 7800.00, 'Red');
INSERT INTO public.star VALUES (7, 'YV Canis Majoris', 1, 3900.00, 'Red');
INSERT INTO public.star VALUES (8, 'RW Cephei', 1, 3500.00, 'Red');
INSERT INTO public.star VALUES (9, 'V354 Cephei', 1, 9000.00, 'Red');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: space_ship_space_ship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_ship_space_ship_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: space_ship space_ship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_ship
    ADD CONSTRAINT space_ship_name_key UNIQUE (name);


--
-- Name: space_ship space_ship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_ship
    ADD CONSTRAINT space_ship_pkey PRIMARY KEY (space_ship_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

