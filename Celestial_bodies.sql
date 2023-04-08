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
    name character varying(30) NOT NULL,
    description text,
    absolute_magnitude integer,
    galaxy_size numeric(5,3),
    galaxy_type character varying(30),
    stars_quatity_billions integer
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
-- Name: meteor_shower; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor_shower (
    meteor_shower_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    description text
);


ALTER TABLE public.meteor_shower OWNER TO freecodecamp;

--
-- Name: meteor_shower_shower_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_shower_shower_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_shower_shower_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_shower_shower_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_shower_shower_id_seq OWNED BY public.meteor_shower.meteor_shower_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    name_description text,
    age_of_discovery character varying(30),
    discoverer character varying(30)
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
    star_id integer NOT NULL,
    is_habitable boolean,
    mean_radius numeric(7,2),
    volume numeric(7,3),
    moons integer
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
    constellation character varying(30),
    mass_in_m numeric(5,3),
    any_metor_shower boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stars_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_star_id_seq OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stars_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: meteor_shower meteor_shower_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor_shower ALTER COLUMN meteor_shower_id SET DEFAULT nextval('public.meteor_shower_shower_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.stars_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A hazy band of light seen in the night sky formed from stars that cannot be individualy distinguished by the naked eye', NULL, 1.150, 'Barred Spiral', 500);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Gets its nsme from the area of the sky in which it appears, the constellation of Andromeda', 22, 46.560, 'Barred Spiral', 1000);
INSERT INTO public.galaxy VALUES (4, 'Tadpole', 'The name comes from the resemblance of the galaxy to a tapole, where its tailes is formed by a trail of stars', 14, 3.600, 'Disrupted Barrel Spiral', NULL);
INSERT INTO public.galaxy VALUES (5, 'Fireworks', 'Due to its bright and spotty appareance', 10, 26.780, 'Intermediate Spiral', NULL);
INSERT INTO public.galaxy VALUES (6, 'Condor', 'The largest known spiral galaxy', 11, 16.000, 'Large Barred Spiral', NULL);
INSERT INTO public.galaxy VALUES (7, 'Sagittarius  Dwarf Spheroidal', NULL, 5, NULL, 'Elliptical loop', NULL);
INSERT INTO public.galaxy VALUES (8, 'NGC 1291', 'It faces towards the solar system nearly face-on', 9, 9.800, 'Ring', NULL);
INSERT INTO public.galaxy VALUES (9, 'Bear Paw', 'It belongs to the iE class od Blue Compact Dwarf classification.', 12, 1.700, 'Bear Paw', NULL);
INSERT INTO public.galaxy VALUES (10, 'Arp 78', 'Three supernovae have been observed in NGC 772', 11, 7.200, 'Unbarred Spiral', NULL);
INSERT INTO public.galaxy VALUES (11, 'NGC 6745', 'A trio of galaxies in the process of colliding.', 13, 1.400, 'Irregular', NULL);


--
-- Data for Name: meteor_shower; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor_shower VALUES (1, 'Perseids', 1, 'Its named Perseids because the point from which they appear to hail lies in the constellation Perseus');
INSERT INTO public.meteor_shower VALUES (2, 'Andromedids', 2, '');
INSERT INTO public.meteor_shower VALUES (3, 'Alpha Lyncids', 5, '');
INSERT INTO public.meteor_shower VALUES (4, 'September Lyncids', 5, '');
INSERT INTO public.meteor_shower VALUES (5, 'May arietids', 8, '');
INSERT INTO public.meteor_shower VALUES (6, 'Aries-Triangulids', 8, '');
INSERT INTO public.meteor_shower VALUES (7, 'Delta Arietids', 8, '');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 3, 'Named for one of the horses that drew Mars god chariot.', 'August 17,1877', 'A. Hall');
INSERT INTO public.moon VALUES (2, 'Deimos', 3, 'Named after one of the horses that drew Mars god chariot.', 'August 11,1877', 'A. Hall');
INSERT INTO public.moon VALUES (3, 'Moon', 1, 'Every civilization has had a name for the satellite of Earth that is known.', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'Io, hte daughter of Inachus, was changed by Jupiter into a cow to protect her from Heras jealous wrath.', 'January 8,1610', 'Galileo');
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'Beautiful dauhter of Agenor, kinf of Tyre.', 'January 8,1610', 'Galileo');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 'Boy carried to Olympus by Jupiter disguised as an eagle', 'January 7,1610', 'Galileo');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 'Beautiful daughter of Lycaon seduced by Jupiter', 'January 7,1610', 'Galileo');
INSERT INTO public.moon VALUES (8, 'Elara', 5, 'Daughter of King Orchomenus.', 'September 9, 1892', 'E.E> Barnard');
INSERT INTO public.moon VALUES (9, 'Metis', 5, 'First wife of Zeus', 'March 4,1979', 'Voyager Science Team');
INSERT INTO public.moon VALUES (10, 'Thebe', 5, 'An Egyptian kings daughter.', 'March 5,1979', 'Voyager Science Team');
INSERT INTO public.moon VALUES (11, 'Atlas', 6, 'A titan, he held the heavens on his shoulders.', 'October 1980', 'Voyager Science Team');
INSERT INTO public.moon VALUES (12, 'Prometheus', 6, 'Son of the titan Iaepthus, brother of Atlas, gave humanity fire.', 'October 1980', 'Voyager Science Team');
INSERT INTO public.moon VALUES (13, 'Mimas', 6, 'Giant felled by Ares in the war between Titans and Olympian gods', 'July 18, 1789', 'W. Herschel');
INSERT INTO public.moon VALUES (14, 'Enceladus', 6, 'Enceladus was crushed by Athene. Earth piled on top of him became the island of Sicily.', 'August 28, 1789', 'W. Herschel');
INSERT INTO public.moon VALUES (15, 'Tethys', 6, 'Tethys was the wife of Oceanus and mother of all rivers and Oceanids.', 'March 21, 1684', 'G.D. Cassini');
INSERT INTO public.moon VALUES (16, 'Dione', 6, 'Dione was the sister of Cronos and mother of Aphrodite.', 'March 21, 1684', 'G.D. Cassini');
INSERT INTO public.moon VALUES (17, 'Ariel', 7, 'A sylph in Popes "Rape of the Lock"', 'March 13, 1781', 'W. Herschel');
INSERT INTO public.moon VALUES (18, 'Umbriel', 7, 'A malevolent spirit in Popes "Rape of the Lock".', 'October 24, 1851', 'W.Lassell');
INSERT INTO public.moon VALUES (19, 'Proteus', 8, 'Greek sea god.', 'July 1989', 'Voyager Science Team');
INSERT INTO public.moon VALUES (20, 'Despina', 8, 'Daughter of Poseidon.', 'July 1989', 'Voyager Science Team');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 3, true, 6371.00, 9.800, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 3, NULL, 2438.70, 3.700, 0);
INSERT INTO public.planet VALUES (3, 'Mars', 3, NULL, 3389.50, 3.720, 2);
INSERT INTO public.planet VALUES (4, 'Venus', 3, NULL, 6051.80, 8.870, 0);
INSERT INTO public.planet VALUES (5, 'Jupiter', 3, NULL, 69911.00, 24.790, 95);
INSERT INTO public.planet VALUES (6, 'Saturn', 3, NULL, 58232.00, 10.440, 83);
INSERT INTO public.planet VALUES (7, 'Uranus', 3, NULL, 25362.00, 8.690, 27);
INSERT INTO public.planet VALUES (8, 'Neptune', 3, NULL, 24622.00, 11.150, 14);
INSERT INTO public.planet VALUES (9, 'Groombridge 34 ab', 7, true, NULL, NULL, 0);
INSERT INTO public.planet VALUES (10, 'Teegarden b', 8, true, NULL, NULL, 0);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 9, true, NULL, NULL, 0);
INSERT INTO public.planet VALUES (12, 'Kepler-438b', 10, true, NULL, NULL, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Cassiopeia', 3, 'Cassiopeia', 3.980, true);
INSERT INTO public.star VALUES (2, 'Alpheratz', 3, 'Andromeda', 3.800, true);
INSERT INTO public.star VALUES (3, 'Sun', 1, NULL, 1.988, NULL);
INSERT INTO public.star VALUES (4, 'Ran', 8, 'Eridanus', 1.988, NULL);
INSERT INTO public.star VALUES (5, '10 Ursae Majoris', 9, 'Lynx', 1.440, true);
INSERT INTO public.star VALUES (7, 'Groombridge 34', 3, 'Andromeda', 0.393, true);
INSERT INTO public.star VALUES (8, 'Teegarden', 10, 'Aries', 0.093, true);
INSERT INTO public.star VALUES (9, 'Proxima Centauri', 1, 'Centaurus', 0.122, true);
INSERT INTO public.star VALUES (10, 'Kepler-438', 11, 'Lyra', 0.544, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: meteor_shower_shower_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_shower_shower_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: stars_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stars_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor_shower meteor_shower_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor_shower
    ADD CONSTRAINT meteor_shower_name_key UNIQUE (name);


--
-- Name: meteor_shower meteor_shower_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor_shower
    ADD CONSTRAINT meteor_shower_pkey PRIMARY KEY (meteor_shower_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


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
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_pkey PRIMARY KEY (star_id);


--
-- Name: star stars_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_star_name_key UNIQUE (name);


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

