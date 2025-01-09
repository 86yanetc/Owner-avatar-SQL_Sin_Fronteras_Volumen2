--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6
-- Dumped by pg_dump version 16.6

-- Started on 2025-01-09 09:29:58

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
-- TOC entry 216 (class 1259 OID 17846)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    country_code character varying(100) NOT NULL,
    country_name character varying(100),
    continent character varying(100),
    population integer
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17849)
-- Name: economic_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.economic_data (
    id integer NOT NULL,
    country_code character varying(100),
    year integer,
    gdp double precision,
    inflation_rate double precision,
    unemployment_rate double precision
);


ALTER TABLE public.economic_data OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17843)
-- Name: world_leaders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.world_leaders (
    id integer NOT NULL,
    name character varying(100),
    country_code character varying(100),
    "position" character varying(100),
    term_start date,
    term_end date
);


ALTER TABLE public.world_leaders OWNER TO postgres;

--
-- TOC entry 4849 (class 0 OID 17846)
-- Dependencies: 216
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries VALUES ('USA', 'United States', 'North America', 331002651);
INSERT INTO public.countries VALUES ('CAN', 'Canada', 'North America', 37742154);
INSERT INTO public.countries VALUES ('DEU', 'Germany', 'Europe', 83783942);
INSERT INTO public.countries VALUES ('FRA', 'France', 'Europe', 65273511);
INSERT INTO public.countries VALUES ('GBR', 'United Kingdom', 'Europe', 67886011);
INSERT INTO public.countries VALUES ('AUS', 'Australia', 'Oceania', 25499884);
INSERT INTO public.countries VALUES ('NZL', 'New Zealand', 'Oceania', 4822233);
INSERT INTO public.countries VALUES ('CHN', 'China', 'Asia', 1439323776);
INSERT INTO public.countries VALUES ('RUS', 'Russia', 'Europe', 145934462);
INSERT INTO public.countries VALUES ('IND', 'India', 'Asia', 1380004385);
INSERT INTO public.countries VALUES ('BRA', 'Brazil', 'South America', 212559417);
INSERT INTO public.countries VALUES ('MEX', 'Mexico', 'North America', 128932753);
INSERT INTO public.countries VALUES ('KOR', 'South Korea', 'Asia', 51269185);
INSERT INTO public.countries VALUES ('TUR', 'Turkey', 'Asia', 84339067);
INSERT INTO public.countries VALUES ('ZAF', 'South Africa', 'Africa', 59308690);
INSERT INTO public.countries VALUES ('NGA', 'Nigeria', 'Africa', 206139589);
INSERT INTO public.countries VALUES ('IDN', 'Indonesia', 'Asia', 273523615);
INSERT INTO public.countries VALUES ('BLR', 'Belarus', 'Europe', 9449323);
INSERT INTO public.countries VALUES ('CHL', 'Chile', 'South America', 19116201);
INSERT INTO public.countries VALUES ('ESP', 'Spain', 'Europe', 46754778);
INSERT INTO public.countries VALUES ('ITA', 'Italy', 'Europe', 60461826);
INSERT INTO public.countries VALUES ('JPN', 'Japan', 'Asia', 126476461);
INSERT INTO public.countries VALUES ('NLD', 'Netherlands', 'Europe', 17134872);
INSERT INTO public.countries VALUES ('DNK', 'Denmark', 'Europe', 5818553);
INSERT INTO public.countries VALUES ('SWE', 'Sweden', 'Europe', 10099265);
INSERT INTO public.countries VALUES ('PRT', 'Portugal', 'Europe', 10196709);
INSERT INTO public.countries VALUES ('GRC', 'Greece', 'Europe', 10423054);
INSERT INTO public.countries VALUES ('BEL', 'Belgium', 'Europe', 11589623);
INSERT INTO public.countries VALUES ('EST', 'Estonia', 'Europe', 1326535);
INSERT INTO public.countries VALUES ('FIN', 'Finland', 'Europe', 5540720);
INSERT INTO public.countries VALUES ('CZE', 'Czech Republic', 'Europe', 10708981);
INSERT INTO public.countries VALUES ('SVK', 'Slovakia', 'Europe', 5456362);
INSERT INTO public.countries VALUES ('LTU', 'Lithuania', 'Europe', 2722289);
INSERT INTO public.countries VALUES ('LVA', 'Latvia', 'Europe', 1886198);
INSERT INTO public.countries VALUES ('ROU', 'Romania', 'Europe', 19237691);
INSERT INTO public.countries VALUES ('POL', 'Poland', 'Europe', 38386000);
INSERT INTO public.countries VALUES ('UKR', 'Ukraine', 'Europe', 43733762);
INSERT INTO public.countries VALUES ('SRB', 'Serbia', 'Europe', 8772235);
INSERT INTO public.countries VALUES ('ALB', 'Albania', 'Europe', 2877797);
INSERT INTO public.countries VALUES ('MNE', 'Montenegro', 'Europe', 622359);
INSERT INTO public.countries VALUES ('BGR', 'Bulgaria', 'Europe', 6948445);
INSERT INTO public.countries VALUES ('HRV', 'Croatia', 'Europe', 4105267);
INSERT INTO public.countries VALUES ('SVN', 'Slovenia', 'Europe', 2078654);
INSERT INTO public.countries VALUES ('LUX', 'Luxembourg', 'Europe', 634814);
INSERT INTO public.countries VALUES ('IRL', 'Ireland', 'Europe', 4937786);
INSERT INTO public.countries VALUES ('CYP', 'Cyprus', 'Europe', 1207359);
INSERT INTO public.countries VALUES ('ARG', 'Argentina', 'South America', 45195774);
INSERT INTO public.countries VALUES ('COL', 'Colombia', 'South America', 50882891);
INSERT INTO public.countries VALUES ('BOL', 'Bolivia', 'South America', 11673021);


--
-- TOC entry 4850 (class 0 OID 17849)
-- Dependencies: 217
-- Data for Name: economic_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.economic_data VALUES (1, 'USA', 2022, 21137518, 1.2, 5.8);
INSERT INTO public.economic_data VALUES (2, 'CAN', 2022, 1647126, 1.5, 7.5);
INSERT INTO public.economic_data VALUES (3, 'DEU', 2022, 3845630, 1.4, 4.2);
INSERT INTO public.economic_data VALUES (4, 'FRA', 2022, 2715518, 1.3, 8.1);
INSERT INTO public.economic_data VALUES (5, 'GBR', 2022, 2825208, 1.8, 4.5);
INSERT INTO public.economic_data VALUES (6, 'AUS', 2022, 1392687, 1.6, 5);
INSERT INTO public.economic_data VALUES (7, 'NZL', 2022, 212526, 1.7, 4.9);
INSERT INTO public.economic_data VALUES (8, 'CHN', 2022, 14342903, 2.3, 3.6);
INSERT INTO public.economic_data VALUES (9, 'RUS', 2022, 1699876, 2.5, 5.2);
INSERT INTO public.economic_data VALUES (10, 'IND', 2022, 2875142, 3.1, 7.1);
INSERT INTO public.economic_data VALUES (11, 'BRA', 2022, 2055508, 3.2, 12.3);
INSERT INTO public.economic_data VALUES (12, 'MEX', 2022, 1220703, 3.4, 4.4);
INSERT INTO public.economic_data VALUES (13, 'KOR', 2022, 1646825, 1, 3.8);
INSERT INTO public.economic_data VALUES (14, 'TUR', 2022, 761425, 2.8, 13.4);
INSERT INTO public.economic_data VALUES (15, 'ZAF', 2022, 351432, 4.5, 32.6);
INSERT INTO public.economic_data VALUES (16, 'NGA', 2022, 448120, 2.2, 27.1);
INSERT INTO public.economic_data VALUES (17, 'IDN', 2022, 1119190, 1.9, 6.5);
INSERT INTO public.economic_data VALUES (18, 'BLR', 2022, 63200, 5.6, 4.8);
INSERT INTO public.economic_data VALUES (19, 'CHL', 2022, 282318, 2.5, 7.2);
INSERT INTO public.economic_data VALUES (20, 'ESP', 2022, 1393351, 1.6, 15.5);
INSERT INTO public.economic_data VALUES (21, 'ITA', 2022, 2001174, 1.2, 9.8);
INSERT INTO public.economic_data VALUES (22, 'JPN', 2022, 5081770, 0.5, 2.8);
INSERT INTO public.economic_data VALUES (23, 'NLD', 2022, 902355, 1.1, 3.4);
INSERT INTO public.economic_data VALUES (24, 'DNK', 2022, 346642, 1, 4.2);
INSERT INTO public.economic_data VALUES (25, 'SWE', 2022, 528929, 1.3, 6.3);
INSERT INTO public.economic_data VALUES (26, 'PRT', 2022, 237686, 1.4, 6.8);
INSERT INTO public.economic_data VALUES (27, 'GRC', 2022, 209853, 1.5, 16.3);
INSERT INTO public.economic_data VALUES (28, 'BEL', 2022, 515447, 1.2, 5.6);
INSERT INTO public.economic_data VALUES (29, 'EST', 2022, 30700, 1.8, 5.4);
INSERT INTO public.economic_data VALUES (30, 'FIN', 2022, 269654, 1.1, 7);
INSERT INTO public.economic_data VALUES (31, 'CZE', 2022, 245226, 1.3, 2.9);
INSERT INTO public.economic_data VALUES (32, 'SVK', 2022, 106940, 1.4, 6.7);
INSERT INTO public.economic_data VALUES (33, 'LTU', 2022, 53600, 1.6, 7.4);
INSERT INTO public.economic_data VALUES (34, 'LVA', 2022, 34100, 1.7, 8.1);
INSERT INTO public.economic_data VALUES (35, 'ROU', 2022, 248700, 1.5, 5);
INSERT INTO public.economic_data VALUES (36, 'POL', 2022, 595861, 1.2, 3.8);
INSERT INTO public.economic_data VALUES (37, 'UKR', 2022, 153781, 2, 9.2);
INSERT INTO public.economic_data VALUES (38, 'SRB', 2022, 52900, 2.1, 9);
INSERT INTO public.economic_data VALUES (39, 'ALB', 2022, 15200, 2.3, 11.5);
INSERT INTO public.economic_data VALUES (40, 'MNE', 2022, 5400, 2.4, 17.8);
INSERT INTO public.economic_data VALUES (41, 'BGR', 2022, 67900, 1.9, 5.6);
INSERT INTO public.economic_data VALUES (42, 'HRV', 2022, 60400, 1.8, 7.5);
INSERT INTO public.economic_data VALUES (43, 'SVN', 2022, 54200, 1.7, 4.5);
INSERT INTO public.economic_data VALUES (44, 'LUX', 2022, 71000, 1.1, 5.4);
INSERT INTO public.economic_data VALUES (45, 'IRL', 2022, 388700, 1, 5);
INSERT INTO public.economic_data VALUES (46, 'CYP', 2022, 24000, 1.5, 7.1);
INSERT INTO public.economic_data VALUES (47, 'ARG', 2022, 449663, 3.8, 10.4);
INSERT INTO public.economic_data VALUES (48, 'COL', 2022, 323615, 3.2, 12.1);
INSERT INTO public.economic_data VALUES (49, 'BOL', 2022, 40200, 2.9, 8.7);
INSERT INTO public.economic_data VALUES (50, 'NIC', 2022, 12600, 3.5, 6.2);


--
-- TOC entry 4848 (class 0 OID 17843)
-- Dependencies: 215
-- Data for Name: world_leaders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.world_leaders VALUES (1, 'Joe Biden', 'USA', 'President', '2021-01-20', NULL);
INSERT INTO public.world_leaders VALUES (2, 'Justin Trudeau', 'CAN', 'Prime Minister', '2015-11-04', NULL);
INSERT INTO public.world_leaders VALUES (3, 'Angela Merkel', 'DEU', 'Chancellor', '2005-11-22', '2021-12-08');
INSERT INTO public.world_leaders VALUES (4, 'Emmanuel Macron', 'FRA', 'President', '2017-05-14', NULL);
INSERT INTO public.world_leaders VALUES (5, 'Boris Johnson', 'GBR', 'Prime Minister', '2019-07-24', '2022-09-06');
INSERT INTO public.world_leaders VALUES (6, 'Scott Morrison', 'AUS', 'Prime Minister', '2018-08-24', '2022-05-23');
INSERT INTO public.world_leaders VALUES (7, 'Jacinda Ardern', 'NZL', 'Prime Minister', '2017-10-26', '2023-01-25');
INSERT INTO public.world_leaders VALUES (8, 'Xi Jinping', 'CHN', 'President', '2013-03-14', NULL);
INSERT INTO public.world_leaders VALUES (9, 'Vladimir Putin', 'RUS', 'President', '2012-05-07', NULL);
INSERT INTO public.world_leaders VALUES (10, 'Narendra Modi', 'IND', 'Prime Minister', '2014-05-26', NULL);
INSERT INTO public.world_leaders VALUES (11, 'Jair Bolsonaro', 'BRA', 'President', '2019-01-01', '2023-01-01');
INSERT INTO public.world_leaders VALUES (12, 'Andrés Manuel López Obrador', 'MEX', 'President', '2018-12-01', NULL);
INSERT INTO public.world_leaders VALUES (13, 'Moon Jae-in', 'KOR', 'President', '2017-05-10', '2022-05-10');
INSERT INTO public.world_leaders VALUES (14, 'Recep Tayyip Erdoğan', 'TUR', 'President', '2014-08-28', NULL);
INSERT INTO public.world_leaders VALUES (15, 'Cyril Ramaphosa', 'ZAF', 'President', '2018-02-15', NULL);
INSERT INTO public.world_leaders VALUES (16, 'Muhammadu Buhari', 'NGA', 'President', '2015-05-29', '2023-05-29');
INSERT INTO public.world_leaders VALUES (17, 'Joko Widodo', 'IDN', 'President', '2014-10-20', NULL);
INSERT INTO public.world_leaders VALUES (18, 'Alexander Lukashenko', 'BLR', 'President', '1994-07-20', NULL);
INSERT INTO public.world_leaders VALUES (19, 'Sebastián Piñera', 'CHL', 'President', '2018-03-11', '2022-03-11');
INSERT INTO public.world_leaders VALUES (20, 'Pedro Sánchez', 'ESP', 'Prime Minister', '2018-06-02', NULL);
INSERT INTO public.world_leaders VALUES (21, 'Mario Draghi', 'ITA', 'Prime Minister', '2021-02-13', '2022-10-22');
INSERT INTO public.world_leaders VALUES (22, 'Fumio Kishida', 'JPN', 'Prime Minister', '2021-10-04', NULL);
INSERT INTO public.world_leaders VALUES (23, 'Mark Rutte', 'NLD', 'Prime Minister', '2010-10-14', NULL);
INSERT INTO public.world_leaders VALUES (24, 'Mette Frederiksen', 'DNK', 'Prime Minister', '2019-06-27', NULL);
INSERT INTO public.world_leaders VALUES (25, 'Stefan Löfven', 'SWE', 'Prime Minister', '2014-10-03', '2021-11-30');
INSERT INTO public.world_leaders VALUES (26, 'António Costa', 'PRT', 'Prime Minister', '2015-11-26', NULL);
INSERT INTO public.world_leaders VALUES (27, 'Kyriakos Mitsotakis', 'GRC', 'Prime Minister', '2019-07-08', NULL);
INSERT INTO public.world_leaders VALUES (28, 'Alexander De Croo', 'BEL', 'Prime Minister', '2020-10-01', NULL);
INSERT INTO public.world_leaders VALUES (29, 'Kaja Kallas', 'EST', 'Prime Minister', '2021-01-26', NULL);
INSERT INTO public.world_leaders VALUES (30, 'Sanna Marin', 'FIN', 'Prime Minister', '2019-12-10', NULL);
INSERT INTO public.world_leaders VALUES (31, 'Miloš Zeman', 'CZE', 'President', '2013-03-08', '2023-03-08');
INSERT INTO public.world_leaders VALUES (32, 'Zuzana Čaputová', 'SVK', 'President', '2019-06-15', NULL);
INSERT INTO public.world_leaders VALUES (33, 'Gitanas Nausėda', 'LTU', 'President', '2019-07-12', NULL);
INSERT INTO public.world_leaders VALUES (34, 'Egils Levits', 'LVA', 'President', '2019-07-08', NULL);
INSERT INTO public.world_leaders VALUES (35, 'Klaus Iohannis', 'ROU', 'President', '2014-12-21', NULL);
INSERT INTO public.world_leaders VALUES (36, 'Andrzej Duda', 'POL', 'President', '2015-08-06', NULL);
INSERT INTO public.world_leaders VALUES (37, 'Volodymyr Zelensky', 'UKR', 'President', '2019-05-20', NULL);
INSERT INTO public.world_leaders VALUES (38, 'Aleksandar Vučić', 'SRB', 'President', '2017-05-31', NULL);
INSERT INTO public.world_leaders VALUES (39, 'Edi Rama', 'ALB', 'Prime Minister', '2013-09-15', NULL);
INSERT INTO public.world_leaders VALUES (40, 'Milo Đukanović', 'MNE', 'President', '2018-05-20', '2023-05-20');
INSERT INTO public.world_leaders VALUES (41, 'Rumen Radev', 'BGR', 'President', '2017-01-22', NULL);
INSERT INTO public.world_leaders VALUES (42, 'Zoran Milanović', 'HRV', 'President', '2020-02-19', NULL);
INSERT INTO public.world_leaders VALUES (43, 'Borut Pahor', 'SVN', 'President', '2012-12-22', '2022-12-22');
INSERT INTO public.world_leaders VALUES (44, 'Xavier Bettel', 'LUX', 'Prime Minister', '2013-12-04', NULL);
INSERT INTO public.world_leaders VALUES (45, 'Leo Varadkar', 'IRL', 'Taoiseach', '2022-12-17', NULL);
INSERT INTO public.world_leaders VALUES (46, 'Katerina Sakellaropoulou', 'GRC', 'President', '2020-03-13', NULL);
INSERT INTO public.world_leaders VALUES (47, 'Nicos Anastasiades', 'CYP', 'President', '2013-02-28', '2023-02-28');
INSERT INTO public.world_leaders VALUES (48, 'Alberto Fernández', 'ARG', 'President', '2019-12-10', NULL);
INSERT INTO public.world_leaders VALUES (49, 'Iván Duque Márquez', 'COL', 'President', '2018-08-07', '2022-08-07');
INSERT INTO public.world_leaders VALUES (50, 'Luis Arce', 'BOL', 'President', '2020-11-08', NULL);


--
-- TOC entry 4699 (class 2606 OID 17853)
-- Name: countries country_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT country_pk PRIMARY KEY (country_code);


--
-- TOC entry 4701 (class 2606 OID 17863)
-- Name: economic_data economic_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economic_data
    ADD CONSTRAINT economic_pk PRIMARY KEY (id);


--
-- TOC entry 4697 (class 2606 OID 17855)
-- Name: world_leaders world_leaders_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.world_leaders
    ADD CONSTRAINT world_leaders_pk PRIMARY KEY (id);


--
-- TOC entry 4702 (class 1259 OID 17869)
-- Name: fki_e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_e ON public.economic_data USING btree (country_code);


--
-- TOC entry 4695 (class 1259 OID 17861)
-- Name: fki_w; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_w ON public.world_leaders USING btree (country_code);


--
-- TOC entry 4704 (class 2606 OID 17864)
-- Name: economic_data country_econ_pk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economic_data
    ADD CONSTRAINT country_econ_pk FOREIGN KEY (country_code) REFERENCES public.countries(country_code) NOT VALID;


--
-- TOC entry 4703 (class 2606 OID 17856)
-- Name: world_leaders country_world; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.world_leaders
    ADD CONSTRAINT country_world FOREIGN KEY (country_code) REFERENCES public.countries(country_code) NOT VALID;


-- Completed on 2025-01-09 09:29:58

--
-- PostgreSQL database dump complete
--

