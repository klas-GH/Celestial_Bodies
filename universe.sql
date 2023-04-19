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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continents_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continents_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continents_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continents_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continents_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    galaxy_types character varying(12) NOT NULL,
    age_in_millions_of_years integer
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
    name character varying(30),
    distance_planet_th_km numeric(9,2) NOT NULL,
    planet_id integer NOT NULL,
    volume integer NOT NULL,
    surface integer NOT NULL,
    description text,
    is_spherical boolean
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
    name character varying(30),
    has_life boolean,
    star_id integer NOT NULL,
    planet_types character varying(12)
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_mil_km integer
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continents_continent_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'Europa', 1);
INSERT INTO public.continent VALUES (2, 'Asia', 1);
INSERT INTO public.continent VALUES (3, 'Africa', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'our galaxy', 'spiral', 13500);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'neighbour galaxy', 'spiral', 13600);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'other galaxy', 'spiral', 13400);
INSERT INTO public.galaxy VALUES (4, 'NCG121', 'other galaxy', 'spiral', 13200);
INSERT INTO public.galaxy VALUES (5, 'NCG45', 'other galaxy', 'spiral', 13300);
INSERT INTO public.galaxy VALUES (6, 'NCG115', 'other galaxy', 'spiral', 13100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 200.00, 1, 25, 12, 'our moon', true);
INSERT INTO public.moon VALUES (2, 'Europa', 224.00, 5, 125, 112, 'jupiter moon', true);
INSERT INTO public.moon VALUES (3, 'Ganymede', 214.00, 5, 115, 122, 'jupiter moon', true);
INSERT INTO public.moon VALUES (4, 'Callisto', 234.00, 5, 135, 132, 'jupiter moon', true);
INSERT INTO public.moon VALUES (5, 'Thebe', 244.00, 5, 145, 142, 'jupiter moon', true);
INSERT INTO public.moon VALUES (6, 'Io', 254.00, 5, 155, 152, 'jupiter moon', true);
INSERT INTO public.moon VALUES (7, 'Elara', 264.00, 5, 165, 162, 'jupiter moon', true);
INSERT INTO public.moon VALUES (8, 'Zara', 274.00, 5, 175, 172, 'jupiter moon', true);
INSERT INTO public.moon VALUES (9, 'Xana', 284.00, 5, 185, 182, 'jupiter moon', true);
INSERT INTO public.moon VALUES (10, 'Lana', 294.00, 5, 195, 192, 'jupiter moon', true);
INSERT INTO public.moon VALUES (11, 'Pisa', 204.00, 5, 105, 102, 'jupiter moon', true);
INSERT INTO public.moon VALUES (14, 'Soly', 104.00, 6, 104, 104, 'saturn moon', true);
INSERT INTO public.moon VALUES (15, 'Moly', 114.00, 6, 114, 114, 'saturn moon', true);
INSERT INTO public.moon VALUES (16, 'Koly', 124.00, 6, 124, 124, 'saturn moon', true);
INSERT INTO public.moon VALUES (17, 'Doly', 134.00, 6, 134, 134, 'saturn moon', true);
INSERT INTO public.moon VALUES (18, 'Toly', 144.00, 6, 144, 144, 'saturn moon', true);
INSERT INTO public.moon VALUES (19, 'Qoly', 154.00, 6, 154, 154, 'saturn moon', true);
INSERT INTO public.moon VALUES (20, 'Roly', 164.00, 6, 164, 164, 'saturn moon', true);
INSERT INTO public.moon VALUES (21, 'Joly', 174.00, 6, 174, 174, 'saturn moon', true);
INSERT INTO public.moon VALUES (22, 'Poly', 184.00, 6, 184, 184, 'saturn moon', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 'rocky');
INSERT INTO public.planet VALUES (2, 'Mercury', false, 1, 'rocky');
INSERT INTO public.planet VALUES (3, 'Venus', false, 1, 'rocky');
INSERT INTO public.planet VALUES (4, 'Marte', false, 1, 'rocky');
INSERT INTO public.planet VALUES (6, 'Saturn', false, 1, 'gas');
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 1, 'gas');
INSERT INTO public.planet VALUES (7, 'Uranus', false, 1, 'gas');
INSERT INTO public.planet VALUES (8, 'Neptun', false, 1, 'gas');
INSERT INTO public.planet VALUES (9, 'proxima b', false, 2, 'rocky');
INSERT INTO public.planet VALUES (10, 'proxima a', false, 2, 'rocky');
INSERT INTO public.planet VALUES (12, 'proxima c', false, 2, 'rocky');
INSERT INTO public.planet VALUES (13, 'proxima d', false, 2, 'rocky');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 5000, 150);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 4500, 43700000);
INSERT INTO public.star VALUES (3, 'Barnards Star', 1, 4350, 59600000);
INSERT INTO public.star VALUES (4, 'Wolf 359', 1, 4300, 78600000);
INSERT INTO public.star VALUES (5, 'Lalande 21185', 1, 4230, 83100000);
INSERT INTO public.star VALUES (6, 'Sirius A', 1, 4120, 86600000);


--
-- Name: continents_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continents_continent_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: continent continents_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continents_name_key UNIQUE (name);


--
-- Name: continent continents_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continents_pkey PRIMARY KEY (continent_id);


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
-- Name: moon moon_distance_planet_th_km_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_planet_th_km_planet_id_key UNIQUE (distance_planet_th_km, planet_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_surface_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_surface_planet_id_key UNIQUE (surface, planet_id);


--
-- Name: moon moon_volume_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_volume_planet_id_key UNIQUE (volume, planet_id);


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
-- Name: continent continent_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

