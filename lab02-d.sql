--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    lname character varying(20),
    fname character varying(20),
    mname character varying(20)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: installs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.installs (
    pc_id integer,
    soft_id integer
);


ALTER TABLE public.installs OWNER TO postgres;

--
-- Name: pcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pcs (
    id integer NOT NULL,
    room_id integer,
    note character varying(200),
    ip_addr character varying(200),
    mac_addr character varying(200)
);


ALTER TABLE public.pcs OWNER TO postgres;

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    num character varying(20),
    emp_id integer
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: soft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soft (
    id integer NOT NULL,
    sname character varying(20),
    ver character varying(20),
    quant integer
);


ALTER TABLE public.soft OWNER TO postgres;

--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, lname, fname, mname) FROM stdin;
1	Evtushenko	Ivan	Romanovich
2	Mixalkov	Vlad	Stradunov
3	Heroplet	Dima	Evtux
4	Midavyxa	Roma	Alaxovski
5	Sunin	Saiky	Legovski
6	Orachinyma	Lora	Indoraz
7	Ychiha	Sasce	Gerbunov
8	Yzumaki	Naruma	Deragina
9	Saveliy	Igor	Anasiev
10	Dragynov	Sereja	Vovilonsky
\.


--
-- Data for Name: installs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.installs (pc_id, soft_id) FROM stdin;
101	1
101	2
102	3
102	4
103	5
103	1
104	2
104	3
105	4
105	5
106	1
106	2
107	1
107	2
108	1
108	2
109	1
109	2
110	1
110	2
111	1
111	2
112	1
112	2
113	1
113	2
114	1
114	2
115	1
115	2
116	1
116	2
117	1
117	2
118	1
118	2
119	1
119	2
120	1
120	2
121	1
121	2
122	1
122	2
123	1
123	2
124	1
124	2
125	1
125	2
126	1
126	2
127	1
127	2
128	1
128	2
129	1
129	2
130	1
130	2
130	3
130	4
130	5
128	3
128	4
129	5
\.


--
-- Data for Name: pcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pcs (id, room_id, note, ip_addr, mac_addr) FROM stdin;
101	1	Gp	6.53.54.6.54	6B:c4:8f:7f
102	2	Gp	65.4.65.4.1	66:9R:7E:W6:E5
103	3	Gp	351.3.54.68.4	65:W6:W4:E8:54
104	4	Gp	634.565.46.54	6B:C4:6C:4S
105	5	Gp	561.65.464	GD:3D:5V:6D
106	6	Gp	654.1.646.54	2D:1B:7B:87:S5
107	7	Gp	65.163.416.54	76:9D:8B:46:F5:S8
108	8	b	6.54.16.54.634	65:4C:8F:W9:R7
109	9	b	56.41.65.4654	54:D9:D6:68:4H:6S
110	10	b	65.46.54.654	65:D7:8D:9D:65
111	11	d	65.41.65	65:D4:6X:87:V4
112	12	d	4.64	65:4W:GE:89:X6
113	13	d	65.46	65:8Q:48:66:54
114	14	d	465.4.654	78:V9:85:S4
115	15	b	646.54.6.54	5F:45:6G:47
116	1	b	65.4.654	21:B4:G8:79:VS
117	2	F	65.46.54.6	6S:5S:87:4B:V5:46
118	3	F	465.4.64.1.65.41	24:T9:G8:X7:64
119	4	F	46.54.684	15:D5:8D:96:T7
120	5	F	56.46.49.87	C4:X8:76:VV:54
121	6	F	356.48.97.98	65:V4:C7:V8
122	7	G	65.46.87.6.87	15:E79:G8:F2
123	8	G	63.5.46.87	21:34:F5:7D:62
124	9	G	965.46.87.98	35:E6:5W4:Q6:Q9
125	10	S	46.58.47.987	35:D6:S5:9D:8F
126	11	S	65.4.68.79	65:S4:8S:97
127	12	S	54.69.87.96.87	6D:56:V54:87
128	13	S	65.46.87.97	65:SS:9G:8D
129	14	Q	68.79.79.7	65:S9:VK6:7N:98
130	15	Q	897.49.79.7	95:D4F:6H:4M
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, num, emp_id) FROM stdin;
1	102	1
2	103	2
3	104	3
4	105	4
5	106	5
6	107	6
7	108	7
8	109	1
9	110	1
10	111	3
11	112	4
12	113	10
13	114	9
14	115	8
15	116	7
\.


--
-- Data for Name: soft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soft (id, sname, ver, quant) FROM stdin;
1	Grob	v0.2	15
2	Orival	v1.1.1	12
3	Droxov	v2.34	10
4	Sekta	v13	35
5	Volkov	v0.0.0.1	5
\.


--
-- Name: employees emp_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT emp_key PRIMARY KEY (id);


--
-- Name: pcs pk_somekey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT pk_somekey PRIMARY KEY (id);


--
-- Name: rooms roo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT roo_key PRIMARY KEY (id);


--
-- Name: soft sof_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soft
    ADD CONSTRAINT sof_key PRIMARY KEY (id);


--
-- Name: rooms em_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT em_id FOREIGN KEY (emp_id) REFERENCES public.employees(id);


--
-- Name: installs fk_inst_pc_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT fk_inst_pc_id FOREIGN KEY (pc_id) REFERENCES public.pcs(id);


--
-- Name: pcs roo_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT roo_id FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- Name: installs sof_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT sof_id FOREIGN KEY (soft_id) REFERENCES public.soft(id);


--
-- PostgreSQL database dump complete
--

