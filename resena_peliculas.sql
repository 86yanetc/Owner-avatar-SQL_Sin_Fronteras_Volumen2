--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6
-- Dumped by pg_dump version 16.6

-- Started on 2024-12-28 19:20:21

--
-- TOC entry 4867 (class 1262 OID 17690)
-- Name: review_films; Type: DATABASE; Schema: -; Owner: postgres
--

--CREATE DATABASE review_films WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';


--ALTER DATABASE review_films OWNER TO postgres;

--\connect review_films

CREATE TABLE public.films (
    film_id integer NOT NULL,
    title character varying(50),
    release_year integer,
    genre character varying(10),
    director_id integer
);


ALTER TABLE public.films OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17691)
-- Name: people; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people (
    person_id integer NOT NULL,
    name character varying,
    birthdate date,
    nationality character varying
);


ALTER TABLE public.people OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17726)
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    review_id integer NOT NULL,
    film_id integer,
    reviewer text,
    rating integer,
    review_date date
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17709)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    role_id integer NOT NULL,
    film_id integer,
    person_id integer,
    role_name character varying(50)
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 4859 (class 0 OID 17698)
-- Dependencies: 216
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.films VALUES (1, 'Titanic', 1997, 'Drama', 3);
INSERT INTO public.films VALUES (2, 'Inception', 2010, 'Sci-Fi', 6);
INSERT INTO public.films VALUES (3, 'Pulp Fiction', 1994, 'Crime', 4);
INSERT INTO public.films VALUES (4, 'Once Upon a Time in Hollywood', 2019, 'Comedy', 4);
INSERT INTO public.films VALUES (5, 'The Revenant', 2015, 'Adventure', 6);
INSERT INTO public.films VALUES (8, 'Schindler List', 1993, 'Drama', 9);
INSERT INTO public.films VALUES (10, 'The Dark Knight', 2008, 'Action', 6);
INSERT INTO public.films VALUES (6, 'Forrest Gump', 1994, 'Drama', 21);
INSERT INTO public.films VALUES (7, 'Black Swan', 2010, 'Drama', 22);
INSERT INTO public.films VALUES (9, 'The Godfather Part II', 1972, 'Crime', 23);


--
-- TOC entry 4858 (class 0 OID 17691)
-- Dependencies: 215
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.people VALUES (1, 'Leonardo DiCaprio', '1974-11-11', 'American');
INSERT INTO public.people VALUES (2, 'Kate Winslet', '1975-10-05', 'British');
INSERT INTO public.people VALUES (3, 'James Cameron', '1954-08-16', 'Canadian');
INSERT INTO public.people VALUES (4, 'Quentin Tarantino', '1963-03-27', 'American');
INSERT INTO public.people VALUES (5, 'Brad Pitt', '1963-12-18', 'American');
INSERT INTO public.people VALUES (6, 'Christopher Nolan', '1970-07-30', 'British-American');
INSERT INTO public.people VALUES (7, 'Tom Hanks', '1956-07-09', 'American');
INSERT INTO public.people VALUES (8, 'Natalie Portman', '1981-06-09', 'Israeli-American');
INSERT INTO public.people VALUES (9, 'Steven Spielberg', '1946-12-18', 'American');
INSERT INTO public.people VALUES (10, 'Meryl Streep', '1949-06-22', 'American');
INSERT INTO public.people VALUES (11, 'Robert De Niro', '1943-08-17', 'American');
INSERT INTO public.people VALUES (12, 'Al Pacino', '1940-04-25', 'American');
INSERT INTO public.people VALUES (13, 'Morgan Freeman', '1937-06-01', 'American');
INSERT INTO public.people VALUES (14, 'Scarlett Johansson', '1984-11-22', 'American');
INSERT INTO public.people VALUES (15, 'Tom Cruise', '1962-07-03', 'American');
INSERT INTO public.people VALUES (16, 'Johnny Depp', '1963-06-09', 'American');
INSERT INTO public.people VALUES (17, 'Emma Stone', '1988-11-06', 'American');
INSERT INTO public.people VALUES (18, 'Ryan Gosling', '1980-11-12', 'Canadian');
INSERT INTO public.people VALUES (19, 'Anne Hathaway', '1982-11-12', 'American');
INSERT INTO public.people VALUES (20, 'Denzel Washington', '1954-12-28', 'American');
INSERT INTO public.people VALUES (21, ' Robert Zemeckis', '1946-01-01', 'American');
INSERT INTO public.people VALUES (22, 'Darren Aronofsky', '1962-01-01', 'American');
INSERT INTO public.people VALUES (23, 'Francis Ford Coppola', '1961-01-01', 'American');


--
-- TOC entry 4861 (class 0 OID 17726)
-- Dependencies: 218
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ratings VALUES (42, 7, 'Menuda película mas rara y sin sentido', 1, '2022-01-07');
INSERT INTO public.ratings VALUES (37, 4, 'Solo tenemos claro que, por una vez, esta película no plantea ningún cuento moral disfrazado de pastiche cinéfilo. O, al menos, no del todo.', 4, '2022-01-14');
INSERT INTO public.ratings VALUES (47, 9, 'Sinceramente me gustó mucho más la primera parte y las siguientes ya no valen nada. se hace muy pesada. ', 2, '2022-01-19');
INSERT INTO public.ratings VALUES (38, 4, 'Tarantino no haya hecho una obra maestra, pero sí su película más íntima y una especie de testamento', 3, '2022-02-14');
INSERT INTO public.ratings VALUES (39, 4, 'Érase una vez en Hollywood'' es la carta de amor de Quentin Tarantino a la ciudad de Los Ángeles, donde todo es posible dentro y fuera del cine.', 5, '2022-02-14');
INSERT INTO public.ratings VALUES (1, 1, 'Una excelente película, hermosa, dulce, valiente, atrevida, devastadora, ejemplar, única, belleza, ilusión, sentimientos, dolor, sufrimiento, amor 😍, sobre todo amor. ', 5, '2022-01-01');
INSERT INTO public.ratings VALUES (5, 5, 'Buena, me gusto más o menos', 4, '2022-01-05');
INSERT INTO public.ratings VALUES (23, 1, 'Una de las mas grandes obras de James Cameron y del séptimo arte en general.', 4, '2022-10-03');
INSERT INTO public.ratings VALUES (3, 1, 'No es para nada, pero está película me parece muy sobrevalorada, no es mala, pero a mi me desencanto, pero solo es mi opinion y respeto cualquier opinion', 2, '2022-01-02');
INSERT INTO public.ratings VALUES (22, 1, 'Una verdadera pesadilla diabetica, cursi y mediocre. aprovechando la coyuntura actual, regresa a los cines esta bazofia palomitera aburrida y larguisima, espantosamente ostentosa y hortera. ', 1, '2022-02-03');
INSERT INTO public.ratings VALUES (15, 5, 'Es un malísima.', 2, '2022-01-15');
INSERT INTO public.ratings VALUES (24, 1, 'Ya está, james cameron nos ha traido su mejor película, tanto si hay el minimo error no deja de ser perfecta. ', 5, '2018-04-03');
INSERT INTO public.ratings VALUES (25, 1, 'No entiendo cómo se le pueden dar tantos premios a una película como ésta. La historia del titánic importa poco por lo visto y todo aquí gira entorno a una historia de amor llena de tópicos sobre la clase alta y la baja con estereotipos trasnochados. ', 2, '2020-03-01');
INSERT INTO public.ratings VALUES (26, 1, 'No se como se puedan ver las pelis y en verdad quisiera ver la peli del titanic y el Gran Gatsby espero que me puedan ayudar ', 3, '2019-07-03');
INSERT INTO public.ratings VALUES (27, 2, 'Origen, la nueva película de Christopher Nolan, es un film que renueva de manera profunda el panorama de la ciencia ficción actual pero lo hace de un modo inteligente, desde la referencialidad tanto a títulos cinematográficos y literarios del género y, a la vez, permitiendo a su director construir una especie de compendio de sus anteriores trabajos e incluso de los que le hubiera gustado realizar en algún momento.', 4, '2022-01-02');
INSERT INTO public.ratings VALUES (12, 2, 'La gran particularidad de Origen es su condición de gran tratado onírico formulado por un racionalista: lejos de dejar que su relato se abandone a las leyes de lo irracional, Nolan parece empeñado en cartografiar un universo fluido e inestable, en ejercer de severo arquitecto del laberinto', 4, '2022-01-12');
INSERT INTO public.ratings VALUES (28, 2, 'Interesante y poca cosa mas', 2, '2010-09-01');
INSERT INTO public.ratings VALUES (29, 2, 'El argumento un poco flojo. Si no fuera por los efectos especiales, no valdría la pena ni verla. ', 2, '2010-08-01');
INSERT INTO public.ratings VALUES (30, 2, 'La verdad es que entretiene. La película está bien y tampoco es tan dificil de entender... solo hay que seguir el hilo.', 4, '2010-10-01');
INSERT INTO public.ratings VALUES (31, 2, 'Está película es encantadora, la historia es perfecta y el guión tambien, Christopher Nolan es un gran director', 4, '2018-01-01');
INSERT INTO public.ratings VALUES (32, 3, 'Despiadada, insolente, que quita el aliento. [...] Imperdible', 5, '2022-01-03');
INSERT INTO public.ratings VALUES (33, 3, 'Está repleta de momentos perfectos de Tarantino, lleno de referencias, de sordidez de serie B y de pura sensación de diversión', 5, '2022-03-07');
INSERT INTO public.ratings VALUES (13, 3, 'Pulp Fiction tiene suficiente estilo para una docena de películas y, la verdad, historia de sobra para cinco', 4, '2022-01-13');
INSERT INTO public.ratings VALUES (34, 3, 'Una pieza espectacular de entretenimiento de la cultura pop, ''Pulp Fiction'' es el "American Graffiti" de imágenes de crímenes violento', 5, '2022-01-02');
INSERT INTO public.ratings VALUES (4, 4, 'Érase una vez... en Hollywood'' es audaz, bella y brutal. Es la mejor película de Tarantino desde ''Kill Bill'', quizás incluso desde ''Pulp Fiction''.', 5, '2022-01-04');
INSERT INTO public.ratings VALUES (14, 4, 'Tarantino ha creado entretenimiento indignante y desorientador.', 3, '2022-01-10');
INSERT INTO public.ratings VALUES (35, 4, 'Quentin Tarantino reivindica esta utopía y nos recuerda que en la fábrica de sueños la sangre es pintura roja, que los cuerpos deformados no son más que simples muñecos de látex. Incluso nos recuerda que detrás de una estrella está siempre su sombra.', 5, '2022-01-14');
INSERT INTO public.ratings VALUES (43, 7, 'De tarde de domingo, no vale la pena verla en el cine. ', 1, '2022-01-17');
INSERT INTO public.ratings VALUES (36, 4, 'Está bellamente hecha. Más allá de todos los toques tarantinianos de acción, bromas, violencia, y referencias constantes de películas, aquí hay verdadero oficio', 4, '2022-01-10');
INSERT INTO public.ratings VALUES (6, 6, 'Una película maravillosa', 4, '2022-01-06');
INSERT INTO public.ratings VALUES (40, 6, 'Una película que te rompe el corazón, debido a un sorprendente bicho raro lleno de ingenio y gracia', 4, '2022-01-06');
INSERT INTO public.ratings VALUES (41, 6, 'El título no parece muy atractivo, pero prepárate para sorprenderte por lo que hay dentro de ese nombre', 4, '2022-01-06');
INSERT INTO public.ratings VALUES (16, 6, 'Aunque hay muchos elementos que están mal en esta película, hay una cosa que es brillante, y su nombre es Tom Hanks', 3, '2022-01-16');
INSERT INTO public.ratings VALUES (7, 7, 'Aronofsky penetra de cabeza en el mundo de Cronenberg y Argento. Resulta más sentimental, más obvia en sus simbolismos, y más hilarante de lo que pretende', 4, '2022-02-07');
INSERT INTO public.ratings VALUES (17, 7, 'Darren Aronofsky lleva a cabo un ejercicio especular: La película escapa de lo que podría haber sido la típica historia de superación por y para el arte para acercarse sin miedo al cine de terror.', 4, '2022-02-10');
INSERT INTO public.ratings VALUES (44, 7, 'La estrella y media se la doy a la actriz Natalie Portman por crear el papel de Nina. Pero la dirección y el guión se pierden en la complejidad de un relato que debería ser más íntimo y menos excentrico. ', 1, '2022-01-17');
INSERT INTO public.ratings VALUES (8, 8, 'Ni tan magistral como pretendían su director y los miembros de la Academia de Hollywood que la colmaron de Oscars', 3, '2022-02-08');
INSERT INTO public.ratings VALUES (18, 8, 'Lo más sorprendente de esta película es cómo Spielberg sirve su historia', 5, '2022-01-18');
INSERT INTO public.ratings VALUES (45, 8, 'Una película bellamente elaborada, esperanzadora', 5, '2022-01-08');
INSERT INTO public.ratings VALUES (46, 8, 'Sobriamente devastadora', 4, '2022-01-18');
INSERT INTO public.ratings VALUES (9, 9, 'Sencillamente no es una obra maestra es (la obra maestra del cine) interpretacion,argumento,form d contarla, bso, fotogramas, es perfecta', 4, '2022-01-09');
INSERT INTO public.ratings VALUES (19, 9, 'Tan buena como la primera parte, pero la verdad me gusto mas la primera, esta es una gran secuela su historia te emociona. ', 4, '2022-01-19');
INSERT INTO public.ratings VALUES (10, 10, 'La obra maestra de Nolan y el universo Batman.', 5, '2022-01-10');
INSERT INTO public.ratings VALUES (2, 1, 'Odio las historias de amor, pero esta película me enamoró. Es un film épico, con efectos especiales nunca vistos, drama y amor q te envuelven haciéndote sentirte partícipe de algo único. ', 4, '2022-01-11');
INSERT INTO public.ratings VALUES (48, 9, 'Obra maestra como la primera. Consideradas las mejores películas de mafias. Película de culto legendaria, que está en lo más alto con las mejores películas de toda la historia. Película que todo cinéfilo debe ver. ', 5, '2022-01-19');
INSERT INTO public.ratings VALUES (49, 9, 'Al igual que la primera sobresaliente, todo bien hecho. La mejor secuela en la historia del cine no bajo nada su calidad en cuanto el primer filme. ', 5, '2022-01-19');
INSERT INTO public.ratings VALUES (20, 10, 'No es tan buena como quieren hacernos pensar los fanboys de Nolan ni tan mala como quieren hacernos pensar los haters pero tiene cosas muy buenas como la actuación de Heath Ledger o de Christian Bale, tiene una fotografía estupenda hecha en Imax es sin duda la mejor de la trilogia. ', 4, '2022-01-20');
INSERT INTO public.ratings VALUES (50, 10, 'La mejor película de la saga Batman. Es una película de ficción que te da de pensar sobre la vida real. ', 5, '2022-01-10');
INSERT INTO public.ratings VALUES (51, 10, 'Bale nuevamente personifica de forma brillante todos los traumas y recelos del alter ego de Batman, Bruce Wayne. Hay un poco de Hamlet es en este Batman', 5, '2022-01-20');


--
-- TOC entry 4860 (class 0 OID 17709)
-- Dependencies: 217
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles VALUES (1, 1, 1, 'Jack Dawson');
INSERT INTO public.roles VALUES (2, 1, 2, 'Rose DeWitt Bukater');
INSERT INTO public.roles VALUES (3, 2, 1, 'Dom Cobb');
INSERT INTO public.roles VALUES (4, 3, 5, 'Tyler Durden');
INSERT INTO public.roles VALUES (5, 4, 5, 'Cliff Booth');
INSERT INTO public.roles VALUES (6, 5, 1, 'Hugh Glass');
INSERT INTO public.roles VALUES (7, 6, 7, 'Forrest Gump');
INSERT INTO public.roles VALUES (8, 7, 8, 'Nina Sayers');
INSERT INTO public.roles VALUES (9, 8, 10, 'Oskar Schindler');
INSERT INTO public.roles VALUES (10, 9, 11, 'Vito Corleone');
INSERT INTO public.roles VALUES (11, 10, 1, 'Bruce Wayne');


--
-- TOC entry 4700 (class 2606 OID 17697)
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (person_id);


--
-- TOC entry 4703 (class 2606 OID 17708)
-- Name: films pk_people; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT pk_people PRIMARY KEY (film_id);


--
-- TOC entry 4710 (class 2606 OID 17730)
-- Name: ratings pk_rating; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT pk_rating PRIMARY KEY (review_id);


--
-- TOC entry 4707 (class 2606 OID 17713)
-- Name: roles pk_role; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT pk_role PRIMARY KEY (role_id);


--
-- TOC entry 4704 (class 1259 OID 17719)
-- Name: fki_fk_film; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_film ON public.roles USING btree (film_id);


--
-- TOC entry 4708 (class 1259 OID 17736)
-- Name: fki_fk_film_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_film_id ON public.ratings USING btree (film_id);


--
-- TOC entry 4701 (class 1259 OID 17706)
-- Name: fki_fk_people; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_people ON public.films USING btree (director_id);


--
-- TOC entry 4705 (class 1259 OID 17725)
-- Name: fki_fk_person; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_person ON public.roles USING btree (person_id);


--
-- TOC entry 4711 (class 2606 OID 17701)
-- Name: films fk_director; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT fk_director FOREIGN KEY (director_id) REFERENCES public.people(person_id) NOT VALID;


--
-- TOC entry 4712 (class 2606 OID 17714)
-- Name: roles fk_film; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT fk_film FOREIGN KEY (film_id) REFERENCES public.films(film_id) NOT VALID;


--
-- TOC entry 4714 (class 2606 OID 17731)
-- Name: ratings fk_film_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT fk_film_id FOREIGN KEY (film_id) REFERENCES public.films(film_id) NOT VALID;


--
-- TOC entry 4713 (class 2606 OID 17720)
-- Name: roles fk_person; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT fk_person FOREIGN KEY (person_id) REFERENCES public.people(person_id) NOT VALID;


-- Completed on 2024-12-28 19:20:21

--
-- PostgreSQL database dump complete
--

