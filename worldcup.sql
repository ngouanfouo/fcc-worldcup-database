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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer,
    round character varying(255),
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(255) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1, false);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES(1,1,2,4,2, 2018, 'Final');
INSERT INTO public.games VALUES(2,3,4,2,0, 2018, 'Third Place');
INSERT INTO public.games VALUES(3,2,4,2,1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES(4,1,3,1,0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES(5,2,5,3,2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES(6,4,6,2,0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES(9,4,9,2,1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES(10,6,10,0,0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES(11,2,11,3,2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES(12,7,12,2,0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES(13,2,13,2,1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES(14,5,14,2,1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES(15,8,15,2,1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES(16,1,16,4,3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES(17,17,16,1,0, 2014, 'Final');
INSERT INTO public.games VALUES(18,18,7,3,0, 2014, 'Third Place');
INSERT INTO public.games VALUES(19,16,18,1,0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES(20,17,7,7,1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES(21,18,19,1,0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES(22,16,3,1,0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES(23,17,1,1,0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES(24,17,1,1,0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES(25,7,20,2,1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES(26,7,20,2,1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES(27,7,20,2,1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES(28,7,20,2,1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES(29,7,20,2,1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES(30,7,20,2,1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES(31,7,20,2,1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES(32,7,20,2,1, 2014, 'Eighth-Final');


Insert INTO public.teams VALUES(1,'France');
Insert INTO public.teams VALUES(2,'Croatia');
Insert INTO public.teams VALUES(3,'Belgium');
Insert INTO public.teams VALUES(4,'England');
Insert INTO public.teams VALUES(5,'Russia');
Insert INTO public.teams VALUES(6,'Sweden');
Insert INTO public.teams VALUES(7,'Brazil');
Insert INTO public.teams VALUES(8,'Uruguay');
Insert INTO public.teams VALUES(9,'Colombia');
Insert INTO public.teams VALUES(10,'Switzeland');
Insert INTO public.teams VALUES(11,'Japan');
Insert INTO public.teams VALUES(12,'Mexico');
Insert INTO public.teams VALUES(13,'Denmark');
Insert INTO public.teams VALUES(14,'Spain');
Insert INTO public.teams VALUES(15,'Portugal');
Insert INTO public.teams VALUES(16,'Argentina');
Insert INTO public.teams VALUES(17,'Germany');
Insert INTO public.teams VALUES(18,'Netherlands');
Insert INTO public.teams VALUES(19,'Costa Rica');
Insert INTO public.teams VALUES(20,'Chile');
Insert INTO public.teams VALUES(21,'Nigeria');
Insert INTO public.teams VALUES(22,'Algeria');
Insert INTO public.teams VALUES(23,'Greece');
Insert INTO public.teams VALUES(24,'United States');












--
-- PostgreSQL database dump complete
--

