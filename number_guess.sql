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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 13, 10);
INSERT INTO public.games VALUES (2, 13, 11);
INSERT INTO public.games VALUES (3, 13, 12);
INSERT INTO public.games VALUES (4, 13, 10);
INSERT INTO public.games VALUES (5, 13, 5);
INSERT INTO public.games VALUES (6, 21, 202);
INSERT INTO public.games VALUES (7, 21, 76);
INSERT INTO public.games VALUES (8, 22, 650);
INSERT INTO public.games VALUES (9, 22, 19);
INSERT INTO public.games VALUES (10, 21, 707);
INSERT INTO public.games VALUES (11, 21, 564);
INSERT INTO public.games VALUES (12, 21, 166);
INSERT INTO public.games VALUES (13, 23, 969);
INSERT INTO public.games VALUES (14, 23, 232);
INSERT INTO public.games VALUES (15, 24, 502);
INSERT INTO public.games VALUES (16, 24, 271);
INSERT INTO public.games VALUES (17, 23, 985);
INSERT INTO public.games VALUES (18, 23, 620);
INSERT INTO public.games VALUES (19, 23, 8);
INSERT INTO public.games VALUES (20, 25, 1);
INSERT INTO public.games VALUES (21, 25, 540);
INSERT INTO public.games VALUES (22, 26, 396);
INSERT INTO public.games VALUES (23, 26, 344);
INSERT INTO public.games VALUES (24, 25, 904);
INSERT INTO public.games VALUES (25, 25, 575);
INSERT INTO public.games VALUES (26, 25, 351);
INSERT INTO public.games VALUES (27, 27, 130);
INSERT INTO public.games VALUES (28, 27, 798);
INSERT INTO public.games VALUES (29, 28, 781);
INSERT INTO public.games VALUES (30, 28, 650);
INSERT INTO public.games VALUES (31, 27, 255);
INSERT INTO public.games VALUES (32, 27, 930);
INSERT INTO public.games VALUES (33, 27, 738);
INSERT INTO public.games VALUES (34, 29, 1);
INSERT INTO public.games VALUES (35, 29, 745);
INSERT INTO public.games VALUES (36, 30, 876);
INSERT INTO public.games VALUES (37, 30, 330);
INSERT INTO public.games VALUES (38, 29, 58);
INSERT INTO public.games VALUES (39, 29, 604);
INSERT INTO public.games VALUES (40, 29, 504);
INSERT INTO public.games VALUES (41, 31, 400);
INSERT INTO public.games VALUES (42, 31, 68);
INSERT INTO public.games VALUES (43, 32, 174);
INSERT INTO public.games VALUES (44, 32, 99);
INSERT INTO public.games VALUES (45, 31, 401);
INSERT INTO public.games VALUES (46, 31, 56);
INSERT INTO public.games VALUES (47, 31, 386);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1685650441828', NULL, NULL);
INSERT INTO public.users VALUES (2, 'user_1685650441827', NULL, NULL);
INSERT INTO public.users VALUES (3, 'user_1685650493596', NULL, NULL);
INSERT INTO public.users VALUES (4, 'user_1685650493595', NULL, NULL);
INSERT INTO public.users VALUES (5, 'user_1685650682175', NULL, NULL);
INSERT INTO public.users VALUES (6, 'user_1685650682174', NULL, NULL);
INSERT INTO public.users VALUES (7, 'user_1685651021437', NULL, NULL);
INSERT INTO public.users VALUES (8, 'user_1685651021436', NULL, NULL);
INSERT INTO public.users VALUES (9, 'user_1685651084158', NULL, NULL);
INSERT INTO public.users VALUES (10, 'user_1685651084157', NULL, NULL);
INSERT INTO public.users VALUES (11, 'user_1685651680364', NULL, NULL);
INSERT INTO public.users VALUES (12, 'user_1685651680363', NULL, NULL);
INSERT INTO public.users VALUES (14, 'a', NULL, NULL);
INSERT INTO public.users VALUES (15, 'd', NULL, NULL);
INSERT INTO public.users VALUES (16, 'f', NULL, NULL);
INSERT INTO public.users VALUES (17, 'g', NULL, NULL);
INSERT INTO public.users VALUES (18, 'h', NULL, NULL);
INSERT INTO public.users VALUES (19, 'k', NULL, NULL);
INSERT INTO public.users VALUES (13, 's', 5, 5);
INSERT INTO public.users VALUES (22, 'user_1685656387539', 2, 19);
INSERT INTO public.users VALUES (21, 'user_1685656387540', 5, 76);
INSERT INTO public.users VALUES (24, 'user_1685656484866', 2, 271);
INSERT INTO public.users VALUES (23, 'user_1685656484867', 5, 8);
INSERT INTO public.users VALUES (26, 'user_1685656545446', 2, 344);
INSERT INTO public.users VALUES (25, 'user_1685656545447', 5, 1);
INSERT INTO public.users VALUES (28, 'user_1685656577171', 2, 650);
INSERT INTO public.users VALUES (27, 'user_1685656577172', 5, 130);
INSERT INTO public.users VALUES (30, 'user_1685656603111', 2, 330);
INSERT INTO public.users VALUES (29, 'user_1685656603112', 5, 1);
INSERT INTO public.users VALUES (32, 'user_1685656629925', 2, 99);
INSERT INTO public.users VALUES (31, 'user_1685656629926', 5, 56);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 47, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 32, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

