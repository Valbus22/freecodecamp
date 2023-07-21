--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
    description text,
    galaxy_types text,
    is_spherical boolean,
    name character varying(30) NOT NULL,
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
    name character varying(30) NOT NULL,
    description text,
    moon_types text,
    distance_earth integer,
    moon_id integer NOT NULL
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
-- Name: newmoon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.newmoon (
    newmoon_id integer NOT NULL,
    name character varying(30),
    distance_earth integer,
    has_life boolean,
    is_spherical boolean DEFAULT false NOT NULL
);


ALTER TABLE public.newmoon OWNER TO freecodecamp;

--
-- Name: newmoon_newmoon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.newmoon_newmoon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.newmoon_newmoon_id_seq OWNER TO freecodecamp;

--
-- Name: newmoon_newmoon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.newmoon_newmoon_id_seq OWNED BY public.newmoon.newmoon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    description text,
    planet_types text,
    has_life boolean,
    is_spherical boolean,
    distance_earth integer,
    planet_id integer NOT NULL
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
    description text,
    star_type text,
    distance_earth numeric,
    is_spherical boolean,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL
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
-- Name: newmoon newmoon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.newmoon ALTER COLUMN newmoon_id SET DEFAULT nextval('public.newmoon_newmoon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('aaaa', 'ddddddddd', NULL, 'mert', 1);
INSERT INTO public.galaxy VALUES ('aaaa', 'ddddddddd', NULL, 'yagmur', 2);
INSERT INTO public.galaxy VALUES ('aaaa', 'ddddddddd', NULL, 'abi', 3);
INSERT INTO public.galaxy VALUES ('aaaa', 'ddddddddd', NULL, 'yok', 4);
INSERT INTO public.galaxy VALUES ('aaaa', 'ddddddddd', NULL, 'istemem', 5);
INSERT INTO public.galaxy VALUES ('aaaa', 'ddddddddd', NULL, 'danke', 6);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'ss', 7);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'mm', 8);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'nn', 9);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'ff', 10);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'gg', 11);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'hh', 12);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'jj', 13);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'kk', 14);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'll', 15);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'şş', 16);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'ii', 17);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'aa', 18);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'dd', 19);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'qq', 20);
INSERT INTO public.galaxy VALUES ('pırt', NULL, NULL, 'ww', 21);
INSERT INTO public.galaxy VALUES ('psrt', NULL, NULL, 'ee', 22);
INSERT INTO public.galaxy VALUES ('psrt', NULL, NULL, 'awww', 23);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('mert', 'pırt', 'zort', 123123, 1);
INSERT INTO public.moon VALUES ('yagmur', 'pırt', 'zort', 123123, 2);
INSERT INTO public.moon VALUES ('yok', 'pırt', 'zort', 123123, 3);
INSERT INTO public.moon VALUES ('abi', 'pırt', 'zort', 123123, 4);
INSERT INTO public.moon VALUES ('danke', 'pırt', 'zort', 123123, 5);
INSERT INTO public.moon VALUES ('istemem', 'pırt', 'zort', 123123, 8);
INSERT INTO public.moon VALUES ('dd', 'pırt', NULL, NULL, 9);
INSERT INTO public.moon VALUES ('ff', 'pırt', NULL, NULL, 10);
INSERT INTO public.moon VALUES ('gg', 'pırt', NULL, NULL, 11);
INSERT INTO public.moon VALUES ('hh', 'pırt', NULL, NULL, 12);
INSERT INTO public.moon VALUES ('jj', 'pırt', NULL, NULL, 13);
INSERT INTO public.moon VALUES ('kk', 'pırt', NULL, NULL, 14);
INSERT INTO public.moon VALUES ('ll', 'pırt', NULL, NULL, 15);
INSERT INTO public.moon VALUES ('şş', 'pırt', NULL, NULL, 16);
INSERT INTO public.moon VALUES ('ii', 'pırt', NULL, NULL, 17);
INSERT INTO public.moon VALUES ('aa', 'pırt', NULL, NULL, 18);
INSERT INTO public.moon VALUES ('qq', 'pırt', NULL, NULL, 19);
INSERT INTO public.moon VALUES ('ww', 'pırt', NULL, NULL, 20);
INSERT INTO public.moon VALUES ('ee', 'psrt', NULL, NULL, 26);
INSERT INTO public.moon VALUES ('awww', 'psrt', NULL, NULL, 28);


--
-- Data for Name: newmoon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.newmoon VALUES (1, 'mert', 123123, true, false);
INSERT INTO public.newmoon VALUES (2, 'yagmur', 123123, true, false);
INSERT INTO public.newmoon VALUES (3, 'ehe', 123123, true, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('abi', 'aqwqwq', NULL, true, true, 123123, 1);
INSERT INTO public.planet VALUES ('yok', 'aqwqwq', NULL, true, true, 123123, 2);
INSERT INTO public.planet VALUES ('mert', 'aqwqwq', NULL, true, true, 123123, 3);
INSERT INTO public.planet VALUES ('yagmur', 'aqwqwq', NULL, true, true, 123123, 4);
INSERT INTO public.planet VALUES ('istemem', 'aqwqwq', NULL, true, true, 123123, 6);
INSERT INTO public.planet VALUES ('danke', 'aqwqwq', NULL, true, true, 123123, 7);
INSERT INTO public.planet VALUES ('ss', 'pırt', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES ('dd', 'pırt', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES ('ff', 'pırt', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES ('gg', 'pırt', NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES ('hh', 'pırt', NULL, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES ('jj', 'pırt', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES ('kk', 'pırt', NULL, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES ('ll', 'pırt', NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES ('şş', 'pırt', NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES ('ii', 'pırt', NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES ('qq', 'pırt', NULL, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES ('ww', 'pırt', NULL, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES ('aa', 'pırt', NULL, NULL, NULL, NULL, 20);
INSERT INTO public.planet VALUES ('ee', 'psrt', NULL, NULL, NULL, NULL, 21);
INSERT INTO public.planet VALUES ('awww', 'psrt', NULL, NULL, NULL, NULL, 23);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('aaaaaa', 'aaaaaa', NULL, true, 'mert', 1);
INSERT INTO public.star VALUES ('aaaaaa', 'aaaaaa', NULL, true, 'yagmur', 2);
INSERT INTO public.star VALUES ('aaaaaa', 'aaaaaa', NULL, true, 'abi', 3);
INSERT INTO public.star VALUES ('aaaaaa', 'aaaaaa', NULL, true, 'yok', 4);
INSERT INTO public.star VALUES ('aaaaaa', 'aaaaaa', NULL, true, 'istemem', 5);
INSERT INTO public.star VALUES ('aaaaaa', 'aaaaaa', NULL, true, 'danke', 6);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'ss', 8);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'dd', 9);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'ff', 10);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'gg', 11);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'hh', 12);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'jj', 13);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'kk', 14);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'll', 15);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'şş', 16);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'ii', 17);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'aa', 18);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'qq', 19);
INSERT INTO public.star VALUES ('pırt', NULL, NULL, NULL, 'ww', 20);
INSERT INTO public.star VALUES ('psrt', NULL, NULL, NULL, 'ee', 22);
INSERT INTO public.star VALUES ('psrt', NULL, NULL, NULL, 'awww', 23);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 23, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: newmoon_newmoon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.newmoon_newmoon_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 23, true);


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
-- Name: newmoon newmoon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.newmoon
    ADD CONSTRAINT newmoon_name_key UNIQUE (name);


--
-- Name: newmoon newmoon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.newmoon
    ADD CONSTRAINT newmoon_pkey PRIMARY KEY (newmoon_id);


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
-- Name: moon moon_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: planet planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_fkey FOREIGN KEY (name) REFERENCES public.star(name);


--
-- Name: star star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_fkey FOREIGN KEY (name) REFERENCES public.galaxy(name);


--
-- PostgreSQL database dump complete
--

