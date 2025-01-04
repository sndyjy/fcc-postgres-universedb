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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying(80) NOT NULL,
    mass numeric NOT NULL,
    description text NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: dwarf_planet_d_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_planet_d_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_planet_d_planet_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_planet_d_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_planet_d_planet_id_seq OWNED BY public.dwarf_planet.dwarf_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(80) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    type text NOT NULL,
    description text NOT NULL,
    galaxy_id integer NOT NULL
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
    name character varying(80) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    description text NOT NULL,
    planet_id integer,
    galaxy_id integer
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
    name character varying(80) NOT NULL,
    habitable boolean NOT NULL,
    has_life boolean NOT NULL,
    description text NOT NULL,
    mass numeric NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
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
    name character varying(80) NOT NULL,
    mass numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    description text NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: dwarf_planet dwarf_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet ALTER COLUMN dwarf_planet_id SET DEFAULT nextval('public.dwarf_planet_d_planet_id_seq'::regclass);


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
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, 'Pluto', 0.0022, 'Former ninth planet; known for its complex surface and thin atmosphere.', 1);
INSERT INTO public.dwarf_planet VALUES (2, 'Eris', 0.0028, 'One of the most massive known dwarf planets; led to the reclassification of Pluto.', 1);
INSERT INTO public.dwarf_planet VALUES (3, 'Haumea', 0.0007, 'Notable for its elongated shape and fast rotation.', 1);
INSERT INTO public.dwarf_planet VALUES (4, 'Makemake', 0.0007, 'A distant dwarf planet in the Kuiper Belt; very low average temperature.', 1);
INSERT INTO public.dwarf_planet VALUES (5, 'Ceres', 0.00015, 'Closest dwarf planet to the Sun; located in the asteroid belt.', 1);
INSERT INTO public.dwarf_planet VALUES (6, 'Gonggong', 0.0005, 'A trans-Neptunian object with a highly elliptical orbit.', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 13600, 0, 'Barred Spiral', 'Our home galaxy containing our Solar System.', 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 10000, 2537000, 'Spiral', 'Nearest spiral galaxy to the Milky Way; on a collision course with our galaxy.', 2);
INSERT INTO public.galaxy VALUES ('Triangulum', 12000, 3000000, 'Spiral', 'Third-largest member of the Local Group of galaxies.', 3);
INSERT INTO public.galaxy VALUES ('Whirlpool', 400, 23000000, 'Spiral', 'Known for its distinctive spiral arms and interaction with a companion galaxy.', 4);
INSERT INTO public.galaxy VALUES ('Sombrero', 13000, 29000000, 'Spiral', 'Notable for its bright nucleus and large central bulge, resembling a sombrero.', 5);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 13600, 163000, 'Irregular', 'A satellite galaxy of the Milky Way; rich in star-forming regions.', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4500, 'Only natural satellite of Earth; stabilizes its axial tilt.', 3, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 'Larger of the two moons of Mars; has a decaying orbit.', 4, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 'Smaller of the two moons of Mars; has a smooth, dusty surface.', 4, 1);
INSERT INTO public.moon VALUES (4, 'Io', 4500, 'Most volcanically active body; a Galilean moon of Jupiter.', 5, 1);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, 'Believed to have a subsurface ocean; potential for life.', 5, 1);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 'Largest moon in the Solar System; larger than Mercury.', 5, 1);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, 'Heavily cratered and ancient surface.', 5, 1);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, 'Largest moon of Saturn; has lakes of liquid methane.', 6, 1);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500, 'Geysers eject water ice; potential habitat for microbial life.', 6, 1);
INSERT INTO public.moon VALUES (10, 'Tethys', 4500, 'Known for a large impact crater named Odysseus.', 6, 1);
INSERT INTO public.moon VALUES (11, 'Rhea', 4500, 'Second-largest moon of Saturn; has a thin atmosphere.', 6, 1);
INSERT INTO public.moon VALUES (12, 'Iapetus', 4500, 'Known for its two-tone coloration.', 6, 1);
INSERT INTO public.moon VALUES (13, 'Dione', 4500, 'Heavily cratered surface with bright ice cliffs.', 6, 1);
INSERT INTO public.moon VALUES (14, 'Triton', 4500, 'Largest moon Neptune; has nitrogen geysers.', 8, 1);
INSERT INTO public.moon VALUES (16, 'Nereid', 4500, 'Third-largest moon of Neptune; has a highly eccentric orbit.', 8, 1);
INSERT INTO public.moon VALUES (17, 'Oberon', 4500, 'Second-largest moon of Uranus; has many impact craters.', 7, 1);
INSERT INTO public.moon VALUES (18, 'Titania', 4500, 'Largest moon of Uranus; has signs of past geological activity.', 7, 1);
INSERT INTO public.moon VALUES (19, 'Miranda', 4500, 'Smallest of  major moons of Uranus; has a bizarre surface.', 7, 1);
INSERT INTO public.moon VALUES (20, 'Umbriel', 4500, 'Dark surface; one of larger moons of Uranus.', 7, 1);
INSERT INTO public.moon VALUES (15, 'Ariel', 4500, 'The fourth-largest and brightest satellites of Uranus.', 7, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, false, 'Smallest planet in the Solar System; closest to the Sun.', 0.055, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, false, 'Similar to Earth but with a thick, toxic atmosphere.', 0.815, 1, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 'Our home planet; the only known planet to support life.', 1, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, false, 'Known as the Red Planet; has the largest volcano and canyon in the Solar System.', 0.107, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, false, 'Largest planet in the Solar System; known for its Great Red Spot.', 317.8, 1, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, false, 'Distinguished by its extensive ring system.', 95.2, 1, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, false, 'Rotates on its side; known for its faint rings.', 14.5, 1, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, false, 'Known for its deep blue color and strong winds.', 17.1, 1, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', true, false, 'Orbits within the habitable zone of Proxima Centauri.', 1.17, 4, 1);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', true, false, 'Potentially habitable but its existence is debated.', 3.1, 8, 1);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1d', true, false, 'Resides in the habitable zone of TRAPPIST-1.', 0.388, 9, 1);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', true, false, 'Often referred to as cousin of  Earth; in the habitable zone of its star.', 5, 7, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4600, 'The star at the center of our Solar System; supports life on Earth.', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 2.1, 242, 'Brightest star in the night sky; part of the constellation Canis Major.', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 11.6, 10000, 'A prominent star in Orion; nearing the end of its life cycle.', 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 0.12, 4500, 'Closest star to the Sun; part of Alpha Centauri system.', 1);
INSERT INTO public.star VALUES (5, 'Vega', 2.1, 455, 'A bright star in Lyra; used as a reference point for brightness.', 1);
INSERT INTO public.star VALUES (6, 'Polaris', 5.4, 7000, 'Known as the North Star; located nearly directly above north pole of Earth.', 1);
INSERT INTO public.star VALUES (7, 'Kepler-452', 1.04, 6000, 'A G-type main-sequence star, similar to our Sun but older and slightly more massive.', 1);
INSERT INTO public.star VALUES (8, 'Gliese 581', 0.31, 8000, 'A red dwarf star; as an M-type star, it is cooler and less luminous than the Sun.', 1);
INSERT INTO public.star VALUES (9, 'TRAPPIST-1', 0.089, 6500, 'An ultra-cool dwarf star; known for its planetary system comprising seven Earth-sized planets.', 1);


--
-- Name: dwarf_planet_d_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_planet_d_planet_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: dwarf_planet dwarf_planet_d_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_d_planet_id_key UNIQUE (dwarf_planet_id);


--
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: dwarf_planet dwarf_planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

