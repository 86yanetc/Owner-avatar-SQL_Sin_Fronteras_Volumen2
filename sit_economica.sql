
CREATE TABLE public.cities (
    city_id integer NOT NULL,
    city_name character varying(50),
    country_id integer,
    population integer
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17793)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    country_id integer NOT NULL,
    country_name character varying(50),
    continent character varying(50),
    population integer
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17799)
-- Name: currencies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.currencies (
    currency_id integer NOT NULL,
    currency_name character varying(50),
    country_id integer
);


ALTER TABLE public.currencies OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17805)
-- Name: economies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.economies (
    economy_id integer NOT NULL,
    country_id integer,
    gdp double precision,
    inflation_rate double precision,
    unemployment_rate double precision,
    year integer
);


ALTER TABLE public.economies OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17802)
-- Name: languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.languages (
    language_id integer NOT NULL,
    language_name character varying(50),
    country_id integer
);


ALTER TABLE public.languages OWNER TO postgres;

--
-- TOC entry 4865 (class 0 OID 17796)
-- Dependencies: 216
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cities VALUES (1, 'New York', 1, 8419600);
INSERT INTO public.cities VALUES (2, 'Los Angeles', 1, 3980400);
INSERT INTO public.cities VALUES (3, 'Toronto', 2, 2731571);
INSERT INTO public.cities VALUES (4, 'Vancouver', 2, 631486);
INSERT INTO public.cities VALUES (5, 'Berlin', 3, 3644826);
INSERT INTO public.cities VALUES (6, 'Munich', 3, 1471508);
INSERT INTO public.cities VALUES (7, 'Paris', 4, 2140526);
INSERT INTO public.cities VALUES (8, 'Lyon', 4, 515695);
INSERT INTO public.cities VALUES (9, 'Tokyo', 5, 13929286);
INSERT INTO public.cities VALUES (10, 'Osaka', 5, 2715000);
INSERT INTO public.cities VALUES (11, 'São Paulo', 6, 12325232);
INSERT INTO public.cities VALUES (12, 'Rio de Janeiro', 6, 6747815);
INSERT INTO public.cities VALUES (13, 'Mumbai', 7, 12442373);
INSERT INTO public.cities VALUES (14, 'Delhi', 7, 11034555);
INSERT INTO public.cities VALUES (15, 'Beijing', 8, 21516000);
INSERT INTO public.cities VALUES (16, 'Shanghai', 8, 24256800);
INSERT INTO public.cities VALUES (17, 'Moscow', 9, 12506468);
INSERT INTO public.cities VALUES (18, 'Saint Petersburg', 9, 5351935);
INSERT INTO public.cities VALUES (19, 'Sydney', 10, 5312163);
INSERT INTO public.cities VALUES (20, 'Melbourne', 10, 5078193);
INSERT INTO public.cities VALUES (21, 'London', 11, 8982000);
INSERT INTO public.cities VALUES (22, 'Manchester', 11, 553230);
INSERT INTO public.cities VALUES (23, 'Rome', 12, 2872800);
INSERT INTO public.cities VALUES (24, 'Milan', 12, 1366180);
INSERT INTO public.cities VALUES (25, 'Madrid', 13, 3223334);
INSERT INTO public.cities VALUES (26, 'Barcelona', 13, 1620343);
INSERT INTO public.cities VALUES (27, 'Mexico City', 14, 9209944);
INSERT INTO public.cities VALUES (28, 'Guadalajara', 14, 1495182);
INSERT INTO public.cities VALUES (29, 'Seoul', 15, 9776000);
INSERT INTO public.cities VALUES (30, 'Busan', 15, 3448737);
INSERT INTO public.cities VALUES (31, 'Jakarta', 16, 10770487);
INSERT INTO public.cities VALUES (32, 'Surabaya', 16, 2880000);
INSERT INTO public.cities VALUES (33, 'Istanbul', 17, 15462452);
INSERT INTO public.cities VALUES (34, 'Ankara', 17, 5445026);
INSERT INTO public.cities VALUES (35, 'Riyadh', 18, 6881000);
INSERT INTO public.cities VALUES (36, 'Jeddah', 18, 3976000);
INSERT INTO public.cities VALUES (37, 'Johannesburg', 19, 957441);
INSERT INTO public.cities VALUES (38, 'Cape Town', 19, 433688);
INSERT INTO public.cities VALUES (39, 'Buenos Aires', 20, 2890151);
INSERT INTO public.cities VALUES (40, 'Córdoba', 20, 1391000);


--
-- TOC entry 4864 (class 0 OID 17793)
-- Dependencies: 215
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries VALUES (1, 'United States', 'North America', 331002651);
INSERT INTO public.countries VALUES (2, 'Canada', 'North America', 37742154);
INSERT INTO public.countries VALUES (3, 'Germany', 'Europe', 83783942);
INSERT INTO public.countries VALUES (4, 'France', 'Europe', 65273511);
INSERT INTO public.countries VALUES (5, 'Japan', 'Asia', 126476461);
INSERT INTO public.countries VALUES (6, 'Brazil', 'South America', 212559417);
INSERT INTO public.countries VALUES (7, 'India', 'Asia', 1380004385);
INSERT INTO public.countries VALUES (8, 'China', 'Asia', 1439323776);
INSERT INTO public.countries VALUES (9, 'Russia', 'Europe', 145934462);
INSERT INTO public.countries VALUES (10, 'Australia', 'Oceania', 25499884);
INSERT INTO public.countries VALUES (11, 'United Kingdom', 'Europe', 67886011);
INSERT INTO public.countries VALUES (12, 'Italy', 'Europe', 60461826);
INSERT INTO public.countries VALUES (13, 'Spain', 'Europe', 46754778);
INSERT INTO public.countries VALUES (14, 'Mexico', 'North America', 128932753);
INSERT INTO public.countries VALUES (15, 'South Korea', 'Asia', 51269185);
INSERT INTO public.countries VALUES (16, 'Indonesia', 'Asia', 273523615);
INSERT INTO public.countries VALUES (17, 'Turkey', 'Asia', 84339067);
INSERT INTO public.countries VALUES (18, 'Saudi Arabia', 'Asia', 34813871);
INSERT INTO public.countries VALUES (19, 'South Africa', 'Africa', 59308690);
INSERT INTO public.countries VALUES (20, 'Argentina', 'South America', 45195774);


--
-- TOC entry 4866 (class 0 OID 17799)
-- Dependencies: 217
-- Data for Name: currencies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.currencies VALUES (1, 'USD', 1);
INSERT INTO public.currencies VALUES (2, 'CAD', 2);
INSERT INTO public.currencies VALUES (3, 'EUR', 3);
INSERT INTO public.currencies VALUES (4, 'EUR', 4);
INSERT INTO public.currencies VALUES (5, 'JPY', 5);
INSERT INTO public.currencies VALUES (6, 'BRL', 6);
INSERT INTO public.currencies VALUES (7, 'INR', 7);
INSERT INTO public.currencies VALUES (8, 'CNY', 8);
INSERT INTO public.currencies VALUES (9, 'RUB', 9);
INSERT INTO public.currencies VALUES (10, 'AUD', 10);
INSERT INTO public.currencies VALUES (11, 'GBP', 11);
INSERT INTO public.currencies VALUES (12, 'EUR', 12);
INSERT INTO public.currencies VALUES (13, 'EUR', 13);
INSERT INTO public.currencies VALUES (14, 'MXN', 14);
INSERT INTO public.currencies VALUES (15, 'KRW', 15);
INSERT INTO public.currencies VALUES (16, 'IDR', 16);
INSERT INTO public.currencies VALUES (17, 'TRY', 17);
INSERT INTO public.currencies VALUES (18, 'SAR', 18);
INSERT INTO public.currencies VALUES (19, 'ZAR', 19);
INSERT INTO public.currencies VALUES (20, 'ARS', 20);


--
-- TOC entry 4868 (class 0 OID 17805)
-- Dependencies: 219
-- Data for Name: economies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.economies VALUES (1, 1, 21137518, 1.2, 5.8, 2022);
INSERT INTO public.economies VALUES (2, 2, 1647126, 1.5, 7.5, 2022);
INSERT INTO public.economies VALUES (3, 3, 3845630, 1.4, 4.2, 2022);
INSERT INTO public.economies VALUES (4, 4, 2715518, 1.3, 8.1, 2022);
INSERT INTO public.economies VALUES (5, 5, 5081770, 0.5, 2.8, 2022);
INSERT INTO public.economies VALUES (6, 6, 2055508, 3.2, 12.3, 2022);
INSERT INTO public.economies VALUES (7, 7, 2875142, 3.1, 7.1, 2022);
INSERT INTO public.economies VALUES (8, 8, 14342903, 2.3, 3.6, 2022);
INSERT INTO public.economies VALUES (9, 9, 1699876, 2.5, 5.2, 2022);
INSERT INTO public.economies VALUES (10, 10, 1392687, 1.6, 5, 2022);
INSERT INTO public.economies VALUES (11, 11, 2825208, 1.8, 4.5, 2022);
INSERT INTO public.economies VALUES (12, 12, 2001174, 1.2, 9.8, 2022);
INSERT INTO public.economies VALUES (13, 13, 1393351, 1.6, 15.5, 2022);
INSERT INTO public.economies VALUES (14, 14, 1220703, 3.4, 4.4, 2022);
INSERT INTO public.economies VALUES (15, 15, 1646825, 1, 3.8, 2022);
INSERT INTO public.economies VALUES (16, 16, 1119190, 1.9, 6.5, 2022);
INSERT INTO public.economies VALUES (17, 17, 761425, 2.8, 13.4, 2022);
INSERT INTO public.economies VALUES (18, 18, 700000, 2, 6, 2022);
INSERT INTO public.economies VALUES (19, 19, 351432, 4.5, 32.6, 2022);
INSERT INTO public.economies VALUES (20, 20, 449663, 3.8, 10.4, 2022);


--
-- TOC entry 4867 (class 0 OID 17802)
-- Dependencies: 218
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.languages VALUES (1, 'English', 1);
INSERT INTO public.languages VALUES (2, 'English', 2);
INSERT INTO public.languages VALUES (3, 'German', 3);
INSERT INTO public.languages VALUES (4, 'French', 4);
INSERT INTO public.languages VALUES (5, 'Japanese', 5);
INSERT INTO public.languages VALUES (6, 'Portuguese', 6);
INSERT INTO public.languages VALUES (7, 'Hindi', 7);
INSERT INTO public.languages VALUES (8, 'Mandarin', 8);
INSERT INTO public.languages VALUES (9, 'Russian', 9);
INSERT INTO public.languages VALUES (10, 'English', 10);
INSERT INTO public.languages VALUES (11, 'English', 11);
INSERT INTO public.languages VALUES (12, 'Italian', 12);
INSERT INTO public.languages VALUES (13, 'Spanish', 13);
INSERT INTO public.languages VALUES (14, 'Spanish', 14);
INSERT INTO public.languages VALUES (15, 'Korean', 15);
INSERT INTO public.languages VALUES (16, 'Indonesian', 16);
INSERT INTO public.languages VALUES (17, 'Turkish', 17);
INSERT INTO public.languages VALUES (18, 'Arabic', 18);
INSERT INTO public.languages VALUES (19, 'Afrikaans', 19);
INSERT INTO public.languages VALUES (20, 'Spanish', 20);


--
-- TOC entry 4706 (class 2606 OID 17835)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (city_id);


--
-- TOC entry 4704 (class 2606 OID 17809)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_id);


--
-- TOC entry 4709 (class 2606 OID 17837)
-- Name: currencies currencies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currencies
    ADD CONSTRAINT currencies_pkey PRIMARY KEY (currency_id);


--
-- TOC entry 4715 (class 2606 OID 17839)
-- Name: economies economies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economies
    ADD CONSTRAINT economies_pkey PRIMARY KEY (economy_id);


--
-- TOC entry 4713 (class 2606 OID 17841)
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (language_id);


--
-- TOC entry 4707 (class 1259 OID 17815)
-- Name: fki_fk_country_city; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_country_city ON public.cities USING btree (country_id);


--
-- TOC entry 4710 (class 1259 OID 17827)
-- Name: fki_fk_country_currencies; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_country_currencies ON public.currencies USING btree (country_id);


--
-- TOC entry 4716 (class 1259 OID 17833)
-- Name: fki_fk_country_economic; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_country_economic ON public.economies USING btree (country_id);


--
-- TOC entry 4711 (class 1259 OID 17821)
-- Name: fki_fk_country_language; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_country_language ON public.languages USING btree (country_id);


--
-- TOC entry 4717 (class 2606 OID 17810)
-- Name: cities fk_country_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT fk_country_city FOREIGN KEY (country_id) REFERENCES public.countries(country_id) NOT VALID;


--
-- TOC entry 4718 (class 2606 OID 17822)
-- Name: currencies fk_country_currencies; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currencies
    ADD CONSTRAINT fk_country_currencies FOREIGN KEY (country_id) REFERENCES public.countries(country_id) NOT VALID;


--
-- TOC entry 4720 (class 2606 OID 17828)
-- Name: economies fk_country_economic; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economies
    ADD CONSTRAINT fk_country_economic FOREIGN KEY (country_id) REFERENCES public.countries(country_id) NOT VALID;


--
-- TOC entry 4719 (class 2606 OID 17816)
-- Name: languages fk_country_language; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT fk_country_language FOREIGN KEY (country_id) REFERENCES public.countries(country_id) NOT VALID;


-- Completed on 2025-01-04 10:44:59

--
-- PostgreSQL database dump complete
--

