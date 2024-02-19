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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billion_years integer,
    distance_from_earth integer,
    description text
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
    is_spherical boolean,
    planet_id integer,
    description text
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
-- Name: nebulae; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebulae (
    nebulae_id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.nebulae OWNER TO freecodecamp;

--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebulae_nebulae_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebulae_nebulae_id_seq OWNER TO freecodecamp;

--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebulae_nebulae_id_seq OWNED BY public.nebulae.nebulae_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    orbital_inclination numeric,
    has_rings boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description text,
    distance_in_lighyear numeric
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
-- Name: nebulae nebulae_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae ALTER COLUMN nebulae_id SET DEFAULT nextval('public.nebulae_nebulae_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'the milky way', 13, 26000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', 7, 25000, NULL);
INSERT INTO public.galaxy VALUES (4, 'DRACO II', 13, 700000, NULL);
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 10, 3, NULL);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 13, 3, NULL);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 0, 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Moon1', true, 1, 'Description1');
INSERT INTO public.moon VALUES (3, 'Moon2', false, 1, 'Description2');
INSERT INTO public.moon VALUES (4, 'Moon3', true, 2, 'Description3');
INSERT INTO public.moon VALUES (5, 'Moon4', false, 2, 'Description4');
INSERT INTO public.moon VALUES (6, 'Moon5', true, 3, 'Description5');
INSERT INTO public.moon VALUES (7, 'Moon6', false, 3, 'Description6');
INSERT INTO public.moon VALUES (8, 'Moon7', true, 4, 'Description7');
INSERT INTO public.moon VALUES (9, 'Moon8', false, 4, 'Description8');
INSERT INTO public.moon VALUES (10, 'Moon9', true, 5, 'Description9');
INSERT INTO public.moon VALUES (11, 'Moon10', false, 5, 'Description10');
INSERT INTO public.moon VALUES (12, 'Moon11', true, 6, 'Description11');
INSERT INTO public.moon VALUES (13, 'Moon12', false, 6, 'Description12');
INSERT INTO public.moon VALUES (14, 'Moon13', true, 7, 'Description13');
INSERT INTO public.moon VALUES (15, 'Moon14', false, 7, 'Description14');
INSERT INTO public.moon VALUES (16, 'Moon15', true, 8, 'Description15');
INSERT INTO public.moon VALUES (17, 'Moon16', false, 8, 'Description16');
INSERT INTO public.moon VALUES (18, 'Moon17', true, 9, 'Description17');
INSERT INTO public.moon VALUES (19, 'Moon18', false, 9, 'Description18');
INSERT INTO public.moon VALUES (20, 'Moon19', true, 10, 'Description19');
INSERT INTO public.moon VALUES (21, 'Moon20', false, 10, 'Description20');


--
-- Data for Name: nebulae; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebulae VALUES (1, 'Nebula1', 'Description1');
INSERT INTO public.nebulae VALUES (2, 'Nebula2', 'Description2');
INSERT INTO public.nebulae VALUES (3, 'Nebula3', 'Description3');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'Planet Earth', 0.0, false, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 'Smallest and closest planet to the Sun in the Solar System.', 7.0, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'Second planet from the Sun and the hottest in the Solar System.', 3.4, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Fourth planet from the Sun and known as the Red Planet.', 1.85, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet in the Solar System with a prominent ring system.', 1.3, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Known for its extensive ring system, it is the sixth planet from the Sun.', 2.48, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Seventh planet from the Sun with a blue-green color due to methane.', 0.77, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Eighth and farthest known planet from the Sun in the Solar System.', 1.77, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf planet in the Kuiper belt, known for its icy composition.', 17.16, false, 1);
INSERT INTO public.planet VALUES (10, 'Eris', 'Dwarf planet that is one of the largest known dwarf planets in the Solar System.', 44.19, false, 1);
INSERT INTO public.planet VALUES (11, 'Ceres', 'Dwarf planet in the asteroid belt between Mars and Jupiter.', 10.59, false, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Dwarf planet and perhaps the second brightest object in the Kuiper belt.', 29.0, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 2, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Sirius', 3, 'Brightest star in the Earth night sky.', 8.6);
INSERT INTO public.star VALUES (8, 'Alpha Centauri', 4, 'Closest star system to the Solar System.', 4.37);
INSERT INTO public.star VALUES (9, 'Betelgeuse', 5, 'A red supergiant star in the constellation of Orion.', 642.5);
INSERT INTO public.star VALUES (10, 'Vega', 6, 'The fifth-brightest star in the night sky and the second-brightest star in the northern celestial hemisphere.', 25);
INSERT INTO public.star VALUES (11, 'Rigel', 7, 'A blue supergiant star that is the brightest in the constellation of Orion.', 860);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebulae_nebulae_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


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
-- Name: nebulae nebulae_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_pkey PRIMARY KEY (nebulae_id);


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
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: nebulae unique_nebulae_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT unique_nebulae_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

