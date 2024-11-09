
CREATE TABLE monarchs (
    country character varying(50),
    continent character varying(50),
    monarch character varying(50)
);

CREATE TABLE presidents (
    country character varying(50) NOT NULL,
    continent character varying(50),
    president character varying(50) NOT NULL
);

CREATE TABLE prime_minister_terms (
    prime_minister character varying(50) NOT NULL,
    pm_start integer
);


CREATE TABLE prime_ministers (
    country character varying(50),
    continent character varying(50),
    prime_minister character varying(50) NOT NULL
);

CREATE TABLE  states (
    country character varying(50) NOT NULL,
    continent character varying(50),
    indep_year integer
);

INSERT INTO  monarchs (country, continent, monarch) VALUES ('Brunei', 'Asia', 'Hassanal Bolkiah');
INSERT INTO  monarchs (country, continent, monarch) VALUES ('Norway', 'Europe', 'Harald V');
INSERT INTO  monarchs (country, continent, monarch) VALUES ('Oman', 'Asia', 'Haitham bin Tarik');


INSERT INTO  presidents (country, continent, president) VALUES ('Egypt', 'Africa', 'Abdel Fattah el-Sisi');
INSERT INTO  presidents (country, continent, president) VALUES ('Portugal', 'Europe', 'Marcelo Rebelo de Sousa');
INSERT INTO  presidents (country, continent, president) VALUES ('USA', 'North America', 'Joe Biden');
INSERT INTO  presidents (country, continent, president) VALUES ('Uruguay', 'South America', 'Luis Lacalle Pou');
INSERT INTO  presidents (country, continent, president) VALUES ('Pakistan', 'Asia', 'Arif Alvi');
INSERT INTO  presidents (country, continent, president) VALUES ('Chile', 'South America', 'Gabriel Boric');
INSERT INTO  presidents (country, continent, president) VALUES ('India', 'Asia', 'Ram Nath Kovind');


--
-- TOC entry 3011 (class 0 OID 1126695)
-- Dependencies: 203
-- Data for Name: prime_minister_terms; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO  prime_minister_terms (prime_minister, pm_start) VALUES ('Mostafa Madbouly', 2018);
INSERT INTO  prime_minister_terms (prime_minister, pm_start) VALUES ('António Costa', 2015);
INSERT INTO  prime_minister_terms (prime_minister, pm_start) VALUES ('Shehbaz Sharif', 2022);
INSERT INTO  prime_minister_terms (prime_minister, pm_start) VALUES ('Boris Johnson', 2019);
INSERT INTO  prime_minister_terms (prime_minister, pm_start) VALUES ('Narendra Modi', 2014);
INSERT INTO  prime_minister_terms (prime_minister, pm_start) VALUES ('Scott Morrison', 2018);
INSERT INTO  prime_minister_terms (prime_minister, pm_start) VALUES ('Jonas Gahr Støre', 2021);
INSERT INTO  prime_minister_terms (prime_minister, pm_start) VALUES ('Hassanal Bolkiah', 1984);
INSERT INTO  prime_minister_terms (prime_minister, pm_start) VALUES ('Haitham bin Tarik', 2020);
INSERT INTO  prime_minister_terms (prime_minister, pm_start) VALUES ('Jacinda Ardern', 2017);


--
-- TOC entry 3010 (class 0 OID 1126684)
-- Dependencies: 202
-- Data for Name: prime_ministers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO  prime_ministers (country, continent, prime_minister) VALUES ('Egypt', 'Africa', 'Mostafa Madbouly');
INSERT INTO  prime_ministers (country, continent, prime_minister) VALUES ('Portugal', 'Europe', 'António Costa');
INSERT INTO  prime_ministers (country, continent, prime_minister) VALUES ('Pakistan', 'Asia', 'Shehbaz Sharif');
INSERT INTO  prime_ministers (country, continent, prime_minister) VALUES ('United Kingdom', 'Europe', 'Boris Johnson');
INSERT INTO  prime_ministers (country, continent, prime_minister) VALUES ('India', 'Asia', 'Narendra Modi');
INSERT INTO  prime_ministers (country, continent, prime_minister) VALUES ('Australia', 'Oceania', 'Scott Morrison');
INSERT INTO  prime_ministers (country, continent, prime_minister) VALUES ('Norway', 'Europe', 'Jonas Gahr Støre');
INSERT INTO  prime_ministers (country, continent, prime_minister) VALUES ('Brunei', 'Asia', 'Hassanal Bolkiah');
INSERT INTO  prime_ministers (country, continent, prime_minister) VALUES ('Oman', 'Asia', 'Haitham bin Tarik');
INSERT INTO  prime_ministers (country, continent, prime_minister) VALUES ('New Zealand', 'Oceania', 'Jacinda Ardern');


--
-- TOC entry 3009 (class 0 OID 1126673)
-- Dependencies: 201
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO  states (country, continent, indep_year) VALUES ('Australia', 'Oceania', 1901);
INSERT INTO  states (country, continent, indep_year) VALUES ('Brunei', 'Asia', 1984);
INSERT INTO  states (country, continent, indep_year) VALUES ('Chile', 'South America', 1818);
INSERT INTO  states (country, continent, indep_year) VALUES ('Egypt', 'Africa', 1922);
INSERT INTO  states (country, continent, indep_year) VALUES ('India', 'Asia', 1947);
INSERT INTO  states (country, continent, indep_year) VALUES ('Norway', 'Europe', 1905);
INSERT INTO  states (country, continent, indep_year) VALUES ('Oman', 'Asia', 1951);
INSERT INTO  states (country, continent, indep_year) VALUES ('Pakistan', 'Asia', 1947);
INSERT INTO  states (country, continent, indep_year) VALUES ('Portugal', 'Europe', 1143);
INSERT INTO  states (country, continent, indep_year) VALUES ('Uruguay', 'South America', 1825);
INSERT INTO  states (country, continent, indep_year) VALUES ('USA', 'North America', 1776);


--
-- TOC entry 2866 (class 2606 OID 1126672)
-- Name: presidents president_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY  presidents
    ADD CONSTRAINT president_pkey PRIMARY KEY (president);


--
-- TOC entry 2871 (class 2606 OID 1126688)
-- Name: prime_ministers prime_ministers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY  prime_ministers
    ADD CONSTRAINT prime_ministers_pkey PRIMARY KEY (prime_minister);


--
-- TOC entry 2868 (class 2606 OID 1126677)
-- Name: states states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY  states
    ADD CONSTRAINT states_pkey PRIMARY KEY (country);


--
-- TOC entry 2864 (class 1259 OID 1126683)
-- Name: fki_fk_contry_states; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_contry_states ON  presidents USING btree (country);


--
-- TOC entry 2869 (class 1259 OID 1126694)
-- Name: fki_fk_country_prime_min; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_country_prime_min ON  prime_ministers USING btree (country);


--
-- TOC entry 2873 (class 1259 OID 1126719)
-- Name: fki_fk_monarchs; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_monarchs ON  monarchs USING btree (country);


--
-- TOC entry 2872 (class 1259 OID 1126710)
-- Name: fki_fk_primer_minister; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_primer_minister ON  prime_minister_terms USING btree (prime_minister);


--
-- TOC entry 2874 (class 2606 OID 1126678)
-- Name: presidents fk_contry_states; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY  presidents
    ADD CONSTRAINT fk_contry_states FOREIGN KEY (country) REFERENCES  states(country) NOT VALID;


--
-- TOC entry 2875 (class 2606 OID 1126689)
-- Name: prime_ministers fk_country_prime_min; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY  prime_ministers
    ADD CONSTRAINT fk_country_prime_min FOREIGN KEY (country) REFERENCES  states(country) NOT VALID;


--
-- TOC entry 2877 (class 2606 OID 1126714)
-- Name: monarchs fk_monarchs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY  monarchs
    ADD CONSTRAINT fk_monarchs FOREIGN KEY (country) REFERENCES  states(country) NOT VALID;


--
-- TOC entry 2876 (class 2606 OID 1126705)
-- Name: prime_minister_terms fk_primer_minister; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY  prime_minister_terms
    ADD CONSTRAINT fk_primer_minister FOREIGN KEY (prime_minister) REFERENCES  prime_ministers(prime_minister) NOT VALID;


-- Completed on 2024-11-09 20:11:45

--
-- PostgreSQL database dump complete
--

