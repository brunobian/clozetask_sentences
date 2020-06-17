--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO cloze;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO cloze;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO cloze;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO cloze;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO cloze;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO cloze;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO cloze;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO cloze;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO cloze;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO cloze;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO cloze;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO cloze;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: cloze_information; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE cloze_information (
    subject_id integer NOT NULL,
    native_language character varying(200) NOT NULL,
    reading_language character varying(200) NOT NULL,
    work_reading_language character varying(200),
    country character varying(200) NOT NULL,
    schooling character varying(200) NOT NULL,
    books character varying(200) NOT NULL,
    work_reading character varying(200) NOT NULL,
    computer_reading character varying(200) NOT NULL,
    dexterity character varying(200) NOT NULL,
    source character varying(200) NOT NULL,
    other_experiments character varying(200) NOT NULL
);


ALTER TABLE public.cloze_information OWNER TO cloze;

--
-- Name: cloze_subject; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE cloze_subject (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    age integer NOT NULL,
    gender character varying(3) NOT NULL,
    original_ip inet NOT NULL,
    sequence_number integer,
    experiment_sequence character varying(2550) NOT NULL
);


ALTER TABLE public.cloze_subject OWNER TO cloze;

--
-- Name: cloze_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE cloze_subject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cloze_subject_id_seq OWNER TO cloze;

--
-- Name: cloze_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE cloze_subject_id_seq OWNED BY cloze_subject.id;


--
-- Name: cloze_text; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE cloze_text (
    id integer NOT NULL,
    "textNumber" integer NOT NULL,
    "textClass" integer NOT NULL,
    body character varying(100000) NOT NULL
);


ALTER TABLE public.cloze_text OWNER TO cloze;

--
-- Name: cloze_text_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE cloze_text_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cloze_text_id_seq OWNER TO cloze;

--
-- Name: cloze_text_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE cloze_text_id_seq OWNED BY cloze_text.id;


--
-- Name: cloze_trial; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE cloze_trial (
    id integer NOT NULL,
    subject_id integer NOT NULL,
    "trialOpt_id" integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    initial_time timestamp with time zone NOT NULL,
    words character varying(10000) NOT NULL
);


ALTER TABLE public.cloze_trial OWNER TO cloze;

--
-- Name: cloze_trial_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE cloze_trial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cloze_trial_id_seq OWNER TO cloze;

--
-- Name: cloze_trial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE cloze_trial_id_seq OWNED BY cloze_trial.id;


--
-- Name: cloze_trialoption; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE cloze_trialoption (
    id integer NOT NULL,
    text_id integer NOT NULL,
    missing_words character varying(10000) NOT NULL
);


ALTER TABLE public.cloze_trialoption OWNER TO cloze;

--
-- Name: cloze_trialoption_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE cloze_trialoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cloze_trialoption_id_seq OWNER TO cloze;

--
-- Name: cloze_trialoption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE cloze_trialoption_id_seq OWNED BY cloze_trialoption.id;


--
-- Name: cloze_trialsequence; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE cloze_trialsequence (
    id integer NOT NULL,
    seq character varying(10000) NOT NULL
);


ALTER TABLE public.cloze_trialsequence OWNER TO cloze;

--
-- Name: cloze_trialsequence_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE cloze_trialsequence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cloze_trialsequence_id_seq OWNER TO cloze;

--
-- Name: cloze_trialsequence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE cloze_trialsequence_id_seq OWNED BY cloze_trialsequence.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO cloze;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO cloze;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO cloze;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO cloze;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO cloze;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO cloze;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO cloze;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: cloze; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO cloze;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: cloze
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO cloze;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cloze
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY cloze_subject ALTER COLUMN id SET DEFAULT nextval('cloze_subject_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY cloze_text ALTER COLUMN id SET DEFAULT nextval('cloze_text_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY cloze_trial ALTER COLUMN id SET DEFAULT nextval('cloze_trial_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY cloze_trialoption ALTER COLUMN id SET DEFAULT nextval('cloze_trialoption_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY cloze_trialsequence ALTER COLUMN id SET DEFAULT nextval('cloze_trialsequence_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add log entry	7	add_logentry
20	Can change log entry	7	change_logentry
21	Can delete log entry	7	delete_logentry
22	Can add subject	8	add_subject
23	Can change subject	8	change_subject
24	Can delete subject	8	delete_subject
25	Can add information	9	add_information
26	Can change information	9	change_information
27	Can delete information	9	delete_information
28	Can add trial sequence	10	add_trialsequence
29	Can change trial sequence	10	change_trialsequence
30	Can delete trial sequence	10	delete_trialsequence
31	Can add text	11	add_text
32	Can change text	11	change_text
33	Can delete text	11	delete_text
34	Can add trial option	12	add_trialoption
35	Can change trial option	12	change_trialoption
36	Can delete trial option	12	delete_trialoption
37	Can add trial	13	add_trial
38	Can change trial	13	change_trial
39	Can delete trial	13	delete_trial
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('auth_permission_id_seq', 39, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: cloze_information; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY cloze_information (subject_id, native_language, reading_language, work_reading_language, country, schooling, books, work_reading, computer_reading, dexterity, source, other_experiments) FROM stdin;
1	Esp	Esp	Esp	AR	Pri_Inc	5-10	Yes	Yes	Right	FB_Labo	Yes
2	Esp	Esp	Ing	AR	Uni_Com	+10	Yes	Yes	Right	mail	No
6	Ing	Esp	Esp	AR	Pri_Inc	-5	Yes	Yes	Right	FB_Labo	Yes
7	Esp	Esp	Esp	AR	Uni_Inc	-5	Yes	Yes	Right	FB_Labo	Yes
8	Esp	Esp	Esp	AR	Uni_Inc	-5	No	Yes	Right	mail	Yes
9	Esp	Esp		AR	Ter_Com	-5	No	Yes	Right	mail	Yes
10	Esp	Esp		AR	Uni_Com	-5	No	Yes	Right	mail	Yes
11	Esp	Esp	Ing	AR	Uni_Com	5-10	No	Yes	Right	mail	Yes
12	Esp	Esp	Esp	IT	Uni_Inc	5-10	No	Yes	Right	FB_Labo	Yes
13	Esp	Esp	Esp	AR	Ter_Com	5-10	Yes	Yes	Right	mail	Yes
4	Ing	Esp	Esp	AR	Pri_Inc	-5	Yes	Yes	Right	FB_Labo	Yes
15	Esp	Esp	Otro	AR	Uni_Com	5-10	No	Yes	Right	mail	Yes
17	Esp	Esp	Esp	AR	Pri_Inc	-5	Yes	Yes	Right	FB_Labo	Yes
18	Esp	Esp	Esp	AT	Pri_Inc	-5	Yes	Yes	Right	FB_Labo	Yes
19	Esp	Esp	Esp	AR	Pri_Inc	-5	Yes	Yes	Right	FB_Labo	Yes
20	Esp	Esp	Esp	AR	Pri_Inc	-5	Yes	Yes	Right	FB_Labo	Yes
21	Esp	Esp	Esp	AR	Pri_Inc	-5	Yes	Yes	Right	FB_Labo	Yes
23	Esp	Esp	Esp	AR	Uni_Inc	-5	Yes	Yes	Right	mail	Yes
25	Esp	Esp	Esp	AR	Uni_Inc	-5	No	Yes	Right	mail	Yes
24	Esp	Esp		AR	Uni_Com	-5	No	No	Right	mail	Yes
27	Esp	Esp	Esp	AR	Uni_Com	-5	Yes	No	Right	mail	Yes
28	Esp	Esp	Esp	AR	Uni_Com	5-10	No	No	Right	mail	Yes
29	Esp	Esp	Esp	AR	Ter_Com	-5	No	Yes	Right	mail	Yes
31	Esp	Esp	Esp	AR	Pri_Inc	-5	Yes	Yes	Right	FB_Labo	Yes
32	Esp	Esp	Esp	AD	Pri_Com	-5	Yes	Yes	Right	FB_Labo	Yes
\.


--
-- Data for Name: cloze_subject; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY cloze_subject (id, email, age, gender, original_ip, sequence_number, experiment_sequence) FROM stdin;
1	brunobian@gmail.com	12	MAS	157.92.4.76	1	[5, 1, 6, 94, 19, 91, 11, 49, 13, 80, 36, 90, 68, 22, 40, 57, 66, 122, 93, 55, 128, 116, 105, 21, 46, 25, 47, 77, 74, 52, 117, 17, 31, 58, 85, 98, 81, 70, 102, 75, 110, 37, 38, 121, 109, 34, 103, 10, 35, 71, 118, 112, 63, 24, 18, 95, 107, 42, 124, 61, 32, 73, 84, 104, 82, 29, 33, 53, 120, 113, 125, 50, 78, 56, 67, 20, 41, 23, 12, 44, 65, 97, 51, 26, 123, 126, 89, 30, 100, 60, 129, 115, 16, 14, 96, 59, 43, 127, 108, 28, 83, 72, 54, 106, 48, 64, 87, 62, 99, 119, 27, 92, 76, 86, 114, 111, 79, 69, 88, 45, 101, 39, 15]
2	juan@test	33	MAS	157.92.4.71	1	[4, 6, 3, 126, 92, 105, 127, 18, 80, 14, 109, 21, 72, 36, 53, 66, 35, 22, 28, 67, 70, 39, 16, 124, 107, 50, 19, 59, 31, 125, 25, 82, 120, 40, 38, 34, 100, 60, 69, 23, 98, 108, 62, 122, 112, 97, 111, 44, 94, 96, 83, 30, 45, 63, 55, 129, 106, 74, 91, 86, 79, 115, 119, 73, 17, 33, 101, 48, 10, 84, 81, 52, 123, 64, 24, 42, 65, 49, 75, 103, 85, 15, 118, 77, 54, 20, 113, 78, 68, 117, 71, 43, 121, 61, 76, 87, 37, 46, 26, 12, 58, 95, 11, 102, 32, 89, 13, 104, 110, 29, 51, 114, 56, 90, 99, 93, 27, 128, 57, 116, 47, 88, 41]
3	schumachermarcela@gmail.com	37	FEM	190.176.201.73	1	[4, 6, 7, 97, 17, 31, 57, 18, 55, 108, 13, 100, 112, 59, 120, 76, 48, 39, 90, 34, 99, 106, 98, 15, 67, 102, 121, 119, 69, 110, 82, 14, 19, 80, 30, 64, 35, 32, 36, 103, 60, 123, 94, 27, 117, 107, 68, 104, 92, 29, 124, 63, 53, 37, 47, 20, 23, 118, 95, 79, 58, 116, 129, 105, 71, 85, 89, 11, 126, 25, 88, 38, 65, 43, 109, 86, 84, 111, 87, 54, 115, 125, 56, 77, 74, 40, 22, 73, 12, 66, 127, 16, 50, 10, 52, 28, 42, 62, 70, 46, 75, 21, 72, 128, 26, 78, 44, 49, 41, 24, 51, 114, 96, 83, 33, 45, 91, 101, 81, 122, 113, 61, 93]
4	test1@test.com	12	MAS	190.16.230.106	1	[2, 5, 9, 47, 67, 42, 53, 93, 34, 60, 128, 71, 87, 52, 82, 99, 62, 37, 73, 88, 22, 40, 106, 15, 12, 115, 103, 32, 43, 92, 83, 118, 125, 64, 94, 110, 29, 127, 48, 69, 119, 107, 116, 63, 111, 98, 56, 104, 79, 39, 44, 112, 13, 86, 35, 31, 85, 108, 90, 33, 100, 58, 124, 91, 89, 28, 102, 25, 66, 126, 72, 41, 96, 55, 97, 49, 45, 65, 10, 113, 114, 51, 129, 50, 59, 20, 54, 81, 68, 120, 109, 95, 11, 16, 123, 14, 30, 105, 77, 18, 46, 23, 122, 27, 57, 75, 26, 121, 80, 76, 24, 38, 21, 17, 19, 117, 101, 84, 70, 74, 36, 78, 61]
5	dfslezak+aaa@gmail.com	35	MAS	157.92.4.71	1	[8, 9, 5, 29, 77, 60, 72, 55, 50, 17, 15, 96, 99, 73, 127, 122, 68, 39, 86, 43, 98, 62, 30, 104, 25, 69, 126, 113, 108, 105, 65, 21, 89, 52, 14, 26, 119, 54, 13, 102, 67, 12, 125, 56, 129, 90, 109, 36, 103, 38, 88, 75, 112, 123, 63, 94, 27, 22, 20, 58, 18, 100, 114, 44, 110, 42, 33, 116, 95, 59, 53, 66, 45, 16, 19, 78, 24, 41, 87, 70, 79, 81, 35, 91, 117, 31, 34, 48, 101, 120, 107, 32, 83, 118, 64, 84, 37, 128, 121, 71, 10, 82, 61, 106, 80, 111, 124, 97, 28, 40, 115, 11, 46, 85, 92, 23, 49, 57, 74, 76, 51, 93, 47]
6	dfslezak+aa@gmail.com	35	MAS	157.92.4.72	1	[6, 0, 8, 49, 46, 67, 10, 126, 78, 36, 110, 39, 105, 47, 91, 34, 30, 52, 70, 100, 64, 58, 128, 63, 76, 96, 74, 27, 48, 94, 82, 56, 13, 125, 68, 80, 120, 54, 106, 122, 12, 35, 59, 42, 11, 127, 117, 81, 23, 98, 62, 121, 109, 83, 66, 61, 124, 69, 84, 37, 21, 118, 41, 107, 57, 95, 79, 71, 40, 102, 73, 50, 101, 112, 97, 20, 129, 45, 29, 123, 89, 103, 92, 17, 115, 44, 75, 26, 32, 22, 65, 38, 16, 85, 116, 19, 60, 113, 24, 18, 77, 104, 90, 55, 72, 14, 86, 114, 87, 28, 111, 51, 33, 108, 99, 119, 15, 25, 43, 53, 88, 31, 93]
7	mar.berlusconi@gmail.com	74	FEM	201.235.212.52	1	[0, 1, 4, 15, 17, 10, 73, 69, 57, 93, 28, 84, 44, 80, 50, 106, 61, 38, 79, 32, 118, 90, 35, 70, 108, 76, 99, 110, 88, 86, 65, 68, 21, 39, 20, 49, 124, 116, 119, 112, 114, 59, 58, 74, 23, 18, 51, 96, 41, 52, 46, 62, 81, 107, 115, 30, 94, 60, 33, 103, 121, 104, 101, 113, 29, 105, 98, 67, 83, 19, 127, 85, 63, 53, 91, 126, 82, 42, 123, 48, 102, 27, 14, 26, 54, 22, 36, 89, 125, 111, 75, 16, 37, 77, 100, 71, 40, 87, 13, 78, 128, 24, 95, 43, 117, 66, 64, 72, 31, 34, 11, 120, 56, 109, 97, 25, 45, 47, 12, 129, 55, 122, 92]
8	rocamor26@hotmail.com	79	MAS	181.228.157.69	1	[0, 1, 9, 50, 100, 119, 65, 90, 32, 96, 84, 69, 124, 76, 128, 19, 26, 126, 55, 122, 102, 116, 22, 66, 17, 13, 18, 60, 78, 52, 38, 21, 120, 33, 28, 34, 123, 23, 88, 20, 83, 16, 10, 73, 37, 57, 25, 125, 114, 95, 29, 49, 93, 97, 129, 43, 30, 47, 118, 113, 70, 82, 45, 92, 62, 121, 14, 127, 46, 106, 89, 63, 68, 58, 67, 98, 24, 94, 41, 51, 105, 12, 44, 115, 74, 112, 87, 40, 109, 77, 110, 91, 80, 31, 86, 107, 59, 15, 101, 72, 53, 61, 75, 81, 11, 71, 85, 99, 104, 54, 64, 117, 108, 103, 79, 36, 35, 48, 42, 56, 27, 111, 39]
9	elmardiez@hotmail.com	74	FEM	181.25.4.223	1	[9, 7, 3, 19, 40, 102, 76, 93, 72, 65, 115, 85, 48, 57, 11, 16, 79, 89, 52, 58, 73, 59, 37, 39, 26, 13, 107, 78, 63, 51, 10, 95, 32, 45, 81, 64, 36, 118, 42, 126, 91, 29, 44, 98, 128, 104, 122, 83, 30, 74, 28, 114, 67, 56, 75, 97, 99, 23, 53, 34, 92, 125, 25, 71, 94, 120, 62, 106, 46, 90, 109, 61, 15, 70, 100, 31, 43, 111, 117, 27, 105, 113, 86, 77, 38, 17, 50, 12, 116, 33, 68, 121, 41, 82, 49, 96, 21, 66, 35, 101, 47, 84, 80, 124, 20, 112, 119, 55, 103, 88, 60, 22, 54, 69, 108, 24, 18, 127, 129, 110, 123, 14, 87]
10	emprieto05@yahoo.com.ar	79	FEM	181.228.148.62	1	[4, 9, 0, 84, 119, 111, 81, 118, 40, 79, 117, 93, 106, 42, 55, 50, 22, 58, 64, 107, 66, 100, 44, 85, 30, 92, 123, 33, 89, 28, 53, 15, 24, 27, 59, 11, 76, 102, 67, 62, 61, 48, 54, 16, 80, 38, 19, 51, 128, 73, 25, 112, 21, 97, 47, 99, 77, 56, 17, 90, 32, 96, 49, 36, 26, 101, 108, 116, 83, 35, 43, 109, 113, 95, 41, 124, 52, 12, 46, 78, 13, 68, 60, 94, 122, 103, 65, 29, 86, 91, 74, 39, 34, 110, 82, 20, 129, 70, 37, 45, 31, 88, 14, 23, 72, 125, 10, 120, 127, 71, 98, 126, 114, 121, 105, 115, 87, 57, 18, 69, 63, 104, 75]
11	72verduzledesma@gmail.com	74	FEM	190.97.16.187	1	[5, 4, 3, 79, 120, 67, 53, 64, 112, 66, 43, 56, 35, 102, 100, 41, 87, 59, 60, 34, 97, 127, 92, 52, 122, 65, 46, 124, 11, 36, 12, 10, 78, 114, 86, 29, 111, 76, 42, 55, 95, 83, 82, 50, 113, 77, 121, 40, 45, 32, 117, 18, 119, 24, 74, 85, 39, 93, 15, 49, 84, 118, 26, 68, 90, 70, 106, 101, 21, 125, 109, 23, 20, 129, 128, 69, 99, 107, 96, 48, 16, 62, 116, 73, 13, 30, 37, 108, 88, 28, 47, 25, 58, 98, 104, 81, 31, 17, 89, 91, 115, 14, 71, 38, 61, 72, 103, 54, 19, 126, 110, 94, 123, 33, 105, 44, 22, 75, 63, 51, 80, 57, 27]
12	didiovic@yahoo.com.ar	85	MAS	181.228.126.215	1	[9, 4, 5, 32, 27, 20, 93, 84, 114, 16, 52, 94, 40, 14, 83, 91, 125, 98, 50, 115, 28, 25, 13, 118, 96, 12, 77, 81, 108, 99, 122, 19, 10, 117, 87, 78, 57, 21, 70, 80, 59, 48, 65, 116, 17, 79, 49, 105, 61, 128, 34, 74, 51, 35, 38, 88, 127, 120, 43, 60, 90, 64, 82, 46, 24, 47, 44, 100, 86, 101, 69, 111, 37, 104, 103, 31, 39, 75, 58, 89, 18, 73, 67, 121, 66, 23, 129, 102, 15, 112, 36, 76, 56, 72, 119, 113, 110, 92, 54, 95, 71, 62, 106, 63, 124, 85, 29, 53, 109, 123, 22, 126, 68, 30, 42, 55, 33, 97, 41, 45, 107, 11, 26]
13	tamir1105@hotmail.com	40	MAS	190.176.199.173	1	[8, 4, 7, 72, 78, 21, 111, 122, 63, 100, 125, 13, 62, 77, 55, 57, 40, 19, 115, 99, 18, 54, 38, 56, 12, 58, 42, 43, 49, 82, 46, 97, 92, 17, 65, 53, 68, 88, 112, 90, 80, 59, 37, 15, 124, 28, 86, 113, 107, 121, 27, 109, 20, 73, 127, 69, 22, 126, 23, 35, 41, 25, 71, 123, 29, 110, 10, 60, 118, 129, 81, 93, 31, 14, 101, 103, 89, 76, 11, 16, 45, 48, 66, 75, 87, 33, 34, 64, 36, 98, 30, 108, 91, 61, 120, 26, 70, 102, 119, 96, 79, 85, 117, 105, 47, 95, 32, 116, 83, 74, 51, 50, 44, 106, 94, 52, 24, 67, 114, 104, 84, 128, 39]
14	mirtatave2010@hotmail.com	65	FEM	190.211.203.237	1	[1, 9, 7, 124, 102, 126, 52, 41, 82, 85, 24, 94, 108, 13, 129, 58, 29, 63, 89, 107, 96, 62, 35, 27, 67, 97, 103, 44, 86, 125, 26, 120, 57, 72, 98, 69, 81, 25, 36, 21, 50, 77, 60, 95, 83, 43, 11, 61, 38, 34, 37, 30, 23, 128, 32, 48, 15, 112, 68, 39, 31, 40, 71, 121, 20, 12, 16, 93, 116, 17, 91, 49, 55, 53, 45, 22, 117, 70, 104, 105, 90, 14, 64, 118, 28, 87, 100, 109, 127, 114, 51, 78, 106, 113, 54, 92, 76, 46, 79, 18, 75, 73, 19, 123, 42, 110, 84, 115, 65, 59, 33, 99, 80, 10, 74, 122, 88, 119, 56, 101, 111, 47, 66]
15	normaedithiglesias@hotmail.com	78	FEM	181.90.40.18	1	[7, 2, 6, 65, 91, 69, 74, 106, 122, 70, 85, 107, 38, 50, 79, 96, 87, 16, 102, 80, 42, 104, 62, 29, 17, 116, 97, 52, 56, 23, 25, 78, 26, 14, 67, 19, 49, 61, 51, 129, 53, 89, 88, 123, 47, 41, 21, 73, 93, 63, 117, 77, 54, 71, 83, 124, 121, 66, 32, 28, 64, 100, 18, 99, 39, 111, 24, 101, 112, 103, 82, 58, 128, 22, 81, 40, 114, 68, 126, 55, 110, 11, 20, 37, 84, 46, 43, 115, 12, 27, 86, 15, 72, 125, 76, 48, 95, 118, 94, 31, 90, 105, 60, 45, 108, 35, 36, 44, 109, 75, 127, 57, 119, 10, 13, 33, 34, 98, 113, 59, 120, 92, 30]
16	test@test.com	33	MAS	157.92.4.76	1	[0, 1, 3, 38, 82, 32, 127, 94, 80, 34, 58, 118, 129, 117, 13, 88, 78, 111, 121, 51, 39, 45, 79, 54, 116, 25, 77, 50, 46, 55, 108, 65, 23, 42, 48, 73, 67, 75, 37, 105, 97, 89, 66, 109, 14, 24, 71, 52, 100, 53, 68, 107, 27, 98, 93, 30, 36, 81, 106, 12, 44, 83, 114, 91, 62, 19, 60, 115, 102, 49, 87, 61, 104, 112, 92, 86, 120, 15, 31, 128, 29, 26, 123, 95, 90, 59, 40, 84, 103, 56, 126, 113, 70, 28, 124, 63, 99, 22, 85, 10, 16, 72, 43, 35, 96, 11, 64, 122, 17, 18, 125, 69, 33, 101, 76, 57, 47, 21, 110, 119, 20, 41, 74]
17	test5@test.com	12	MAS	157.92.4.76	1	[9, 4, 1, 110, 46, 75, 60, 11, 14, 48, 116, 63, 33, 107, 118, 102, 28, 82, 34, 36, 17, 84, 74, 93, 96, 114, 58, 37, 61, 19, 51, 68, 23, 123, 117, 18, 21, 39, 91, 76, 12, 50, 119, 105, 65, 13, 66, 30, 95, 77, 98, 121, 42, 129, 109, 111, 127, 56, 126, 72, 38, 83, 16, 97, 27, 49, 69, 62, 40, 115, 10, 24, 90, 122, 106, 80, 52, 113, 64, 100, 41, 104, 55, 103, 108, 35, 128, 54, 31, 45, 43, 81, 57, 85, 94, 88, 87, 125, 44, 70, 120, 20, 73, 99, 67, 59, 71, 32, 79, 29, 101, 92, 124, 15, 53, 112, 47, 89, 86, 78, 22, 26, 25]
18	test4@test.com	21	MAS	157.92.4.6	1	[6, 1, 9, 128, 114, 64, 77, 116, 90, 96, 48, 17, 121, 13, 84, 51, 106, 19, 100, 30, 65, 71, 32, 79, 40, 26, 85, 60, 81, 59, 41, 63, 67, 49, 126, 109, 18, 122, 78, 108, 33, 98, 120, 74, 83, 39, 23, 87, 47, 54, 82, 92, 102, 86, 29, 93, 21, 105, 35, 68, 123, 31, 58, 37, 95, 28, 125, 73, 11, 22, 20, 55, 72, 16, 46, 112, 38, 52, 107, 57, 61, 44, 129, 70, 34, 117, 36, 62, 119, 91, 10, 42, 43, 50, 110, 104, 27, 66, 113, 103, 101, 111, 118, 12, 127, 88, 124, 56, 80, 15, 14, 97, 99, 75, 76, 94, 24, 45, 115, 25, 69, 53, 89]
19	test3@test.com	12	MAS	157.92.4.71	1	[0, 3, 5, 100, 43, 73, 120, 10, 95, 24, 63, 77, 59, 36, 66, 49, 88, 98, 52, 54, 29, 123, 81, 104, 30, 62, 40, 108, 60, 129, 78, 79, 99, 41, 39, 28, 113, 20, 58, 23, 121, 89, 21, 128, 84, 116, 50, 45, 68, 37, 107, 65, 27, 119, 105, 64, 34, 18, 92, 85, 72, 82, 126, 42, 70, 47, 48, 76, 125, 83, 127, 106, 56, 112, 14, 86, 101, 96, 87, 46, 25, 97, 55, 109, 19, 13, 15, 35, 16, 44, 32, 31, 33, 26, 124, 110, 114, 117, 22, 12, 102, 11, 115, 103, 111, 17, 75, 90, 71, 118, 80, 94, 74, 67, 51, 93, 122, 57, 38, 91, 69, 61, 53]
20	test2@test.com	12	MAS	157.92.4.4	1	[5, 1, 8, 97, 124, 78, 57, 42, 81, 54, 23, 96, 18, 113, 48, 49, 27, 123, 111, 43, 69, 37, 32, 88, 41, 102, 76, 98, 125, 110, 56, 128, 75, 20, 105, 31, 50, 44, 33, 93, 40, 12, 51, 95, 15, 91, 17, 10, 60, 19, 58, 29, 38, 70, 65, 104, 84, 64, 34, 99, 101, 86, 89, 82, 74, 103, 13, 92, 72, 22, 129, 61, 53, 63, 109, 85, 114, 83, 100, 115, 24, 59, 120, 28, 16, 79, 35, 21, 55, 39, 71, 62, 77, 127, 30, 108, 73, 45, 107, 46, 11, 87, 47, 117, 66, 36, 67, 122, 126, 26, 118, 52, 119, 80, 106, 25, 112, 68, 90, 94, 121, 14, 116]
21	test6@test.com	12	MAS	157.92.4.75	1	[4, 8, 3, 40, 21, 23, 75, 35, 107, 33, 72, 56, 76, 24, 50, 13, 93, 98, 122, 62, 101, 58, 86, 36, 39, 51, 115, 89, 30, 43, 94, 49, 109, 64, 112, 26, 117, 88, 46, 118, 29, 18, 120, 100, 105, 80, 60, 44, 96, 45, 97, 67, 70, 87, 16, 82, 119, 99, 111, 41, 85, 121, 128, 116, 108, 15, 10, 42, 12, 69, 78, 65, 68, 125, 104, 11, 91, 95, 73, 74, 55, 110, 48, 20, 31, 14, 25, 32, 102, 71, 52, 123, 66, 61, 63, 124, 38, 77, 114, 127, 34, 27, 126, 47, 90, 57, 92, 22, 83, 17, 79, 53, 129, 103, 37, 81, 59, 113, 84, 28, 19, 106, 54]
22	paulamonica00@hotmil.com	51	FEM	181.228.133.66	1	[0, 2, 3, 33, 75, 107, 121, 60, 71, 79, 100, 83, 103, 16, 110, 124, 96, 90, 73, 125, 95, 108, 86, 49, 17, 35, 53, 89, 52, 39, 25, 104, 120, 61, 97, 19, 37, 40, 44, 18, 36, 78, 22, 63, 118, 56, 28, 66, 85, 123, 59, 102, 116, 76, 47, 91, 50, 115, 48, 41, 57, 101, 45, 23, 27, 93, 98, 99, 12, 92, 87, 119, 122, 109, 10, 38, 46, 81, 72, 58, 21, 29, 77, 24, 82, 55, 126, 88, 30, 74, 26, 42, 70, 80, 68, 128, 105, 111, 15, 67, 31, 11, 117, 113, 129, 51, 20, 69, 84, 64, 32, 34, 94, 65, 106, 62, 112, 127, 43, 54, 114, 13, 14]
23	bocha.armendariz@gmail.com	76	MAS	201.231.105.13	1	[0, 8, 6, 97, 90, 121, 91, 24, 111, 39, 92, 75, 84, 96, 126, 43, 118, 11, 33, 45, 46, 95, 81, 128, 22, 122, 28, 103, 73, 51, 99, 66, 129, 107, 71, 27, 34, 80, 53, 106, 12, 15, 127, 38, 116, 101, 40, 76, 113, 50, 87, 123, 21, 29, 109, 115, 104, 67, 89, 98, 85, 32, 60, 54, 37, 23, 41, 102, 48, 19, 64, 31, 119, 93, 74, 114, 30, 20, 110, 56, 117, 72, 59, 125, 16, 42, 69, 63, 58, 79, 83, 57, 61, 14, 62, 26, 124, 18, 17, 68, 82, 77, 86, 108, 94, 49, 36, 44, 105, 78, 70, 10, 120, 13, 25, 112, 55, 65, 47, 52, 35, 100, 88]
24	familiavolpe@hotmail.com	68	FEM	190.176.192.178	1	[9, 1, 8, 115, 57, 126, 118, 103, 17, 124, 14, 11, 44, 58, 109, 33, 30, 48, 55, 37, 74, 21, 10, 90, 106, 86, 50, 53, 18, 62, 39, 40, 12, 119, 66, 77, 112, 87, 24, 28, 72, 97, 13, 107, 127, 73, 47, 38, 83, 108, 19, 120, 76, 20, 70, 129, 81, 49, 51, 101, 123, 91, 15, 80, 116, 104, 46, 117, 36, 27, 89, 75, 22, 82, 29, 41, 65, 26, 23, 60, 43, 71, 78, 96, 79, 100, 102, 94, 42, 61, 128, 32, 114, 84, 56, 25, 31, 111, 59, 35, 54, 63, 121, 64, 122, 52, 93, 105, 88, 113, 92, 69, 95, 45, 99, 34, 125, 67, 110, 98, 85, 68, 16]
25	martajimenes01@gmail.com	76	FEM	190.97.17.194	1	[5, 9, 2, 12, 86, 101, 127, 10, 79, 56, 48, 98, 92, 29, 80, 87, 34, 69, 51, 84, 77, 57, 27, 36, 113, 125, 73, 33, 115, 49, 91, 106, 18, 82, 50, 14, 78, 112, 104, 35, 61, 38, 24, 43, 81, 23, 119, 90, 63, 108, 122, 46, 75, 53, 16, 109, 40, 11, 42, 102, 54, 52, 95, 93, 107, 126, 41, 64, 58, 20, 100, 71, 44, 89, 59, 66, 47, 37, 13, 128, 28, 103, 55, 76, 97, 114, 123, 85, 45, 124, 116, 120, 70, 26, 65, 15, 117, 88, 30, 99, 17, 110, 19, 25, 60, 39, 21, 67, 94, 118, 83, 22, 72, 68, 121, 74, 129, 111, 96, 62, 31, 105, 32]
26	lucianardini43@yahoo.com.ar	68	FEM	181.228.130.166	1	[3, 0, 4, 22, 90, 76, 59, 129, 118, 13, 79, 116, 98, 99, 51, 67, 86, 88, 123, 68, 61, 101, 117, 20, 52, 102, 18, 122, 83, 109, 73, 62, 97, 94, 29, 72, 54, 35, 42, 120, 91, 15, 57, 87, 50, 74, 44, 93, 33, 81, 53, 24, 78, 100, 16, 112, 113, 63, 34, 127, 60, 10, 41, 105, 104, 36, 32, 121, 84, 37, 110, 92, 30, 126, 46, 128, 49, 75, 65, 40, 66, 27, 19, 107, 106, 58, 82, 108, 114, 26, 31, 119, 56, 95, 28, 55, 70, 43, 124, 96, 21, 47, 45, 12, 17, 89, 69, 38, 64, 103, 80, 115, 125, 71, 48, 77, 111, 23, 39, 25, 14, 85, 11]
27	maiadevinath@yahoo.com.ar	76	FEM	190.245.62.208	1	[4, 8, 7, 109, 38, 98, 76, 43, 70, 58, 52, 121, 40, 91, 25, 120, 101, 100, 81, 28, 27, 68, 48, 32, 16, 13, 41, 89, 59, 110, 12, 102, 128, 36, 54, 69, 31, 26, 85, 66, 119, 84, 82, 115, 87, 11, 10, 29, 122, 117, 71, 79, 107, 60, 51, 46, 118, 49, 50, 47, 20, 24, 21, 37, 34, 94, 65, 67, 90, 78, 62, 88, 17, 74, 33, 80, 61, 72, 105, 39, 86, 19, 104, 96, 14, 77, 23, 35, 63, 45, 125, 99, 129, 75, 106, 15, 30, 93, 124, 57, 53, 95, 44, 55, 92, 64, 126, 112, 111, 123, 42, 22, 97, 18, 108, 103, 114, 83, 116, 73, 56, 113, 127]
28	janayanover@hotmail.com	73	FEM	181.228.122.161	1	[1, 9, 3, 21, 99, 123, 93, 118, 30, 57, 107, 85, 77, 127, 110, 120, 71, 60, 78, 125, 117, 39, 121, 38, 55, 76, 23, 16, 35, 63, 31, 104, 128, 113, 28, 40, 83, 95, 50, 42, 26, 15, 41, 108, 105, 98, 22, 119, 106, 46, 129, 100, 33, 97, 122, 64, 74, 82, 62, 49, 94, 34, 91, 79, 109, 18, 27, 86, 51, 90, 87, 126, 72, 29, 45, 19, 88, 68, 44, 25, 103, 81, 84, 43, 75, 114, 101, 20, 24, 56, 111, 96, 36, 14, 10, 112, 80, 59, 116, 69, 115, 66, 47, 67, 52, 53, 124, 37, 61, 58, 32, 73, 89, 13, 11, 70, 48, 65, 12, 102, 92, 54, 17]
29	minesgallego@yahoo.com.ar	67	FEM	190.97.21.175	1	[5, 3, 1, 72, 60, 119, 54, 77, 44, 88, 14, 112, 62, 113, 53, 30, 107, 127, 11, 106, 26, 24, 71, 93, 27, 17, 121, 129, 34, 57, 50, 118, 58, 29, 109, 122, 56, 22, 73, 98, 47, 25, 20, 10, 43, 19, 64, 12, 79, 67, 28, 84, 33, 81, 59, 75, 128, 38, 49, 13, 80, 63, 124, 39, 111, 70, 69, 97, 40, 61, 123, 86, 83, 115, 101, 55, 48, 66, 35, 85, 78, 45, 23, 15, 74, 92, 94, 96, 36, 120, 99, 51, 68, 116, 65, 125, 114, 31, 91, 126, 104, 103, 87, 89, 42, 52, 76, 21, 41, 105, 95, 46, 82, 102, 16, 37, 117, 32, 90, 100, 110, 108, 18]
30	aguagraphics@gmail.com	31	MAS	181.167.127.10	1	[1, 2, 0, 92, 71, 67, 75, 65, 89, 44, 38, 21, 12, 90, 72, 50, 22, 110, 17, 14, 88, 62, 73, 125, 84, 78, 98, 83, 61, 116, 109, 129, 39, 80, 69, 114, 51, 118, 18, 127, 86, 30, 49, 77, 115, 74, 24, 40, 15, 85, 55, 113, 112, 122, 87, 29, 82, 52, 47, 56, 76, 43, 57, 103, 120, 99, 23, 41, 117, 121, 63, 119, 60, 42, 97, 107, 27, 13, 31, 126, 128, 46, 64, 70, 68, 36, 100, 10, 16, 96, 11, 108, 81, 26, 58, 59, 79, 32, 123, 28, 20, 66, 106, 94, 33, 111, 34, 101, 37, 102, 95, 53, 93, 45, 105, 35, 124, 104, 54, 19, 91, 48, 25]
31	test7@test.com	12	MAS	157.92.4.76	1	[8, 9, 6, 96, 22, 85, 18, 53, 111, 46, 98, 125, 87, 95, 23, 33, 40, 113, 88, 38, 91, 104, 58, 26, 123, 72, 30, 128, 43, 39, 100, 62, 118, 32, 61, 89, 12, 42, 34, 84, 67, 11, 44, 109, 57, 64, 15, 75, 108, 19, 90, 112, 121, 13, 31, 36, 28, 71, 102, 93, 48, 129, 37, 83, 29, 56, 24, 86, 82, 99, 52, 63, 49, 97, 60, 107, 114, 115, 124, 80, 117, 65, 47, 41, 92, 120, 59, 103, 69, 116, 66, 76, 81, 74, 110, 122, 77, 105, 55, 73, 79, 35, 127, 70, 16, 68, 17, 51, 27, 20, 10, 94, 25, 45, 78, 50, 14, 54, 119, 126, 21, 101, 106]
32	test8@test.com	12	MAS	186.13.5.147	1	[8, 1, 5, 43, 123, 60, 50, 76, 28, 122, 98, 33, 124, 12, 15, 104, 59, 112, 111, 102, 105, 10, 17, 19, 31, 128, 89, 46, 57, 116, 83, 115, 113, 55, 65, 13, 82, 34, 64, 49, 127, 99, 56, 61, 91, 109, 18, 29, 73, 39, 47, 54, 119, 44, 94, 38, 96, 121, 95, 32, 36, 103, 97, 74, 71, 125, 63, 35, 23, 70, 52, 88, 67, 20, 77, 21, 80, 68, 26, 100, 66, 84, 27, 62, 107, 108, 45, 69, 51, 118, 48, 22, 78, 126, 53, 37, 117, 79, 106, 87, 101, 14, 92, 85, 72, 58, 120, 75, 16, 86, 42, 41, 24, 30, 110, 93, 90, 25, 81, 129, 40, 11, 114]
33	brunobian2@gmail.com	12	MAS	157.92.4.4	1	[5, 7, 2, 69, 24, 45, 36, 86, 56, 49, 101, 29, 81, 96, 88, 111, 54, 126, 12, 38, 106, 55, 31, 100, 15, 115, 60, 20, 94, 59, 65, 23, 84, 19, 63, 66, 120, 70, 103, 97, 110, 98, 43, 16, 80, 129, 68, 32, 89, 99, 47, 74, 40, 91, 53, 62, 37, 71, 118, 75, 18, 104, 10, 72, 95, 58, 109, 108, 119, 28, 90, 121, 128, 22, 112, 39, 35, 76, 17, 46, 127, 107, 105, 83, 13, 92, 33, 93, 85, 64, 117, 27, 14, 11, 82, 57, 61, 48, 79, 122, 51, 52, 50, 125, 114, 116, 124, 123, 30, 42, 113, 73, 67, 26, 44, 102, 77, 41, 25, 78, 34, 87, 21]
\.


--
-- Name: cloze_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('cloze_subject_id_seq', 33, true);


--
-- Data for Name: cloze_text; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY cloze_text (id, "textNumber", "textClass", body) FROM stdin;
0	3	0	<p>Los niños disfrutaron del paseo mucho más que yo.</p>
1	3	0	<p>Mucho ruido y pocas nueces.</p>
2	3	0	<p>De lo que no se sabe es mejor callar.</p>
3	3	0	<p>Quien mal anda mal acaba.</p>
4	3	0	<p>Chancho limpio nunca engorda.</p>
5	3	0	<p>La guadaña es el símbolo de la muerte.</p>
6	3	0	<p>Baco es el Dios del vino.</p>
7	3	0	<p>Pedro es el único actor de la novela.</p>
8	3	0	<p>A la isla se puede llegar solamente por avión.</p>
9	3	0	<p>Juan se dislocó el hombro por tercera vez.</p>
10	0	0	<p>Quien mucho abarca poco aprieta.</p>
11	0	0	<p>En casa de herrero cuchillo de palo.</p>
12	0	0	<p>Al mal tiempo buena cara.</p>
13	0	0	<p>Cuando hay hambre no hay pan duro.</p>
14	0	0	<p>Dios le da pan a quien no tiene dientes.</p>
15	0	0	<p>A palabras necias, oídos sordos.</p>
16	0	0	<p>Ojos que no ven corazón que no siente.</p>
17	0	0	<p>Al que madruga Dios lo ayuda.</p>
18	0	0	<p>A caballo regalado no se le miran los dientes.</p>
19	0	0	<p>Más vale pájaro en mano, que cien volando.</p>
20	0	0	<p>Haz el bien sin mirar a quién.</p>
21	0	0	<p>Hombre prevenido vale por dos.</p>
22	0	0	<p>En boca cerrada no entran moscas.</p>
23	0	0	<p>No por mucho madrugar amanece más temprano.</p>
24	0	0	<p>No dejes para mañana lo que puedas hacer hoy.</p>
25	0	0	<p>No hay mal que por bien no venga.</p>
26	0	0	<p>En el país de los ciegos el tuerto es Rey.</p>
27	0	0	<p>Al que quiere celeste que le cueste.</p>
28	0	0	<p>Sobre gustos no hay nada escrito.</p>
29	0	0	<p>Dime con quién andas y te diré quién eres.</p>
30	0	0	<p>No está muerto quien pelea.</p>
31	0	0	<p>Agua que no has de beber déjala correr.</p>
32	0	0	<p>Haz lo que yo digo mas no lo que yo hago.</p>
33	0	0	<p>Cuentas claras conservan la amistad.</p>
34	0	0	<p>Hablando de Roma el burro se asoma.</p>
35	0	0	<p>Mejor solo que mal acompañado.</p>
36	0	0	<p>El diablo sabe más por viejo que por diablo.</p>
37	0	0	<p>El que a hierro mata a hierro muere.</p>
38	0	0	<p>Tanto va el cántaro a la fuente, que al final se rompe.</p>
39	0	0	<p>Aunque la mona se vista de seda, mona queda.</p>
40	0	0	<p>A buen entendedor pocas palabras.</p>
41	0	0	<p>El que ríe último ríe mejor.</p>
42	0	0	<p>Es mejor prevenir que curar.</p>
43	0	0	<p>No todo lo que brilla es oro.</p>
44	0	0	<p>El ojo del amo engorda el ganado.</p>
45	0	0	<p>En todas partes se cuecen habas.</p>
46	0	0	<p>Donde manda capitán no manda marinero.</p>
47	0	0	<p>Mal de muchos consuelo de tontos.</p>
48	0	0	<p>Cría cuervos y te sacarán los ojos.</p>
49	0	0	<p>No hay que pedirle peras al Olmo.</p>
50	1	0	<p>Aquiles luchó en la Guerra de Troya.</p>
51	1	0	<p>En Alaska las temperaturas son muy bajas.</p>
52	1	0	<p>Todos los caminos conducen a Roma.</p>
53	1	0	<p>En Alemania tiraron el muro de Berlín.</p>
54	1	0	<p>Alemania perdió la segunda guerra mundial.</p>
55	1	0	<p>A las hojas las amontona el viento.</p>
56	1	0	<p>Hay que pensar antes de hablar.</p>
57	1	0	<p>El hombre es un animal racional.</p>
58	1	0	<p>El perro enterró un hueso en el patio.</p>
59	1	0	<p>D'Artagnan era amigo de los tres mosqueteros.</p>
60	1	0	<p>No hagas promesas que no puedas cumplir.</p>
61	1	0	<p>Ante la duda consulte a su médico.</p>
62	1	0	<p>Caminante no hay camino, se hace camino al andar.</p>
63	1	0	<p>San Martín cruzó los Andes a caballo.</p>
64	1	0	<p>A Rómulo y a Remo los alimentó una loba.</p>
65	1	0	<p>Ser o no ser, ésa es la cuestión.</p>
66	1	0	<p>El que esté libre de pecado que tire la primer piedra.</p>
67	1	0	<p>El mate es originario de la Argentina.</p>
68	1	0	<p>Ganarás el pan con el sudor de tu frente.</p>
69	1	0	<p>Lucifer es uno de los nombres del diablo.</p>
70	1	0	<p>La Pampa tiene el ombú y los Andes la cordillera.</p>
71	1	0	<p>A Pinocho le crecía la nariz cada vez que mentía.</p>
72	1	0	<p>El Rey Arturo y los caballeros de la mesa redonda.</p>
73	1	0	<p>El gato atrapó muchos ratones.</p>
74	1	0	<p>En el horno de la panadería cocinan el pan.</p>
75	1	0	<p>Los Reyes Magos dejaron regalos para los niños.</p>
76	1	0	<p>Mejor no hablar de ciertas cosas.</p>
77	1	0	<p>El corazón es un músculo que bombea sangre.</p>
78	1	0	<p>Si quieres resultados distintos no hagas siempre lo mismo.</p>
79	1	0	<p>Lo esencial es invisible a los ojos.</p>
80	1	0	<p>El arco iris se forma luego de la lluvia.</p>
81	1	0	<p>No te des por vencido ni aún vencido.</p>
82	1	0	<p>Hasta aquí llegó mi amor.</p>
83	1	0	<p>El fumar es perjudicial para la salud.</p>
84	1	0	<p>Quién se ha tomado todo el vino.</p>
85	1	0	<p>En el tambo ordeñan a las vacas.</p>
86	1	0	<p>No desearás a la mujer de tu prójimo.</p>
87	1	0	<p>Las cosas se hacen bien o no se hacen.</p>
88	1	0	<p>Los ateos no creen en Dios.</p>
89	1	0	<p>Hoy es noche buena y mañana navidad.</p>
90	2	0	<p>En la casa de Juan no hay animales.</p>
91	2	0	<p>Javier tiene amigos que son muy raros.</p>
92	2	0	<p>Jorge consiguió una beca para estudiar en la universidad.</p>
93	2	0	<p>Gustavo encontró una billetera tirada en el bar.</p>
94	2	0	<p>Luis miró todo el partido de fútbol.</p>
95	2	0	<p>A Mario le gusta ver cine los domingos.</p>
96	2	0	<p>La casa de Martín tiene un parque muy grande.</p>
97	2	0	<p>Juan no anda bien con su pareja.</p>
98	2	0	<p>La película terminó de forma extraña.</p>
99	2	0	<p>Luis visitó el mes pasado a unos parientes de Europa.</p>
100	2	0	<p>Laura me recomendó consultar urgente al médico.</p>
101	2	0	<p>En Londres el clima es muy húmedo.</p>
102	2	0	<p>A Miguel le entregaron ayer el auto nuevo.</p>
103	2	0	<p>Elisa nunca supo cómo resolver el problema.</p>
104	2	0	<p>Ayer charlamos con Laura sobre su hija.</p>
105	2	0	<p>La discusión de ayer era inevitable.</p>
106	2	0	<p>Daniel preparó café para sus amigos.</p>
107	2	0	<p>No fueron claras las cuentas de la empresa.</p>
108	2	0	<p>Los amigos lo acompañaron en ese momento.</p>
109	2	0	<p>La picadura de ciertas arañas puede ser mortal.</p>
110	2	0	<p>Tanto insistió con eso que al final se lo dieron.</p>
111	2	0	<p>El mago hizo trucos con cartas.</p>
112	2	0	<p>Los niños se asustaron cuando vieron a los leones.</p>
113	2	0	<p>A Luis no lo engañan con ese viejo truco.</p>
114	2	0	<p>Los hijos de Juan estudiaron durante las vacaciones.</p>
115	2	0	<p>El hermano de Martín es un médico muy prestigioso.</p>
116	2	0	<p>Este año iremos de vacaciones a la montaña.</p>
117	2	0	<p>La madre de Mariela es una muy buena repostera.</p>
118	2	0	<p>Durante la noche algunos felinos salen a cazar.</p>
119	2	0	<p>El oro es un metal muy codiciado.</p>
120	2	0	<p>Algunos días el cielo está todo estrellado.</p>
121	2	0	<p>Juan tiene muy poca visión en ambos ojos.</p>
122	2	0	<p>El patrón le ordenó a la criada callarse.</p>
123	2	0	<p>Él se encontró con María el otro día.</p>
124	2	0	<p>En su casa siempre hacen comidas muy elaboradas.</p>
125	2	0	<p>Los loros comieron la plantación de maíz.</p>
126	2	0	<p>María nunca ha hecho llorar a sus padres.</p>
127	2	0	<p>Cada lengua del mundo posee una gramática.</p>
128	2	0	<p>El destino volvió a unir a los amigos.</p>
129	2	0	<p>En el tribunal la votación fue reñida.</p>
\.


--
-- Name: cloze_text_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('cloze_text_id_seq', 1, false);


--
-- Data for Name: cloze_trial; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY cloze_trial (id, subject_id, "trialOpt_id", "timestamp", initial_time, words) FROM stdin;
1	1	5	2015-10-06 17:01:03.9653+00	2015-10-06 17:00:57.206+00	[[".", "1444150858799"], [".", "1444150859497"], [".", "1444150860135"], [".", "1444150860650"], [".", "1444150861113"], [".", "1444150861650"], [".", "1444150862052"]]
2	1	1	2015-10-06 17:01:08.511165+00	2015-10-06 17:01:04.614+00	[[".", "1444150865464"], [".", "1444150865939"], [".", "1444150866380"], [".", "1444150866752"]]
3	1	6	2015-10-06 17:01:14.354896+00	2015-10-06 17:01:09.562+00	[["..", "1444150870814"], [".", "1444150871138"], [".", "1444150871430"], [".", "1444150871988"], [".", "1444150872427"]]
4	1	94	2015-10-06 17:01:17.514701+00	2015-10-06 17:01:13.766+00	[["..", "1444150874419"], [".", "1444150874671"], [".", "1444150874889"], [".", "1444150875113"], [".", "1444150875352"], [".", "1444150875589"]]
5	1	19	2015-10-06 17:01:21.821425+00	2015-10-06 17:01:16.902+00	[["..", "1444150877643"], [".", "1444150877862"], [".", "1444150878072"], [".", "1444150878285"], [".", "1444150878502"], [".", "1444150878744"], [".", "1444150878958"]]
6	1	91	2015-10-06 17:01:25.548267+00	2015-10-06 17:01:21.742+00	[["..", "1444150882637"], [".", "1444150882841"], [".", "1444150883047"], [".", "1444150883238"], [".", "1444150883435"], [".", "1444150883625"]]
7	1	11	2015-10-06 17:01:28.382447+00	2015-10-06 17:01:24.886+00	[[".", "1444150885461"], [".", "1444150885698"], [".", "1444150885886"], [".", "1444150886096"], [".", "1444150886293"], [".", "1444150886483"]]
8	2	4	2015-10-06 17:09:44.322652+00	2015-10-06 17:09:30.607+00	[["que", "1444151376503"], ["nunca", "1444151379375"], ["engorda", "1444151382391"]]
9	2	6	2015-10-06 17:10:07.57443+00	2015-10-06 17:09:45.892+00	[["fue", "1444151389711"], ["un", "1444151392705"], ["amigo", "1444151396940"], ["de", "1444151399479"], ["fuego", "1444151403287"]]
10	2	3	2015-10-06 17:10:20.915662+00	2015-10-06 17:10:07.043+00	[["poco", "1444151411358"], ["empieza", "1444151414631"], ["mal", "1444151416943"], ["acaba", "1444151418992"]]
11	2	126	2015-10-06 17:10:51.147464+00	2015-10-06 17:10:22.793+00	[["fue", "1444151434193"], ["fue", "1444151436702"], ["sido", "1444151439255"], ["un", "1444151441639"], ["a", "1444151443735"], ["un", "1444151445678"], ["hijos", "1444151449214"]]
12	2	92	2015-10-06 17:11:16.528225+00	2015-10-06 17:10:52.547+00	[["es", "1444151454983"], ["un", "1444151457078"], ["posici\\u00f3n", "1444151461950"], ["para", "1444151464006"], ["ir", "1444151467128"], ["en", "1444151469326"], ["la", "1444151470866"], ["universidad", "1444151474248"]]
13	1	49	2015-10-09 10:53:21.044394+00	2015-10-09 10:53:11.821+00	[["a", "1444387993354"], ["a", "1444387993599"], ["a", "1444387993781"], ["a", "1444387993957"], ["a", "1444387994123"], ["a", "1444387994306"]]
14	1	13	2015-10-09 10:53:23.951215+00	2015-10-09 10:53:16.694+00	[["a", "1444387997403"], ["a", "1444387997584"], ["a", "1444387997765"], ["aa", "1444387997946"], ["a", "1444387998127"], ["a", "1444387998340"]]
15	1	80	2015-10-09 10:53:27.628413+00	2015-10-09 10:53:19.787+00	[["a", "1444388000484"], ["aa", "1444388000691"], ["a", "1444388000886"], ["a", "1444388001085"], ["a", "1444388001272"], ["a", "1444388001457"], ["a", "1444388001811"], ["a", "1444388002007"]]
16	1	36	2015-10-09 10:53:31.656994+00	2015-10-09 10:53:23.931+00	[["a", "1444388004738"], ["a", "1444388004930"], ["a", "1444388005107"], ["a", "1444388005293"], ["a", "1444388005470"], ["a", "1444388005664"], ["a", "1444388005839"], ["a", "1444388006026"]]
17	1	90	2015-10-09 10:53:35.136193+00	2015-10-09 10:53:27.641+00	[["a", "1444388008394"], ["a", "1444388008567"], ["a", "1444388008763"], ["a", "1444388008950"], ["a", "1444388009140"], ["a", "1444388009334"], ["aa", "1444388009529"]]
18	1	68	2015-10-09 10:53:38.752257+00	2015-10-09 10:53:30.814+00	[["aa", "1444388011724"], ["a", "1444388011924"], ["a", "1444388012125"], ["a", "1444388012327"], ["a", "1444388012540"], ["a", "1444388012737"], ["a", "1444388012935"], ["aa", "1444388013145"]]
19	1	22	2015-10-09 10:53:41.797795+00	2015-10-09 10:53:34.566+00	[["aa", "1444388015364"], ["a", "1444388015573"], ["a", "1444388015776"], ["a", "1444388015981"], ["a", "1444388016189"]]
20	1	40	2015-10-09 10:53:44.729407+00	2015-10-09 10:53:37.798+00	[["aa", "1444388018510"], ["a", "1444388018717"], ["a", "1444388018924"], ["a", "1444388019124"]]
21	1	57	2015-10-09 10:53:47.900188+00	2015-10-09 10:53:40.602+00	[["a", "1444388021495"], ["aa", "1444388021699"], ["a", "1444388021898"], ["a", "1444388022098"], ["a", "1444388022300"]]
22	1	66	2015-10-09 10:53:53.469697+00	2015-10-09 10:53:44.394+00	[["a", "1444388025242"], ["aa", "1444388025458"], ["aa", "1444388025846"], ["a", "1444388026059"], ["a", "1444388026237"], ["aa", "1444388026637"], ["a", "1444388027268"], ["a", "1444388027470"], ["a", "1444388027675"], ["a", "1444388027866"]]
23	1	122	2015-10-09 10:53:57.883019+00	2015-10-09 10:53:50.4+00	[["a", "1444388031007"], ["a", "1444388031204"], ["aa", "1444388031413"], ["a", "1444388031628"], ["a", "1444388031842"], ["a", "1444388032051"], ["a", "1444388032263"]]
24	1	93	2015-10-09 10:54:00.999475+00	2015-10-09 10:53:53.792+00	[["a", "1444388034170"], ["a", "1444388034376"], ["a", "1444388034577"], ["a", "1444388034782"], ["a", "1444388034984"], ["a", "1444388035185"], ["a", "1444388035392"]]
25	1	55	2015-10-09 10:54:04.136518+00	2015-10-09 10:53:56.831+00	[["a", "1444388037447"], ["a", "1444388037672"], ["a", "1444388037888"], ["aa", "1444388038105"], ["a", "1444388038311"], ["a", "1444388038513"]]
26	1	128	2015-10-09 10:54:07.420288+00	2015-10-09 10:54:00.01+00	[["a", "1444388040566"], ["a", "1444388040783"], ["aa", "1444388040993"], ["a", "1444388041206"], ["a", "1444388041414"], ["a", "1444388041620"], ["a", "1444388041817"]]
27	1	116	2015-10-09 10:54:10.768231+00	2015-10-09 10:54:03.296+00	[["aa", "1444388043931"], ["a", "1444388044136"], ["a", "1444388044333"], ["a", "1444388044530"], ["a", "1444388044744"], ["a", "1444388044939"], ["a", "1444388045146"]]
28	1	105	2015-10-09 10:54:13.303671+00	2015-10-09 10:54:06.493+00	[["a", "1444388046847"], ["a", "1444388047071"], ["a", "1444388047282"], ["a", "1444388047483"], ["a", "1444388047692"]]
29	1	21	2015-10-09 10:54:16.038773+00	2015-10-09 10:54:09.098+00	[["aa", "1444388049789"], ["a", "1444388050015"], ["a", "1444388050216"], ["a", "1444388050422"]]
30	1	46	2015-10-09 10:54:19.228474+00	2015-10-09 10:54:11.828+00	[["aa", "1444388052531"], ["a", "1444388052751"], ["a", "1444388052965"], ["a", "1444388053183"], ["a", "1444388053617"]]
31	1	25	2015-10-09 10:54:22.723461+00	2015-10-09 10:54:15.08+00	[["aa", "1444388055758"], ["a", "1444388055971"], ["a", "1444388056192"], ["a", "1444388056430"], ["a", "1444388056649"], ["a", "1444388056878"], ["a", "1444388057118"]]
32	1	47	2015-10-09 10:54:25.640464+00	2015-10-09 10:54:18.488+00	[["aa", "1444388059135"], ["a", "1444388059352"], ["a", "1444388059575"], ["a", "1444388059803"], ["a", "1444388060026"]]
33	1	77	2015-10-09 10:54:29.619928+00	2015-10-09 10:54:21.643+00	[["aa", "1444388062273"], ["a", "1444388062489"], ["a", "1444388062700"], ["a", "1444388062927"], ["a", "1444388063135"], ["a", "1444388063344"], ["a", "1444388063994"]]
34	1	74	2015-10-09 10:54:33.300723+00	2015-10-09 10:54:25.571+00	[["aa", "1444388066200"], ["a", "1444388066409"], ["a", "1444388066622"], ["a", "1444388066840"], ["a", "1444388067048"], ["a", "1444388067255"], ["a", "1444388067456"], ["a", "1444388067684"]]
35	1	52	2015-10-09 10:54:36.149378+00	2015-10-09 10:54:29.136+00	[["aa", "1444388069706"], ["a", "1444388069931"], ["a", "1444388070143"], ["a", "1444388070338"], ["a", "1444388070539"]]
36	6	6	2015-10-16 16:41:40.017921+00	2015-10-16 16:41:31.144+00	[["a", "1445013694576"], ["a", "1445013694791"], ["a", "1445013695039"], ["a", "1445013695287"], ["a", "1445013695503"]]
37	6	0	2015-10-16 16:41:44.40416+00	2015-10-16 16:41:36.957+00	[["a", "1445013697911"], ["a", "1445013698111"], ["a", "1445013698303"], ["a", "1445013698527"], ["a", "1445013698751"], ["a", "1445013698967"], ["a", "1445013699223"], ["a", "1445013699887"]]
38	7	0	2015-10-16 20:02:25.10252+00	2015-10-16 19:59:24.529+00	[["temas", "1445025582035"], ["juegan", "1445025596491"], ["mucho", "1445025605756"], ["juego", "1445025620932"], ["junto", "1445025655875"], ["antes ", "1445025705545"], ["confiados", "1445025737491"], ["otras", "1445025751171"]]
39	7	1	2015-10-16 20:04:40.449383+00	2015-10-16 20:02:45.453+00	[["viento", "1445025771875"], ["perjudica", "1445025802652"], ["ni\\u00f1os", "1445025869627"], ["nueces", "1445025886523"]]
40	7	4	2015-10-16 20:05:06.386058+00	2015-10-16 20:04:52.189+00	[["limpio", "1445025899803"], ["nunca", "1445025907772"], ["engorda", "1445025912644"]]
41	7	15	2015-10-16 20:09:11.115514+00	2015-10-16 20:05:17.169+00	[["caballo", "1445026120108"], ["necias", "1445026144219"], ["oidos", "1445026149259"], ["sordos", "1445026157227"]]
42	7	17	2015-10-16 20:10:20.036453+00	2015-10-16 20:09:21.987+00	[["madruga", "1445026175468"], ["madruga", "1445026209963"], ["Dios", "1445026218427"], ["lo", "1445026221571"], ["ayuda", "1445026226115"]]
43	7	10	2015-10-16 20:11:22.925479+00	2015-10-16 20:10:29.317+00	[["hace", "1445026266180"], ["abarca", "1445026273803"], ["poco", "1445026278339"], ["aprieta", "1445026289043"]]
44	7	73	2015-10-16 20:12:22.925534+00	2015-10-16 20:11:32.635+00	[["que", "1445026302236"], ["hace", "1445026324404"], ["al", "1445026330979"], ["ratones", "1445026349219"]]
45	7	69	2015-10-16 20:13:47.68235+00	2015-10-16 20:12:35.089+00	[["es", "1445026364780"], ["mi", "1445026370924"], ["de", "1445026383108"], ["mis", "1445026390667"], ["gatos", "1445026397811"], ["del", "1445026404595"], ["protagonista", "1445026433787"]]
46	7	57	2015-10-16 20:15:42.298739+00	2015-10-16 20:13:59.505+00	[["que", "1445026448580"], ["sabio", "1445026460891"], ["amigo", "1445026466139"], ["animal", "1445026539771"], ["de", "1445026548419"]]
47	7	93	2015-10-16 20:18:15.30384+00	2015-10-16 20:15:56.513+00	[["escribe", "1445026573022"], ["su", "1445026607635"], ["agenda", "1445026626915"], ["en", "1445026633411"], ["en", "1445026641755"], ["la", "1445026644995"], ["parque", "1445026701443"]]
48	7	28	2015-10-16 20:18:42.197839+00	2015-10-16 20:18:26.727+00	[["la", "1445026712861"], ["no", "1445026717419"], ["hay", "1445026720196"], ["nada", "1445026723147"], ["escrito", "1445026728516"]]
49	7	84	2015-10-16 20:21:02.325472+00	2015-10-16 20:18:52.643+00	[["habla", "1445026761365"], ["levanta", "1445026774499"], ["retirado", "1445026821259"], ["tiempo", "1445026849043"], ["el", "1445026860747"], ["vino", "1445026868475"]]
50	7	44	2015-10-16 20:22:01.85862+00	2015-10-16 20:21:12.869+00	[["se\\u00f1or", "1445026883365"], ["del", "1445026908340"], ["amo", "1445026911915"], ["engorda", "1445026917659"], ["el", "1445026919947"], ["ganado", "1445026928187"]]
51	7	80	2015-10-16 20:23:10.492905+00	2015-10-16 20:22:11.916+00	[["maestro", "1445026950221"], ["del", "1445026956995"], ["aparece", "1445026973787"], ["ve", "1445026978411"], ["con", "1445026985307"], ["de", "1445026988587"], ["la", "1445026991515"], ["lluvia", "1445026996627"]]
52	7	50	2015-10-16 20:31:31.542119+00	2015-10-16 20:23:20.947+00	[["es", "1445027084789"], ["con", "1445027270011"], ["Grecia", "1445027390867"], ["guerra", "1445027401812"], ["de", "1445027408491"], ["los", "1445027497699"]]
53	7	106	2015-10-16 20:32:10.842503+00	2015-10-16 20:31:45.655+00	[["sale", "1445027511156"], ["una", "1445027516357"], ["para", "1445027525851"], ["los", "1445027531379"], ["amigos", "1445027537203"]]
54	7	61	2015-10-16 20:33:22.207604+00	2015-10-16 20:32:20.941+00	[["tanta", "1445027549028"], ["imagen", "1445027560733"], ["siempre", "1445027568676"], ["siempre", "1445027586611"], ["su", "1445027601643"], ["due\\u00f1o", "1445027608371"]]
55	7	38	2015-10-16 20:34:21.478669+00	2015-10-16 20:33:36.436+00	[["va", "1445027621884"], ["el", "1445027625053"], ["c\\u00e1ntaro", "1445027630213"], ["a ", "1445027635963"], ["la", "1445027643747"], ["fuente", "1445027647675"], ["que", "1445027651699"], ["se", "1445027653571"], ["final", "1445027662931"], ["se", "1445027664747"], ["rompe", "1445027667827"]]
56	7	79	2015-10-16 20:35:25.60546+00	2015-10-16 20:34:31.29+00	[["cortes", "1445027685645"], ["es", "1445027707005"], ["invisible", "1445027710955"], ["a", "1445027724483"], ["los", "1445027727659"], ["ojos", "1445027731787"]]
57	7	32	2015-10-16 20:36:21.32681+00	2015-10-16 20:35:36.568+00	[["bien", "1445027740196"], ["correcto", "1445027745861"], ["te", "1445027753653"], ["digo", "1445027759291"], ["y", "1445027768427"], ["no", "1445027774035"], ["lo", "1445027776795"], ["que", "1445027780219"], ["yo", "1445027784547"], ["hago", "1445027787683"]]
58	7	118	2015-10-16 20:38:58.239969+00	2015-10-16 20:36:32.068+00	[["la", "1445027795764"], ["funci\\u00f3n", "1445027804909"], ["cantan", "1445027824347"], ["salen", "1445027870123"], ["pasean", "1445027893052"], ["a", "1445027919811"], ["pasear", "1445027944427"]]
59	7	90	2015-10-16 20:40:57.946455+00	2015-10-16 20:39:10.416+00	[["boca", "1445027965613"], ["casa", "1445027976173"], ["de", "1445027980131"], ["Juan", "1445027996635"], ["hay", "1445028007245"], ["hay", "1445028047691"], ["Internet", "1445028064083"]]
60	7	35	2015-10-16 20:41:23.073159+00	2015-10-16 20:41:13.717+00	[["que", "1445028078460"], ["que", "1445028082021"], ["mal", "1445028084371"], ["acompa\\u00f1ado", "1445028089453"]]
61	7	70	2015-10-16 21:13:07.762912+00	2015-10-16 20:41:32.782+00	[["escuela", "1445028105533"], ["H\\u00fameda", "1445028115403"], ["el ", "1445028127126"], ["omb\\u00fa", "1445028135531"], ["y", "1445028150547"], ["la", "1445028156059"], ["la", "1445029977557"], ["la", "1445029988973"], ["cordillera", "1445029994028"]]
62	7	108	2015-10-16 21:14:48.985423+00	2015-10-16 21:13:17.929+00	[["que", "1445030008422"], ["son", "1445030018989"], ["llaman", "1445030034660"], ["a", "1445030047892"], ["auto", "1445030085988"], ["torneo", "1445030095284"]]
63	7	76	2015-10-16 21:15:48.655481+00	2015-10-16 21:14:59.647+00	[["que", "1445030107653"], ["comentar", "1445030121285"], ["y", "1445030141420"], ["m\\u00e1s", "1445030148276"], ["cosas", "1445030155100"]]
64	7	99	2015-10-16 21:18:43.669052+00	2015-10-16 21:15:58.833+00	[["sale", "1445030168063"], ["la", "1445030185780"], ["club", "1445030208796"], ["pasado", "1445030216732"], ["a", "1445030302252"], ["su", "1445030306412"], ["compa\\u00f1eros", "1445030316372"], ["de", "1445030320076"], ["su", "1445030329964"]]
65	7	110	2015-10-16 21:19:48.667524+00	2015-10-16 21:18:55.181+00	[["va", "1445030339316"], ["que", "1445030346205"], ["salir", "1445030353973"], ["que", "1445030362884"], ["al", "1445030365812"], ["final", "1445030369524"], ["lo", "1445030372132"], ["cumpli\\u00f3", "1445030380764"], ["aprobaron", "1445030394948"]]
66	7	88	2015-10-16 21:20:29.615885+00	2015-10-16 21:19:59.244+00	[["hermanos", "1445030413694"], ["son", "1445030422701"], ["son", "1445030426940"], ["en", "1445030432788"], ["Dios", "1445030436108"]]
67	7	86	2015-10-16 21:21:05.976175+00	2015-10-16 21:20:39.908+00	[["siempre", "1445030447093"], ["la", "1445030450549"], ["la", "1445030456204"], ["mujer", "1445030461292"], ["de", "1445030463908"], ["tu", "1445030465892"], ["pr\\u00f3jimo", "1445030472276"]]
68	7	65	2015-10-16 21:25:29.325774+00	2015-10-16 21:21:37.932+00	[["persona", "1445030508285"], ["no", "1445030513821"], ["ser", "1445030517148"], ["Shakespeare", "1445030702180"], ["obra", "1445030727444"], ["la", "1445030732140"], ["obra", "1445030735644"]]
69	7	68	2015-10-16 21:26:41.574068+00	2015-10-16 21:25:45.041+00	[["el", "1445030778142"], ["pan", "1445030781532"], ["con", "1445030784309"], ["el", "1445030787748"], ["sudor de", "1445030796647"], ["de", "1445030801516"], ["tu", "1445030803364"], ["frente", "1445030807900"]]
70	7	21	2015-10-16 21:27:04.630495+00	2015-10-16 21:26:50.564+00	[["solo", "1445030818694"], ["vale", "1445030824894"], ["por", "1445030828204"], ["dos", "1445030831148"]]
203	8	94	2015-10-16 23:19:08.893181+00	2015-10-16 23:18:10.53+00	[["fue", "1445037499385"], ["a", "1445037504280"], ["a", "1445037509383"], ["tiempoi", "1445037515503"], ["desde", "1445037521223"], ["futbol", "1445037530541"]]
71	7	39	2015-10-16 21:28:39.998096+00	2015-10-16 21:27:13.923+00	[["a", "1445030863054"], ["mona", "1445030908085"], ["se", "1445030911004"], ["viste", "1445030914668"], ["de", "1445030918708"], ["seda", "1445030920700"], ["mona", "1445030924668"], ["se", "1445030926300"]]
72	7	20	2015-10-16 21:29:06.429871+00	2015-10-16 21:28:53.508+00	[["bien", "1445030939157"], ["bien", "1445030944606"], ["y", "1445030947668"], ["no", "1445030949118"], ["mires", "1445030951908"], ["a", "1445030952964"]]
73	7	49	2015-10-16 21:30:33.569073+00	2015-10-16 21:29:17.906+00	[["hay", "1445030970614"], ["sitio", "1445030983052"], ["mirar", "1445031009492"], ["peras", "1445031032908"], ["al", "1445031035796"], ["olmo", "1445031039916"]]
74	7	124	2015-10-16 21:32:23.072476+00	2015-10-16 21:30:43.306+00	[["boca", "1445031052534"], ["boca", "1445031061158"], ["hay", "1445031084132"], ["habra", "1445031106524"], ["cosas", "1445031117668"], ["ricas", "1445031125596"], ["sanas", "1445031149388"]]
75	7	116	2015-10-16 21:33:13.155072+00	2015-10-16 21:32:33.228+00	[["d\\u00eda", "1445031159622"], ["sera", "1445031171758"], ["de", "1445031176780"], ["vacaciones", "1445031183596"], ["a", "1445031190932"], ["la", "1445031194036"], ["playa", "1445031199684"]]
76	7	119	2015-10-16 21:34:27.649418+00	2015-10-16 21:33:22.638+00	[["se\\u00f1or", "1445031209654"], ["es", "1445031228726"], ["un", "1445031232436"], ["metal", "1445031237084"], ["brilloso", "1445031258292"], ["noble", "1445031274004"]]
77	7	112	2015-10-16 21:36:37.384405+00	2015-10-16 21:34:38.56+00	[["animales", "1445031299718"], ["van", "1445031307836"], ["van", "1445031316844"], ["con", "1445031329045"], ["vieron", "1445031336660"], ["el", "1445031344060"], ["la", "1445031385556"], ["perros", "1445031403740"]]
78	7	114	2015-10-16 21:39:24.313471+00	2015-10-16 21:36:51.515+00	[["maestros", "1445031470598"], ["son", "1445031477085"], ["Pedro", "1445031487900"], ["son", "1445031498044"], ["en ", "1445031530135"], ["el", "1445031549340"], ["vacaciones", "1445031570669"]]
79	7	59	2015-10-16 21:42:01.358666+00	2015-10-16 21:39:34.051+00	[["tres", "1445031588750"], ["uno", "1445031594254"], ["de", "1445031598196"], ["los", "1445031709469"], ["mosqueteros", "1445031719197"], ["mosqueteros", "1445031727716"]]
80	7	58	2015-10-16 21:42:54.91565+00	2015-10-16 21:42:13.944+00	[["padre", "1445031745478"], ["es", "1445031757070"], ["el", "1445031762405"], ["hueso", "1445031767013"], ["en", "1445031774316"], ["el", "1445031776925"], ["patio", "1445031781468"]]
81	8	0	2015-10-16 21:49:26.718539+00	2015-10-16 21:34:42.285+00	[["objetivos son", "1445032008152"], ["juegan", "1445032034331"], ["de", "1445032052964"], ["juego", "1445032069032"], ["en", "1445032082374"], ["porque", "1445032104169"], ["que", "1445032141087"], ["los", "1445032148338"]]
82	8	1	2015-10-16 21:52:03.097245+00	2015-10-16 21:49:16.521+00	[["tiempo", "1445032262088"], ["ocasion\\u00f3", "1445032271521"], ["viento", "1445032297180"], ["nueces", "1445032304674"]]
83	7	74	2015-10-16 21:52:18.577021+00	2015-10-16 21:43:04.999+00	[["la", "1445031791813"], ["escritorio", "1445031887622"], ["hay", "1445032286077"], ["Juana", "1445032302957"], ["casa", "1445032308381"], ["hacen", "1445032316645"], ["pan", "1445032335037"], ["pan", "1445032344933"]]
84	7	23	2015-10-16 21:53:02.54275+00	2015-10-16 21:52:34.752+00	[["hay", "1445032365086"], ["mucho", "1445032370750"], ["madrugar", "1445032376357"], ["se", "1445032379013"], ["m\\u00e1s", "1445032384317"], ["temprano", "1445032389125"]]
85	8	9	2015-10-16 21:53:15.668925+00	2015-10-16 21:51:51.303+00	[["es", "1445032321440"], ["postul\\u00f3", "1445032335181"], ["el", "1445032344886"], ["tobillo", "1445032349740"], ["izquierdo", "1445032356885"], ["mal", "1445032372912"], ["vez", "1445032377255"]]
86	7	18	2015-10-16 21:53:31.313261+00	2015-10-16 21:53:11.504+00	[["caballo", "1445032398453"], ["regalado", "1445032403718"], ["no", "1445032405837"], ["se", "1445032407197"], ["le", "1445032408605"], ["miran", "1445032412245"], ["los", "1445032414733"], ["dientes", "1445032417709"]]
87	7	51	2015-10-16 21:54:11.024042+00	2015-10-16 21:53:40.556+00	[["casa", "1445032435230"], ["hay", "1445032440165"], ["monta\\u00f1as", "1445032447557"], ["son", "1445032451277"], ["muy", "1445032453973"], ["bajas", "1445032457629"]]
88	7	96	2015-10-16 21:55:45.004638+00	2015-10-16 21:54:21.655+00	[["ventana", "1445032480471"], ["de", "1445032485893"], ["Ines", "1445032500877"], ["es", "1445032509021"], ["garage", "1445032518101"], ["frente", "1445032533925"], ["muy", "1445032538677"], ["bonito", "1445032551389"]]
89	8	50	2015-10-16 21:56:00.27113+00	2015-10-16 21:53:01.451+00	[["fue", "1445032410754"], ["contra", "1445032418980"], ["la", "1445032428209"], ["batalla", "1445032433659"], ["contra", "1445032441543"], ["liberaci\\u00f3n", "1445032541827"]]
90	7	41	2015-10-16 21:56:29.421398+00	2015-10-16 21:55:57.424+00	[["jardin", "1445032562870"], ["salta", "1445032579358"], ["antes", "1445032584373"], ["r\\u00ede", "1445032592405"], ["mejor", "1445032595997"]]
91	7	52	2015-10-16 21:56:53.178897+00	2015-10-16 21:56:39.987+00	[["somos", "1445032605933"], ["que", "1445032609094"], ["conducen", "1445032614821"], ["a", "1445032616709"], ["Roma", "1445032619541"]]
92	8	100	2015-10-16 21:57:05.096055+00	2015-10-16 21:55:48.292+00	[["estudia", "1445032560466"], ["inform\\u00f3", "1445032574026"], ["leer", "1445032582474"], ["con", "1445032589364"], ["con", "1445032595290"], ["m\\u00e9dico", "1445032606682"]]
93	8	119	2015-10-16 21:58:12.713823+00	2015-10-16 21:56:51.563+00	[["padre", "1445032617083"], ["reluce", "1445032639278"], ["un", "1445032650540"], ["metal", "1445032657692"], ["precioso", "1445032662885"], ["estimado", "1445032674330"]]
94	8	65	2015-10-16 21:58:56.727715+00	2015-10-16 21:57:59.185+00	[["o", "1445032686559"], ["no", "1445032689848"], ["ser", "1445032693042"], ["es", "1445032697607"], ["es", "1445032708383"], ["la", "1445032712425"], ["cuesti\\u00f3n", "1445032718525"]]
95	7	46	2015-10-16 21:59:45.012024+00	2015-10-16 21:57:03.236+00	[["fuego", "1445032777486"], ["capitan", "1445032782965"], ["no", "1445032785245"], ["manda", "1445032787709"], ["marinero", "1445032791437"]]
96	8	90	2015-10-16 22:00:03.103719+00	2015-10-16 21:58:43.597+00	[["la", "1445032729915"], ["India", "1445032735689"], ["de", "1445032744355"], ["Amelia", "1445032750328"], ["existe", "1445032762329"], ["hay", "1445032769139"], ["suciedad", "1445032784696"]]
97	7	62	2015-10-16 22:00:19.567833+00	2015-10-16 21:59:54.669+00	[["no", "1445032798389"], ["hay", "1445032800958"], ["camino", "1445032805829"], ["se", "1445032807766"], ["hace", "1445032810157"], ["camino", "1445032813333"], ["al andar", "1445032819536"], ["andar", "1445032826189"]]
98	8	32	2015-10-16 22:01:03.847053+00	2015-10-16 21:59:49.866+00	[["lo", "1445032793788"], ["que", "1445032796693"], ["yo", "1445032799555"], ["digo", "1445032803027"], ["pero", "1445032806189"], ["no", "1445032816151"], ["lo", "1445032818741"], ["que", "1445032821256"], ["hago", "1445032826030"], ["hago", "1445032845447"]]
99	7	81	2015-10-16 22:01:12.383537+00	2015-10-16 22:00:29.113+00	[["hay", "1445032837623"], ["apures", "1445032852415"], ["sin", "1445032857245"], ["vencido", "1445032867061"], ["ni", "1445032870461"], ["a\\u00fan", "1445032875061"], ["vencido", "1445032878805"]]
100	8	96	2015-10-16 22:02:05.63187+00	2015-10-16 22:00:52.019+00	[["ciudad", "1445032859702"], ["de", "1445032864975"], ["Juana", "1445032870174"], ["est\\u00e1", "1445032880920"], ["un", "1445032891329"], ["gran", "1445032894567"], ["muy", "1445032902069"], ["lindo", "1445032907175"]]
101	7	107	2015-10-16 22:02:11.456575+00	2015-10-16 22:01:23.336+00	[["hay", "1445032890069"], ["ellos", "1445032896126"], ["tus", "1445032900158"], ["palabras", "1445032906901"], ["hay", "1445032927701"], ["la", "1445032932685"], ["vida", "1445032938085"]]
102	8	84	2015-10-16 22:03:08.073746+00	2015-10-16 22:01:55.414+00	[["mal", "1445032921834"], ["entrena", "1445032937905"], ["preparado", "1445032945274"], ["un", "1445032956545"], ["con", "1445032962601"], ["tiempo", "1445032969620"]]
103	8	69	2015-10-16 22:04:10.524862+00	2015-10-16 22:02:54.643+00	[["se", "1445032988080"], ["quien", "1445033002344"], ["de", "1445033015307"], ["los", "1445033018328"], ["angeles", "1445033022367"], ["del", "1445033028290"], ["diablo", "1445033032159"]]
104	7	115	2015-10-16 22:04:22.793021+00	2015-10-16 22:02:24.561+00	[["ni\\u00f1o", "1445032964654"], ["de", "1445032969709"], ["Rosa", "1445032981989"], ["trabaja", "1445032995781"], ["amigo", "1445033005029"], ["alumno", "1445033019589"], ["prestigioso", "1445033045789"], ["talentoso", "1445033069221"]]
105	7	30	2015-10-16 22:04:48.894662+00	2015-10-16 22:04:36.459+00	[["digas", "1445033082757"], ["todo", "1445033086862"], ["quien", "1445033092166"], ["pelea", "1445033095509"]]
106	8	124	2015-10-16 22:05:15.936136+00	2015-10-16 22:03:56.974+00	[["la", "1445033043545"], ["vivienda", "1445033049619"], ["hay", "1445033056368"], ["hay", "1445033064398"], ["fiestas", "1445033075488"], ["muy", "1445033092595"], ["elaboradas", "1445033097534"]]
107	7	94	2015-10-16 22:06:32.471192+00	2015-10-16 22:04:59.947+00	[["habla", "1445033110255"], ["el", "1445033114013"], ["el", "1445033135125"], ["sal\\u00f3n", "1445033185837"], ["junto", "1445033192413"], ["f\\u00fatbol", "1445033198909"]]
108	8	76	2015-10-16 22:06:37.218767+00	2015-10-16 22:05:01.84+00	[["que", "1445033105423"], ["arriesgarse", "1445033139734"], ["si", "1445033149627"], ["lo", "1445033160333"], ["situaciones", "1445033178776"]]
109	7	60	2015-10-16 22:07:15.844175+00	2015-10-16 22:06:43.236+00	[["salgas", "1445033220223"], ["cosas", "1445033227349"], ["que", "1445033231565"], ["no", "1445033235693"], ["puedas", "1445033239429"], ["cumplir", "1445033242485"]]
110	7	33	2015-10-16 22:07:37.792392+00	2015-10-16 22:07:26.265+00	[["claras", "1445033251879"], ["buenos", "1445033256157"], ["la", "1445033258933"], ["amistad", "1445033264237"]]
111	8	128	2015-10-16 22:07:46.752047+00	2015-10-16 22:06:22.739+00	[["que", "1445033187706"], ["se", "1445033195981"], ["sin", "1445033209203"], ["favorecerlo", "1445033220551"], ["la", "1445033232132"], ["la", "1445033240354"], ["hermanos", "1445033248337"]]
112	8	19	2015-10-16 22:08:17.686885+00	2015-10-16 22:07:32.582+00	[["vale", "1445033258302"], ["tarde", "1445033262622"], ["en", "1445033266134"], ["mano", "1445033269000"], ["que", "1445033272032"], ["cien", "1445033275451"], ["volando", "1445033279439"]]
113	7	103	2015-10-16 22:08:47.702334+00	2015-10-16 22:07:47.583+00	[["canta", "1445033274221"], ["sale", "1445033281494"], ["quien", "1445033298541"], ["ganar", "1445033325861"], ["el", "1445033329597"], ["problema", "1445033334149"]]
114	7	121	2015-10-16 22:10:15.843904+00	2015-10-16 22:09:05.548+00	[["estudia", "1445033368151"], ["deseos", "1445033376613"], ["claro", "1445033380349"], ["paciencia", "1445033387981"], ["de", "1445033393685"], ["su", "1445033416173"], ["ojos", "1445033422285"]]
115	8	26	2015-10-16 22:10:34.09595+00	2015-10-16 22:08:02.746+00	[["mi", "1445033291653"], ["recreo", "1445033296775"], ["hay", "1445033310811"], ["la", "1445033342957"], ["ciegos", "1445033403034"], ["el", "1445033405888"], ["tuerto", "1445033409738"], ["es", "1445033412856"], ["rey", "1445033415726"]]
116	8	126	2015-10-16 22:11:32.086852+00	2015-10-16 22:10:19.243+00	[["fue", "1445033434089"], ["har\\u00eda", "1445033442461"], ["viajado", "1445033450347"], ["nada", "1445033460619"], ["a", "1445033463824"], ["nadie", "1445033467494"], ["hijos", "1445033473867"]]
117	8	55	2015-10-16 22:12:09.016424+00	2015-10-16 22:11:17.73+00	[["los", "1445033485662"], ["mujeres", "1445033493238"], ["las", "1445033498400"], ["lleva", "1445033501947"], ["el", "1445033505712"], ["viento", "1445033510613"]]
118	7	104	2015-10-16 22:12:10.049011+00	2015-10-16 22:10:25.197+00	[["llam\\u00f3", "1445033441711"], ["sobre", "1445033462829"], ["Pedro", "1445033473693"], ["sobre", "1445033482133"], ["el", "1445033491349"], ["carrera", "1445033536461"]]
119	8	122	2015-10-16 22:14:25.876323+00	2015-10-16 22:11:55.045+00	[["estudio", "1445033529339"], ["lo", "1445033568388"], ["inform\\u00f3", "1445033578472"], ["que", "1445033583714"], ["Pedro", "1445033590834"], ["mucama", "1445033641796"], ["que", "1445033647473"]]
120	8	102	2015-10-16 22:15:31.400954+00	2015-10-16 22:14:12.559+00	[["la", "1445033667310"], ["le", "1445033681008"], ["informaron", "1445033687596"], ["una", "1445033694311"], ["una", "1445033699819"], ["premio", "1445033705316"], ["que", "1445033712980"]]
121	8	116	2015-10-16 22:16:08.240786+00	2015-10-16 22:15:16.204+00	[["mes", "1445033720439"], ["comprar\\u00e9", "1445033728501"], ["de", "1445033732828"], ["vacaciones", "1445033738333"], ["a", "1445033743311"], ["la", "1445033746134"], ["playa", "1445033750024"]]
122	8	22	2015-10-16 22:16:37.705916+00	2015-10-16 22:15:53.651+00	[["este", "1445033765063"], ["cerrada", "1445033770134"], ["no", "1445033772780"], ["entran", "1445033776195"], ["moscas", "1445033779322"]]
123	8	66	2015-10-16 22:17:43.352854+00	2015-10-16 22:16:23.754+00	[["estudio", "1445033793135"], ["come", "1445033800022"], ["libre", "1445033805878"], ["de", "1445033808515"], ["pecado", "1445033811982"], ["que", "1445033814719"], ["tire", "1445033818270"], ["la", "1445033820387"], ["primera", "1445033827520"], ["piedra", "1445033844914"]]
124	8	17	2015-10-16 22:18:27.960542+00	2015-10-16 22:17:29.442+00	[["que", "1445033876545"], ["nace", "1445033879751"], ["Dios", "1445033884089"], ["lo", "1445033886292"], ["ayuda", "1445033889758"]]
125	8	13	2015-10-16 22:19:07.982328+00	2015-10-16 22:18:13.004+00	[["corro", "1445033907313"], ["viento", "1445033915363"], ["no", "1445033920179"], ["hay", "1445033922871"], ["pan", "1445033926119"], ["duro", "1445033929573"]]
126	8	18	2015-10-16 22:19:40.209507+00	2015-10-16 22:18:54.296+00	[["buen", "1445033940840"], ["regalado", "1445033946091"], ["no", "1445033948694"], ["se", "1445033950211"], ["le", "1445033952377"], ["mitra", "1445033955404"], ["los", "1445033958920"], ["dienres", "1445033961994"]]
127	7	101	2015-10-16 22:20:20.476071+00	2015-10-16 22:12:21.011+00	[["la", "1445033546709"], ["hay", "1445033551438"], ["reloj", "1445033997007"], ["es", "1445034001461"], ["h\\u00famedo", "1445034015341"], ["h\\u00famedo", "1445034026933"]]
128	8	60	2015-10-16 22:20:29.281279+00	2015-10-16 22:19:24.338+00	[["ser", "1445033992246"], ["a", "1445033995713"], ["que", "1445033999394"], ["no", "1445034001996"], ["puedas", "1445034006017"], ["cumplir", "1445034010920"]]
129	7	113	2015-10-16 22:21:45.310741+00	2015-10-16 22:20:31.645+00	[["casa", "1445034045951"], ["le", "1445034055477"], ["le", "1445034058797"], ["llaman", "1445034074445"], ["facilmente", "1445034081133"], ["mentiras", "1445034097933"], ["cuento", "1445034106445"], ["cuento", "1445034111789"]]
130	8	78	2015-10-16 22:22:18.089872+00	2015-10-16 22:20:14.065+00	[["est\\u00e1s", "1445034042718"], ["pescado", "1445034076709"], ["haz", "1445034086924"], ["haz", "1445034100886"], ["hagas", "1445034108026"], ["lo", "1445034112884"], ["lo", "1445034116217"], ["mismo", "1445034119679"]]
131	8	52	2015-10-16 22:22:51.059236+00	2015-10-16 22:22:03.418+00	[["los", "1445034128664"], ["meses", "1445034132773"], ["conducen", "1445034138366"], ["a ", "1445034147954"], ["Roma", "1445034152837"]]
132	7	29	2015-10-16 22:28:13.031732+00	2015-10-16 22:21:56.358+00	[["quien", "1445034120679"], ["quien", "1445034125205"], ["andas", "1445034475807"], ["y", "1445034478653"], ["te", "1445034482277"], ["dire", "1445034485694"], ["quien", "1445034489613"], ["eres", "1445034499525"]]
133	8	38	2015-10-16 22:30:03.050586+00	2015-10-16 22:28:39.423+00	[["va", "1445034523720"], ["el", "1445034527892"], ["cantaro", "1445034552933"], ["a", "1445034556133"], ["la", "1445034559477"], ["fuente", "1445034567404"], ["que", "1445034572339"], ["al", "1445034574943"], ["final", "1445034578534"], ["se", "1445034580753"], ["rompe", "1445034584558"]]
134	8	21	2015-10-16 22:30:28.746989+00	2015-10-16 22:29:48.866+00	[["prevenido", "1445034602188"], ["vale", "1445034605442"], ["por", "1445034607998"], ["dos", "1445034610548"]]
135	8	120	2015-10-16 22:31:44.883983+00	2015-10-16 22:30:13.499+00	[["hombres", "1445034625589"], ["del", "1445034640065"], ["repartidor", "1445034667192"], ["est\\u00e1", "1445034674170"], ["nublado", "1445034679101"], ["gris", "1445034686469"]]
136	8	33	2015-10-16 22:32:06.874805+00	2015-10-16 22:31:32.29+00	[["claras", "1445034697219"], ["conservan", "1445034702323"], ["la", "1445034705183"], ["amoistad", "1445034708697"]]
137	8	28	2015-10-16 22:32:43.977028+00	2015-10-16 22:31:51.156+00	[["este", "1445034733615"], ["no", "1445034737025"], ["hay", "1445034739375"], ["nada", "1445034742138"], ["escrito", "1445034745780"]]
138	8	34	2015-10-16 22:33:10.997276+00	2015-10-16 22:32:28.666+00	[["de", "1445034752584"], ["Roma", "1445034756529"], ["el", "1445034759260"], ["burro", "1445034762415"], ["a`parece", "1445034766497"], ["asoma", "1445034772595"]]
139	7	105	2015-10-16 22:33:37.146828+00	2015-10-16 22:29:01.784+00	[["ciudad", "1445034787895"], ["estuvo", "1445034802878"], ["los", "1445034809013"], ["fue", "1445034820598"], ["muy", "1445034823669"]]
140	8	123	2015-10-16 22:33:58.050878+00	2015-10-16 22:32:57.117+00	[["que", "1445034784256"], ["retir\\u00f3", "1445034793615"], ["con", "1445034798258"], ["su", "1445034801675"], ["en", "1445034808009"], ["lunes", "1445034816238"], ["d\\u00eda", "1445034819867"]]
141	7	98	2015-10-16 22:34:39.682041+00	2015-10-16 22:33:48.328+00	[["palabra", "1445034834750"], ["es", "1445034852650"], ["muy", "1445034863893"], ["la", "1445034867902"], ["correcta", "1445034886198"]]
142	8	23	2015-10-16 22:34:43.289467+00	2015-10-16 22:33:42.714+00	[["corras", "1445034837637"], ["mucho", "1445034845699"], ["madrugar", "1445034850767"], ["se", "1445034852720"], ["amanece", "1445034856477"], ["temprano", "1445034864889"]]
143	8	88	2015-10-16 22:35:33.693356+00	2015-10-16 22:34:27.396+00	[["muchachos", "1445034877460"], ["se", "1445034903071"], ["creen", "1445034908519"], ["en", "1445034911432"], ["Dios", "1445034915500"]]
144	7	67	2015-10-16 22:35:58.442503+00	2015-10-16 22:34:50.087+00	[["joven", "1445034908111"], ["est\\u00e1", "1445034917815"], ["un", "1445034929693"], ["de", "1445034934870"], ["misiones", "1445034942878"], ["provincia", "1445034964974"]]
145	8	20	2015-10-16 22:36:01.626477+00	2015-10-16 22:35:18.098+00	[["bien", "1445034921951"], ["bien", "1445034925983"], ["sin", "1445034929360"], ["mirar", "1445034936564"], ["a", "1445034938557"], ["quien", "1445034943238"]]
146	8	83	2015-10-16 22:36:33.066938+00	2015-10-16 22:35:45.533+00	[["que", "1445034949602"], ["perjudica", "1445034956884"], ["mal", "1445034961772"], ["para", "1445034969050"], ["la", "1445034971654"], ["salud", "1445034974868"]]
147	7	83	2015-10-16 22:36:56.089241+00	2015-10-16 22:36:07.79+00	[["d\\u00eda", "1445034989775"], ["perjudica", "1445034995846"], ["malo", "1445035009838"], ["para", "1445035014766"], ["la", "1445035017902"], ["salud", "1445035022790"]]
148	8	16	2015-10-16 22:36:58.527218+00	2015-10-16 22:36:17.937+00	[["que", "1445034981148"], ["no", "1445034984042"], ["ven", "1445034986564"], ["coraz\\u00f3n", "1445034991939"], ["que", "1445034994701"], ["no", "1445034996830"], ["siente", "1445035000340"]]
149	8	10	2015-10-16 22:37:24.295054+00	2015-10-16 22:36:42.44+00	[["mal", "1445035007402"], ["abarca", "1445035018143"], ["poco", "1445035021310"], ["aprieta", "1445035025896"]]
150	7	19	2015-10-16 22:37:25.487679+00	2015-10-16 22:37:06.512+00	[["vale", "1445035032143"], ["p\\u00e1jaro", "1445035037888"], ["en", "1445035039862"], ["mano", "1445035042582"], ["que", "1445035045958"], ["cien", "1445035047854"], ["volando", "1445035052174"]]
151	8	73	2015-10-16 22:38:03.02509+00	2015-10-16 22:37:08.155+00	[["que", "1445035032093"], ["con", "1445035051773"], ["un", "1445035057401"], ["ratones", "1445035064811"]]
152	8	37	2015-10-16 22:39:19.985307+00	2015-10-16 22:37:47.371+00	[["que", "1445035072919"], ["mal", "1445035076034"], ["ido", "1445035125711"], ["mata", "1445035130210"], ["a", "1445035132125"], ["hierro", "1445035137093"], ["muere", "1445035141613"]]
153	8	57	2015-10-16 22:40:08.173663+00	2015-10-16 22:39:04.41+00	[["hombre", "1445035159459"], ["que", "1445035176362"], ["un", "1445035183508"], ["animal", "1445035187587"], ["de", "1445035189965"]]
154	8	25	2015-10-16 22:40:48.674484+00	2015-10-16 22:39:53.529+00	[["hagas", "1445035207483"], ["mal", "1445035213937"], ["que", "1445035216583"], ["dure", "1445035219745"], ["bien", "1445035224250"], ["no", "1445035227022"], ["venga", "1445035230268"]]
155	8	125	2015-10-16 22:42:12.594024+00	2015-10-16 22:40:32.434+00	[["soldados", "1445035253065"], ["vuelan", "1445035282228"], ["toda", "1445035290334"], ["planta", "1445035299647"], ["de", "1445035304206"], ["fruta", "1445035314205"]]
156	8	114	2015-10-16 22:43:19.732928+00	2015-10-16 22:41:58.696+00	[["ingleses", "1445035324741"], ["se", "1445035337098"], ["la", "1445035346534"], ["estudian", "1445035353087"], ["en", "1445035357681"], ["las", "1445035372278"], ["vacaciones", "1445035381349"]]
157	7	127	2015-10-16 22:44:17.151221+00	2015-10-16 22:37:35.54+00	[["uno", "1445035060166"], ["con", "1445035069063"], ["pais", "1445035306478"], ["es", "1445035404910"], ["caracteristicas", "1445035421446"], ["cultura", "1445035463678"]]
158	8	95	2015-10-16 22:44:20.292317+00	2015-10-16 22:43:06.14+00	[["mal", "1445035393220"], ["le", "1445035400804"], ["ofrecieron", "1445035415839"], ["la", "1445035420685"], ["pel\\u00edculas", "1445035432653"], ["de", "1445035436154"], ["s\\u00e1bados", "1445035441879"]]
159	8	29	2015-10-16 22:45:10.382943+00	2015-10-16 22:44:05.913+00	[["con", "1445035449417"], ["quien", "1445035453920"], ["andas", "1445035457909"], ["y", "1445035467743"], ["te", "1445035470095"], ["dir\\u00e9", "1445035474939"], ["quien", "1445035485564"], ["eres", "1445035492189"]]
160	7	85	2015-10-16 22:45:11.604555+00	2015-10-16 22:44:38.093+00	[["mi", "1445035482222"], ["trabajo", "1445035498223"], ["est\\u00e1n", "1445035508470"], ["las", "1445035512494"], ["las", "1445035515454"], ["vacas", "1445035518358"]]
161	7	63	2015-10-16 22:45:57.561204+00	2015-10-16 22:45:21.805+00	[["Agustin", "1445035534559"], ["fue", "1445035541390"], ["los", "1445035544302"], ["Andes", "1445035547566"], ["a", "1445035559350"], ["caballo", "1445035564110"]]
162	8	49	2015-10-16 22:46:01.261582+00	2015-10-16 22:44:58.306+00	[["hagas", "1445035511437"], ["lugar", "1445035520799"], ["subestimar", "1445035530376"], ["peras", "1445035536221"], ["al", "1445035539340"], ["olmo", "1445035542900"]]
163	8	93	2015-10-16 22:46:36.198303+00	2015-10-16 22:45:45.86+00	[["fue", "1445035550880"], ["una", "1445035555462"], ["billetera", "1445035559894"], ["y", "1445035563355"], ["y", "1445035567261"], ["la", "1445035572929"], ["parque", "1445035578002"]]
164	8	97	2015-10-16 22:48:51.129601+00	2015-10-16 22:46:21.403+00	[["hizo", "1445035586794"], ["estuvo", "1445035593823"], ["en", "1445035600791"], ["de", "1445035664129"], ["la", "1445035706771"], ["esposa", "1445035712716"]]
165	8	129	2015-10-16 22:50:03.176541+00	2015-10-16 22:48:38.617+00	[["lugar", "1445035725372"], ["pais", "1445035741445"], ["todos", "1445035752597"], ["corte", "1445035761644"], ["fue", "1445035769790"], ["muy", "1445035784788"]]
166	8	43	2015-10-16 22:50:57.315807+00	2015-10-16 22:49:50.245+00	[["te", "1445035812143"], ["es", "1445035818431"], ["que", "1445035828405"], ["reluce", "1445035832727"], ["es", "1445035836108"], ["oro", "1445035839142"]]
167	8	30	2015-10-16 22:51:26.36162+00	2015-10-16 22:50:41.674+00	[["piense", "1445035851802"], ["mal", "1445035859259"], ["quien", "1445035863673"], ["pelea", "1445035867956"]]
168	8	47	2015-10-16 22:52:05.080314+00	2015-10-16 22:51:10.735+00	[["de", "1445035875857"], ["muchos", "1445035880014"], ["consuelo", "1445035884862"], ["de tontos", "1445035898144"], ["tontos", "1445035906881"]]
169	7	53	2015-10-16 22:52:09.558451+00	2015-10-16 22:46:08.207+00	[["la", "1445035572510"], ["hay", "1445035580911"], ["creveza", "1445035589295"], ["muro", "1445035916831"], ["de", "1445035924046"], ["Berlin", "1445035936110"]]
170	8	118	2015-10-16 22:53:08.536898+00	2015-10-16 22:51:50.377+00	[["el", "1445035916419"], ["tormenta", "1445035929162"], ["los", "1445035938908"], ["duermen", "1445035943890"], ["cazan", "1445035951253"], ["a", "1445035960532"], ["cazar", "1445035970111"]]
171	8	113	2015-10-16 22:54:20.711737+00	2015-10-16 22:52:54.387+00	[["quien", "1445035981728"], ["le", "1445035987195"], ["le", "1445035995246"], ["nombraron", "1445036002835"], ["facilmente", "1445036010806"], ["promesas", "1445036022168"], ["cuento", "1445036035561"], ["truco", "1445036042308"]]
172	7	91	2015-10-16 22:57:58.574166+00	2015-10-16 22:52:20.32+00	[["est\\u00e1", "1445036219064"], ["en", "1445036226582"], ["de", "1445036255502"], ["lo", "1445036265294"], ["muy", "1445036279494"], ["queridos", "1445036285142"]]
173	7	126	2015-10-16 22:59:09.016487+00	2015-10-16 22:58:08.771+00	[["sigue", "1445036293872"], ["fue", "1445036307287"], ["experimentado", "1445036317798"], ["caso", "1445036333446"], ["a", "1445036342142"], ["su", "1445036344574"], ["hermanos", "1445036355606"]]
174	7	82	2015-10-16 23:00:15.813931+00	2015-10-16 22:59:20.75+00	[["ahora", "1445036367726"], ["llegamos", "1445036372359"], ["la", "1445036379071"], ["capacidad", "1445036422414"]]
175	7	42	2015-10-16 23:00:46.227687+00	2015-10-16 23:00:26.389+00	[["posible", "1445036434486"], ["preguntar", "1445036446847"], ["que", "1445036450391"], ["curar", "1445036453014"]]
176	7	123	2015-10-16 23:02:18.549852+00	2015-10-16 23:00:56.8+00	[["es", "1445036466448"], ["fue", "1445036481854"], ["con", "1445036485510"], ["sus", "1445036488102"], ["para", "1445036494414"], ["lunes", "1445036530494"], ["con", "1445036545118"]]
177	7	48	2015-10-16 23:02:50.03682+00	2015-10-16 23:02:31.507+00	[["cuervos", "1445036560456"], ["y", "1445036564686"], ["te", "1445036566270"], ["sacar\\u00e1n", "1445036570967"], ["los", "1445036572990"], ["ojos", "1445036576846"]]
178	7	102	2015-10-16 23:03:48.862505+00	2015-10-16 23:03:03.027+00	[["caballo", "1445036589278"], ["le", "1445036596727"], ["preguntaron", "1445036610942"], ["un", "1445036614278"], ["un", "1445036619070"], ["diploma", "1445036627646"], ["nuevo", "1445036635422"]]
179	8	70	2015-10-16 23:04:55.278646+00	2015-10-16 23:00:48.076+00	[["puntualidad", "1445036459486"], ["tiene", "1445036465894"], ["el", "1445036469024"], ["Omb\\u00fa", "1445036474387"], ["y", "1445036491338"], ["la", "1445036510026"], ["argentinos", "1445036592934"], ["el", "1445036624103"], ["nieve", "1445036676891"]]
180	8	82	2015-10-16 23:05:38.45197+00	2015-10-16 23:04:43.757+00	[["el", "1445036689550"], ["hemos", "1445036697307"], ["la", "1445036711879"], ["voz", "1445036720276"]]
181	8	45	2015-10-16 23:06:18.444401+00	2015-10-16 23:05:23.357+00	[["la", "1445036737362"], ["las", "1445036745111"], ["se", "1445036751915"], ["cuecen", "1445036756339"], ["habas", "1445036760115"]]
182	8	92	2015-10-16 23:07:10.933042+00	2015-10-16 23:06:02.434+00	[["lleg\\u00f3", "1445036768731"], ["que", "1445036778359"], ["beca", "1445036784287"], ["para", "1445036788967"], ["estudiar", "1445036793647"], ["en", "1445036799672"], ["la", "1445036801927"], ["Universidad", "1445036812759"]]
183	8	62	2015-10-16 23:07:45.630544+00	2015-10-16 23:06:55.48+00	[["no", "1445036818787"], ["hay", "1445036821468"], ["camino", "1445036827812"], ["se", "1445036831345"], ["hace", "1445036834493"], ["camino", "1445036839727"], ["al", "1445036843284"], ["andar", "1445036847220"]]
184	7	27	2015-10-16 23:08:28.557956+00	2015-10-16 23:03:59.19+00	[["regresar", "1445036664928"], ["madruga", "1445036671350"], ["celeste", "1445036808606"], ["que", "1445036907078"], ["le", "1445036910590"], ["cueste", "1445036915174"]]
185	8	121	2015-10-16 23:08:39.367071+00	2015-10-16 23:07:29.31+00	[["tambi\\u00e9n", "1445036860885"], ["en", "1445036868990"], ["en", "1445036872447"], ["paciencia", "1445036878294"], ["para", "1445036883544"], ["su", "1445036895075"], ["ojos", "1445036901180"]]
186	7	14	2015-10-16 23:09:18.404763+00	2015-10-16 23:08:38.915+00	[["da", "1445036925055"], ["da", "1445036931768"], ["pan", "1445036937184"], ["a", "1445036939446"], ["quien", "1445036944990"], ["no", "1445036952238"], ["tiene", "1445036957142"], ["dientes", "1445036965222"]]
187	8	14	2015-10-16 23:09:29.16665+00	2015-10-16 23:08:23.572+00	[["aprieta", "1445036922769"], ["di\\u00f3", "1445036931216"], ["pan", "1445036935627"], ["al", "1445036938748"], ["que", "1445036941219"], ["no", "1445036944125"], ["tiene", "1445036946412"], ["dientes", "1445036950798"]]
188	8	127	2015-10-16 23:10:26.247841+00	2015-10-16 23:09:15.266+00	[["uno", "1445036960932"], ["con", "1445036969437"], ["mundo", "1445036976187"], ["tiene", "1445036981861"], ["su", "1445036991569"], ["belleza", "1445037008041"]]
189	8	46	2015-10-16 23:10:59.349724+00	2015-10-16 23:10:13.097+00	[["hay", "1445037021226"], ["capit\\u00e1n", "1445037031483"], ["no", "1445037033907"], ["manda", "1445037036601"], ["marinero", "1445037040931"]]
190	8	106	2015-10-16 23:11:27.89817+00	2015-10-16 23:10:45.019+00	[["fue", "1445037049212"], ["con", "1445037055353"], ["para", "1445037061336"], ["todos", "1445037064508"], ["amigos", "1445037069742"]]
191	8	89	2015-10-16 23:12:19.438514+00	2015-10-16 23:11:12.457+00	[["es", "1445037079229"], ["el", "1445037081885"], ["ma\\u00f1ana", "1445037098005"], ["y ma\\u00f1ana", "1445037107986"], ["ma\\u00f1ana", "1445037113692"], ["navidad", "1445037121094"]]
192	8	63	2015-10-16 23:13:01.9543+00	2015-10-16 23:12:04.686+00	[["Juan", "1445037137166"], ["cruz\\u00f3", "1445037145973"], ["los", "1445037150652"], ["Andes", "1445037154898"], ["y", "1445037158752"], ["caballo", "1445037163767"]]
193	8	68	2015-10-16 23:13:40.441634+00	2015-10-16 23:12:48.14+00	[["el", "1445037172272"], ["pan", "1445037174820"], ["con", "1445037181492"], ["el", "1445037183537"], ["sudor", "1445037192587"], ["de", "1445037195192"], ["tu", "1445037198397"], ["frente", "1445037202071"]]
194	7	26	2015-10-16 23:14:14.977701+00	2015-10-16 23:09:41.082+00	[["casa", "1445036995096"], ["campo", "1445037109278"], ["de", "1445037115214"], ["los", "1445037121342"], ["vivos", "1445037126558"], ["el", "1445037148902"], ["turto", "1445037154470"], ["es", "1445037223062"], ["rey", "1445037261590"]]
195	8	58	2015-10-16 23:14:30.778981+00	2015-10-16 23:13:26.244+00	[["que", "1445037218547"], ["fiel", "1445037231859"], ["su", "1445037237142"], ["hueso", "1445037241078"], ["en", "1445037245503"], ["el", "1445037247748"], ["jard\\u00edn", "1445037252605"]]
196	7	54	2015-10-16 23:15:42.410912+00	2015-10-16 23:14:25.506+00	[["es", "1445037270511"], ["la", "1445037327464"], ["guerra", "1445037333494"], ["guerra", "1445037339566"], ["mundial", "1445037348990"]]
197	7	22	2015-10-16 23:16:11.248578+00	2015-10-16 23:15:52.158+00	[["boca", "1445037365816"], ["cerrada", "1445037370336"], ["no", "1445037372215"], ["entran", "1445037374270"], ["moscas", "1445037378070"]]
198	8	67	2015-10-16 23:16:14.201354+00	2015-10-16 23:14:16.563+00	[["que", "1445037261498"], ["amargo", "1445037270497"], ["una", "1445037284249"], ["de", "1445037288960"], ["Am\\u00e9rica", "1445037298983"], ["India", "1445037355807"]]
199	7	36	2015-10-16 23:16:51.458899+00	2015-10-16 23:16:22.514+00	[["que", "1445037387159"], ["sabe", "1445037391606"], ["por", "1445037395398"], ["por", "1445037402406"], ["diablo", "1445037407694"], ["que", "1445037411526"], ["por", "1445037414110"], ["diablo", "1445037418086"]]
200	8	98	2015-10-16 23:17:37.201622+00	2015-10-16 23:16:00.063+00	[["mujer", "1445037387228"], ["motiv\\u00f3", "1445037399534"], ["con", "1445037416788"], ["imprevisto", "1445037430262"], ["inusual", "1445037438837"]]
201	7	89	2015-10-16 23:17:37.616836+00	2015-10-16 23:17:02.713+00	[["es", "1445037427711"], ["el", "1445037433616"], ["de", "1445037439072"], ["hoy", "1445037452664"], ["noche", "1445037461518"], ["es", "1445037464454"]]
202	8	24	2015-10-16 23:18:23.989357+00	2015-10-16 23:17:22.532+00	[["pienso", "1445037452502"], ["para", "1445037456482"], ["ma\\u00f1ana", "1445037460214"], ["lo", "1445037462379"], ["que", "1445037463934"], ["puedas", "1445037468872"], ["hacer hoy", "1445037481306"], ["hoy", "1445037485816"]]
204	7	125	2015-10-16 23:19:29.768568+00	2015-10-16 23:17:48.761+00	[["hermanos", "1445037475000"], ["hablan", "1445037491974"], ["todo", "1445037516870"], ["lechuga", "1445037529830"], ["y", "1445037541526"], ["lechuga", "1445037576398"]]
205	8	41	2015-10-16 23:19:45.751553+00	2015-10-16 23:18:54.377+00	[["que", "1445037543318"], ["mal", "1445037549773"], ["\\u00faltimo", "1445037556529"], ["rie", "1445037563852"], ["primero", "1445037567583"]]
206	7	111	2015-10-16 23:20:11.498714+00	2015-10-16 23:19:40.463+00	[["se\\u00f1or", "1445037585416"], ["se", "1445037597488"], ["magia", "1445037605302"], ["con", "1445037612542"], ["palomas", "1445037618326"]]
207	8	51	2015-10-16 23:20:33.757946+00	2015-10-16 23:19:33.784+00	[["algunos", "1445037579668"], ["viven", "1445037595230"], ["focas", "1445037603774"], ["son", "1445037608928"], ["muy", "1445037612000"], ["bajas", "1445037615372"]]
208	7	75	2015-10-16 23:21:03.292936+00	2015-10-16 23:20:28.927+00	[["alumnos", "1445037640624"], ["Magos", "1445037645806"], ["traen", "1445037652358"], ["regalos", "1445037657145"], ["en", "1445037663790"], ["los", "1445037666278"], ["ni\\u00f1os", "1445037669950"]]
209	7	16	2015-10-16 23:21:38.304696+00	2015-10-16 23:21:13.765+00	[["que", "1445037678103"], ["no", "1445037679986"], ["ven", "1445037681694"], ["coraz\\u00f3n", "1445037686416"], ["que", "1445037688646"], ["no siente", "1445037696617"], ["siente", "1445037705150"]]
210	8	105	2015-10-16 23:21:43.495908+00	2015-10-16 23:20:18.758+00	[["mejor", "1445037632757"], ["fue", "1445037662729"], ["momentos", "1445037669141"], ["fue", "1445037675727"], ["para", "1445037685145"]]
211	8	12	2015-10-16 23:22:17.58742+00	2015-10-16 23:21:29.791+00	[["regresar", "1445037695760"], ["se", "1445037708828"], ["buena", "1445037716573"], ["cara", "1445037719397"]]
212	7	37	2015-10-16 23:22:20.185293+00	2015-10-16 23:21:47.771+00	[["ni\\u00f1o", "1445037716048"], ["salta", "1445037724488"], ["hierro", "1445037733087"], ["mata", "1445037737270"], ["a", "1445037739606"], ["hierro", "1445037743374"], ["muere", "1445037746806"]]
213	8	44	2015-10-16 23:22:51.916526+00	2015-10-16 23:22:01.643+00	[["mejor", "1445037736382"], ["del", "1445037741359"], ["amo", "1445037744346"], ["engorda", "1445037748079"], ["el", "1445037750500"], ["ganado", "1445037753574"]]
214	8	115	2015-10-16 23:23:46.175222+00	2015-10-16 23:22:35.491+00	[["que", "1445037764581"], ["de", "1445037769222"], ["Juan", "1445037772351"], ["fue", "1445037776892"], ["el", "1445037782522"], ["granadero", "1445037791841"], ["del", "1445037798989"], ["famoso", "1445037808004"]]
215	8	74	2015-10-16 23:24:58.225128+00	2015-10-16 23:23:30.75+00	[["ocasiones", "1445037816582"], ["mar", "1445037821819"], ["todo", "1445037828934"], ["barro", "1445037835002"], ["panader\\u00eda", "1445037846180"], ["cuecen", "1445037863288"], ["lechones", "1445037875685"], ["pan", "1445037879853"]]
216	7	77	2015-10-16 23:25:21.1121+00	2015-10-16 23:22:29.914+00	[["que", "1445037754703"], ["late", "1445037769536"], ["un", "1445037774086"], ["m\\u00fasculo", "1445037778751"], ["que", "1445037916815"], ["impulsa", "1445037924654"], ["la", "1445037927759"]]
217	7	100	2015-10-16 23:26:00.726483+00	2015-10-16 23:25:33.026+00	[["est\\u00e1", "1445037938039"], ["trae", "1445037947072"], ["a", "1445037954952"], ["a", "1445037958103"], ["a", "1445037961735"], ["m\\u00e9dico", "1445037967591"]]
218	8	112	2015-10-16 23:26:55.397984+00	2015-10-16 23:24:42.319+00	[["hbitantes", "1445037904720"], ["son", "1445037913519"], ["crian", "1445037923924"], ["por", "1445037930730"], ["la", "1445037951529"], ["el", "1445037968307"], ["la", "1445037987120"], ["ladrones", "1445037997036"]]
219	8	87	2015-10-16 23:27:56.063313+00	2015-10-16 23:26:40.842+00	[["abejas", "1445038008299"], ["se", "1445038022038"], ["deben", "1445038027459"], ["cuando", "1445038035031"], ["o ", "1445038047371"], ["no", "1445038051676"], ["se", "1445038053792"], ["hacen", "1445038057694"]]
220	7	71	2015-10-16 23:27:58.564274+00	2015-10-16 23:26:11.42+00	[["palabras", "1445037987416"], ["le", "1445037991767"], ["creci\\u00f3", "1445037997830"], ["la", "1445038000815"], ["nariz", "1445038003918"], ["en", "1445038072223"], ["vez", "1445038078335"], ["que", "1445038081223"], ["ment\\u00eda", "1445038085199"]]
221	8	40	2015-10-16 23:28:27.124121+00	2015-10-16 23:27:40.725+00	[["todos", "1445038070566"], ["entendedor", "1445038078451"], ["pocas", "1445038083951"], ["palabras", "1445038088973"]]
222	7	40	2015-10-16 23:28:28.314824+00	2015-10-16 23:28:12.672+00	[["palabras", "1445038102616"], ["entendedor", "1445038109432"], ["pocas", "1445038111903"], ["palabras", "1445038115167"]]
223	7	87	2015-10-16 23:29:09.524229+00	2015-10-16 23:28:38.323+00	[["flores", "1445038126280"], ["por", "1445038129967"], ["llaman", "1445038136711"], ["bien", "1445038146591"], ["o", "1445038149183"], ["no", "1445038151071"], ["se", "1445038153039"], ["hacen", "1445038156183"]]
224	8	109	2015-10-16 23:29:41.773706+00	2015-10-16 23:28:12.943+00	[["gratitud", "1445038104496"], ["de", "1445038115071"], ["abeja", "1445038119836"], ["ara\\u00f1as", "1445038130629"], ["son", "1445038136129"], ["ocasionar", "1445038157538"], ["mortal", "1445038163389"]]
225	7	13	2015-10-16 23:29:55.761678+00	2015-10-16 23:29:19.819+00	[["el", "1445038164007"], ["voluntad", "1445038174384"], ["todo", "1445038192712"], ["hay", "1445038196399"], ["pan", "1445038198975"], ["duro", "1445038202599"]]
226	8	77	2015-10-16 23:30:59.456001+00	2015-10-16 23:29:26.321+00	[["que", "1445038179382"], ["late", "1445038186744"], ["un", "1445038193975"], ["organo", "1445038199910"], ["que", "1445038225536"], ["hace", "1445038236758"], ["la", "1445038241095"]]
227	7	78	2015-10-16 23:32:00.09324+00	2015-10-16 23:30:05.35+00	[["los", "1445038209439"], ["pescado", "1445038223800"], ["positivos", "1445038263135"], ["averigua", "1445038306455"], ["dejes", "1445038312871"], ["cosas", "1445038319959"], ["lo", "1445038323647"], ["mismo", "1445038326783"]]
228	7	128	2015-10-16 23:33:31.736243+00	2015-10-16 23:32:14.004+00	[["que", "1445038339191"], ["es", "1445038357984"], ["a", "1445038365639"], ["marcarme", "1445038388095"], ["a", "1445038398959"], ["los", "1445038410351"], ["enemigos", "1445038418431"]]
229	7	24	2015-10-16 23:34:06.002764+00	2015-10-16 23:33:45.043+00	[["sigas", "1445038430503"], ["de", "1445038434408"], ["ma\\u00f1ana", "1445038441216"], ["lo", "1445038443159"], ["que", "1445038444799"], ["puedes", "1445038447911"], ["hacer", "1445038449751"], ["hoy", "1445038452847"]]
230	7	95	2015-10-16 23:35:05.37845+00	2015-10-16 23:34:16.856+00	[["palabras", "1445038468328"], ["le", "1445038474151"], ["avisaron", "1445038477959"], ["viajar", "1445038488215"], ["peliculas", "1445038493439"], ["de", "1445038498175"], ["s\\u00e1bados", "1445038512063"]]
231	7	43	2015-10-16 23:35:31.463262+00	2015-10-16 23:35:17.52+00	[["dejes", "1445038527648"], ["lo", "1445038529967"], ["que", "1445038531480"], ["reluce", "1445038534432"], ["es", "1445038535519"], ["oro", "1445038538335"]]
232	7	117	2015-10-16 23:36:38.307471+00	2015-10-16 23:35:41.496+00	[["ma\\u00f1ana", "1445038547127"], ["se", "1445038554016"], ["Juan", "1445038567247"], ["es", "1445038581735"], ["muy", "1445038585023"], ["mujer", "1445038595207"], ["buena", "1445038601263"], ["cocinera", "1445038604943"]]
233	7	66	2015-10-16 23:37:39.368837+00	2015-10-16 23:36:49.877+00	[["que", "1445038618151"], ["por", "1445038633664"], ["libre", "1445038645375"], ["de", "1445038647767"], ["pecado", "1445038652207"], ["que", "1445038654431"], ["tire", "1445038656807"], ["la", "1445038658711"], ["primera", "1445038661415"], ["piedra", "1445038666039"]]
234	7	64	2015-10-16 23:38:20.080356+00	2015-10-16 23:37:51.24+00	[["buen", "1445038677167"], ["y", "1445038680984"], ["Remo", "1445038684327"], ["Remo", "1445038689448"], ["los", "1445038693567"], ["amamanto", "1445038700159"], ["una", "1445038703311"], ["loba", "1445038706975"]]
562	11	10	2015-10-17 23:57:27.235441+00	2015-10-17 23:56:52.826+00	[["mal", "1445126217675"], ["abarca", "1445126227103"], ["poco", "1445126232211"], ["aprieta", "1445126238942"]]
235	7	72	2015-10-16 23:40:13.574551+00	2015-10-16 23:38:31.654+00	[["que", "1445038716424"], ["de", "1445038720008"], ["fue", "1445038736751"], ["la", "1445038740327"], ["reyes", "1445038746879"], ["del", "1445038750655"], ["e", "1445038797799"], ["Espa\\u00f1a", "1445038805927"], ["fueron", "1445038820248"]]
236	7	31	2015-10-16 23:40:46.171283+00	2015-10-16 23:40:24.787+00	[["que", "1445038834360"], ["no", "1445038839887"], ["has", "1445038841400"], ["de", "1445038843311"], ["beber", "1445038846127"], ["d\\u00e9jala", "1445038850807"], ["correr", "1445038853047"]]
237	8	110	2015-10-16 23:42:36.588973+00	2015-10-16 23:40:56.067+00	[["tienes", "1445038870633"], ["que", "1445038881638"], ["ella", "1445038890864"], ["que", "1445038895459"], ["logr\\u00f3", "1445038904168"], ["final", "1445038913840"], ["lo", "1445038916433"], ["hizo", "1445038925406"], ["compr\\u00f3", "1445038938226"]]
238	8	91	2015-10-16 23:43:45.267848+00	2015-10-16 23:42:21.504+00	[["fue", "1445038946855"], ["un", "1445038951874"], ["que", "1445038957772"], ["lo", "1445038967248"], ["iguales", "1445038998107"], ["compa\\u00f1eros", "1445039006941"]]
239	8	80	2015-10-16 23:44:42.107677+00	2015-10-16 23:43:29.95+00	[["nunca", "1445039014484"], ["se", "1445039020069"], ["sobresale", "1445039032981"], ["forma", "1445039038217"], ["con", "1445039041953"], ["de", "1445039045459"], ["llover", "1445039055120"], ["lluvia", "1445039063958"]]
240	8	31	2015-10-16 23:45:11.60614+00	2015-10-16 23:44:27.17+00	[["que", "1445039071326"], ["no", "1445039074223"], ["has", "1445039076903"], ["de", "1445039079337"], ["tomar", "1445039083193"], ["dejale", "1445039089338"], ["correr", "1445039093239"]]
241	8	86	2015-10-16 23:45:50.845131+00	2015-10-16 23:44:57.665+00	[["hace", "1445039106273"], ["a", "1445039113423"], ["la", "1445039116677"], ["mujer", "1445039120355"], ["de", "1445039123216"], ["tu", "1445039126562"], ["pr\\u00f3jimo", "1445039132712"]]
242	8	107	2015-10-16 23:47:01.912432+00	2015-10-16 23:45:35.901+00	[["dudes", "1445039145146"], ["al", "1445039160131"], ["las", "1445039165892"], ["palabras", "1445039170838"], ["de", "1445039179205"], ["la", "1445039199133"], ["empresa", "1445039203551"]]
243	7	34	2015-10-16 23:47:21.183571+00	2015-10-16 23:40:56.278+00	[["la", "1445038862135"], ["roma", "1445038879888"], ["el", "1445038929215"], ["burro", "1445039211415"], ["se", "1445039213679"], ["asoma", "1445039247895"]]
244	7	11	2015-10-16 23:47:50.13435+00	2015-10-16 23:47:36.059+00	[["boca", "1445039260847"], ["de", "1445039265656"], ["herrero", "1445039269999"], ["cuchillo", "1445039273488"], ["de", "1445039275151"], ["palo", "1445039277023"]]
245	7	120	2015-10-16 23:48:56.735077+00	2015-10-16 23:47:59.942+00	[["son", "1445039283759"], ["est\\u00e1n", "1445039296600"], ["tiempo", "1445039326607"], ["est\\u00e1", "1445039331935"], ["nublado", "1445039338087"], ["nublado", "1445039343463"]]
246	7	56	2015-10-16 23:49:24.132605+00	2015-10-16 23:49:08.864+00	[["personas", "1445039353968"], ["tratar", "1445039360863"], ["antes", "1445039365976"], ["de", "1445039368160"], ["hablar", "1445039371031"]]
247	8	59	2015-10-16 23:49:34.96386+00	2015-10-16 23:46:47.035+00	[["es", "1445039268513"], ["un", "1445039276267"], ["de", "1445039284848"], ["los", "1445039287969"], ["mosqueteros", "1445039348621"], ["mosqueteros", "1445039356637"]]
248	8	15	2015-10-16 23:50:55.427484+00	2015-10-16 23:49:23.508+00	[["una", "1445039373620"], ["irrelevantes", "1445039425487"], ["oidos", "1445039432813"], ["sordos", "1445039437051"]]
249	7	109	2015-10-16 23:52:06.108306+00	2015-10-16 23:49:36.038+00	[["casa", "1445039394673"], ["de", "1445039397583"], ["insectos", "1445039402967"], ["ara\\u00f1as", "1445039464287"], ["es", "1445039508991"], ["ser", "1445039527255"], ["peligrosa", "1445039532847"]]
250	8	101	2015-10-16 23:52:19.956484+00	2015-10-16 23:50:41.097+00	[["lugar", "1445039464855"], ["la", "1445039490194"], ["primer", "1445039502182"], ["es", "1445039507827"], ["lluvioso", "1445039515006"], ["lluvioso", "1445039521600"]]
251	7	97	2015-10-16 23:53:41.362754+00	2015-10-16 23:52:22.129+00	[["est\\u00e1", "1445039550881"], ["quiere", "1445039563976"], ["bien", "1445039575847"], ["en", "1445039580655"], ["la", "1445039603927"], ["amigo", "1445039628127"]]
252	8	72	2015-10-16 23:53:49.0865+00	2015-10-16 23:52:05.186+00	[["que", "1445039529313"], ["observa", "1445039541654"], ["salv\\u00f3", "1445039569699"], ["sus", "1445039576234"], ["templarios", "1445039592881"], ["de", "1445039598197"], ["la", "1445039600062"], ["mesa", "1445039602928"], ["redonda", "1445039610732"]]
253	7	25	2015-10-16 23:54:21.9685+00	2015-10-16 23:53:52.633+00	[["digas", "1445039647177"], ["lugar", "1445039654671"], ["que", "1445039657295"], ["por", "1445039660519"], ["bien", "1445039664879"], ["no", "1445039666527"], ["venga", "1445039668919"]]
254	8	53	2015-10-16 23:54:27.504537+00	2015-10-16 23:53:33.316+00	[["alg\\u00fan", "1445039623120"], ["los", "1445039627536"], ["el", "1445039635208"], ["muro", "1445039638671"], ["de\\u00b4", "1445039643388"], ["Berl\\u00edn", "1445039649375"]]
255	7	45	2015-10-16 23:54:54.253876+00	2015-10-16 23:54:33.812+00	[["boca", "1445039681455"], ["las", "1445039689993"], ["se", "1445039694663"], ["cuecen", "1445039698063"], ["habas", "1445039700975"]]
256	8	61	2015-10-16 23:55:27.326167+00	2015-10-16 23:54:11.736+00	[["la", "1445039660597"], ["batalla", "1445039665185"], ["consultar", "1445039688503"], ["con", "1445039694385"], ["quien", "1445039701026"], ["asesor", "1445039708942"]]
257	7	47	2015-10-16 23:55:49.655826+00	2015-10-16 23:55:04.475+00	[["est\\u00e1", "1445039738729"], ["muchos", "1445039748903"], ["consuelo", "1445039752951"], ["de", "1445039754639"], ["pocos", "1445039756583"]]
258	7	12	2015-10-16 23:56:20.105256+00	2015-10-16 23:56:00.036+00	[["que", "1445039766735"], ["de", "1445039777312"], ["buena", "1445039782792"], ["cara", "1445039786847"]]
259	8	75	2015-10-16 23:56:20.730551+00	2015-10-16 23:55:12.019+00	[["mandamientos", "1445039719005"], ["de", "1445039723935"], ["eran", "1445039736206"], ["regalos", "1445039745428"], ["a", "1445039753664"], ["los", "1445039759208"], ["ni\\u00f1os", "1445039762585"]]
260	7	129	2015-10-16 23:57:24.340286+00	2015-10-16 23:56:29.804+00	[["la", "1445039794503"], ["campo", "1445039809095"], ["se", "1445039823127"], ["mujer", "1445039835855"], ["fue", "1445039848799"], ["por", "1445039851079"]]
261	8	81	2015-10-16 23:57:24.783734+00	2015-10-16 23:56:05.247+00	[["tengas", "1445039770987"], ["dejes", "1445039782681"], ["manija", "1445039789929"], ["enterado", "1445039796977"], ["mientras", "1445039803444"], ["te", "1445039815574"], ["vencido", "1445039826443"]]
262	8	11	2015-10-16 23:57:59.023098+00	2015-10-16 23:57:10.267+00	[["la", "1445039836375"], ["no", "1445039841695"], ["herrero", "1445039847583"], ["cuchillo", "1445039854392"], ["de", "1445039856767"], ["palo", "1445039860885"]]
263	8	71	2015-10-16 23:58:46.801695+00	2015-10-16 23:57:45.743+00	[["los", "1445039876750"], ["le", "1445039880519"], ["creci\\u00f3", "1445039885197"], ["la", "1445039887581"], ["nariz", "1445039892991"], ["por", "1445039896117"], ["vez", "1445039902224"], ["que", "1445039904695"], ["ment\\u00eda", "1445039908450"]]
264	7	55	2015-10-16 23:59:06.880185+00	2015-10-16 23:57:54.207+00	[["la", "1445039879136"], ["palabras", "1445039889407"], ["se", "1445039901751"], ["alimenta", "1445039943087"], ["el", "1445039950487"], ["viento", "1445039953631"]]
265	8	85	2015-10-16 23:59:18.794188+00	2015-10-16 23:58:32.096+00	[["cuanto", "1445039917952"], ["lugar", "1445039924489"], ["las", "1445039929475"], ["las", "1445039932758"], ["las", "1445039937269"], ["vacas", "1445039940650"]]
266	8	99	2015-10-17 00:00:15.591139+00	2015-10-16 23:59:03.26+00	[["fue\\u00b4", "1445039950398"], ["a", "1445039954518"], ["lugar", "1445039962228"], ["pasado", "1445039971663"], ["a", "1445039975526"], ["sus", "1445039978162"], ["amigos", "1445039982287"], ["lejanos", "1445039989083"], ["su", "1445039997228"]]
1222	18	35	2016-02-03 17:16:23.816958+00	2016-02-03 17:15:19.135+00	[["..", "1454519719700"], [".", "1454519719900"], [".", "1454519720133"], [".", "1454519720338"]]
267	7	122	2015-10-17 00:00:37.688582+00	2015-10-16 23:59:17.582+00	[["ni\\u00f1o", "1445039963753"], ["manda", "1445039977408"], ["ordena", "1445039983537"], ["hacer", "1445040000319"], ["su", "1445040008735"], ["empleada", "1445040017943"], ["servir", "1445040044391"]]
268	8	104	2015-10-17 00:01:10.475717+00	2015-10-17 00:00:00.997+00	[["con", "1445040022536"], ["del", "1445040028379"], ["ellos", "1445040037953"], ["sobre", "1445040043939"], ["el", "1445040046458"], ["trabajo", "1445040052338"]]
269	7	92	2015-10-17 00:01:35.678506+00	2015-10-17 00:00:51.932+00	[["va", "1445040058024"], ["el", "1445040066489"], ["beca", "1445040078225"], ["en", "1445040082759"], ["estudiar", "1445040088823"], ["en", "1445040094999"], ["la", "1445040097495"], ["universidad", "1445040102639"]]
270	8	54	2015-10-17 00:01:50.906637+00	2015-10-17 00:00:56.174+00	[["ingres\\u00f3", "1445040066124"], ["la", "1445040077164"], ["guerra", "1445040083453"], ["guerra", "1445040088088"], ["mundia\\u00f1l", "1445040092543"]]
271	8	64	2015-10-17 00:02:47.155676+00	2015-10-17 00:01:37.412+00	[["todo", "1445040114345"], ["y", "1445040119332"], ["Remo", "1445040125347"], ["Remo", "1445040133541"], ["los", "1445040137745"], ["aliment\\u00f3", "1445040143674"], ["una", "1445040146533"], ["loba", "1445040149009"]]
272	8	117	2015-10-17 00:03:59.639322+00	2015-10-17 00:02:34.601+00	[["luz", "1445040160531"], ["le", "1445040167724"], ["Pedro", "1445040178080"], ["fue", "1445040186055"], ["maestra", "1445040192289"], ["mujer", "1445040206330"], ["buena", "1445040216986"], ["maestra", "1445040221314"]]
273	8	108	2015-10-17 00:04:47.300118+00	2015-10-17 00:03:45.116+00	[["indigenas", "1445040235653"], ["son", "1445040242458"], ["invitaron", "1445040251595"], ["en", "1445040258320"], ["el", "1445040263871"], ["momento", "1445040269145"]]
274	8	103	2015-10-17 00:05:18.845321+00	2015-10-17 00:04:31.734+00	[["fue", "1445040276513"], ["quiso", "1445040281581"], ["que", "1445040284706"], ["llegar", "1445040291799"], ["el", "1445040296057"], ["problema", "1445040300508"]]
275	8	79	2015-10-17 00:06:00.883189+00	2015-10-17 00:05:03.478+00	[["que", "1445040307226"], ["est\\u00e1", "1445040318966"], ["lo", "1445040333233"], ["a", "1445040336441"], ["los", "1445040338815"], ["ojos", "1445040342718"]]
276	8	36	2015-10-17 00:06:43.736312+00	2015-10-17 00:05:46.616+00	[["que", "1445040350995"], ["sabe", "1445040356094"], ["por", "1445040362122"], ["por", "1445040371228"], ["viejo", "1445040376369"], ["que", "1445040378753"], ["por", "1445040381451"], ["diablo", "1445040385339"]]
277	8	35	2015-10-17 00:07:07.103955+00	2015-10-17 00:06:27.604+00	[["que", "1445040395477"], ["que", "1445040400806"], ["mal", "1445040403111"], ["acompa\\u00f1ado", "1445040408945"]]
278	8	48	2015-10-17 00:07:39.46011+00	2015-10-17 00:06:51.302+00	[["cuervos", "1445040421778"], ["y", "1445040425155"], ["te", "1445040427678"], ["picar\\u00e1n", "1445040433259"], ["los", "1445040437378"], ["ojos", "1445040441319"]]
279	8	42	2015-10-17 00:08:13.684558+00	2015-10-17 00:07:23.29+00	[["una", "1445040451924"], ["hacer", "1445040460905"], ["que curar", "1445040471066"], ["curar", "1445040475320"]]
280	8	56	2015-10-17 00:08:44.392352+00	2015-10-17 00:07:59.37+00	[["una", "1445040485896"], ["hacer", "1445040495477"], ["antes", "1445040500274"], ["de", "1445040502183"], ["hablar", "1445040506248"]]
281	8	27	2015-10-17 00:44:15.150928+00	2015-10-17 00:42:23.716+00	[["panz\\u00f3n", "1445042603964"], ["nace", "1445042615887"], ["celeste", "1445042627241"], ["que", "1445042630227"], ["le", "1445042632563"], ["cueste", "1445042635992"]]
282	8	111	2015-10-17 00:44:50.28134+00	2015-10-17 00:44:00.221+00	[["hombre", "1445042647511"], ["de", "1445042655094"], ["lo", "1445042660858"], ["que", "1445042665483"], ["las", "1445042671291"]]
283	8	39	2015-10-17 00:45:50.912797+00	2015-10-17 00:44:35.387+00	[["vengan", "1445042688630"], ["mala", "1445042698466"], ["se", "1445042702051"], ["vista", "1445042705172"], ["de seda", "1445042718446"], ["seda", "1445042724545"], ["mona", "1445042727707"], ["queda", "1445042731725"]]
284	9	9	2015-10-17 08:56:15.913361+00	2015-10-17 08:53:14.591+00	[["lee historias de viajes", "1445072073423"], ["doctor\\u00f3", "1445072100803"], ["un hombro", "1445072128684"], ["codo derecho", "1445072149101"], ["derecho", "1445072161667"], ["caer", "1445072177119"], ["vez", "1445072183548"]]
285	9	7	2015-10-17 08:57:54.074629+00	2015-10-17 08:56:28.83+00	[["lee", "1445072200953"], ["simp\\u00e1tico", "1445072220151"], ["director", "1445072235607"], ["alumno", "1445072247206"], ["cantante", "1445072265033"], ["comedia", "1445072272452"], ["obra", "1445072284656"]]
286	9	3	2015-10-17 08:58:22.134273+00	2015-10-17 08:58:08.517+00	[["mal", "1445072297540"], ["anda", "1445072304307"], ["mal", "1445072308630"], ["acaba", "1445072314025"]]
287	9	19	2015-10-17 08:59:23.868337+00	2015-10-17 08:58:39.015+00	[["vale", "1445072330641"], ["tarde", "1445072337961"], ["en", "1445072342132"], ["mano ", "1445072353721"], ["que cien ", "1445072364794"], ["cien", "1445072370479"], ["volando", "1445072377057"]]
288	9	40	2015-10-17 09:00:10.992712+00	2015-10-17 08:59:41.275+00	[["mam\\u00e1", "1445072404189"], ["entendedor", "1445072413513"], ["pocas", "1445072418746"], ["palabras", "1445072426011"]]
289	9	102	2015-10-17 09:01:30.610376+00	2015-10-17 09:00:28.224+00	[["caballo", "1445072446002"], ["le", "1445072457869"], ["gusta", "1445072466592"], ["un ", "1445072474584"], ["un ", "1445072489422"], ["diploma", "1445072497054"], ["nuevo", "1445072507378"]]
290	9	76	2015-10-17 09:02:24.667884+00	2015-10-17 09:01:50.606+00	[["prevenir", "1445072522293"], ["molestar", "1445072536861"], ["y", "1445072551267"], ["lo", "1445072557326"], ["cosas", "1445072563448"]]
291	9	93	2015-10-17 09:03:18.745283+00	2015-10-17 09:02:46.917+00	[["sue\\u00f1a", "1445072575961"], ["un", "1445072581305"], ["gruta", "1445072591428"], ["y", "1445072601174"], ["en", "1445072608504"], ["el", "1445072612504"], ["subte", "1445072618620"]]
292	9	72	2015-10-17 09:04:47.96306+00	2015-10-17 09:03:49.938+00	[["ni\\u00f1o", "1445072643169"], ["sue\\u00f1a", "1445072659954"], ["era", "1445072665228"], ["su", "1445072672586"], ["caballeros", "1445072680691"], ["de ", "1445072691617"], ["la", "1445072696028"], ["mesa", "1445072703642"], ["redonda", "1445072710187"]]
293	9	65	2015-10-17 09:05:30.584309+00	2015-10-17 09:05:13.334+00	[["o", "1445072723654"], ["no", "1445072727611"], ["ser", "1445072731524"], ["esa", "1445072736436"], ["es", "1445072739799"], ["la ", "1445072746455"], ["cuesti\\u00f3n", "1445072754565"]]
294	9	115	2015-10-17 09:07:51.425321+00	2015-10-17 09:07:12.148+00	[["suelo", "1445072852343"], ["de", "1445072857527"], ["mi", "1445072860808"], ["es", "1445072872160"], ["mi", "1445072878326"], ["gran", "1445072883526"], ["muy", "1445072889417"], ["prestigioso", "1445072899129"]]
295	9	85	2015-10-17 09:08:41.984609+00	2015-10-17 09:08:23.094+00	[["verano", "1445072915356"], ["verano", "1445072922156"], ["hace", "1445072932242"], ["vacas", "1445072938260"], ["las", "1445072947124"], ["vacas", "1445072951391"]]
296	9	48	2015-10-17 09:09:25.468554+00	2015-10-17 09:09:15.504+00	[["cuervos", "1445072962931"], ["y", "1445072966336"], ["te", "1445072969456"], ["sacar\\u00e1n", "1445072975934"], ["los ojos", "1445072987043"], ["ojos", "1445072995732"]]
297	9	57	2015-10-17 09:10:18.552334+00	2015-10-17 09:09:59.184+00	[["le\\u00f3n", "1445073011893"], ["bueno", "1445073019100"], ["un", "1445073033881"], ["ser", "1445073036968"], ["inteligente", "1445073050724"]]
298	9	11	2015-10-17 09:11:05.807637+00	2015-10-17 09:11:00.371+00	[["Espa\\u00f1a", "1445073070438"], ["se", "1445073080728"], ["mam\\u00e1", "1445073086819"], ["cuchillo", "1445073094496"], ["de", "1445073096858"], ["palo", "1445073099231"]]
299	9	16	2015-10-17 09:11:47.388236+00	2015-10-17 09:11:43.854+00	[["que", "1445073110359"], ["no", "1445073113609"], ["ven", "1445073117598"], ["corazon", "1445073122630"], ["que ", "1445073131437"], ["no", "1445073135954"], ["siente", "1445073141794"]]
300	9	79	2015-10-17 09:12:30.661964+00	2015-10-17 09:12:24.588+00	[["abunda", "1445073152837"], ["es", "1445073160983"], ["invisible", "1445073169879"], ["a", "1445073174415"], ["los", "1445073178692"], ["ojos", "1445073186795"]]
301	9	89	2015-10-17 09:13:18.750131+00	2015-10-17 09:13:11.936+00	[["es", "1445073203919"], ["un", "1445073207385"], ["buena", "1445073219855"], ["y", "1445073223858"], ["ma\\u00f1ana", "1445073228730"], ["Navidad", "1445073235944"]]
302	9	52	2015-10-17 09:13:55.739561+00	2015-10-17 09:13:59.355+00	[["a", "1445073249069"], ["gatos", "1445073258171"], ["conducen", "1445073265322"], ["a", "1445073268434"], ["Roma", "1445073274356"]]
303	9	58	2015-10-17 09:14:39.26191+00	2015-10-17 09:14:38.45+00	[["que", "1445073287194"], ["que", "1445073293379"], ["un", "1445073298763"], ["hueso", "1445073305428"], ["en", "1445073310524"], ["el", "1445073313027"], ["jard\\u00edn", "1445073318702"]]
304	9	73	2015-10-17 09:15:10.789449+00	2015-10-17 09:15:23.117+00	[["gato", "1445073332496"], ["toma", "1445073339192"], ["una", "1445073344451"], ["ratones", "1445073351485"]]
305	9	59	2015-10-17 09:15:57.36497+00	2015-10-17 09:15:55.098+00	[["es", "1445073363563"], ["un", "1445073369707"], ["de", "1445073373908"], ["quien?", "1445073382130"], ["bandidos", "1445073392238"], ["mosqueteros", "1445073399102"]]
306	9	37	2015-10-17 09:16:43.751637+00	2015-10-17 09:16:43.533+00	[["hombre", "1445073413620"], ["madruga", "1445073422233"], ["hierro", "1445073432462"], ["mata", "1445073436137"], ["a", "1445073437842"], ["hierro", "1445073444167"], ["muere", "1445073447302"]]
307	9	39	2015-10-17 09:17:14.845146+00	2015-10-17 09:17:31.107+00	[["la", "1445073457791"], ["mona", "1445073462353"], ["se", "1445073465092"], ["vista", "1445073468799"], ["de", "1445073470122"], ["seda", "1445073472974"], ["mona", "1445073476459"], ["queda", "1445073478990"]]
308	9	26	2015-10-17 09:18:06.068238+00	2015-10-17 09:18:02.442+00	[["Rusia", "1445073498621"], ["paraiso", "1445073508748"], ["de", "1445073513060"], ["los", "1445073515010"], ["ciegos", "1445073521659"], ["el", "1445073525073"], ["tuerto", "1445073528406"], ["es", "1445073529700"], ["rey", "1445073532087"]]
309	9	13	2015-10-17 09:18:34.889588+00	2015-10-17 09:18:55.081+00	[["llueve", "1445073545210"], ["hambre", "1445073551249"], ["no", "1445073554002"], ["hay", "1445073556822"], ["pan", "1445073558574"], ["duro", "1445073561528"]]
310	9	107	2015-10-17 09:19:32.674085+00	2015-10-17 09:19:25.073+00	[["mates", "1445073575521"], ["cien", "1445073580887"], ["las", "1445073585894"], ["consignas", "1445073591961"], ["y", "1445073596506"], ["mi", "1445073607789"], ["construccion", "1445073621454"]]
311	9	78	2015-10-17 09:20:46.078175+00	2015-10-17 09:20:25.281+00	[["canto", "1445073642219"], ["peces", "1445073654768"], ["satisfactorios", "1445073670993"], ["tienes", "1445073677266"], ["tienes", "1445073684772"], ["las", "1445073688310"], ["las", "1445073692188"], ["mismo", "1445073696568"]]
312	9	63	2015-10-17 09:21:26.172709+00	2015-10-17 09:21:40.172+00	[["Expedito", "1445073713451"], ["cruz\\u00f3", "1445073719755"], ["la", "1445073722960"], ["Andes", "1445073729964"], ["en", "1445073733451"], ["caballo", "1445073738358"]]
313	9	51	2015-10-17 09:22:22.777767+00	2015-10-17 09:22:21.904+00	[["casa", "1445073755308"], ["hace", "1445073759697"], ["morzas", "1445073774563"], ["son", "1445073778842"], ["muy", "1445073788035"], ["rigurosas", "1445073796032"]]
314	9	10	2015-10-17 09:23:51.377043+00	2015-10-17 09:24:11.583+00	[["mal", "1445073872538"], ["abarca", "1445073878504"], ["poco", "1445073881671"], ["aprieta", "1445073885775"]]
315	9	95	2015-10-17 09:24:31.353065+00	2015-10-17 09:24:49.137+00	[["caballo", "1445073896999"], ["le", "1445073901216"], ["gusta", "1445073905882"], ["la", "1445073909816"], ["television", "1445073917849"], ["en", "1445073921660"], ["sabados", "1445073927617"]]
316	9	32	2015-10-17 09:25:11.067211+00	2015-10-17 09:25:31.254+00	[["de", "1445073940700"], ["que", "1445073945986"], ["mas", "1445073949928"], ["digo", "1445073955264"], ["mas", "1445073958043"], ["no", "1445073959733"], ["lo", "1445073961104"], ["que", "1445073962908"], ["yo", "1445073965157"], ["hago", "1445073967998"]]
317	9	45	2015-10-17 09:26:24.28488+00	2015-10-17 09:26:43.67+00	[["Espa\\u00f1a", "1445074018521"], ["partes", "1445074029285"], ["se", "1445074032991"], ["cuecen", "1445074037753"], ["habas", "1445074041374"]]
318	9	81	2015-10-17 09:27:15.196255+00	2015-10-17 09:27:25.33+00	[["comas", "1445074062030"], ["arrepientas", "1445074073068"], ["por", "1445074077404"], ["vencido", "1445074082301"], ["a\\u00fan", "1445074085483"], ["vencido", "1445074089159"], ["vencido", "1445074095321"]]
319	9	64	2015-10-17 09:28:00.735008+00	2015-10-17 09:28:19.882+00	[["caballo", "1445074107720"], ["lo", "1445074114467"], ["Remo", "1445074119687"], ["Remo", "1445074126212"], ["los", "1445074129275"], ["amamant\\u00f3", "1445074137212"], ["una", "1445074139951"], ["loba", "1445074141969"]]
320	9	36	2015-10-17 09:28:29.115627+00	2015-10-17 09:29:05.994+00	[["puente", "1445074152482"], ["sabe", "1445074156586"], ["por", "1445074158228"], ["diablo", "1445074161406"], ["pero", "1445074164160"], ["m\\u00e1s", "1445074166686"], ["sabe", "1445074169616"], ["por", "1445074171671"]]
321	9	118	2015-10-17 09:29:25.389242+00	2015-10-17 09:29:42.395+00	[["las", "1445074188740"], ["segunda", "1445074194565"], ["llovi\\u00f3", "1445074203105"], ["insectos", "1445074214788"], ["salen", "1445074222602"], ["a", "1445074225037"], ["cazar", "1445074228920"]]
322	9	42	2015-10-17 09:29:56.960737+00	2015-10-17 09:30:33.102+00	[["primavera", "1445074241599"], ["predecir", "1445074255674"], ["que", "1445074258880"], ["curar", "1445074261908"]]
323	9	126	2015-10-17 09:30:52.713182+00	2015-10-17 09:31:04.967+00	[["Marta", "1445074275064"], ["sabe", "1445074283404"], ["salido", "1445074298849"], ["un", "1445074306179"], ["a", "1445074310496"], ["un", "1445074313026"], ["hijos", "1445074318892"]]
324	9	91	2015-10-17 09:31:38.850059+00	2015-10-17 09:32:02.422+00	[["canta", "1445074330797"], ["una", "1445074336254"], ["aventureros", "1445074347608"], ["saben", "1445074352193"], ["aventureros", "1445074360238"], ["aventureros", "1445074366901"]]
325	9	29	2015-10-17 09:32:12.056791+00	2015-10-17 09:32:50.651+00	[["con", "1445074379529"], ["quien", "1445074384591"], ["andas", "1445074388579"], ["y", "1445074389927"], ["te", "1445074392389"], ["dir\\u00e9", "1445074395845"], ["quien", "1445074398550"], ["eres", "1445074400757"]]
326	9	44	2015-10-17 09:32:43.912146+00	2015-10-17 09:33:24.833+00	[["Papa", "1445074413306"], ["del", "1445074420832"], ["amo", "1445074424492"], ["engorda", "1445074428902"], ["el", "1445074430623"], ["ganado", "1445074434148"]]
327	9	98	2015-10-17 09:33:24.159717+00	2015-10-17 09:33:57.247+00	[["gente", "1445074444885"], ["que", "1445074449978"], ["mal", "1445074461829"], ["manera", "1445074467979"], ["repentina", "1445074474407"]]
328	9	128	2015-10-17 09:34:11.395004+00	2015-10-17 09:34:39.125+00	[["ni\\u00f1o", "1445074489863"], ["de", "1445074494590"], ["a", "1445074499275"], ["jugarle", "1445074503611"], ["a", "1445074509691"], ["los", "1445074512302"], ["enamorados", "1445074517899"]]
329	9	128	2015-10-17 09:34:50.591104+00	2015-10-17 09:35:25.308+00	[["extra\\u00f1o", "1445074536895"], ["volvi\\u00f3", "1445074544774"], ["a", "1445074546654"], ["unir", "1445074556274"], ["a", "1445074558201"], ["los", "1445074560045"], ["amigos", "1445074564378"]]
330	9	104	2015-10-17 09:35:40.776482+00	2015-10-17 09:36:07.338+00	[["era", "1445074575278"], ["de", "1445074582230"], ["entusiasmo", "1445074596565"], ["y", "1445074605120"], ["el", "1445074611500"], ["viaje", "1445074616500"]]
331	9	122	2015-10-17 09:37:26.744264+00	2015-10-17 09:38:13.148+00	[["patr\\u00f3n", "1445074702219"], ["le", "1445074705580"], ["orden\\u00f3", "1445074711963"], ["a", "1445074713778"], ["la", "1445074715868"], ["criada", "1445074719811"], ["callarse", "1445074725160"]]
332	9	83	2015-10-17 09:38:00.794259+00	2015-10-17 09:38:48.034+00	[["patr\\u00f3n", "1445074736332"], ["es", "1445074739589"], ["perjudicial", "1445074746845"], ["para", "1445074749967"], ["la", "1445074751379"], ["salud", "1445074754782"]]
333	9	83	2015-10-17 09:38:32.264335+00	2015-10-17 09:39:21.735+00	[["humo", "1445074776030"], ["es", "1445074779022"], ["perjudicial", "1445074785201"], ["para", "1445074787982"], ["la", "1445074789729"], ["salud", "1445074792488"]]
334	9	30	2015-10-17 09:39:22.668738+00	2015-10-17 09:40:26.864+00	[["est\\u00e1", "1445074833764"], ["muerto", "1445074838388"], ["quien", "1445074841728"], ["pelea", "1445074844508"]]
335	9	74	2015-10-17 09:40:23.798137+00	2015-10-17 09:40:50.415+00	[["casa", "1445074859377"], ["pais", "1445074872291"], ["hay", "1445074880282"], ["barro", "1445074884991"], ["cocina", "1445074890471"], ["se", "1445074895702"], ["pan", "1445074901902"], ["pan", "1445074904931"]]
336	9	28	2015-10-17 09:40:54.862838+00	2015-10-17 09:41:48.618+00	[["llovido", "1445074916482"], ["no", "1445074920709"], ["hay", "1445074923362"], ["nada", "1445074926021"], ["escrito", "1445074930589"]]
337	9	28	2015-10-17 09:41:11.774728+00	2015-10-17 09:42:17.545+00	[["gustos", "1445074945316"], ["no", "1445074948568"], ["hay", "1445074950723"], ["nada", "1445074953497"], ["escrito", "1445074957012"]]
338	10	4	2015-10-17 20:14:06.47795+00	2015-10-17 20:12:50.264+00	[["cerdo, lech\\u00f3n", "1445112810639"], ["aseado", "1445112822858"], ["es malo", "1445112849710"]]
339	10	9	2015-10-17 20:15:26.964406+00	2015-10-17 20:14:16.708+00	[["amigo", "1445112871173"], ["interesa", "1445112886479"], ["tobillo", "1445112899877"], ["pie", "1445112908660"], ["derecho", "1445112915733"], ["jugar", "1445112923949"], ["vez", "1445112930204"]]
340	10	0	2015-10-17 20:17:15.536741+00	2015-10-17 20:15:33.711+00	[["amigos", "1445112941021"], ["estudiosos", "1445112953408"], ["temprano", "1445112965324"], ["d\\u00eda", "1445112972013"], ["alegremente", "1445112988496"], ["tranquilos", "1445113014872"], ["luego", "1445113027956"], ["estudiar", "1445113038768"]]
341	10	84	2015-10-17 20:18:51.152509+00	2015-10-17 20:17:23.825+00	[["quiera", "1445113051510"], ["parezca", "1445113062700"], ["propuesto", "1445113072521"], ["todo", "1445113115333"], ["por", "1445113125529"], ["vino", "1445113134404"]]
342	10	119	2015-10-17 20:19:45.80822+00	2015-10-17 20:18:58.243+00	[["hombre", "1445113147702"], ["metal", "1445113154378"], ["dorado", "1445113165137"], ["metal", "1445113171227"], ["valioso", "1445113182105"], ["valioso", "1445113189270"]]
343	10	111	2015-10-17 20:20:54.34784+00	2015-10-17 20:19:53.558+00	[["universo", "1445113203064"], ["presenta", "1445113211054"], ["magia", "1445113219137"], ["buen\\u00edsimos", "1445113230602"], ["pa\\u00f1uelos", "1445113257605"]]
344	10	81	2015-10-17 20:21:48.5559+00	2015-10-17 20:21:01.491+00	[["consigo", "1445113282509"], ["intereses", "1445113289068"], ["por", "1445113294013"], ["vencido", "1445113298000"], ["ni", "1445113301387"], ["aun", "1445113305738"], ["vencido", "1445113311998"]]
345	10	118	2015-10-17 20:23:05.021999+00	2015-10-17 20:21:56.958+00	[["mi", "1445113330053"], ["ma\\u00f1ana", "1445113337247"], ["estar\\u00e9", "1445113344981"], ["sienten", "1445113355420"], ["maullan", "1445113367630"], ["fuera", "1445113379938"], ["recorrer", "1445113388238"]]
346	10	40	2015-10-17 20:23:39.67474+00	2015-10-17 20:23:13.849+00	[["la", "1445113408069"], ["entendedor", "1445113414194"], ["pocas", "1445113418570"], ["palabras", "1445113423066"]]
347	10	79	2015-10-17 20:24:23.674892+00	2015-10-17 20:23:46.467+00	[["bueno", "1445113432294"], ["si", "1445113438878"], ["espec\\u00edfico", "1445113452103"], ["a", "1445113457273"], ["la", "1445113460960"], ["ojos", "1445113466909"]]
348	10	117	2015-10-17 20:25:21.689952+00	2015-10-17 20:24:30.69+00	[["tranquilidad", "1445113485142"], ["es", "1445113490058"], ["Jes\\u00fas", "1445113499772"], ["es", "1445113505603"], ["una", "1445113510001"], ["buena", "1445113515158"], ["buena", "1445113520807"], ["madre", "1445113525142"]]
349	10	93	2015-10-17 20:26:10.897517+00	2015-10-17 20:25:30.492+00	[["ingres\\u00f3", "1445113539213"], ["el", "1445113543919"], ["manera", "1445113550889"], ["y", "1445113555572"], ["y", "1445113561745"], ["la", "1445113567441"], ["colegio", "1445113574129"]]
350	10	106	2015-10-17 20:26:46.049831+00	2015-10-17 20:26:19.688+00	[["es", "1445113585382"], ["un", "1445113590302"], ["para", "1445113598406"], ["compartir", "1445113604213"], ["amigos", "1445113609455"]]
351	10	42	2015-10-17 20:27:17.060996+00	2015-10-17 20:26:52.566+00	[["importante", "1445113620358"], ["callar", "1445113631599"], ["que", "1445113636348"], ["curar", "1445113640293"]]
352	10	55	2015-10-17 20:28:06.059477+00	2015-10-17 20:27:23.945+00	[["buen", "1445113648992"], ["personas", "1445113655828"], ["que ", "1445113672298"], ["tira", "1445113680034"], ["el", "1445113685178"], ["viento", "1445113689483"]]
353	10	50	2015-10-17 20:29:22.072161+00	2015-10-17 20:28:13.706+00	[["fue", "1445113702346"], ["en ", "1445113716495"], ["pos", "1445113736703"], ["guerra", "1445113748588"], ["de", "1445113754341"], ["Troya", "1445113765301"]]
354	10	22	2015-10-17 20:29:48.170336+00	2015-10-17 20:29:29.291+00	[["mi", "1445113776000"], ["cerrada", "1445113781079"], ["no", "1445113784034"], ["entran", "1445113787907"], ["moscas", "1445113791578"]]
355	10	58	2015-10-17 20:30:27.405722+00	2015-10-17 20:29:54.848+00	[["que", "1445113800900"], ["que", "1445113805516"], ["un", "1445113810949"], ["hueso", "1445113815880"], ["para", "1445113820615"], ["el", "1445113826096"], ["patio", "1445113830637"]]
356	10	64	2015-10-17 20:31:23.102044+00	2015-10-17 20:30:35.319+00	[["la", "1445113840035"], ["le", "1445113849465"], ["Remo", "1445113854826"], ["Remo", "1445113862683"], ["le", "1445113866663"], ["aliment\\u00f3", "1445113877050"], ["una", "1445113882731"], ["loba", "1445113886536"]]
357	10	107	2015-10-17 20:32:30.506943+00	2015-10-17 20:31:30.323+00	[["tiene", "1445113899131"], ["buenos", "1445113905061"], ["las", "1445113910361"], ["palabras", "1445113915503"], ["que", "1445113922566"], ["ese", "1445113929983"], ["contabilidad", "1445113953677"]]
358	10	66	2015-10-17 20:33:36.735137+00	2015-10-17 20:32:36.495+00	[["m\\u00fasico", "1445113966904"], ["madruga", "1445113972841"], ["freliz", "1445113981080"], ["de", "1445113984872"], ["culpa", "1445113989001"], ["que", "1445113993944"], ["arroje", "1445113997978"], ["la ", "1445114007918"], ["primera", "1445114014289"], ["piedra", "1445114019919"]]
359	10	100	2015-10-17 20:34:15.493368+00	2015-10-17 20:33:45.014+00	[["es", "1445114029753"], ["acompa\\u00f1+o", "1445114038160"], ["no", "1445114043244"], ["a", "1445114047173"], ["a", "1445114051248"], ["m\\u00e9dico", "1445114058907"]]
360	10	44	2015-10-17 20:35:10.416213+00	2015-10-17 20:34:22.715+00	[["m\\u00fasico", "1445114074473"], ["ve", "1445114079680"], ["hombre", "1445114088794"], ["engorda", "1445114096668"], ["el ", "1445114108429"], ["ganado", "1445114113642"]]
361	10	85	2015-10-17 20:35:52.5613+00	2015-10-17 20:35:17.456+00	[["Am\\u00e9rica", "1445114126654"], ["primer", "1445114133055"], ["de", "1445114141645"], ["las", "1445114147874"], ["las", "1445114151798"], ["vacas", "1445114155983"]]
362	10	30	2015-10-17 20:36:21.81647+00	2015-10-17 20:36:00.503+00	[["confunda", "1445114169271"], ["disponible", "1445114176100"], ["quien", "1445114181445"], ["pelea", "1445114185048"]]
363	10	92	2015-10-17 20:37:07.30526+00	2015-10-17 20:36:28.259+00	[["es", "1445114191976"], ["completar", "1445114198960"], ["buena", "1445114204232"], ["para", "1445114209563"], ["completar", "1445114215445"], ["en", "1445114220933"], ["la", "1445114223843"], ["Universidad", "1445114230732"]]
364	10	123	2015-10-17 20:38:23.902585+00	2015-10-17 20:37:14.498+00	[["fue ", "1445114251361"], ["present\\u00f3", "1445114268200"], ["con", "1445114275645"], ["sus", "1445114281378"], ["y", "1445114285847"], ["domingo", "1445114295421"], ["d\\u00eda", "1445114307129"]]
365	10	33	2015-10-17 20:38:50.308017+00	2015-10-17 20:38:31.612+00	[["claras", "1445114318862"], ["son", "1445114326174"], ["la", "1445114329893"], ["amistad", "1445114333698"]]
366	10	89	2015-10-17 20:39:25.709332+00	2015-10-17 20:38:57.006+00	[["es", "1445114342844"], ["un", "1445114346278"], ["de", "1445114350570"], ["y", "1445114361121"], ["ma\\u00f1ana", "1445114366061"], ["es", "1445114368911"]]
367	10	28	2015-10-17 20:39:53.747286+00	2015-10-17 20:39:33.21+00	[["llovido", "1445114382236"], ["no", "1445114385851"], ["hay", "1445114388888"], ["nada", "1445114391830"], ["escrito", "1445114397165"]]
368	10	53	2015-10-17 20:41:15.14132+00	2015-10-17 20:40:30.529+00	[["mi", "1445114435218"], ["los", "1445114446410"], ["un", "1445114457410"], ["muro", "1445114466179"], ["de", "1445114470630"], ["Berl\\u00edn", "1445114478406"]]
369	10	15	2015-10-17 20:41:41.494146+00	2015-10-17 20:41:22.917+00	[["buen", "1445114490230"], ["necias", "1445114494990"], ["o\\u00eddos", "1445114500263"], ["sordos", "1445114504889"]]
370	10	24	2015-10-17 20:42:19.090203+00	2015-10-17 20:41:48.279+00	[["dejes", "1445114516223"], ["para", "1445114520264"], ["ma\\u00f1ana", "1445114524885"], ["lo", "1445114528181"], ["que", "1445114531304"], ["puedas", "1445114535356"], ["hacer", "1445114539087"], ["hoy", "1445114542333"]]
371	10	27	2015-10-17 20:42:59.349362+00	2015-10-17 20:42:27.189+00	[["buen", "1445114554369"], ["madruga", "1445114560978"], ["Dios", "1445114565802"], ["lo", "1445114568601"], ["ayuda", "1445114573851"], ["cueste", "1445114582771"]]
372	10	59	2015-10-17 20:43:42.9618+00	2015-10-17 20:43:06.545+00	[["era", "1445114593913"], ["uno ", "1445114604980"], ["de", "1445114610384"], ["los", "1445114614464"], ["tres", "1445114617873"], ["mosqueteros", "1445114626151"]]
373	10	11	2015-10-17 20:44:27.62336+00	2015-10-17 20:43:51.748+00	[["boca", "1445114644885"], ["de ", "1445114652894"], ["herrero", "1445114658727"], ["cuchillo", "1445114664298"], ["de", "1445114667687"], ["palo", "1445114671034"]]
374	10	76	2015-10-17 20:45:07.707355+00	2015-10-17 20:44:34.666+00	[["prevenir", "1445114681589"], ["adelantar", "1445114690603"], ["sin", "1445114697685"], ["cosas", "1445114703565"], ["cosas", "1445114710888"]]
375	10	102	2015-10-17 20:45:52.848148+00	2015-10-17 20:45:14.748+00	[["buen", "1445114721601"], ["le", "1445114726248"], ["pusieron", "1445114732599"], ["el", "1445114737908"], ["el", "1445114742433"], ["t\\u00edtulo", "1445114751058"], ["que", "1445114756258"]]
376	10	67	2015-10-17 20:46:32.905206+00	2015-10-17 20:46:00.36+00	[["primero", "1445114768115"], ["es", "1445114772094"], ["una", "1445114775668"], ["de", "1445114779684"], ["Argentina", "1445114783854"], ["provincia", "1445114796103"]]
377	10	62	2015-10-17 20:47:06.015112+00	2015-10-17 20:46:44.246+00	[["no", "1445114809148"], ["hay", "1445114812334"], ["camino", "1445114816492"], ["se", "1445114819582"], ["hace", "1445114822038"], ["camino", "1445114824910"], ["al", "1445114826701"], ["andar", "1445114829361"]]
378	10	61	2015-10-17 20:47:45.461857+00	2015-10-17 20:47:13.794+00	[["una", "1445114839059"], ["posible", "1445114845779"], ["mejor", "1445114851536"], ["al", "1445114855814"], ["un", "1445114859958"], ["m\\u00e9dico", "1445114868664"]]
379	10	48	2015-10-17 20:48:21.75715+00	2015-10-17 20:47:52.003+00	[["cuervos", "1445114878913"], ["que", "1445114881735"], ["te", "1445114883318"], ["sacar\\u00e1n ", "1445114897677"], ["los", "1445114902492"], ["ojos", "1445114905183"]]
380	10	54	2015-10-17 20:49:08.607594+00	2015-10-17 20:48:28.737+00	[["ingres\\u00f3", "1445114920538"], ["ante", "1445114928720"], ["guerra", "1445114936256"], ["guerra", "1445114946789"], ["mundial", "1445114951822"]]
381	10	16	2015-10-17 20:49:34.889021+00	2015-10-17 20:49:15.161+00	[["que", "1445114959456"], ["no", "1445114962336"], ["ven", "1445114964337"], ["coraz\\u00f3n", "1445114969978"], ["que", "1445114972006"], ["no", "1445114974473"], ["siente", "1445114978282"]]
382	10	80	2015-10-17 20:50:32.154191+00	2015-10-17 20:49:41.595+00	[["que", "1445114987336"], ["de", "1445114992549"], ["est\\u00e1", "1445114999405"], ["presenta", "1445115005188"], ["despu\\u00e9s", "1445115021278"], ["de", "1445115028142"], ["la", "1445115030700"], ["lluvia", "1445115035365"]]
383	10	38	2015-10-17 20:51:09.662927+00	2015-10-17 20:50:38.273+00	[["va", "1445115043157"], ["el", "1445115045372"], ["c\\u00e1ntaro", "1445115052014"], ["a", "1445115054159"], ["la", "1445115055465"], ["fuente", "1445115058636"], ["que", "1445115062129"], ["al", "1445115064549"], ["fin", "1445115066433"], ["se", "1445115068527"], ["rompe", "1445115073033"]]
384	10	19	2015-10-17 20:52:00.593463+00	2015-10-17 20:51:16.909+00	[["vale", "1445115081589"], ["p\\u00e1jaro", "1445115087862"], ["en", "1445115093672"], ["m ano", "1445115101688"], ["cien", "1445115105158"], ["volando", "1445115114386"], ["volando", "1445115123782"]]
385	10	51	2015-10-17 20:52:43.689248+00	2015-10-17 20:52:05.813+00	[["Argentina", "1445115134656"], ["la", "1445115144222"], ["calles", "1445115151223"], ["son", "1445115156034"], ["muy", "1445115159844"], ["bajas", "1445115167069"]]
386	10	128	2015-10-17 20:53:32.287665+00	2015-10-17 20:52:50.361+00	[["que", "1445115176069"], ["ser\\u00e1", "1445115185900"], ["a", "1445115190823"], ["jugarme", "1445115196311"], ["ambos", "1445115202604"], ["ambas", "1445115207185"], ["enamorados", "1445115215507"]]
387	10	73	2015-10-17 20:54:01.730521+00	2015-10-17 20:53:38.969+00	[["que", "1445115227593"], ["con", "1445115234765"], ["un", "1445115239389"], ["ratones", "1445115245127"]]
388	10	25	2015-10-17 20:54:34.964377+00	2015-10-17 20:54:09.125+00	[["siempre", "1445115257613"], ["mejor", "1445115263569"], ["que", "1445115267904"], ["por", "1445115271391"], ["bien", "1445115273465"], ["no", "1445115275061"], ["venga", "1445115278159"]]
389	10	112	2015-10-17 20:56:01.660842+00	2015-10-17 20:54:40.753+00	[["primeros", "1445115288629"], ["que", "1445115293525"], ["sienten", "1445115301677"], ["por", "1445115310946"], ["el", "1445115316938"], ["al", "1445115329121"], ["malas", "1445115357597"], ["elefantes", "1445115364848"]]
390	10	21	2015-10-17 20:56:25.317839+00	2015-10-17 20:56:09.059+00	[["que", "1445115376414"], ["vale", "1445115383331"], ["por", "1445115386603"], ["dos", "1445115388700"]]
391	10	97	2015-10-17 20:57:15.825963+00	2015-10-17 20:56:33.868+00	[["es", "1445115398883"], ["quiere", "1445115403637"], ["juntando", "1445115413933"], ["de ", "1445115423997"], ["sus", "1445115428633"], ["novia", "1445115438996"]]
392	10	47	2015-10-17 20:57:49.576364+00	2015-10-17 20:57:23.279+00	[["es", "1445115449878"], ["amores", "1445115455999"], ["consuelo", "1445115465404"], ["de", "1445115468275"], ["tontos", "1445115472956"]]
393	10	99	2015-10-17 20:59:00.252533+00	2015-10-17 20:57:56.497+00	[["es", "1445115481348"], ["la", "1445115485783"], ["lugar", "1445115490750"], ["pasado", "1445115499942"], ["la", "1445115521752"], ["la", "1445115526294"], ["amigos", "1445115531451"], ["que", "1445115535810"], ["afuera", "1445115543405"]]
394	10	77	2015-10-17 20:59:41.351585+00	2015-10-17 20:59:07.42+00	[["que", "1445115553421"], ["late", "1445115558068"], ["un", "1445115561962"], ["\\u00f3rgano", "1445115567838"], ["que", "1445115576003"], ["late", "1445115580367"], ["la", "1445115584736"]]
395	10	56	2015-10-17 21:00:16.112731+00	2015-10-17 20:59:50.07+00	[["m\\u00e1s", "1445115595887"], ["saber", "1445115602168"], ["mejor", "1445115608765"], ["de", "1445115613532"], ["hablar", "1445115619278"]]
396	10	17	2015-10-17 21:00:49.899609+00	2015-10-17 21:00:23.495+00	[["que", "1445115632779"], ["madruga", "1445115641119"], ["Dios", "1445115646789"], ["lo", "1445115649933"], ["ayuda", "1445115653266"]]
397	10	90	2015-10-17 21:01:29.834539+00	2015-10-17 21:00:56.848+00	[["ninguna", "1445115662506"], ["escuela", "1445115668413"], ["de", "1445115672334"], ["mi", "1445115675831"], ["no", "1445115681413"], ["hay", "1445115685067"], ["peleas", "1445115693024"]]
398	10	32	2015-10-17 21:18:45.963662+00	2015-10-17 21:17:44.688+00	[["lo", "1445116683697"], ["que", "1445116689213"], ["puedas", "1445116695082"], ["diga", "1445116704479"], ["mas", "1445116708659"], ["no", "1445116713177"], ["lo", "1445116716398"], ["que", "1445116721555"], ["yo", "1445116723805"], ["haga", "1445116729105"]]
399	10	96	2015-10-17 21:19:58.002502+00	2015-10-17 21:18:52.542+00	[["familia", "1445116742479"], ["es", "1445116748411"], ["mi", "1445116761252"], ["est\\u00e1", "1445116769668"], ["cuatro", "1445116777349"], ["jard\\u00edn", "1445116788267"], ["muy", "1445116794016"], ["hermoso", "1445116801180"]]
400	10	49	2015-10-17 21:20:37.891423+00	2015-10-17 21:20:05.067+00	[["tiene", "1445116811298"], ["mal", "1445116819785"], ["decir", "1445116828406"], ["peras", "1445116834333"], ["al", "1445116837255"], ["olmo", "1445116841239"]]
401	10	36	2015-10-17 21:21:32.4917+00	2015-10-17 21:20:44.375+00	[["que", "1445116849394"], ["sabe", "1445116853597"], ["por", "1445116857294"], ["por", "1445116875907"], ["viejo", "1445116883734"], ["que", "1445116887184"], ["por", "1445116891093"], ["diablo", "1445116895645"]]
402	10	26	2015-10-17 21:22:45.589288+00	2015-10-17 21:21:40.985+00	[["Argentina", "1445116911027"], ["parque", "1445116916290"], ["nuestro", "1445116923227"], ["Am+erica", "1445116942735"], ["gigantes", "1445116953573"], ["el", "1445116958339"], ["tuerto", "1445116962832"], ["es", "1445116965325"], ["rey", "1445116968727"]]
403	10	26	2015-10-17 21:23:54.195902+00	2015-10-17 21:22:51.031+00	[["buena", "1445116981603"], ["momento", "1445116989406"], ["de", "1445116994082"], ["los", "1445116998776"], ["gigantes", "1445117008130"], ["el", "1445117018898"], ["tuerto", "1445117023821"], ["es", "1445117030606"], ["Rey", "1445117037339"]]
404	10	101	2015-10-17 21:24:39.839359+00	2015-10-17 21:24:00.79+00	[["el", "1445117049054"], ["capital", "1445117060848"], ["clima", "1445117068500"], ["es", "1445117071985"], ["muy", "1445117075107"], ["h\\u00famedo", "1445117083185"]]
405	10	108	2015-10-17 21:26:25.951769+00	2015-10-17 21:24:46.606+00	[["\\u00e1ngeles", "1445117095713"], ["de", "1445117100269"], ["quieren", "1445117113520"], ["a", "1445117149635"], ["forma", "1445117179196"], ["momento", "1445117189084"]]
406	10	116	2015-10-17 21:27:07.16142+00	2015-10-17 21:26:33.212+00	[["d\\u00eda", "1445117199238"], ["har\\u00e9", "1445117206422"], ["a", "1445117210611"], ["visita", "1445117215524"], ["a", "1445117220933"], ["un", "1445117225418"], ["costa", "1445117230505"]]
407	10	83	2015-10-17 21:27:40.131644+00	2015-10-17 21:27:14.227+00	[["ingreso", "1445117241604"], ["es", "1445117246164"], ["perjudicial", "1445117251395"], ["para", "1445117255524"], ["la", "1445117258578"], ["salud", "1445117263273"]]
408	10	35	2015-10-17 21:28:03.53343+00	2015-10-17 21:27:46.696+00	[["que", "1445117271131"], ["que", "1445117277877"], ["mal", "1445117281270"], ["acompa\\u00f1ado", "1445117286866"]]
409	10	43	2015-10-17 21:28:32.907258+00	2015-10-17 21:28:08.864+00	[["pretendas", "1445117296227"], ["lo", "1445117300479"], ["que", "1445117303635"], ["reluce", "1445117308719"], ["es", "1445117312683"], ["oro", "1445117316237"]]
410	10	109	2015-10-17 21:29:12.905326+00	2015-10-17 21:28:39.602+00	[["imagen", "1445117325015"], ["de", "1445117329054"], ["un", "1445117332956"], ["v\\u00edboras", "1445117343209"], ["es", "1445117348507"], ["ser", "1445117352548"], ["muy", "1445117355991"]]
411	10	113	2015-10-17 21:30:26.035843+00	2015-10-17 21:29:21.52+00	[["quien", "1445117368378"], ["le", "1445117372359"], ["se", "1445117376853"], ["acompa\\u00f1aron", "1445117384742"], ["tan", "1445117389742"], ["mentiras", "1445117397358"], ["informe", "1445117409325"], ["cuento", "1445117429189"]]
412	10	95	2015-10-17 21:31:07.08846+00	2015-10-17 21:30:32.907+00	[["la", "1445117438160"], ["le", "1445117441522"], ["conviene", "1445117448229"], ["tomar", "1445117454085"], ["las", "1445117457892"], ["en", "1445117462547"], ["d\\u00edas", "1445117470424"]]
413	10	41	2015-10-17 21:31:45.989288+00	2015-10-17 21:31:14.023+00	[["que ", "1445117490297"], ["quiera", "1445117496544"], ["primero", "1445117502593"], ["rie", "1445117505508"], ["dos", "1445117509073"]]
414	10	124	2015-10-17 21:32:46.368868+00	2015-10-17 21:31:55.085+00	[["Argentina", "1445117522189"], ["casa", "1445117529488"], ["Mario", "1445117539493"], ["hay", "1445117545617"], ["ricas", "1445117558060"], ["muy", "1445117565262"], ["ricas", "1445117569519"]]
415	10	52	2015-10-17 21:33:19.630079+00	2015-10-17 21:32:52.568+00	[["cumplimos", "1445117581973"], ["domingos", "1445117590382"], ["conducen", "1445117596707"], ["a", "1445117599065"], ["Roma", "1445117602966"]]
416	10	12	2015-10-17 21:33:47.010179+00	2015-10-17 21:33:25.5+00	[["qu", "1445117614637"], ["tiempo", "1445117623634"], ["buena", "1445117628047"], ["cara", "1445117630169"]]
417	10	46	2015-10-17 21:34:17.600982+00	2015-10-17 21:33:53.963+00	[["est\\u00e1", "1445117641519"], ["capit\\u00e1n", "1445117648180"], ["no", "1445117650122"], ["mansda", "1445117654800"], ["marinero", "1445117660932"]]
418	10	78	2015-10-17 21:35:25.447232+00	2015-10-17 21:34:23.985+00	[["Dios", "1445117670944"], ["celeste", "1445117677210"], ["tienes", "1445117683301"], ["tienes", "1445117692686"], ["insistas", "1445117703257"], ["lo", "1445117708508"], [" lo", "1445117719237"], ["mismo", "1445117728563"]]
419	10	13	2015-10-17 21:36:45.092228+00	2015-10-17 21:35:31.448+00	[["quieras", "1445117743531"], ["felicidad", "1445117755825"], ["no", "1445117763912"], ["interesa", "1445117773042"], ["asco", "1445117801814"], ["que", "1445117808221"]]
420	10	68	2015-10-17 21:37:20.280341+00	2015-10-17 21:36:53.453+00	[["m\\u00e1s", "1445117820349"], ["mundo", "1445117825740"], ["con", "1445117830536"], ["el", "1445117833301"], ["sudor", "1445117836216"], ["de", "1445117839001"], ["tu", "1445117840886"], ["frente", "1445117843608"]]
421	10	60	2015-10-17 21:37:56.670804+00	2015-10-17 21:37:26.393+00	[["importa", "1445117855613"], ["lo", "1445117862102"], ["que", "1445117867241"], ["no", "1445117871174"], ["puedas", "1445117875060"], ["cumplir", "1445117879817"]]
422	10	94	2015-10-17 21:38:40.327088+00	2015-10-17 21:38:03.816+00	[["imagin\\u00f3", "1445117894333"], ["el", "1445117899096"], ["y", "1445117905078"], ["cielo", "1445117910223"], ["de", "1445117914512"], ["f\\u00fatbol", "1445117923637"]]
423	10	122	2015-10-17 21:39:32.431428+00	2015-10-17 21:38:47.585+00	[["mundo", "1445117936383"], ["que", "1445117942682"], ["exige", "1445117950554"], ["que", "1445117955394"], ["su", "1445117962323"], ["empleada", "1445117968646"], ["que", "1445117975515"]]
424	10	103	2015-10-17 21:40:22.302923+00	2015-10-17 21:39:39.831+00	[["es", "1445117992079"], ["escuch+o", "1445117999801"], ["hacer", "1445118006513"], ["librarse", "1445118015021"], ["sus", "1445118019450"], ["problema", "1445118025643"]]
425	10	65	2015-10-17 21:40:59.28595+00	2015-10-17 21:40:29.001+00	[["inteligente", "1445118037181"], ["no", "1445118043332"], ["ser", "1445118046922"], ["esa", "1445118049973"], ["es", "1445118051685"], ["la", "1445118054516"], ["cuesti\\u00f3n", "1445118062383"]]
426	10	29	2015-10-17 21:41:25.347779+00	2015-10-17 21:41:05.567+00	[["con", "1445118069317"], ["quien", "1445118073035"], ["andas", "1445118075485"], ["y", "1445118078496"], ["te", "1445118080032"], ["dir\\u00e9", "1445118082889"], ["quien", "1445118085845"], ["eres", "1445118088656"]]
427	10	86	2015-10-17 21:42:09.532121+00	2015-10-17 21:41:33.105+00	[["es", "1445118098098"], ["la", "1445118103192"], ["mujer", "1445118106978"], ["mujer", "1445118113611"], ["de", "1445118116336"], ["tu", "1445118121775"], ["pr\\u00f3jimo", "1445118132695"]]
428	10	91	2015-10-17 21:42:47.354632+00	2015-10-17 21:42:14.89+00	[["es", "1445118142663"], ["grandes", "1445118149921"], ["a", "1445118154862"], ["lo", "1445118161813"], ["muy", "1445118166030"], ["buenas", "1445118170673"]]
429	9	114	2015-10-17 21:45:30.96793+00	2015-10-17 21:44:43.574+00	[["martes", "1445118296932"], ["son", "1445118307081"], ["Dios", "1445118316311"], ["son", "1445118324590"], ["en ", "1445118337263"], ["las", "1445118342023"], ["vacaciones", "1445118351028"]]
430	9	67	2015-10-17 21:46:16.196701+00	2015-10-17 21:45:53.464+00	[["que", "1445118362967"], ["amargo", "1445118369425"], ["saludable", "1445118378718"], ["de", "1445118383276"], ["America", "1445118389620"], ["mesopotamia", "1445118398276"]]
431	9	56	2015-10-17 21:46:47.087072+00	2015-10-17 21:46:43.101+00	[["moros", "1445118409122"], ["saber", "1445118417026"], ["antes", "1445118422761"], ["de", "1445118425747"], ["hablar", "1445118429696"]]
432	9	75	2015-10-17 21:47:36.037473+00	2015-10-17 21:47:13.797+00	[["hijos", "1445118448732"], ["Catolicos", "1445118456984"], ["no", "1445118464775"], ["regalos", "1445118470103"], ["para", "1445118473844"], ["los", "1445118476581"], ["ni\\u00f1os", "1445118480478"]]
433	9	97	2015-10-17 21:48:19.71058+00	2015-10-17 21:48:04.125+00	[["sabe", "1445118491791"], ["trabaja", "1445118502705"], ["con ", "1445118512641"], ["de", "1445118516599"], ["su", "1445118521092"], ["esposa", "1445118525004"]]
434	9	99	2015-10-17 21:49:21.61056+00	2015-10-17 21:48:47.603+00	[["come", "1445118532653"], ["a ", "1445118540327"], ["monasterio", "1445118552084"], ["pasado", "1445118558462"], ["a", "1445118563281"], ["sus", "1445118568403"], ["amigos", "1445118574040"], ["lejanos", "1445118582601"], ["su", "1445118588669"]]
435	9	23	2015-10-17 21:50:02.327471+00	2015-10-17 21:49:54.337+00	[["tengas", "1445118604091"], ["mucho", "1445118610097"], ["madrugar", "1445118615728"], ["amanece", "1445118621326"], ["m\\u00e1s", "1445118625886"], ["temprano", "1445118630946"]]
436	10	74	2015-10-17 21:50:20.351569+00	2015-10-17 21:49:31.409+00	[["mi", "1445118579372"], ["mundo", "1445118584931"], ["se", "1445118590634"], ["mi", "1445118597295"], ["cocina", "1445118602813"], ["se", "1445118608472"], ["un", "1445118617720"], ["pan", "1445118623462"]]
437	9	53	2015-10-17 21:50:41.01307+00	2015-10-17 21:50:34.188+00	[["verano", "1445118641081"], ["hay", "1445118647218"], ["una", "1445118650963"], ["misil", "1445118660438"], ["de", "1445118665792"], ["Berlin", "1445118670288"]]
438	10	39	2015-10-17 21:51:04.345431+00	2015-10-17 21:50:28.196+00	[["parezca", "1445118637978"], ["vida", "1445118644659"], ["se", "1445118649211"], ["vista", "1445118653250"], ["de", "1445118656259"], ["seda", "1445118660580"], ["mona", "1445118664359"], ["se", "1445118667641"]]
439	9	34	2015-10-17 21:51:32.154002+00	2015-10-17 21:51:13.642+00	[["de", "1445118683527"], ["Roma", "1445118691890"], ["el", "1445118694744"], ["rey ", "1445118716336"], ["se", "1445118719508"], ["asoma", "1445118723161"]]
440	10	34	2015-10-17 21:51:55.502505+00	2015-10-17 21:51:14.605+00	[["de", "1445118679470"], ["Roma", "1445118688520"], ["ella", "1445118697353"], ["se", "1445118707573"], ["se", "1445118714076"], ["asoma", "1445118718606"]]
441	10	110	2015-10-17 21:53:25.029649+00	2015-10-17 21:52:02.435+00	[["va", "1445118727958"], ["que", "1445118735781"], ["consigui\\u00f3", "1445118745074"], ["obtuvo", "1445118753044"], ["obtuvo", "1445118764415"], ["fin", "1445118773146"], ["lo", "1445118777718"], ["logr\\u00f3", "1445118801391"], ["dieron", "1445118808105"]]
442	9	92	2015-10-17 21:53:29.746598+00	2015-10-17 21:52:57.369+00	[["sale", "1445118784146"], ["trabajo", "1445118790046"], ["beca", "1445118794837"], ["de", "1445118799191"], ["estudiar", "1445118805205"], ["medicina", "1445118827607"], ["el", "1445118832323"], ["Universidad", "1445118842406"]]
443	10	82	2015-10-17 21:53:52.0861+00	2015-10-17 21:53:31.28+00	[["lo", "1445118816588"], ["he", "1445118823334"], ["la", "1445118828193"], ["paciencia", "1445118835374"]]
444	10	20	2015-10-17 21:54:20.470497+00	2015-10-17 21:53:58.715+00	[["bien", "1445118844824"], ["bien", "1445118849410"], ["sin", "1445118853100"], ["mirar", "1445118858106"], ["a", "1445118860575"], ["quien", "1445118863718"]]
445	9	125	2015-10-17 21:54:31.553164+00	2015-10-17 21:54:06.163+00	[["ingleses", "1445118867531"], ["est\\u00e1n", "1445118875317"], ["girasol", "1445118891244"], ["comida", "1445118897455"], ["de", "1445118901275"], ["girasol", "1445118905948"]]
446	9	25	2015-10-17 21:55:16.340966+00	2015-10-17 21:55:09.521+00	[["hables", "1445118929008"], ["mal", "1445118937672"], ["que", "1445118940781"], ["por", "1445118943245"], ["bien", "1445118947319"], ["no", "1445118949104"], ["venga", "1445118952465"]]
447	10	129	2015-10-17 21:55:22.617522+00	2015-10-17 21:54:27.335+00	[["alguna", "1445118877080"], ["mundo", "1445118886991"], ["de", "1445118891519"], ["jueza", "1445118904825"], ["result\\u00f3", "1445118917223"], ["muy", "1445118925698"]]
448	9	71	2015-10-17 21:56:03.499329+00	2015-10-17 21:55:55.951+00	[["caballo", "1445118964609"], ["le", "1445118969494"], ["crece", "1445118973940"], ["la", "1445118977118"], ["nariz", "1445118982267"], ["cuando", "1445118989121"], ["vez", "1445118993237"], ["que", "1445118996010"], ["ment\\u00eda", "1445119000670"]]
449	9	94	2015-10-17 21:57:00.791926+00	2015-10-17 21:56:43.823+00	[["estudi\\u00f3", "1445119018499"], ["por", "1445119026720"], ["como", "1445119033429"], ["paisaje", "1445119044009"], ["sentado", "1445119050934"], ["tenis", "1445119060035"]]
450	10	70	2015-10-17 21:57:05.795312+00	2015-10-17 21:55:29.277+00	[["imagen", "1445118937695"], ["es", "1445118946854"], ["tierras", "1445118956249"], ["sistema", "1445118963113"], ["y", "1445118972247"], ["la", "1445118977752"], ["---", "1445119007273"], ["las", "1445119020941"], ["monta\\u00f1a", "1445119028807"]]
451	9	120	2015-10-17 21:57:50.776981+00	2015-10-17 21:57:43.59+00	[["holandeses", "1445119075084"], ["tengo", "1445119083568"], ["cartero", "1445119093558"], ["est\\u00e1", "1445119098149"], ["encapotado", "1445119104221"], ["nublado", "1445119111122"]]
452	10	37	2015-10-17 21:58:04.274302+00	2015-10-17 21:57:13.074+00	[["que", "1445119042334"], ["no", "1445119047055"], ["veces", "1445119057170"], ["mata", "1445119061754"], ["a", "1445119076774"], ["hierro", "1445119082694"], ["muere", "1445119087558"]]
453	9	62	2015-10-17 21:58:21.51609+00	2015-10-17 21:58:34.857+00	[["no", "1445119119407"], ["hay", "1445119123592"], ["camino", "1445119129109"], ["se", "1445119132468"], ["hace", "1445119134952"], ["camino", "1445119138824"], ["al", "1445119140468"], ["andar", "1445119143342"]]
454	10	45	2015-10-17 21:58:45.748709+00	2015-10-17 21:58:14.716+00	[["el", "1445119101206"], ["las", "1445119105542"], ["hay", "1445119115382"], ["cuecen", "1445119124477"], ["habas", "1445119129029"]]
455	9	106	2015-10-17 21:58:48.311883+00	2015-10-17 21:59:05.622+00	[["quiere", "1445119151801"], ["un", "1445119155593"], ["con", "1445119161415"], ["todos", "1445119166024"], ["amigos", "1445119170957"]]
456	10	31	2015-10-17 21:59:23.75777+00	2015-10-17 21:58:54.042+00	[["es", "1445119143526"], ["no", "1445119149398"], ["has", "1445119152406"], ["de", "1445119155150"], ["beber", "1445119157982"], ["d\\u00e9jala", "1445119163935"], ["correr", "1445119166831"]]
457	9	46	2015-10-17 21:59:36.895747+00	2015-10-17 21:59:52.184+00	[["hay", "1445119198963"], ["capitan", "1445119205772"], ["no", "1445119208819"], ["manda", "1445119212674"], ["marinero", "1445119220424"]]
458	10	88	2015-10-17 21:59:57.191441+00	2015-10-17 21:59:31.076+00	[["\\u00e1ngeles", "1445119180607"], ["no", "1445119185647"], ["creen", "1445119190758"], ["en", "1445119194023"], ["ning\\u00fan", "1445119200486"]]
459	10	14	2015-10-17 22:00:42.936867+00	2015-10-17 22:00:04.49+00	[["es", "1445119213824"], ["da", "1445119222054"], ["pan", "1445119225910"], ["al", "1445119229533"], ["quien", "1445119234414"], ["no", "1445119237949"], ["tiene", "1445119242726"], ["dientes", "1445119246037"]]
460	10	23	2015-10-17 22:01:18.928328+00	2015-10-17 22:00:52.415+00	[["intentes", "1445119259638"], ["mucho", "1445119265614"], ["madrugar", "1445119271126"], ["se", "1445119274398"], ["amanece", "1445119277790"], ["m\\u00e1s", "1445119282238"]]
461	9	90	2015-10-17 22:03:03.095086+00	2015-10-17 22:00:23.078+00	[["Espa\\u00f1a", "1445119403448"], ["calle", "1445119408761"], ["de", "1445119412592"], ["mi", "1445119415135"], ["hay", "1445119421396"], ["hay", "1445119427254"], ["nadie", "1445119431547"]]
462	10	72	2015-10-17 22:03:05.947486+00	2015-10-17 22:01:26.87+00	[["que", "1445119293167"], ["de", "1445119299647"], ["pele+o", "1445119310791"], ["su", "1445119320263"], ["ingleses", "1445119340821"], ["pelearon", "1445119350965"], ["Inglaterra", "1445119364365"], ["Inglaterra", "1445119382285"], ["redonda", "1445119389054"]]
463	9	109	2015-10-17 22:03:47.385374+00	2015-10-17 22:03:55.38+00	[["gallina", "1445119442564"], ["de", "1445119447524"], ["mosquito", "1445119454525"], ["alima\\u00f1as", "1445119463900"], ["puede", "1445119468749"], ["ser", "1445119472718"], ["mortal", "1445119477467"]]
464	10	125	2015-10-17 22:04:11.440029+00	2015-10-17 22:03:12.544+00	[["amigos", "1445119399734"], ["son", "1445119409286"], ["el", "1445119416022"], ["comidfa", "1445119422973"], ["del ", "1445119435063"], ["bananas", "1445119454542"]]
465	9	61	2015-10-17 22:04:30.722315+00	2015-10-17 22:04:41.382+00	[["la", "1445119486919"], ["duda", "1445119490814"], ["abstenerse", "1445119500806"], ["antes", "1445119511693"], ["un", "1445119515823"], ["m\\u00e9dico", "1445119521796"]]
466	10	10	2015-10-17 22:04:41.215866+00	2015-10-17 22:04:17.535+00	[["realice", "1445119467936"], ["abarca", "1445119475127"], ["poco", "1445119478247"], ["aprieta", "1445119484510"]]
467	9	15	2015-10-17 22:04:54.711976+00	2015-10-17 22:05:24.666+00	[["palabras", "1445119533188"], ["necias", "1445119538164"], ["oidos", "1445119543075"], ["sordos", "1445119547061"]]
468	10	120	2015-10-17 22:05:29.532398+00	2015-10-17 22:04:49.267+00	[["est\\u00e1n", "1445119499191"], ["me", "1445119508599"], ["sol", "1445119513223"], ["se", "1445119516911"], ["nublado", "1445119524175"], ["encapotado", "1445119532623"]]
469	9	70	2015-10-17 22:05:56.307489+00	2015-10-17 22:05:50.463+00	[["miseria", "1445119560742"], ["tiene", "1445119565851"], ["el", "1445119569951"], ["omb\\u00fa", "1445119575112"], ["y", "1445119580672"], ["el", "1445119585454"], ["pampeanos", "1445119594748"], ["el", "1445119602796"], ["cordillera", "1445119610124"]]
470	9	100	2015-10-17 22:06:28.245526+00	2015-10-17 22:06:53.72+00	[["baila", "1445119621864"], ["ama", "1445119625797"], ["un", "1445119630858"], ["a", "1445119635099"], ["a", "1445119638073"], ["m\\u00e9dico", "1445119643525"]]
471	10	127	2015-10-17 22:06:42.994867+00	2015-10-17 22:05:39.943+00	[["vez", "1445119545079"], ["que", "1445119552103"], ["diccionario", "1445119564855"], ["es", "1445119574070"], ["muchos", "1445119584381"], ["ac entuaci\\u00f3n", "1445119606087"]]
472	9	31	2015-10-17 22:06:52.592886+00	2015-10-17 22:07:27.624+00	[["que", "1445119651948"], ["no", "1445119654920"], ["has", "1445119657049"], ["de", "1445119659625"], ["beber", "1445119662188"], ["dejala", "1445119665037"], ["correr", "1445119668671"]]
473	9	43	2015-10-17 22:07:23.713444+00	2015-10-17 22:07:52.488+00	[["mires", "1445119683465"], ["lo", "1445119688617"], ["que", "1445119691462"], ["reluce", "1445119695315"], ["es", "1445119698130"], ["oro", "1445119700195"]]
474	10	71	2015-10-17 22:07:55.662637+00	2015-10-17 22:06:49.953+00	[["quien", "1445119619958"], ["le", "1445119627510"], ["crecui\\u00f3", "1445119635222"], ["la", "1445119639118"], ["nariz", "1445119644909"], ["por", "1445119649982"], ["vez", "1445119658398"], ["que", "1445119662286"], ["ment\\u00eda", "1445119678766"]]
475	9	111	2015-10-17 22:08:03.613259+00	2015-10-17 22:08:23.82+00	[["ladr\\u00f3n", "1445119718545"], ["hizo", "1445119727160"], ["una", "1445119730460"], ["de", "1445119733927"], ["pa\\u00f1uelos", "1445119741576"]]
476	10	98	2015-10-17 22:08:44.092472+00	2015-10-17 22:08:01.79+00	[["imagen", "1445119691743"], ["que", "1445119697230"], ["muy", "1445119707990"], ["pasarse", "1445119719367"], ["inesperada", "1445119727366"]]
477	9	117	2015-10-17 22:08:49.846441+00	2015-10-17 22:09:05.413+00	[["palabra", "1445119753425"], ["es", "1445119760766"], ["una", "1445119763775"], ["es", "1445119768013"], ["una", "1445119770975"], ["santa", "1445119774563"], ["trabajadora", "1445119783227"], ["cocinera", "1445119788713"]]
478	10	126	2015-10-17 22:09:31.758756+00	2015-10-17 22:08:50.861+00	[["tiene", "1445119736079"], ["quiso", "1445119744759"], ["ingresado", "1445119753272"], ["nada", "1445119758511"], ["a", "1445119762695"], ["nadie", "1445119768359"], ["amigas", "1445119774871"]]
479	9	27	2015-10-17 22:09:32.701979+00	2015-10-17 22:09:52.08+00	[["que", "1445119801530"], ["madruga", "1445119814613"], ["celeste", "1445119823665"], ["que", "1445119828236"], ["le", "1445119829612"], ["cueste", "1445119833274"]]
480	9	105	2015-10-17 22:10:05.847762+00	2015-10-17 22:10:38.02+00	[["maja", "1445119846034"], ["entre", "1445119851254"], ["dos", "1445119855434"], ["fue", "1445119861464"], ["por", "1445119866983"]]
481	10	114	2015-10-17 22:10:34.929336+00	2015-10-17 22:09:39.582+00	[["que", "1445119788320"], ["son", "1445119793807"], ["Mario", "1445119808511"], ["son", "1445119814854"], ["en", "1445119818487"], [" todo", "1445119830191"], ["vacaciones", "1445119838039"]]
482	9	113	2015-10-17 22:10:59.891628+00	2015-10-17 22:11:11.193+00	[["caballo", "1445119881348"], ["le", "1445119887656"], ["le", "1445119892170"], ["enga\\u00f1an", "1445119900084"], ["con", "1445119904634"], ["facilidad", "1445119910671"], ["cuento", "1445119916842"], ["truco", "1445119923109"]]
483	10	121	2015-10-17 22:11:33.198812+00	2015-10-17 22:10:42.216+00	[["tiene", "1445119848624"], ["hijos", "1445119854863"], ["buenas", "1445119860639"], ["intensi\\u00f3n", "1445119872222"], ["por", "1445119880453"], ["su", "1445119890429"], ["ojos", "1445119896477"]]
484	9	86	2015-10-17 22:11:42.059855+00	2015-10-17 22:12:06.722+00	[["saltes", "1445119939995"], ["la", "1445119944379"], ["la", "1445119951960"], ["mujer", "1445119956344"], ["de", "1445119959045"], ["tu", "1445119961681"], ["hermano", "1445119966085"]]
485	10	105	2015-10-17 22:12:31.99038+00	2015-10-17 22:11:41.197+00	[["Iglesia", "1445119916878"], ["entre", "1445119928886"], ["los", "1445119937494"], ["fue", "1445119944879"], ["muy", "1445119955047"]]
486	9	77	2015-10-17 22:12:36.675547+00	2015-10-17 22:12:49.629+00	[["padre", "1445119976620"], ["tiene", "1445119982045"], ["ligero", "1445119990984"], ["organo", "1445119997508"], ["grande", "1445120006529"], ["tiene", "1445120017740"], ["sangre", "1445120022771"]]
487	9	38	2015-10-17 22:13:27.689325+00	2015-10-17 22:13:46.761+00	[["trabajo", "1445120036963"], ["el", "1445120040792"], ["cantaro", "1445120045291"], ["a", "1445120047200"], ["la", "1445120048648"], ["fuente", "1445120052148"], ["que", "1445120054884"], ["termina", "1445120059209"], ["final", "1445120065636"], ["se", "1445120071050"], ["rompe", "1445120075013"]]
488	10	115	2015-10-17 22:13:32.897017+00	2015-10-17 22:12:39.459+00	[["problema", "1445119968328"], ["de", "1445119973311"], ["juan", "1445119981671"], ["tiene", "1445119988871"], ["muy", "1445119994534"], ["estudiante", "1445120002629"], ["muy", "1445120008734"], ["importante", "1445120015941"]]
489	9	17	2015-10-17 22:13:53.511805+00	2015-10-17 22:14:38.848+00	[["pasar", "1445120086741"], ["madruga", "1445120093095"], ["Dios", "1445120097918"], ["lo", "1445120099473"], ["ayuda", "1445120102114"]]
490	10	87	2015-10-17 22:14:22.308322+00	2015-10-17 22:13:39.275+00	[["tintas", "1445120029846"], ["que", "1445120034926"], ["presentan", "1445120045046"], ["bien", "1445120051758"], ["o", "1445120054702"], ["no", "1445120058462"], ["se", "1445120062110"], ["hacen", "1445120065582"]]
491	9	50	2015-10-17 22:14:45.557012+00	2015-10-17 22:15:05.674+00	[["era", "1445120119979"], ["en", "1445120125227"], ["la", "1445120131568"], ["guerra", "1445120137188"], ["del", "1445120140345"], ["Peloponeso", "1445120155189"]]
492	10	57	2015-10-17 22:15:02.640113+00	2015-10-17 22:14:28.779+00	[["que", "1445120082870"], ["es", "1445120089310"], ["un", "1445120094630"], ["ser", "1445120098126"], ["con", "1445120105726"]]
493	9	12	2015-10-17 22:15:15.189207+00	2015-10-17 22:16:00.862+00	[["gran", "1445120169465"], ["tiempo", "1445120179687"], ["buena", "1445120183597"], ["cara", "1445120186030"]]
494	10	18	2015-10-17 22:15:50.732527+00	2015-10-17 22:15:10.953+00	[["medida", "1445120120118"], ["ingres\\u00e9", "1445120131350"], ["no", "1445120135486"], ["se", "1445120137414"], ["le", "1445120139646"], ["mira", "1445120142718"], ["el", "1445120145950"], ["pelos", "1445120154006"]]
661	13	82	2015-10-18 13:31:10.241199+00	2015-10-18 13:30:46.05+00	[["la", "1445175054164"], ["llegamos", "1445175057807"], ["mi", "1445175060363"], ["amor", "1445175062173"]]
495	9	116	2015-10-17 22:15:56.066106+00	2015-10-17 22:16:29.04+00	[["verano", "1445120197463"], ["ir\\u00e9", "1445120204602"], ["de", "1445120210510"], ["vacaciones", "1445120217488"], ["a", "1445120222621"], ["la", "1445120224939"], ["playa", "1445120227957"]]
496	9	33	2015-10-17 22:16:18.679745+00	2015-10-17 22:17:11.339+00	[["claras", "1445120238576"], ["conservan", "1445120244959"], ["la", "1445120247173"], ["amistad", "1445120251537"]]
497	10	69	2015-10-17 22:16:43.973651+00	2015-10-17 22:16:03.975+00	[["es", "1445120172022"], ["el", "1445120176495"], ["de", "1445120180646"], ["los", "1445120185110"], ["representantes", "1445120192318"], ["del", "1445120202278"], ["diablo", "1445120207069"]]
498	9	68	2015-10-17 22:16:52.429846+00	2015-10-17 22:17:42.592+00	[["el", "1445120268028"], ["pan", "1445120270578"], ["con", "1445120272853"], ["el", "1445120274615"], ["sudor", "1445120278551"], ["de", "1445120280202"], ["tu", "1445120281853"], ["frente", "1445120286258"]]
499	9	121	2015-10-17 22:17:38.871029+00	2015-10-17 22:18:09.703+00	[["tiene", "1445120297281"], ["paperas", "1445120303708"], ["grande", "1445120314175"], ["memoria", "1445120319823"], ["para", "1445120324781"], ["la", "1445120328723"], ["ojos", "1445120333875"]]
500	9	41	2015-10-17 22:18:14.197952+00	2015-10-17 22:18:57.988+00	[["padre", "1445120348941"], ["nace", "1445120355852"], ["\\u00faltimo", "1445120364033"], ["r\\u00ede", "1445120368382"], ["mrjor", "1445120370774"]]
501	9	82	2015-10-17 22:18:40.916392+00	2015-10-17 22:19:34.533+00	[["la", "1445120385282"], ["hemos", "1445120390117"], ["mi", "1445120393474"], ["amor", "1445120397928"]]
502	9	49	2015-10-17 22:19:07.756645+00	2015-10-17 22:20:01.74+00	[["salgas", "1445120407644"], ["que", "1445120411656"], ["dudar", "1445120417021"], ["peras", "1445120420799"], ["al", "1445120423349"], ["olmo", "1445120426012"]]
503	9	96	2015-10-17 22:20:05.652269+00	2015-10-17 22:20:29.34+00	[["gente", "1445120436224"], ["est\\u00e1", "1445120440676"], ["Bernarda", "1445120452139"], ["est\\u00e1", "1445120460322"], ["muchas", "1445120466266"], ["balc\\u00f3n", "1445120476436"], ["enorme", "1445120480832"], ["grande", "1445120485353"]]
504	9	21	2015-10-17 22:20:21.805459+00	2015-10-17 22:21:29.225+00	[["prevenido", "1445120495698"], ["vale", "1445120499174"], ["por", "1445120500833"], ["dos", "1445120502438"]]
505	9	66	2015-10-17 22:21:16.523479+00	2015-10-17 22:21:45.684+00	[["perro", "1445120513297"], ["es", "1445120523684"], ["caliente", "1445120534611"], ["de", "1445120537862"], ["culpas", "1445120542137"], ["que", "1445120544870"], ["tire", "1445120546815"], ["la", "1445120548621"], ["primera", "1445120552811"], ["piedra", "1445120558388"]]
506	9	35	2015-10-17 22:21:48.374979+00	2015-10-17 22:22:41.146+00	[["prevenir", "1445120578618"], ["que", "1445120582375"], ["mal", "1445120584706"], ["acompa\\u00f1ado", "1445120591680"]]
507	9	101	2015-10-17 22:22:20.199881+00	2015-10-17 22:23:14.294+00	[["poco", "1445120600453"], ["hay", "1445120605648"], ["cielo", "1445120612487"], ["es", "1445120615223"], ["muy", "1445120617937"], ["h\\u00famedo", "1445120624200"]]
508	9	47	2015-10-17 22:22:47.656174+00	2015-10-17 22:23:47.823+00	[["camino", "1445120637442"], ["muchos", "1445120644133"], ["consuelo", "1445120648944"], ["de", "1445120650093"], ["tontos", "1445120652893"]]
509	10	63	2015-10-17 22:23:02.821923+00	2015-10-17 22:22:19.001+00	[["Ignacio", "1445120555487"], ["fue", "1445120563791"], ["los", "1445120568215"], ["Andes", "1445120573823"], ["y", "1445120579215"], ["caballo", "1445120585895"]]
510	9	84	2015-10-17 22:23:26.998918+00	2015-10-17 22:24:16.534+00	[["mal", "1445120667088"], ["cree", "1445120676096"], ["comido", "1445120682216"], ["todo", "1445120686808"], ["el", "1445120689204"], ["vino", "1445120693033"]]
511	10	104	2015-10-17 22:23:40.53777+00	2015-10-17 22:23:09.52+00	[["estuve", "1445120596223"], ["con", "1445120600255"], ["mis", "1445120603015"], ["de", "1445120607302"], ["temas", "1445120612382"], ["problema", "1445120623790"]]
512	9	80	2015-10-17 22:24:11.083887+00	2015-10-17 22:24:55.998+00	[["ingenio", "1445120702602"], ["y", "1445120708672"], ["aparece", "1445120716113"], ["ve", "1445120721440"], ["despues", "1445120730218"], ["de", "1445120733236"], ["la", "1445120735293"], ["lluvia", "1445120738807"]]
513	10	75	2015-10-17 22:24:32.822055+00	2015-10-17 22:23:48.613+00	[["amigos", "1445120634702"], ["Magos", "1445120643518"], ["vienen", "1445120652054"], ["muchos", "1445120658053"], ["en", "1445120666334"], ["los", "1445120670079"], ["chicos", "1445120675894"]]
514	9	124	2015-10-17 22:24:57.956202+00	2015-10-17 22:25:42.571+00	[["el", "1445120747820"], ["casa", "1445120752950"], ["hay", "1445120758282"], ["hay", "1445120762990"], ["sopa", "1445120767155"], ["ligeras", "1445120779761"], ["condimentadas", "1445120786582"]]
515	9	20	2015-10-17 22:25:21.73365+00	2015-10-17 22:26:30.379+00	[["la", "1445120798286"], ["amor", "1445120802342"], ["y", "1445120805665"], ["no", "1445120807842"], ["mires", "1445120810746"], ["a", "1445120811589"]]
516	9	112	2015-10-17 22:26:19.050887+00	2015-10-17 22:26:54.781+00	[["malteses", "1445120824616"], ["indigos", "1445120832292"], ["asustan", "1445120839055"], ["con", "1445120842696"], ["cay\\u00f3", "1445120849414"], ["un", "1445120854365"], ["su", "1445120861393"], ["leones", "1445120870153"]]
517	9	119	2015-10-17 22:27:01.688222+00	2015-10-17 22:27:53.877+00	[["pato", "1445120878559"], ["y", "1445120885000"], ["inalterable", "1445120894405"], ["metal", "1445120899979"], ["precioso", "1445120905846"], ["caro", "1445120914449"]]
518	9	55	2015-10-17 22:27:35.864306+00	2015-10-17 22:28:37.934+00	[["la", "1445120923122"], ["tardes", "1445120930830"], ["del", "1445120936296"], ["mueve", "1445120942170"], ["el", "1445120945518"], ["viento", "1445120949175"]]
519	9	103	2015-10-17 22:28:14.629139+00	2015-10-17 22:29:12.12+00	[["tiene", "1445120960084"], ["baila", "1445120965862"], ["que", "1445120969361"], ["bailar", "1445120979106"], ["el", "1445120983997"], ["problema", "1445120989454"]]
520	9	88	2015-10-17 22:28:41.892255+00	2015-10-17 22:29:53.063+00	[["perrros", "1445121004128"], ["no", "1445121007943"], ["creen", "1445121012095"], ["en", "1445121013712"], ["Dios", "1445121017230"]]
521	9	60	2015-10-17 22:29:11.7348+00	2015-10-17 22:30:20.052+00	[["vengas", "1445121026917"], ["da\\u00f1o", "1445121031365"], ["que", "1445121035726"], ["no", "1445121038953"], ["puedas", "1445121043463"], ["cumplir", "1445121048497"]]
522	9	22	2015-10-17 22:29:35.313381+00	2015-10-17 22:30:51.843+00	[["casa", "1445121058308"], ["cerrada", "1445121063786"], ["no", "1445121066190"], ["entran", "1445121069556"], ["moscas", "1445121072738"]]
523	9	54	2015-10-17 22:30:04.016664+00	2015-10-17 22:31:15.645+00	[["del", "1445121083592"], ["la", "1445121086964"], ["guerra", "1445121091579"], ["guerra", "1445121097813"], ["mundial", "1445121101973"]]
524	9	69	2015-10-17 22:30:37.112521+00	2015-10-17 22:31:45.054+00	[["es", "1445121111008"], ["el", "1445121113641"], ["de", "1445121120096"], ["los", "1445121123180"], ["diablos", "1445121127761"], ["del", "1445121132558"], ["diablo", "1445121136615"]]
525	9	108	2015-10-17 22:31:23.979637+00	2015-10-17 22:32:20.092+00	[["ni\\u00f1os", "1445121150204"], ["son", "1445121156967"], ["perdonan", "1445121164343"], ["hasta", "1445121169739"], ["el", "1445121173358"], ["momento", "1445121184427"]]
526	9	24	2015-10-17 22:32:05.062775+00	2015-10-17 22:33:08.158+00	[["pierdas", "1445121201856"], ["para", "1445121209097"], ["ma\\u00f1ana", "1445121214425"], ["lo", "1445121216191"], ["que", "1445121218586"], ["puedas", "1445121221581"], ["hacer", "1445121224169"], ["hoy", "1445121227122"]]
527	9	18	2015-10-17 22:32:35.57029+00	2015-10-17 22:33:49.691+00	[["gato", "1445121237416"], ["regalado", "1445121243207"], ["no", "1445121246452"], ["se", "1445121247935"], ["le", "1445121249401"], ["miran", "1445121253405"], ["los", "1445121255173"], ["dientes", "1445121258239"]]
662	13	46	2015-10-18 13:31:30.566974+00	2015-10-18 13:31:09.163+00	[["entra", "1445175074288"], ["capitan", "1445175077379"], ["no", "1445175078740"], ["manda", "1445175080339"], ["marinero", "1445175082490"]]
528	9	127	2015-10-17 22:33:25.518226+00	2015-10-17 22:34:20.95+00	[["uno", "1445121270347"], ["tiene", "1445121276770"], ["hombre", "1445121284844"], ["tiene", "1445121291822"], ["su", "1445121297794"], ["encanto", "1445121197062"]]
529	9	129	2015-10-17 22:34:06.242169+00	2015-10-17 22:33:20.804+00	[["Persia", "1445121208325"], ["universo", "1445121214485"], ["de", "1445121218454"], ["gente", "1445121227257"], ["fue", "1445121233432"], ["pareja", "1445121238501"]]
530	9	110	2015-10-17 22:34:56.773258+00	2015-10-17 22:34:01.785+00	[["va", "1445121247839"], ["que", "1445121251610"], ["el", "1445121257380"], ["que", "1445121261736"], ["le", "1445121264567"], ["final", "1445121270913"], ["se", "1445121279084"], ["produjo", "1445121285444"], ["creyeron", "1445121290867"]]
531	11	5	2015-10-17 23:00:28.531998+00	2015-10-17 22:55:42.881+00	[["masa es masificada", "1445122663166"], ["corta", "1445122678293"], ["curva", "1445122689396"], ["instrumento", "1445122707848"], [" comunista", "1445122737909"], ["segar", "1445122767505"], ["doctrina", "1445122820103"]]
532	11	4	2015-10-17 23:03:01.718994+00	2015-10-17 23:00:32.499+00	[["cochino", "1445122932713"], ["flaco", "1445122958864"], ["engorda", "1445122973562"]]
533	11	3	2015-10-17 23:04:06.643404+00	2015-10-17 23:03:03.259+00	[["es", "1445122996732"], ["anda", "1445123007774"], ["mal", "1445123026330"], ["acaba", "1445123038454"]]
534	11	79	2015-10-17 23:06:38.706065+00	2015-10-17 23:04:04.429+00	[["bueno", "1445123060329"], ["es", "1445123080109"], ["esencia", "1445123098573"], ["verlo", "1445123138022"], ["ver", "1445123156982"], ["ojos", "1445123190507"]]
535	11	120	2015-10-17 23:08:02.13353+00	2015-10-17 23:06:36.21+00	[["son", "1445123205037"], ["son", "1445123216562"], ["sol", "1445123229834"], ["esta", "1445123247633"], ["nublado", "1445123262026"], ["oscuro", "1445123273900"]]
536	11	67	2015-10-17 23:09:49.393482+00	2015-10-17 23:08:04.455+00	[["que", "1445123299861"], ["es", "1445123309726"], ["diuretico", "1445123326314"], ["de", "1445123345719"], ["america", "1445123357582"], ["zona", "1445123381230"]]
537	11	53	2015-10-17 23:11:25.827959+00	2015-10-17 23:09:53.336+00	[["mi", "1445123399500"], ["la", "1445123412723"], ["residuos", "1445123428445"], ["primer", "1445123459386"], ["de", "1445123469518"], ["berlin", "1445123477659"]]
538	11	64	2015-10-17 23:13:17.660773+00	2015-10-17 23:11:22.837+00	[["los", "1445123492814"], ["lo", "1445123501391"], ["remo", "1445123511756"], ["remo", "1445123528634"], ["lo", "1445123535343"], ["amamanto", "1445123550570"], ["una ", "1445123581380"], ["loba", "1445123589399"]]
539	11	112	2015-10-17 23:15:38.959305+00	2015-10-17 23:13:18.177+00	[["turcos", "1445123610640"], ["son", "1445123621785"], ["comen", "1445123635148"], ["por", "1445123646186"], ["vieron", "1445123660085"], ["un", "1445123670364"], ["los", "1445123717223"], ["lobos", "1445123730751"]]
540	11	66	2015-10-17 23:17:28.342177+00	2015-10-17 23:15:38.19+00	[["perro", "1445123747781"], ["vea", "1445123760610"], ["molesto", "1445123774506"], ["que", "1445123789837"], ["culpa", "1445123799521"], ["que", "1445123809928"], ["tire", "1445123817353"], ["la", "1445123821629"], ["primera", "1445123829527"], ["piedra", "1445123840159"]]
541	11	43	2015-10-17 23:18:21.675081+00	2015-10-17 23:17:27.276+00	[["puedo", "1445123861535"], ["lo", "1445123868531"], ["que", "1445123873995"], ["reluce", "1445123881486"], ["es", "1445123887995"], ["oro", "1445123893712"]]
542	11	56	2015-10-17 23:19:54.676797+00	2015-10-17 23:18:17.925+00	[["muchos", "1445123956616"], ["ser", "1445123963169"], ["en", "1445123969613"], ["de", "1445123975272"], ["actuar", "1445123986255"]]
543	11	35	2015-10-17 23:20:41.56209+00	2015-10-17 23:19:51.895+00	[["malo", "1445124010409"], ["que", "1445124015853"], ["mal", "1445124021737"], ["acompa\\u00f1ado", "1445124033597"]]
544	11	102	2015-10-17 23:21:44.149049+00	2015-10-17 23:20:37.357+00	[["que", "1445124044940"], ["lo", "1445124050589"], ["queda", "1445124059611"], ["una", "1445124067255"], ["un", "1445124075744"], ["diploma", "1445124082732"], ["nuevo", "1445124095669"]]
545	11	100	2015-10-17 23:22:36.940498+00	2015-10-17 23:21:40.069+00	[["es", "1445124105561"], ["dijo", "1445124116884"], ["una", "1445124125805"], ["con", "1445124131870"], ["con", "1445124139156"], ["medico", "1445124148664"]]
546	11	41	2015-10-17 23:23:29.515941+00	2015-10-17 23:22:34.283+00	[["lunes", "1445124168666"], ["sea", "1445124180478"], ["ultimo", "1445124191235"], ["rie", "1445124195615"], ["mejor", "1445124201069"]]
547	11	87	2015-10-17 23:24:39.228675+00	2015-10-17 23:23:26.324+00	[["cosas", "1445124214032"], ["buenas", "1445124222707"], ["conocen", "1445124235163"], ["bien", "1445124247947"], ["o", "1445124256280"], ["no", "1445124260921"], ["se", "1445124264931"], ["hacen", "1445124271004"]]
548	11	59	2015-10-17 23:25:55.723977+00	2015-10-17 23:24:35.836+00	[["es", "1445124280723"], ["un", "1445124286850"], ["de", "1445124293979"], ["la", "1445124324982"], ["pobres", "1445124337236"], ["mosqueteros", "1445124347533"]]
549	11	60	2015-10-17 23:27:03.209535+00	2015-10-17 23:25:51.442+00	[["puedo", "1445124363529"], ["como", "1445124372268"], ["que ", "1445124389059"], ["no", "1445124398820"], ["podras", "1445124406906"], ["cumplir", "1445124414770"]]
550	11	34	2015-10-17 23:27:55.453253+00	2015-10-17 23:26:58.418+00	[["se", "1445124427369"], ["roma", "1445124436593"], ["el", "1445124450563"], ["burro", "1445124457844"], ["se", "1445124462287"], ["soma", "1445124467220"]]
551	11	97	2015-10-17 23:28:51.911632+00	2015-10-17 23:27:51.384+00	[["y", "1445124479566"], ["tiene", "1445124490304"], ["bien", "1445124499607"], ["de", "1445124506441"], ["las", "1445124515035"], ["mujer", "1445124523455"]]
552	11	127	2015-10-17 23:31:44.092533+00	2015-10-17 23:28:49.342+00	[["a\\u00f1o", "1445124536667"], ["tiene", "1445124555986"], ["hablar", "1445124646843"], ["tiene", "1445124663558"], ["distintos", "1445124677400"], ["particularidad", "1445124695879"]]
553	11	92	2015-10-17 23:32:46.188707+00	2015-10-17 23:31:41.07+00	[["es", "1445124707484"], ["por", "1445124713148"], ["buena", "1445124720159"], ["para", "1445124728190"], ["estudiar", "1445124738177"], ["en", "1445124743273"], ["la", "1445124747112"], ["universidad", "1445124757694"]]
554	11	52	2015-10-17 23:33:16.692944+00	2015-10-17 23:32:42.37+00	[["los", "1445124768875"], ["dias", "1445124773950"], ["conducen", "1445124782622"], ["a", "1445124785796"], ["roma", "1445124788658"]]
555	11	122	2015-10-17 23:34:25.169256+00	2015-10-17 23:33:12.225+00	[["amor", "1445124803845"], ["hizo", "1445124812767"], ["dio", "1445124819655"], ["que", "1445124827863"], ["juan", "1445124840162"], ["mucama", "1445124850492"], ["que", "1445124856698"]]
556	11	65	2015-10-17 23:35:06.520498+00	2015-10-17 23:34:21.791+00	[["como", "1445124867911"], ["no", "1445124872850"], ["ser", "1445124877093"], ["esa", "1445124883848"], ["es", "1445124888803"], ["la", "1445124891675"], ["cuestion", "1445124898515"]]
557	11	46	2015-10-17 23:35:51.263737+00	2015-10-17 23:35:06.09+00	[["se", "1445124911835"], ["capitan", "1445124925047"], ["no", "1445124930283"], ["manda", "1445124935209"], ["marinero", "1445124943042"]]
558	11	124	2015-10-17 23:37:13.450356+00	2015-10-17 23:35:46.598+00	[["mi", "1445124951796"], ["lugar", "1445124959969"], ["no", "1445124969656"], ["se", "1445124979993"], ["empanadas", "1445124999772"], ["ricas", "1445125014079"], ["condimentadas", "1445125024969"]]
559	11	11	2015-10-17 23:38:08.010221+00	2015-10-17 23:37:10.556+00	[["que", "1445125040622"], ["no", "1445125049447"], ["herrero", "1445125058832"], ["cuchillo", "1445125069464"], ["de", "1445125074205"], ["palo", "1445125079730"]]
560	11	36	2015-10-17 23:39:21.055529+00	2015-10-17 23:38:05.585+00	[["amor", "1445125094611"], ["mete", "1445125105145"], ["por", "1445125110433"], ["por", "1445125124503"], ["viejo", "1445125132880"], ["que", "1445125137241"], ["por", "1445125141261"], ["diablo", "1445125152551"]]
561	11	12	2015-10-17 23:56:57.955402+00	2015-10-17 23:56:14.263+00	[["mejor", "1445126185575"], ["tiempo", "1445126193191"], ["buena", "1445126203998"], ["cara", "1445126209410"]]
563	11	78	2015-10-17 23:59:00.426529+00	2015-10-17 23:57:22.295+00	[["te", "1445126253452"], ["pescar", "1445126260631"], ["trabaja", "1445126276701"], ["sigue", "1445126289418"], ["sigas", "1445126300764"], ["una", "1445126321737"], ["lo", "1445126326983"], ["mismo", "1445126331859"]]
564	11	114	2015-10-17 23:59:56.831663+00	2015-10-17 23:58:55.597+00	[["que", "1445126341097"], ["son", "1445126349902"], ["la", "1445126357157"], ["son", "1445126363760"], ["en", "1445126369982"], ["a\\u00f1os", "1445126379924"], ["vacaciones", "1445126388539"]]
565	11	86	2015-10-18 00:00:42.530332+00	2015-10-17 23:59:52.488+00	[["hagas", "1445126399506"], ["el", "1445126404250"], ["la", "1445126410901"], ["mujer", "1445126418513"], ["de", "1445126421960"], ["tu", "1445126427431"], ["projimo", "1445126434257"]]
566	11	29	2015-10-18 00:01:25.464603+00	2015-10-18 00:00:37.728+00	[["con", "1445126444275"], ["quien", "1445126449701"], ["andas", "1445126456387"], ["y", "1445126459556"], ["te", "1445126463447"], ["dire", "1445126467679"], ["quien", "1445126472636"], ["eres", "1445126477373"]]
567	11	111	2015-10-18 00:02:25.174193+00	2015-10-18 00:01:20.502+00	[["hombre", "1445126495535"], ["se", "1445126502010"], ["un", "1445126516150"], ["muy", "1445126530345"], ["cartas", "1445126536656"]]
568	11	76	2015-10-18 00:03:10.795784+00	2015-10-18 00:02:19.973+00	[["pajaro", "1445126554980"], ["digas", "1445126564725"], ["de", "1445126570744"], ["lo", "1445126574464"], ["cosas", "1445126582737"]]
569	11	42	2015-10-18 00:03:41.083631+00	2015-10-18 00:03:08.19+00	[["bueno", "1445126594584"], ["ser", "1445126602103"], ["que", "1445126606995"], ["curar", "1445126612797"]]
570	11	55	2015-10-18 00:04:43.120905+00	2015-10-18 00:03:35.918+00	[["pedro", "1445126628508"], ["mujeres", "1445126639715"], ["les", "1445126650273"], ["comen", "1445126663112"], ["el", "1445126668242"], ["viento", "1445126674825"]]
571	11	95	2015-10-18 00:05:50.318999+00	2015-10-18 00:04:37.764+00	[["quien", "1445126685463"], ["le", "1445126691620"], ["gusta", "1445126696961"], ["la", "1445126702661"], ["television", "1445126721496"], ["en", "1445126730764"], ["domingos", "1445126741763"]]
572	11	83	2015-10-18 00:06:48.112617+00	2015-10-18 00:05:45.415+00	[["que", "1445126756423"], ["es", "1445126761465"], ["perjudicial", "1445126771187"], ["para ", "1445126788345"], ["la", "1445126793642"], ["salud", "1445126800026"]]
573	11	82	2015-10-18 00:07:18.645786+00	2015-10-18 00:06:43.13+00	[["cuando", "1445126812744"], ["llega", "1445126821145"], ["mi", "1445126825735"], ["amor", "1445126830355"]]
574	11	50	2015-10-18 00:08:31.709921+00	2015-10-18 00:07:13.419+00	[["se", "1445126848572"], ["contra", "1445126855416"], ["grecia", "1445126866161"], ["acropolis", "1445126883157"], ["del", "1445126894142"], ["los", "1445126903164"]]
575	11	113	2015-10-18 00:09:54.441107+00	2015-10-18 00:08:28.068+00	[["quien", "1445126917460"], ["le", "1445126922060"], ["le", "1445126926663"], ["llamaron", "1445126937721"], ["con", "1445126953058"], ["vidrios", "1445126961216"], ["cuento", "1445126970306"], ["auto", "1445126985880"]]
576	11	77	2015-10-18 00:10:59.551159+00	2015-10-18 00:09:50.425+00	[["que", "1445126995759"], ["late", "1445127005879"], ["una", "1445127013158"], ["organo", "1445127024284"], ["que", "1445127037102"], ["bombea", "1445127047444"], ["la", "1445127051244"]]
577	11	121	2015-10-18 00:12:04.948908+00	2015-10-18 00:10:58.521+00	[["es", "1445127064622"], ["un", "1445127073022"], ["bien", "1445127084295"], ["fuerza", "1445127096872"], ["de", "1445127104635"], ["sus", "1445127110145"], ["ojos", "1445127116664"]]
578	11	40	2015-10-18 00:12:49.671734+00	2015-10-18 00:12:01.31+00	[["quien", "1445127136950"], ["entendedor", "1445127146996"], ["pocas", "1445127152192"], ["palabras", "1445127161092"]]
579	11	45	2015-10-18 00:13:26.629196+00	2015-10-18 00:12:43.746+00	[["el", "1445127170517"], ["las", "1445127179267"], ["se", "1445127185232"], ["cuecen", "1445127193254"], ["habas", "1445127198102"]]
580	11	32	2015-10-18 00:14:47.948476+00	2015-10-18 00:13:22.249+00	[["lo", "1445127208207"], ["que", "1445127212763"], ["tienes", "1445127220750"], ["te", "1445127226287"], ["pero", "1445127234500"], ["no", "1445127242730"], ["hagas", "1445127248273"], ["hagas", "1445127263050"], ["yo", "1445127274441"], ["hago", "1445127279652"]]
581	11	117	2015-10-18 00:16:02.596455+00	2015-10-18 00:14:42.679+00	[["buena", "1445127292704"], ["es", "1445127298630"], ["pedro", "1445127308418"], ["es", "1445127315574"], ["muy", "1445127324823"], ["buena", "1445127336834"], ["buena", "1445127345968"], ["cocinera", "1445127354055"]]
582	11	18	2015-10-18 00:16:51.715598+00	2015-10-18 00:15:59.098+00	[["mi", "1445127366431"], ["regalao", "1445127375926"], ["no", "1445127379442"], ["se", "1445127382754"], ["le", "1445127386624"], ["miran", "1445127393672"], ["los", "1445127397934"], ["dientes", "1445127403134"]]
583	11	119	2015-10-18 00:17:47.249939+00	2015-10-18 00:16:46.628+00	[["que", "1445127413359"], ["del", "1445127421530"], ["un", "1445127428804"], ["metal", "1445127437601"], ["maldito", "1445127447849"], ["maleable", "1445127458936"]]
584	11	24	2015-10-18 00:18:46.947538+00	2015-10-18 00:17:45.566+00	[["es", "1445127473464"], ["de", "1445127478812"], ["ma\\u00f1ana", "1445127486361"], ["lo", "1445127490117"], ["que", "1445127494843"], ["puedas", "1445127502396"], ["hacer", "1445127510100"], ["hoy", "1445127518842"]]
585	11	74	2015-10-18 00:20:26.757937+00	2015-10-18 00:18:41.773+00	[["que", "1445127540821"], ["ultimo", "1445127556504"], ["esta", "1445127567694"], ["la", "1445127574308"], ["panaderia", "1445127583168"], ["tambien", "1445127594832"], ["tambien", "1445127609053"], ["pan", "1445127618193"]]
586	11	85	2015-10-18 00:21:27.005607+00	2015-10-18 00:20:22.281+00	[["que", "1445127629435"], ["fogon", "1445127644193"], ["producen", "1445127661786"], ["a", "1445127666500"], ["las", "1445127673393"], ["vacas", "1445127678863"]]
587	11	39	2015-10-18 00:22:15.675725+00	2015-10-18 00:21:22.807+00	[["llueva", "1445127692315"], ["lluvia", "1445127701847"], ["se", "1445127707620"], ["vista", "1445127712946"], ["de", "1445127715644"], ["seda", "1445127719670"], ["mona", "1445127724577"], ["se", "1445127727582"]]
588	11	93	2015-10-18 00:23:33.883335+00	2015-10-18 00:22:18.458+00	[["toma", "1445127747691"], ["un", "1445127756261"], ["buena", "1445127773102"], ["que", "1445127780943"], ["en", "1445127788070"], ["la", "1445127792338"], ["tren", "1445127805320"]]
589	11	15	2015-10-18 00:24:10.357448+00	2015-10-18 00:23:29.685+00	[["quien", "1445127821504"], ["necias", "1445127829807"], ["oidos", "1445127835952"], ["sordos", "1445127842247"]]
590	11	49	2015-10-18 00:24:52.036864+00	2015-10-18 00:24:05.441+00	[["soy", "1445127853228"], ["ningun", "1445127862128"], ["ser", "1445127867382"], ["peras", "1445127873769"], ["al", "1445127877721"], ["olmo", "1445127883722"]]
591	11	84	2015-10-18 00:26:17.144274+00	2015-10-18 00:25:09.741+00	[["no", "1445127918070"], ["jacta", "1445127933729"], ["quemado", "1445127943633"], ["con", "1445127950435"], ["el", "1445127961777"], ["vino", "1445127968565"]]
592	11	118	2015-10-18 00:27:39.95674+00	2015-10-18 00:26:12.146+00	[["la", "1445127980333"], ["guerra", "1445127989051"], ["crecen", "1445128001467"], ["trabajan", "1445128019966"], ["cazan", "1445128033695"], ["a", "1445128038733"], ["cazar", "1445128051614"]]
593	11	26	2015-10-18 00:28:50.104425+00	2015-10-18 00:27:35.318+00	[["mi", "1445128062714"], ["campo", "1445128082611"], ["de", "1445128088579"], ["los", "1445128092906"], ["ciegos", "1445128100386"], ["el", "1445128105050"], ["tuerto", "1445128111691"], ["es", "1445128115810"], ["rey", "1445128121520"]]
594	11	68	2015-10-18 00:29:54.123554+00	2015-10-18 00:28:44.558+00	[["lo", "1445128143212"], ["premio", "1445128151727"], ["con", "1445128158947"], ["el", "1445128163438"], ["sudor", "1445128169846"], ["de", "1445128173427"], ["tu", "1445128178369"], ["frente", "1445128185808"]]
870	4	98	2015-10-19 18:50:52.21706+00	2015-10-19 18:50:40.702+00	[["11", "1445280641314"], ["1", "1445280641534"], ["1", "1445280641743"], ["1", "1445280642175"], ["1", "1445280642387"]]
595	11	90	2015-10-18 00:31:05.504724+00	2015-10-18 00:29:50.472+00	[["que", "1445128198342"], ["cas", "1445128210742"], ["de", "1445128217966"], ["juan", "1445128227909"], ["se", "1445128238181"], ["hay", "1445128247677"], ["pan", "1445128256938"]]
596	11	70	2015-10-18 00:33:30.119361+00	2015-10-18 00:31:02.827+00	[["que", "1445128270468"], ["humeda", "1445128283851"], ["el", "1445128288831"], ["hombu", "1445128298858"], ["y", "1445128328318"], ["la", "1445128363751"], ["gauchos", "1445128382740"], ["la", "1445128393370"], ["cordillera", "1445128401761"]]
597	11	106	2015-10-18 00:34:18.94434+00	2015-10-18 00:33:24.827+00	[["tiene", "1445128411755"], ["un", "1445128420165"], ["en", "1445128427595"], ["convidar", "1445128440871"], ["amigos", "1445128450330"]]
598	11	101	2015-10-18 00:35:30.420869+00	2015-10-18 00:34:13.836+00	[["tu", "1445128465984"], ["esta", "1445128474020"], ["bigben", "1445128497948"], ["es", "1445128502938"], ["muy", "1445128514776"], ["humedo", "1445128522087"]]
599	11	21	2015-10-18 02:18:47.150424+00	2015-10-18 02:18:12.061+00	[["no", "1445134701368"], ["vale", "1445134709827"], ["por", "1445134714205"], ["dos", "1445134718576"]]
600	11	125	2015-10-18 02:20:19.300898+00	2015-10-18 02:18:44.295+00	[["buenos", "1445134749466"], ["son", "1445134764297"], ["los", "1445134774326"], ["simiente", "1445134792078"], ["de", "1445134800654"], ["maiz", "1445134810766"]]
601	11	109	2015-10-18 02:21:27.203428+00	2015-10-18 02:20:14.359+00	[["mala", "1445134831089"], ["de", "1445134836456"], ["la", "1445134840018"], ["ara\\u00f1as", "1445134850428"], ["son", "1445134856164"], ["ser", "1445134867641"], ["venenosa", "1445134878415"]]
602	11	23	2015-10-18 02:22:40.666691+00	2015-10-18 02:21:23.705+00	[["coma", "1445134889792"], ["mucho         ", "1445134915287"], ["madrugar", "1445134926681"], ["amanece}", "1445134936980"], ["mads", "1445134941699"], ["temprano", "1445134952112"]]
603	11	20	2015-10-18 02:23:21.006757+00	2015-10-18 02:22:35.332+00	[["lo", "1445134960567"], ["mejor", "1445134970340"], ["sin", "1445134975934"], ["mirar", "1445134982563"], ["a", "1445134985736"], ["quien", "1445134992663"]]
604	11	129	2015-10-18 02:24:09.519068+00	2015-10-18 02:23:15.285+00	[["la", "1445135003746"], ["mejor", "1445135012183"], ["de", "1445135018789"], ["juez", "1445135026860"], ["fue", "1445135036100"], ["por", "1445135040970"]]
605	11	128	2015-10-18 02:25:05.880352+00	2015-10-18 02:24:05.139+00	[["que", "1445135051050"], ["te", "1445135056465"], ["a", "1445135063555"], ["serte", "1445135068602"], ["tu", "1445135076200"], ["tu", "1445135087881"], ["que", "1445135097526"]]
606	11	69	2015-10-18 02:26:03.32369+00	2015-10-18 02:25:02.028+00	[["fue", "1445135107789"], ["un", "1445135114335"], ["de", "1445135119463"], ["los", "1445135126937"], ["angeles", "1445135135503"], ["de", "1445135144335"], ["diablo", "1445135154762"]]
607	11	99	2015-10-18 02:27:39.023117+00	2015-10-18 02:25:58.281+00	[["no", "1445135165454"], ["a", "1445135170421"], ["pueblo", "1445135186873"], ["de", "1445135196987"], ["mes", "1445135205146"], ["juan", "1445135224127"], ["amigos", "1445135231106"], ["lejanos", "1445135243675"], ["su", "1445135250470"]]
608	11	107	2015-10-18 02:28:49.086964+00	2015-10-18 02:27:35.656+00	[["seas", "1445135268856"], ["los", "1445135273718"], ["las", "1445135281516"], ["respuestas", "1445135289160"], ["del", "1445135296916"], ["su", "1445135307225"], ["comision", "1445135320270"]]
609	11	96	2015-10-18 02:30:01.671094+00	2015-10-18 02:28:44.438+00	[["plata", "1445135331775"], ["estaba", "1445135339010"], ["juan", "1445135351070"], ["es", "1445135356344"], ["una", "1445135361757"], ["parque", "1445135372423"], ["muy", "1445135380914"], ["lindo", "1445135393122"]]
610	11	48	2015-10-18 02:30:42.728412+00	2015-10-18 02:29:57.007+00	[["cuervos", "1445135407353"], ["y", "1445135411701"], ["te", "1445135415747"], ["sacaran", "1445135424874"], ["los", "1445135428685"], ["ojos", "1445135433873"]]
611	11	16	2015-10-18 02:32:04.350451+00	2015-10-18 02:31:10.643+00	[["lindos", "1445135481557"], ["no", "1445135486878"], ["ven", "1445135492573"], ["corazon", "1445135500801"], ["que", "1445135506657"], ["no", "1445135510120"], ["siente", "1445135515997"]]
612	11	62	2015-10-18 02:33:07.489148+00	2015-10-18 02:31:59.827+00	[["no", "1445135527223"], ["hay", "1445135534677"], ["caminos}", "1445135548067"], ["se", "1445135553454"], ["hace", "1445135558970"], ["camino", "1445135568348"], ["al", "1445135572347"], ["andar", "1445135578926"]]
613	11	116	2015-10-18 02:34:08.535484+00	2015-10-18 02:33:03.08+00	[["mes", "1445135587998"], ["no", "1445135594389"], ["a", "1445135599192"], ["vacaciones", "1445135611442"], ["a", "1445135618734"], ["pinamar", "1445135626277"], ["feliz", "1445135639708"]]
614	11	73	2015-10-18 02:34:50.477688+00	2015-10-18 02:34:04.037+00	[["que", "1445135652720"], ["andaba", "1445135663564"], ["un", "1445135668458"], ["ratones", "1445135682108"]]
615	11	13	2015-10-18 02:35:53.042423+00	2015-10-18 02:34:45.577+00	[["te", "1445135693275"], ["comida", "1445135715533"], ["no", "1445135726177"], ["hay", "1445135732046"], ["pan", "1445135738394"], ["duro", "1445135744470"]]
616	11	30	2015-10-18 02:36:26.43874+00	2015-10-18 02:35:48.187+00	[["quiero", "1445135757755"], ["tu", "1445135765394"], ["quien", "1445135771503"], ["pelea", "1445135778056"]]
617	11	37	2015-10-18 02:37:16.231215+00	2015-10-18 02:36:21.984+00	[["que", "1445135790506"], ["tenga", "1445135797752"], ["hierro", "1445135807390"], ["mata", "1445135812515"], ["a", "1445135815324"], ["hierro", "1445135822665"], ["muer", "1445135827651"]]
618	11	108	2015-10-18 02:38:22.210111+00	2015-10-18 02:37:10.752+00	[["que", "1445135842691"], ["son", "1445135850630"], ["quieren", "1445135871047"], ["al", "1445135879531"], ["la", "1445135884779"], ["evento", "1445135893389"]]
619	11	88	2015-10-18 02:38:56.240713+00	2015-10-18 02:38:17.944+00	[["que", "1445135903207"], ["son", "1445135910379"], ["creen", "1445135918546"], ["en", "1445135922993"], ["dios", "1445135927872"]]
620	11	28	2015-10-18 02:39:36.005662+00	2015-10-18 02:38:51.442+00	[["llovido", "1445135944369"], ["no", "1445135949247"], ["hay", "1445135953818"], ["nada", "1445135960186"], ["escrito", "1445135967141"]]
621	12	9	2015-10-18 10:24:08.710229+00	2015-10-18 10:21:37.333+00	[["_Carlos", "1445163713112"], ["borr\\u00f3", "1445163726248"], ["el codo", "1445163771483"], ["tobillo", "1445163783510"], ["derecho", "1445163792398"], ["caerse", "1445163823479"], ["vez", "1445163841592"]]
622	12	4	2015-10-18 10:25:13.863803+00	2015-10-18 10:24:11.054+00	[["grande", "1445163862736"], ["no existe", "1445163897363"], ["engorda", "1445163906711"]]
623	12	5	2015-10-18 10:26:30.124784+00	2015-10-18 10:25:11.197+00	[["casa", "1445163918784"], ["corta", "1445163931248"], ["peligrosa", "1445163938015"], ["icono", "1445163954543"], ["de la muerte", "1445163963989"], ["la", "1445163978863"], ["muerte", "1445163983007"]]
624	12	32	2015-10-18 10:27:52.689858+00	2015-10-18 10:26:29.531+00	[["bien", "1445163998415"], ["correcto", "1445164004847"], ["debes", "1445164010967"], ["hago", "1445164020096"], ["y", "1445164025007"], ["no", "1445164030103"], ["hagas", "1445164036951"], ["yo", "1445164051399"], ["yo", "1445164057903"], ["hago", "1445164065543"]]
625	12	27	2015-10-18 10:28:52.343507+00	2015-10-18 10:27:54.587+00	[["igual", "1445164085359"], ["madruga", "1445164092519"], ["pan", "1445164099935"], ["que", "1445164103223"], ["le ", "1445164119242"], ["cueste", "1445164125415"]]
626	12	20	2015-10-18 10:29:26.959119+00	2015-10-18 10:28:49.543+00	[["bien", "1445164137111"], ["bien", "1445164142607"], ["sin", "1445164145359"], ["mirar", "1445164147783"], ["a ", "1445164155775"], ["quien", "1445164159839"]]
627	12	93	2015-10-18 10:30:13.748765+00	2015-10-18 10:29:24.469+00	[["se", "1445164172711"], ["lo", "1445164175984"], ["banana", "1445164181599"], ["y la ", "1445164190524"], ["en ", "1445164197296"], ["la", "1445164201255"], ["basurero", "1445164206823"]]
871	4	56	2015-10-19 18:50:55.304438+00	2015-10-19 18:50:44.103+00	[["1", "1445280644604"], ["1", "1445280644819"], ["1", "1445280645029"], ["11", "1445280645257"], ["1", "1445280645463"]]
628	12	84	2015-10-18 10:31:02.373021+00	2015-10-18 10:30:12.252+00	[["habla", "1445164218767"], ["equivoca", "1445164229967"], ["ido", "1445164234391"], ["el", "1445164242895"], ["ser\\u00e1", "1445164249175"], ["vino", "1445164255239"]]
629	9	123	2015-10-18 11:44:29.770516+00	2015-10-18 11:44:53.967+00	[["se", "1445168709641"], ["enoj\\u00f3", "1445168721484"], ["con", "1445168726393"], ["su", "1445168729559"], ["el", "1445168733134"], ["sabado", "1445168737722"], ["dia", "1445168740839"]]
630	9	14	2015-10-18 11:45:05.381303+00	2015-10-18 11:45:45.448+00	[["es", "1445168750458"], ["perdon\\u00f3", "1445168758502"], ["la", "1445168762854"], ["al", "1445168767495"], ["que", "1445168770334"], ["no", "1445168772164"], ["tiene", "1445168774797"], ["dientes", "1445168778071"]]
631	9	87	2015-10-18 11:45:41.391845+00	2015-10-18 11:46:21.786+00	[["palabras", "1445168789840"], ["que", "1445168794509"], ["hacen", "1445168799537"], ["o", "1445168802177"], ["o", "1445168806901"], ["no", "1445168809646"], ["se", "1445168811740"], ["hacen", "1445168814677"]]
632	13	8	2015-10-18 13:15:13.642543+00	2015-10-18 13:13:44.976+00	[["inteligencia", "1445174036929"], ["vida", "1445174053695"], ["Margarita", "1445174062253"], ["fueron", "1445174067883"], ["ingresar", "1445174078721"], ["en barco", "1445174092052"], ["navegando", "1445174097701"], ["agua", "1445174105306"]]
633	13	4	2015-10-18 13:15:35.368912+00	2015-10-18 13:15:11.639+00	[["limpio", "1445174118160"], ["no", "1445174121266"], ["engorda", "1445174127259"]]
634	13	7	2015-10-18 13:16:22.354469+00	2015-10-18 13:15:31.08+00	[["navego", "1445174140990"], ["camp", "1445174149303"], ["canoero", "1445174155270"], ["integrante", "1445174160417"], ["comico", "1445174164737"], ["comedia", "1445174169341"], ["comedia", "1445174173939"]]
635	13	72	2015-10-18 13:17:09.166904+00	2015-10-18 13:16:19.758+00	[["instructor", "1445174187393"], ["Arturo", "1445174191555"], ["manejaba", "1445174201133"], ["los", "1445174204797"], ["caba\\u00f1", "1445174211017"], ["de", "1445174214261"], ["la", "1445174216703"], ["mesa", "1445174218644"], ["redonda", "1445174221044"]]
636	13	78	2015-10-18 13:18:05.617776+00	2015-10-18 13:17:05.668+00	[["tuvieras", "1445174240243"], ["celeste", "1445174245197"], ["esfuerzate", "1445174261764"], ["prueba", "1445174266023"], ["hagas", "1445174270474"], ["lo", "1445174272575"], ["lo", "1445174275086"], ["mismo", "1445174277268"]]
637	13	21	2015-10-18 13:18:21.616093+00	2015-10-18 13:18:00.784+00	[["bueno", "1445174287719"], ["vale", "1445174290375"], ["por", "1445174292012"], ["dos", "1445174293508"]]
638	13	111	2015-10-18 13:18:53.292344+00	2015-10-18 13:18:17.886+00	[["perro", "1445174306250"], ["de", "1445174311485"], ["magia", "1445174315883"], ["inteligentes", "1445174321123"], ["cartas", "1445174325189"]]
639	13	122	2015-10-18 13:19:30.875293+00	2015-10-18 13:18:48.756+00	[["sol", "1445174333573"], ["camino", "1445174341772"], ["pidio", "1445174345382"], ["hacer", "1445174348513"], ["su", "1445174353599"], ["mujer", "1445174357903"], ["que", "1445174362550"]]
640	13	63	2015-10-18 13:19:56.327507+00	2015-10-18 13:19:26.542+00	[["Agustin", "1445174372749"], ["cruzo", "1445174376934"], ["los", "1445174378931"], ["Andes", "1445174381388"], ["a", "1445174385591"], ["caballo", "1445174388207"]]
641	13	100	2015-10-18 13:20:26.111561+00	2015-10-18 13:19:52.03+00	[["Vicu\\u00f1a", "1445174397081"], ["solicito", "1445174401969"], ["visitar", "1445174408140"], ["el", "1445174411283"], ["un", "1445174415213"], ["medico", "1445174418012"]]
642	13	125	2015-10-18 13:21:04.815237+00	2015-10-18 13:20:21.743+00	[["titulares", "1445174430419"], ["molestan", "1445174438341"], ["los", "1445174445388"], ["cosecha", "1445174448913"], ["de", "1445174453044"], ["choclos", "1445174456487"]]
643	13	13	2015-10-18 13:21:49.910719+00	2015-10-18 13:21:00.389+00	[["el", "1445174465751"], ["hambre", "1445174471507"], ["cualquier", "1445174474561"], ["interesa", "1445174484422"], ["distincion", "1445174499168"], ["duro", "1445174501805"]]
644	13	62	2015-10-18 13:22:18.088444+00	2015-10-18 13:21:45.464+00	[["no", "1445174509008"], ["hay", "1445174517100"], ["camino", "1445174519584"], ["se", "1445174521797"], ["hace", "1445174524038"], ["camino", "1445174526061"], ["al", "1445174527895"], ["andar", "1445174529741"]]
645	13	77	2015-10-18 13:22:50.156287+00	2015-10-18 13:22:13.329+00	[["sol", "1445174537575"], ["late", "1445174543149"], ["un", "1445174547430"], ["organo", "1445174549880"], ["liso", "1445174553225"], ["es", "1445174558618"], ["sangre", "1445174562053"]]
646	13	55	2015-10-18 13:23:16.802786+00	2015-10-18 13:22:45.614+00	[["pan", "1445174569485"], ["tortugas", "1445174577159"], ["las", "1445174581459"], ["lleva", "1445174583251"], ["el", "1445174586696"], ["viento", "1445174588691"]]
647	13	57	2015-10-18 13:23:44.079334+00	2015-10-18 13:23:12.212+00	[["sol", "1445174596345"], ["propone", "1445174600417"], ["humano", "1445174609128"], ["ser", "1445174613559"], ["de", "1445174615989"]]
648	13	40	2015-10-18 13:24:01.19495+00	2015-10-18 13:23:39.98+00	[["pan", "1445174623793"], ["entendedor", "1445174628347"], ["poccas", "1445174630257"], ["palabras", "1445174633112"]]
649	13	19	2015-10-18 13:24:38.152079+00	2015-10-18 13:23:56.27+00	[["pide", "1445174645620"], ["hombre", "1445174650381"], ["en ", "1445174659983"], ["mano", "1445174663337"], ["que", "1445174665503"], ["cien", "1445174667365"], ["volando", "1445174669832"]]
650	13	115	2015-10-18 13:25:30.866947+00	2015-10-18 13:24:32.707+00	[["sol", "1445174678636"], ["intuyo", "1445174688695"], ["uno", "1445174693292"], ["sera", "1445174702364"], ["mi", "1445174709920"], ["tio", "1445174712680"], ["rural", "1445174716867"], ["inteligente", "1445174722763"]]
651	13	99	2015-10-18 13:26:21.468041+00	2015-10-18 13:25:26.364+00	[["Miguel", "1445174731858"], ["la", "1445174735435"], ["instituto", "1445174741587"], ["de", "1445174753292"], ["mi", "1445174757953"], ["su", "1445174761022"], ["parientes", "1445174764640"], ["que", "1445174769933"], ["su", "1445174773147"]]
652	13	18	2015-10-18 13:26:51.852825+00	2015-10-18 13:26:16.965+00	[["buen", "1445174781760"], ["regalado", "1445174787047"], ["no", "1445174788683"], ["se", "1445174790670"], ["le", "1445174792176"], ["miran", "1445174794300"], ["los ", "1445174799295"], ["dientes", "1445174803755"]]
653	13	54	2015-10-18 13:27:24.590364+00	2015-10-18 13:26:47.152+00	[["es", "1445174810916"], ["ante", "1445174821693"], ["categoria", "1445174830699"], ["guerra", "1445174834104"], ["mundial", "1445174836280"]]
654	13	38	2015-10-18 13:28:00.754761+00	2015-10-18 13:27:20.299+00	[["va", "1445174846457"], ["el", "1445174848212"], ["canto", "1445174850583"], ["a", "1445174852712"], ["la", "1445174859758"], ["fuente", "1445174862032"], ["que", "1445174864007"], ["al", "1445174866220"], ["final", "1445174868372"], ["se", "1445174870497"], ["llena", "1445174872665"]]
655	13	56	2015-10-18 13:28:26.743469+00	2015-10-18 13:27:56.612+00	[["nubes", "1445174883703"], ["mirar", "1445174889977"], ["en", "1445174893551"], ["de", "1445174896226"], ["hablar", "1445174898454"]]
656	13	12	2015-10-18 13:28:46.812549+00	2015-10-18 13:28:22.036+00	[["pan", "1445174907554"], ["tiempo", "1445174915034"], ["buena", "1445174917200"], ["caraq", "1445174918730"]]
657	13	58	2015-10-18 13:29:19.886025+00	2015-10-18 13:28:42.319+00	[["toldo", "1445174929707"], ["ladra", "1445174934837"], ["huesos", "1445174941226"], ["hueso", "1445174944724"], ["en", "1445174947565"], ["el", "1445174949307"], ["jardin", "1445174951794"]]
658	13	42	2015-10-18 13:29:48.211773+00	2015-10-18 13:29:16.254+00	[["ni\\u00f1o", "1445174964398"], ["terreno", "1445174974636"], ["que", "1445174977898"], ["curar", "1445174979917"]]
659	13	43	2015-10-18 13:30:19.306484+00	2015-10-18 13:29:46.49+00	[["siempre", "1445174996045"], ["lo", "1445174999142"], ["que", "1445175000733"], ["luce", "1445175002555"], ["es", "1445175008841"], ["oro", "1445175011227"]]
660	13	49	2015-10-18 13:30:50.874486+00	2015-10-18 13:30:14.23+00	[["digas", "1445175025362"], ["que", "1445175031995"], ["juzgar", "1445175035870"], ["peras", "1445175039221"], ["al", "1445175040555"], ["olmo", "1445175042586"]]
663	13	97	2015-10-18 13:32:08.801373+00	2015-10-18 13:31:25.957+00	[["estudio", "1445175095117"], ["quiere", "1445175100668"], ["con", "1445175103879"], ["rumbeado", "1445175114132"], ["su", "1445175117563"], ["mujer", "1445175120508"]]
664	13	92	2015-10-18 13:32:46.800018+00	2015-10-18 13:32:05.102+00	[["instigo", "1445175130475"], ["la", "1445175137011"], ["fuente", "1445175141068"], ["de", "1445175144162"], ["estudiar", "1445175148754"], ["medicina", "1445175153227"], ["la", "1445175155603"], ["universidad", "1445175158731"]]
665	13	17	2015-10-18 13:33:06.126947+00	2015-10-18 13:32:42.962+00	[["buen", "1445175168619"], ["madruga", "1445175172533"], ["dios", "1445175174230"], ["lo", "1445175175677"], ["ayuda", "1445175178058"]]
666	13	65	2015-10-18 13:33:28.239776+00	2015-10-18 13:33:01.957+00	[["inteligente", "1445175189635"], ["no", "1445175192532"], ["ser", "1445175193972"], ["esa", "1445175195490"], ["es", "1445175196821"], ["la", "1445175198018"], ["cuestion", "1445175200164"]]
667	13	53	2015-10-18 13:33:56.961591+00	2015-10-18 13:33:23.655+00	[["tierra", "1445175212068"], ["hay", "1445175218786"], ["la", "1445175221775"], ["bomba", "1445175223751"], ["de", "1445175226458"], ["berllin", "1445175228896"]]
668	13	68	2015-10-18 13:34:22.873279+00	2015-10-18 13:33:52.523+00	[["un", "1445175237741"], ["partido", "1445175241576"], ["con", "1445175246566"], ["el", "1445175247601"], ["sudor", "1445175249036"], ["de", "1445175250446"], ["tu", "1445175252571"], ["frente", "1445175254583"]]
669	13	88	2015-10-18 13:34:39.499773+00	2015-10-18 13:34:17.086+00	[["tres", "1445175263377"], ["no", "1445175265927"], ["creen", "1445175268428"], ["en", "1445175269955"], ["dios", "1445175271442"]]
670	13	112	2015-10-18 13:35:45.00256+00	2015-10-18 13:34:35.691+00	[["ni\\u00f1os", "1445175280868"], ["y", "1445175288451"], ["reunieron", "1445175305312"], ["del", "1445175312130"], ["vieron", "1445175317656"], ["tanta", "1445175320102"], ["su", "1445175331751"], ["pajaros", "1445175336732"]]
671	13	90	2015-10-18 13:36:31.353209+00	2015-10-18 13:35:41.387+00	[["casa", "1445175365150"], ["casa", "1445175370333"], ["de", "1445175372504"], ["Dios", "1445175375692"], ["no", "1445175378318"], ["hay", "1445175381189"], ["luz", "1445175383232"]]
672	13	80	2015-10-18 13:37:10.303143+00	2015-10-18 13:36:27.714+00	[["pajaro", "1445175395705"], ["del", "1445175399022"], ["tiene", "1445175402429"], ["dibujo", "1445175412676"], ["despues", "1445175416451"], ["de", "1445175418263"], ["la", "1445175419639"], ["lluvia", "1445175421993"]]
673	13	59	2015-10-18 13:37:36.686005+00	2015-10-18 13:37:05.976+00	[["fue", "1445175430691"], ["un", "1445175433473"], ["de", "1445175437022"], ["los", "1445175438772"], ["mosqueteros", "1445175444046"], ["mosqueteros", "1445175448627"]]
674	13	37	2015-10-18 13:38:06.510604+00	2015-10-18 13:37:31.96+00	[["tio", "1445175455694"], ["mal", "1445175458721"], ["dios", "1445175466120"], ["mata", "1445175469145"], ["a", "1445175470534"], ["hierro", "1445175472345"], ["muere", "1445175478457"]]
675	13	15	2015-10-18 13:38:32.234994+00	2015-10-18 13:38:01.679+00	[["buen", "1445175488949"], ["frias", "1445175498226"], ["oidos", "1445175501849"], ["sordos", "1445175503981"]]
676	13	124	2015-10-18 13:39:21.911155+00	2015-10-18 13:38:27.577+00	[["otro", "1445175511269"], ["tierra", "1445175517045"], ["no", "1445175519443"], ["hay", "1445175537445"], ["juegos", "1445175544404"], ["caseras", "1445175548721"], ["ricas", "1445175553870"]]
677	13	28	2015-10-18 13:39:40.504649+00	2015-10-18 13:39:17.761+00	[["todo", "1445175564061"], ["no", "1445175566364"], ["hay", "1445175568527"], ["nada", "1445175569938"], ["escrito", "1445175572239"]]
678	13	86	2015-10-18 13:40:07.834986+00	2015-10-18 13:39:35.529+00	[["digas", "1445175580701"], ["la", "1445175584958"], ["la", "1445175590242"], ["mujer", "1445175594371"], ["de", "1445175595863"], ["tu", "1445175597304"], ["projimo", "1445175599773"]]
679	13	113	2015-10-18 13:40:58.763819+00	2015-10-18 13:40:03.072+00	[["pio", "1445175607761"], ["no", "1445175610201"], ["le", "1445175612072"], ["entretiene", "1445175619048"], ["asi", "1445175623598"], ["palabras", "1445175630016"], ["invento", "1445175637480"], ["truco", "1445175650487"]]
680	13	107	2015-10-18 13:41:41.610464+00	2015-10-18 13:40:53.922+00	[["digas", "1445175659296"], ["ellos", "1445175664210"], ["las", "1445175666614"], ["instrucciones", "1445175670104"], ["que", "1445175685711"], ["la", "1445175690680"], ["empresa", "1445175693577"]]
681	13	121	2015-10-18 13:42:20.8485+00	2015-10-18 13:41:37.255+00	[["busco", "1445175701860"], ["la", "1445175711303"], ["bien", "1445175716823"], ["paciencia", "1445175720905"], ["de", "1445175725148"], ["sus", "1445175729016"], ["ojos", "1445175732584"]]
682	13	27	2015-10-18 13:42:40.504278+00	2015-10-18 13:42:16.532+00	[["tio", "1445175740724"], ["madruga", "1445175743817"], ["celeste", "1445175748071"], ["que", "1445175749358"], ["le", "1445175750645"], ["cueste", "1445175752468"]]
683	13	109	2015-10-18 13:43:21.099633+00	2015-10-18 13:42:35.597+00	[["lengua", "1445175761328"], ["de", "1445175763858"], ["mosquito", "1445175766832"], ["alima\\u00f1as", "1445175775103"], ["son", "1445175786298"], ["ser", "1445175789176"], ["peligrosas", "1445175792793"]]
684	13	20	2015-10-18 13:43:49.012411+00	2015-10-18 13:43:17.02+00	[["tu", "1445175802382"], ["inventario", "1445175809579"], ["sin", "1445175816005"], ["mirar", "1445175818152"], ["a", "1445175819297"], ["quien", "1445175820980"]]
685	13	73	2015-10-18 13:44:15.370469+00	2015-10-18 13:43:44.862+00	[["pan", "1445175828879"], ["ara\\u00f1a", "1445175834233"], ["la", "1445175840531"], ["ratones", "1445175847338"]]
686	13	127	2015-10-18 13:45:11.497205+00	2015-10-18 13:44:11.342+00	[["cual", "1445175874212"], ["en", "1445175877606"], ["dragon", "1445175888900"], ["es", "1445175892529"], ["sus", "1445175895431"], ["atraccion", "1445175903478"]]
687	13	69	2015-10-18 13:45:35.500053+00	2015-10-18 13:45:07.662+00	[["es", "1445175912776"], ["el", "1445175914259"], ["de", "1445175917092"], ["los", "1445175918759"], ["angeles", "1445175922039"], ["del", "1445175924882"], ["diablo", "1445175927251"]]
688	13	22	2015-10-18 13:45:54.843865+00	2015-10-18 13:45:30.921+00	[["casa", "1445175935555"], ["cerrada", "1445175941656"], ["no", "1445175943041"], ["entran", "1445175944723"], ["moscas", "1445175946809"]]
689	13	126	2015-10-18 13:46:27.021884+00	2015-10-18 13:45:50.424+00	[["es", "1445175956276"], ["va", "1445175959461"], ["mirado", "1445175965634"], ["una", "1445175969596"], ["a", "1445175971988"], ["nadie", "1445175974105"], ["hijos", "1445175978982"]]
690	13	23	2015-10-18 13:46:52.512648+00	2015-10-18 13:46:22.8+00	[["digas", "1445175986616"], ["mucho", "1445175990545"], ["madrugar", "1445175993025"], ["se", "1445175994509"], ["mas", "1445176001505"], ["temprano", "1445176004268"]]
691	13	35	2015-10-18 13:47:14.40689+00	2015-10-18 13:46:47.836+00	[["mirar", "1445176013402"], ["decir", "1445176017744"], ["mal", "1445176022361"], ["acompa\\u00f1ado", "1445176026380"]]
692	13	41	2015-10-18 13:47:39.767581+00	2015-10-18 13:47:15.71+00	[["que", "1445176039834"], ["mal", "1445176041753"], ["ultimo", "1445176044762"], ["rie", "1445176046464"], ["mejor", "1445176051746"]]
693	13	25	2015-10-18 13:48:08.454626+00	2015-10-18 13:47:35.081+00	[["digas", "1445176064418"], ["mal", "1445176069044"], ["que", "1445176070538"], ["por", "1445176071994"], ["bien", "1445176073431"], ["no", "1445176075080"], ["venga", "1445176080154"]]
694	13	71	2015-10-18 13:48:36.49168+00	2015-10-18 13:48:03.403+00	[["buen", "1445176087098"], ["le", "1445176090289"], ["crecia", "1445176093263"], ["la", "1445176095005"], ["nariz", "1445176097325"], ["cuando", "1445176100367"], ["vez", "1445176104124"], ["que", "1445176105440"], ["mentia", "1445176108463"]]
695	13	123	2015-10-18 13:49:14.954668+00	2015-10-18 13:48:31.246+00	[["viene", "1445176117052"], ["cree", "1445176122159"], ["con", "1445176126239"], ["su", "1445176128786"], ["que", "1445176132577"], ["dia", "1445176140820"], ["dia", "1445176146708"]]
696	13	29	2015-10-18 13:49:40.089284+00	2015-10-18 13:49:10.135+00	[["con", "1445176153349"], ["quien ", "1445176159822"], ["andas", "1445176163496"], ["y", "1445176165344"], ["te", "1445176166605"], ["dire", "1445176168080"], ["quien", "1445176169937"], ["eres", "1445176172085"]]
697	13	110	2015-10-18 13:50:17.231994+00	2015-10-18 13:49:34.755+00	[["va", "1445176181323"], ["el", "1445176186519"], ["lo", "1445176189103"], ["que", "1445176192885"], ["al", "1445176194747"], ["final", "1445176197064"], ["lo", "1445176199032"], ["convencio", "1445176204589"], ["creyo", "1445176208987"]]
698	13	10	2015-10-18 13:50:55.486305+00	2015-10-18 13:50:13.088+00	[["dice", "1445176239569"], ["abarca", "1445176243393"], ["poco", "1445176245017"], ["aprieta", "1445176247485"]]
699	13	60	2015-10-18 13:51:18.41015+00	2015-10-18 13:50:50.803+00	[["digas", "1445176254392"], ["lo", "1445176256681"], ["que", "1445176259275"], ["no", "1445176260829"], ["vas", "1445176262472"], ["cumplir", "1445176270177"]]
700	13	118	2015-10-18 13:52:00.023746+00	2015-10-18 13:51:13.453+00	[["la", "1445176278372"], ["guerra", "1445176286675"], ["se", "1445176291542"], ["no", "1445176295532"], ["acechan ", "1445176304338"], ["a", "1445176309834"], ["buscar", "1445176312025"]]
701	13	129	2015-10-18 13:52:26.644099+00	2015-10-18 13:51:55.688+00	[["tierra", "1445176319927"], ["cielo", "1445176324090"], ["de", "1445176327608"], ["corte", "1445176332444"], ["fue", "1445176335800"], ["a", "1445176338410"]]
702	13	81	2015-10-18 13:53:04.350935+00	2015-10-18 13:52:21.824+00	[["digas", "1445176347762"], ["creas", "1445176353824"], ["importancia", "1445176364422"], ["aludido", "1445176368302"], ["ni", "1445176371745"], ["aun", "1445176373543"], ["vencido", "1445176376330"]]
703	13	93	2015-10-18 13:53:35.169043+00	2015-10-18 13:52:59.076+00	[["vio", "1445176383030"], ["a", "1445176386922"], ["perla", "1445176392666"], ["llena", "1445176395739"], ["en", "1445176398223"], ["la", "1445176399662"], ["camino", "1445176406950"]]
704	13	31	2015-10-18 13:53:51.9876+00	2015-10-18 13:53:30.614+00	[["que", "1445176414188"], ["no", "1445176415609"], ["has", "1445176417033"], ["de", "1445176418181"], ["beber", "1445176420105"], ["dejala", "1445176421952"], ["correr", "1445176423975"]]
705	13	14	2015-10-18 13:54:24.523314+00	2015-10-18 13:53:47.755+00	[["aprieta", "1445176438593"], ["dio", "1445176442176"], ["pan", "1445176445403"], ["al", "1445176446637"], ["que", "1445176451436"], ["no", "1445176452787"], ["tiene", "1445176454374"], ["dientes", "1445176456480"]]
706	13	101	2015-10-18 13:54:52.555291+00	2015-10-18 13:54:19.128+00	[["la", "1445176463004"], ["hay", "1445176466848"], ["cielo", "1445176470087"], ["es", "1445176473125"], ["lluvioso", "1445176479810"], ["lluvioso", "1445176484331"]]
707	13	103	2015-10-18 13:55:20.87122+00	2015-10-18 13:54:47.676+00	[["Carrio", "1445176492827"], ["quiere", "1445176497108"], ["la", "1445176499736"], ["era", "1445176504399"], ["nada", "1445176509240"], ["problema", "1445176512856"]]
708	13	89	2015-10-18 13:55:44.575495+00	2015-10-18 13:55:16.181+00	[["es", "1445176520132"], ["el", "1445176522733"], ["buena", "1445176530025"], ["y", "1445176532023"], ["ma\\u00f1ana", "1445176534228"], ["navidad", "1445176536549"]]
709	13	76	2015-10-18 13:56:11.939514+00	2015-10-18 13:55:40.016+00	[["dices", "1445176547822"], ["digas", "1445176553450"], ["cuando", "1445176558693"], ["lo", "1445176561191"], ["cosas", "1445176563714"]]
710	13	11	2015-10-18 13:56:30.405805+00	2015-10-18 13:56:06.916+00	[["boca", "1445176571004"], ["de", "1445176573650"], ["herrero", "1445176576373"], ["cuchillo", "1445176578990"], ["de", "1445176580256"], ["palo", "1445176582415"]]
711	13	16	2015-10-18 13:56:47.616634+00	2015-10-18 13:56:25.376+00	[["que", "1445176588857"], ["no", "1445176590318"], ["ven", "1445176592098"], ["corazon", "1445176594495"], ["que", "1445176595795"], ["no", "1445176597183"], ["siente", "1445176599618"]]
712	13	45	2015-10-18 13:57:07.656236+00	2015-10-18 13:56:42.917+00	[["casa", "1445176606649"], ["las", "1445176609310"], ["hay", "1445176613764"], ["cuecen", "1445176617308"], ["habas", "1445176619651"]]
713	13	48	2015-10-18 13:57:23.964881+00	2015-10-18 13:57:02.749+00	[["cuervos", "1445176627188"], ["y", "1445176628943"], ["te", "1445176630332"], ["comeran", "1445176632391"], ["los", "1445176633965"], ["ojos", "1445176635756"]]
714	13	66	2015-10-18 13:57:59.025267+00	2015-10-18 13:57:20.571+00	[["tio", "1445176644612"], ["calla", "1445176648242"], ["libre", "1445176653629"], ["de", "1445176655023"], ["pecados", "1445176657448"], ["que", "1445176659053"], ["tire", "1445176664041"], ["la", "1445176665827"], ["primer", "1445176667975"], ["piedra", "1445176671022"]]
715	13	75	2015-10-18 13:58:29.738218+00	2015-10-18 13:57:53.969+00	[["feligreses", "1445176680144"], ["Magos", "1445176685233"], ["eran", "1445176687235"], ["los", "1445176690710"], ["al", "1445176695955"], ["los", "1445176698582"], ["ni\\u00f1os", "1445176701490"]]
716	13	87	2015-10-18 13:59:02.549708+00	2015-10-18 13:58:24.854+00	[["piedraas", "1445176709497"], ["son", "1445176713729"], ["dieron", "1445176718613"], ["o", "1445176724217"], ["o", "1445176726677"], ["no", "1445176730359"], ["se", "1445176732136"], ["hacen", "1445176734533"]]
717	13	33	2015-10-18 13:59:15.818174+00	2015-10-18 13:58:57.891+00	[["claras", "1445176741524"], ["conservan", "1445176744098"], ["la", "1445176745463"], ["amistad", "1445176747821"]]
718	13	34	2015-10-18 13:59:37.519144+00	2015-10-18 13:59:10.788+00	[["de", "1445176756603"], ["roma", "1445176758274"], ["el", "1445176760001"], ["burro", "1445176761922"], ["asoma", "1445176763757"], ["asoma", "1445176769309"]]
719	13	64	2015-10-18 14:00:08.082017+00	2015-10-18 13:59:32.079+00	[["raiz", "1445176778687"], ["y", "1445176782230"], ["Remo", "1445176786395"], ["Remo", "1445176790355"], ["los", "1445176792455"], ["amamanto", "1445176795562"], ["una", "1445176797730"], ["loboa", "1445176800071"]]
720	13	36	2015-10-18 14:00:33.763889+00	2015-10-18 14:00:03.317+00	[["tio", "1445176806685"], ["sabe", "1445176810262"], ["por", "1445176812166"], ["por", "1445176818345"], ["viejo", "1445176820252"], ["que", "1445176821919"], ["porf", "1445176823605"], ["diablo", "1445176825780"]]
721	13	98	2015-10-18 14:01:07.807904+00	2015-10-18 14:00:28.711+00	[["imagen", "1445176832644"], ["estuvo", "1445176838718"], ["mal", "1445176843649"], ["proyectarse", "1445176854182"], ["inesperada", "1445176859610"]]
722	13	30	2015-10-18 14:01:30.372381+00	2015-10-18 14:01:07.033+00	[["digas", "1445176872165"], ["bien", "1445176878050"], ["quien", "1445176880665"], ["pelea", "1445176882395"]]
723	13	108	2015-10-18 14:02:07.500983+00	2015-10-18 14:01:25.479+00	[["tigres", "1445176889135"], ["son", "1445176900292"], ["querian", "1445176905568"], ["hasta", "1445176909141"], ["las", "1445176912961"], ["mal", "1445176919518"]]
724	13	91	2015-10-18 14:02:45.843295+00	2015-10-18 14:02:03.294+00	[["calamaro", "1445176927794"], ["mucha", "1445176933085"], ["por", "1445176935486"], ["lo", "1445176938664"], ["incondicionales", "1445176946239"], [" queridos", "1445176957886"]]
725	13	61	2015-10-18 14:03:32.410862+00	2015-10-18 14:02:40.415+00	[["la", "1445176965065"], ["injusticia", "1445176974828"], ["otorga", "1445176988863"], ["con", "1445176993653"], ["quien", "1445176997047"], ["diccionario", "1445177004207"]]
726	13	120	2015-10-18 14:04:00.46617+00	2015-10-18 14:03:28.236+00	[["saben", "1445177014696"], ["son", "1445177017628"], ["sol", "1445177022884"], ["esta", "1445177025527"], ["nublado", "1445177028138"], ["nublado", "1445177032476"]]
727	13	26	2015-10-18 14:04:52.007445+00	2015-10-18 14:04:16.847+00	[["pan", "1445177060583"], ["cielo", "1445177065136"], ["de", "1445177068068"], ["los", "1445177069604"], ["ciegos", "1445177075385"], ["el", "1445177077570"], ["tuerto", "1445177079582"], ["es", "1445177080885"], ["rey", "1445177083811"]]
761	1	81	2015-10-19 13:31:13.942918+00	2015-10-19 13:31:02.946+00	[[".", "1445261463328"], [".", "1445261463516"], [".", "1445261463691"], [".", "1445261463869"], [".", "1445261464041"], [".", "1445261464227"], [".", "1445261464388"]]
728	13	70	2015-10-18 14:05:33.262817+00	2015-10-18 14:04:46.99+00	[["risa", "1445177090422"], ["tiene", "1445177093474"], ["el", "1445177094884"], ["ombu", "1445177103523"], ["y", "1445177108131"], ["el", "1445177109870"], ["gaucho", "1445177112497"], ["sus", "1445177120464"], ["cordillera", "1445177125289"]]
729	13	102	2015-10-18 14:06:06.013287+00	2015-10-18 14:05:28.65+00	[["buen", "1445177133222"], ["le", "1445177136541"], ["gusta", "1445177140066"], ["su", "1445177142761"], ["su", "1445177145060"], ["titulo", "1445177154985"], ["nuevo", "1445177157811"]]
730	13	119	2015-10-18 14:06:36.884163+00	2015-10-18 14:06:01.304+00	[["buen", "1445177165286"], ["brilla", "1445177173537"], ["un", "1445177177399"], ["metal", "1445177179726"], ["precioso", "1445177182267"], ["apreciado", "1445177188928"]]
731	13	96	2015-10-18 14:07:12.582793+00	2015-10-18 14:06:32.161+00	[["tierra", "1445177196843"], ["tiene", "1445177202109"], ["juan", "1445177205739"], ["es", "1445177208669"], ["un", "1445177212356"], ["patio", "1445177216244"], ["muy", "1445177222005"], ["grande", "1445177224397"]]
732	13	79	2015-10-18 14:08:00.130515+00	2015-10-18 14:07:07.524+00	[["grueso", "1445177233351"], ["es", "1445177245140"], ["invisible", "1445177250874"], ["a", "1445177252998"], ["las", "1445177254886"], ["necios", "1445177272158"]]
733	13	85	2015-10-18 14:08:24.181206+00	2015-10-18 14:07:56.151+00	[["pais", "1445177280137"], ["cielo", "1445177283428"], ["hay", "1445177286568"], ["a", "1445177289358"], ["las", "1445177291063"], ["vacas", "1445177295987"]]
734	13	117	2015-10-18 14:09:00.283591+00	2015-10-18 14:08:19.244+00	[["tierra", "1445177304073"], ["de", "1445177308954"], ["Dios", "1445177311512"], ["es", "1445177314794"], ["mi", "1445177316543"], ["mujer", "1445177322978"], ["buena", "1445177328880"], ["cocinera", "1445177332329"]]
735	13	105	2015-10-18 14:09:54.390056+00	2015-10-18 14:08:55.76+00	[["to", "1445177369817"], ["se", "1445177372742"], ["todos", "1445177380402"], ["fue", "1445177382861"], ["muy", "1445177386201"]]
736	13	47	2015-10-18 14:10:21.373135+00	2015-10-18 14:09:50.558+00	[["de", "1445177400146"], ["todos", "1445177402905"], ["consuelo", "1445177409073"], ["de", "1445177411273"], ["tontos", "1445177413416"]]
737	13	95	2015-10-18 14:10:52.544742+00	2015-10-18 14:10:16.651+00	[["buen", "1445177421512"], ["le", "1445177423797"], ["pusieron", "1445177426892"], ["remar", "1445177430303"], ["peliculas", "1445177434345"], ["en", "1445177436801"], ["domingos", "1445177444589"]]
738	13	32	2015-10-18 14:11:29.118995+00	2015-10-18 14:10:47.797+00	[["bien", "1445177452522"], ["que", "1445177455443"], ["te", "1445177457497"], ["digo", "1445177464899"], ["no", "1445177466522"], ["no", "1445177473233"], ["lo", "1445177474700"], ["que", "1445177476125"], ["yo", "1445177478012"], ["hago", "1445177481139"]]
739	13	116	2015-10-18 14:11:58.313946+00	2015-10-18 14:11:24.904+00	[["perro", "1445177490349"], ["va", "1445177494647"], ["a", "1445177497141"], ["viaje", "1445177500212"], ["al", "1445177503791"], ["la", "1445177507167"], ["monta\\u00f1a", "1445177510135"]]
740	13	83	2015-10-18 14:12:16.846817+00	2015-10-18 14:11:53.201+00	[["dia", "1445177517467"], ["es", "1445177520733"], ["nocivo", "1445177523301"], ["para", "1445177525515"], ["la", "1445177526846"], ["salud", "1445177528901"]]
741	13	74	2015-10-18 14:12:48.807007+00	2015-10-18 14:12:12.032+00	[["boca", "1445177536094"], ["campo", "1445177540754"], ["esta", "1445177543283"], ["barro", "1445177550122"], ["cocina", "1445177554055"], ["esta", "1445177557154"], ["el", "1445177559099"], ["pan", "1445177560775"]]
742	13	51	2015-10-18 14:13:15.888806+00	2015-10-18 14:12:44.51+00	[["tierra", "1445177569522"], ["viven", "1445177574070"], ["focas", "1445177580816"], ["son", "1445177583396"], ["muy", "1445177585677"], ["bajas", "1445177587734"]]
743	13	50	2015-10-18 14:13:46.346421+00	2015-10-18 14:13:11.068+00	[["tenia", "1445177597731"], ["contra", "1445177601624"], ["Atenas", "1445177607657"], ["gie\\u00a1", "1445177612462"], ["de", "1445177616889"], ["los", "1445177618402"]]
744	13	44	2015-10-18 14:14:04.315068+00	2015-10-18 14:13:41.587+00	[["dia", "1445177625887"], ["del", "1445177629021"], ["amo", "1445177630875"], ["engorda", "1445177632903"], ["el", "1445177634250"], ["ganado", "1445177636360"]]
745	13	106	2015-10-18 14:14:27.779009+00	2015-10-18 14:14:00.149+00	[["quiso", "1445177645248"], ["la", "1445177647789"], ["con", "1445177651657"], ["todos", "1445177654440"], ["compa\\u00f1eros", "1445177659618"]]
746	13	94	2015-10-18 14:14:55.614759+00	2015-10-18 14:14:22.916+00	[["tuvo", "1445177666290"], ["a", "1445177672029"], ["lo", "1445177674368"], ["paisaje", "1445177679732"], ["con", "1445177682861"], ["football", "1445177687655"]]
747	13	52	2015-10-18 14:15:27.39896+00	2015-10-18 14:14:51.32+00	[["iremos", "1445177695152"], ["viajeros", "1445177701316"], ["conducen", "1445177705655"], ["a Roma", "1445177714251"], ["roma", "1445177719453"]]
748	13	24	2015-10-18 14:15:50.212742+00	2015-10-18 14:15:23.021+00	[["fumes", "1445177727027"], ["para", "1445177730754"], ["ma\\u00f1ana", "1445177733104"], ["lo", "1445177734648"], ["que", "1445177735859"], ["puedes", "1445177737821"], ["hacer", "1445177739990"], ["hoy", "1445177742461"]]
749	13	67	2015-10-18 14:16:15.09373+00	2015-10-18 14:15:45.802+00	[["dia", "1445177749012"], ["es", "1445177752020"], ["una", "1445177754177"], ["de", "1445177757122"], ["america", "1445177760008"], ["argentina", "1445177767158"]]
750	13	114	2015-10-18 14:16:46.542644+00	2015-10-18 14:16:10.421+00	[["meninos", "1445177774377"], ["de", "1445177780500"], ["todos", "1445177784269"], ["son", "1445177787143"], ["en", "1445177790593"], ["el", "1445177794126"], ["vacaciones", "1445177798387"]]
751	13	104	2015-10-18 14:17:25.082315+00	2015-10-18 14:16:41.271+00	[["fue", "1445177804755"], ["con", "1445177812304"], ["todos", "1445177815281"], ["sobre", "1445177822072"], ["cosas", "1445177826748"], ["vida", "1445177837134"]]
752	13	84	2015-10-18 14:18:03.331241+00	2015-10-18 14:17:25.148+00	[["mal", "1445177850174"], ["dirige", "1445177854473"], ["atrasado", "1445177865336"], ["las", "1445177870173"], ["a", "1445177872867"], ["pecho", "1445177875176"]]
753	13	128	2015-10-18 14:18:50.496079+00	2015-10-18 14:17:59.236+00	[["tio", "1445177882392"], ["esta", "1445177887866"], ["sobre", "1445177893998"], ["manifestarse", "1445177899174"], [" sus", "1445177906193"], [" todos", "1445177916129"], ["amigos", "1445177922546"]]
754	13	39	2015-10-18 14:19:15.477507+00	2015-10-18 14:18:45.963+00	[["digas", "1445177931587"], ["vida", "1445177936515"], ["se", "1445177939015"], ["vista", "1445177940678"], ["dw", "1445177941864"], ["seda", "1445177943634"], ["mona", "1445177945495"], ["queda", "1445177947275"]]
755	1	117	2015-10-19 13:30:56.022929+00	2015-10-19 13:30:43.45+00	[["..", "1445261445298"], [".", "1445261445476"], [".", "1445261445641"], [".", "1445261445823"], [".", "1445261445992"], [".", "1445261446157"], [".", "1445261446318"], [".", "1445261446474"]]
756	1	17	2015-10-19 13:30:59.240124+00	2015-10-19 13:30:48.51+00	[["..", "1445261449182"], [".", "1445261449363"], [".", "1445261449523"], [".", "1445261449686"], [".", "1445261449848"]]
757	1	31	2015-10-19 13:31:02.04154+00	2015-10-19 13:30:51.093+00	[[".", "1445261451631"], [".", "1445261451830"], [".", "1445261452017"], [".", "1445261452179"], [".", "1445261452342"], [".", "1445261452526"], [".", "1445261452645"]]
758	1	58	2015-10-19 13:31:04.984525+00	2015-10-19 13:30:53.931+00	[["..", "1445261454523"], [".", "1445261454709"], [".", "1445261454885"], [".", "1445261455070"], [".", "1445261455252"], [".", "1445261455431"], [".", "1445261455593"]]
759	1	85	2015-10-19 13:31:08.012758+00	2015-10-19 13:30:56.905+00	[["..", "1445261457495"], [".", "1445261457674"], [".", "1445261458007"], [".", "1445261458153"], [".", "1445261458301"], [".", "1445261458462"]]
760	1	98	2015-10-19 13:31:11.014558+00	2015-10-19 13:30:59.967+00	[[".", "1445261460751"], [".", "1445261460934"], [".", "1445261461111"], [".", "1445261461276"], [".", "1445261461450"]]
762	1	70	2015-10-19 13:31:17.113495+00	2015-10-19 13:31:05.675+00	[[".", "1445261466102"], [".", "1445261466297"], [".", "1445261466480"], [".", "1445261466672"], [".", "1445261466870"], [".", "1445261467067"], [".", "1445261467248"], [".", "1445261467520"], [".", "1445261467711"]]
763	1	102	2015-10-19 13:31:20.064399+00	2015-10-19 13:31:09.059+00	[[".", "1445261469565"], [".", "1445261469777"], [".", "1445261469976"], [".", "1445261470155"], [".", "1445261470353"], [".", "1445261470535"], [".", "1445261470670"]]
764	1	75	2015-10-19 13:31:22.945545+00	2015-10-19 13:31:11.89+00	[[".", "1445261472476"], [".", "1445261472664"], [".", "1445261472847"], [".", "1445261473011"], [".", "1445261473177"], [".", "1445261473404"], [".", "1445261473548"]]
765	1	110	2015-10-19 13:31:26.894025+00	2015-10-19 13:31:15.142+00	[["..", "1445261476041"], [".", "1445261476238"], [".", "1445261476428"], [".", "1445261476612"], [".", "1445261476731"], [".", "1445261476915"], [".", "1445261477113"], [".", "1445261477297"], [".", "1445261477493"]]
766	1	37	2015-10-19 13:31:30.013792+00	2015-10-19 13:31:18.742+00	[["..", "1445261479481"], [".", "1445261479677"], [".", "1445261479867"], [".", "1445261480069"], [".", "1445261480264"], [".", "1445261480454"], [".", "1445261480626"]]
767	1	38	2015-10-19 13:31:33.892243+00	2015-10-19 13:31:22.134+00	[[".", "1445261482521"], [".", "1445261482700"], [".", "1445261482889"], [".", "1445261483083"], [".", "1445261483287"], [".", "1445261483487"], [".", "1445261483661"], [".", "1445261483839"], [".", "1445261484026"], [".", "1445261484184"], [".", "1445261484351"]]
768	1	121	2015-10-19 13:31:36.886196+00	2015-10-19 13:31:25.515+00	[["..", "1445261486243"], [".", "1445261486424"], [".", "1445261486612"], [".", "1445261486801"], [".", "1445261486989"], [".", "1445261487180"], [".", "1445261487341"]]
769	1	109	2015-10-19 13:31:39.878658+00	2015-10-19 13:31:28.666+00	[["..", "1445261489354"], [".", "1445261489544"], [".", "1445261489715"], [".", "1445261489910"], [".", "1445261490083"], [".", "1445261490277"], [".", "1445261490470"]]
770	1	34	2015-10-19 13:31:42.758351+00	2015-10-19 13:31:31.9+00	[["..", "1445261492322"], [".", "1445261492501"], [".", "1445261492695"], [".", "1445261492872"], [".", "1445261493033"], [".", "1445261493197"]]
771	1	103	2015-10-19 13:31:45.649642+00	2015-10-19 13:31:34.541+00	[["..", "1445261495106"], [".", "1445261495297"], [".", "1445261495477"], [".", "1445261495695"], ["..", "1445261495914"], [".", "1445261496080"]]
772	1	10	2015-10-19 13:31:47.677247+00	2015-10-19 13:31:37.248+00	[[".", "1445261497701"], [".", "1445261497890"], [".", "1445261498096"], [".", "1445261498281"]]
773	1	35	2015-10-19 13:31:49.934872+00	2015-10-19 13:31:39.434+00	[[".", "1445261499927"], [".", "1445261500142"], [".", "1445261500337"], [".", "1445261500529"]]
774	1	71	2015-10-19 13:31:54.045305+00	2015-10-19 13:31:41.766+00	[[".", "1445261502269"], [".", "1445261502469"], [".", "1445261502659"], [".", "1445261502827"], [".", "1445261503036"], [".", "1445261503242"], [".", "1445261503493"], [".", "1445261503916"], [".", "1445261504498"]]
775	1	118	2015-10-19 13:31:56.970492+00	2015-10-19 13:31:45.71+00	[[".", "1445261506245"], [".", "1445261506447"], [".", "1445261506649"], [".", "1445261506850"], [".", "1445261507036"], [".", "1445261507233"], [".", "1445261507418"]]
776	1	112	2015-10-19 13:32:00.160839+00	2015-10-19 13:31:48.91+00	[[".", "1445261509304"], [".", "1445261509500"], [".", "1445261509693"], [".", "1445261509867"], [".", "1445261510040"], [".", "1445261510251"], [".", "1445261510445"], [".", "1445261510598"]]
777	1	63	2015-10-19 13:32:02.768627+00	2015-10-19 13:31:52.005+00	[[".", "1445261512432"], [".", "1445261512627"], [".", "1445261512822"], [".", "1445261513003"], [".", "1445261513175"], [".", "1445261513370"]]
778	1	24	2015-10-19 13:32:07.133046+00	2015-10-19 13:31:54.723+00	[[".", "1445261515219"], [".", "1445261515413"], [".", "1445261515624"], [".", "1445261516022"], [".", "1445261516183"], ["..", "1445261516555"], [".", "1445261516754"], ["..", "1445261517582"]]
779	1	18	2015-10-19 13:32:10.388943+00	2015-10-19 13:31:58.879+00	[["..", "1445261519571"], [".", "1445261519788"], [".", "1445261519984"], [".", "1445261520170"], [".", "1445261520375"], [".", "1445261520579"], [".", "1445261520771"], [".", "1445261520969"]]
780	1	95	2015-10-19 13:32:13.552871+00	2015-10-19 13:32:02.419+00	[[".", "1445261522790"], [".", "1445261522991"], [".", "1445261523212"], [".", "1445261523426"], [".", "1445261523612"], [".", "1445261523811"], [".", "1445261523988"]]
781	1	107	2015-10-19 13:32:16.254519+00	2015-10-19 13:32:05.321+00	[[".", "1445261525722"], [".", "1445261525912"], [".", "1445261526091"], [".", "1445261526277"], [".", "1445261526525"], [".", "1445261526737"], [".", "1445261526856"]]
782	1	42	2015-10-19 13:32:19.010614+00	2015-10-19 13:32:08.286+00	[["..", "1445261529010"], [".", "1445261529221"], [".", "1445261529415"], [".", "1445261529604"]]
783	1	124	2015-10-19 13:32:22.47054+00	2015-10-19 13:32:11.175+00	[["..", "1445261531693"], [".", "1445261531902"], [".", "1445261532119"], [".", "1445261532315"], [".", "1445261532510"], [".", "1445261532707"], [".", "1445261532904"]]
784	1	61	2015-10-19 13:32:25.307245+00	2015-10-19 13:32:14.182+00	[[".", "1445261534787"], [".", "1445261535013"], [".", "1445261535211"], [".", "1445261535364"], [".", "1445261535554"], [".", "1445261535755"]]
785	4	2	2015-10-19 13:32:54.893186+00	2015-10-19 13:32:42.791+00	[["..", "1445261564028"], [".", "1445261564214"], [".", "1445261564386"], [".", "1445261564583"], [".", "1445261564766"], [".", "1445261564958"], [".", "1445261565150"], [".", "1445261565344"]]
786	4	5	2015-10-19 13:33:09.1232+00	2015-10-19 13:32:48.724+00	[["..", "1445261569468"], [".", "1445261569656"], [".", "1445261569835"], [".", "1445261570015"], [".", "1445261570171"], [".", "1445261570368"], [".", "1445261570575"]]
787	4	5	2015-10-19 13:33:14.162976+00	2015-10-19 13:32:59.248+00	[["..", "1445261580751"], [".", "1445261580765"], [".", "1445261580841"], [".", "1445261581024"], [".", "1445261581214"], [".", "1445261581394"], [".", "1445261581601"]]
788	4	9	2015-10-19 13:33:22.475353+00	2015-10-19 13:33:10.487+00	[[".", "1445261591687"], [".", "1445261591890"], [".", "1445261592078"], [".", "1445261592252"], [".", "1445261592439"], [".", "1445261592609"], [".", "1445261592837"]]
789	4	47	2015-10-19 13:33:38.218343+00	2015-10-19 13:33:24.002+00	[["..", "1445261604869"], [".", "1445261605078"], [".", "1445261605260"], [".", "1445261605465"], [".", "1445261605661"]]
790	4	47	2015-10-19 13:33:42.844621+00	2015-10-19 13:33:31.537+00	[["..", "1445261612494"], [".", "1445261612699"], [".", "1445261612887"], [".", "1445261613084"], [".", "1445261613284"]]
791	4	47	2015-10-19 13:33:44.168238+00	2015-10-19 13:33:17.439+00	[["..", "1445261598822"], [".", "1445261599022"], [".", "1445261599211"], [".", "1445261599382"], [".", "1445261599581"]]
792	4	67	2015-10-19 13:33:46.24439+00	2015-10-19 13:33:34.597+00	[["..", "1445261615705"], [".", "1445261615915"], [".", "1445261616106"], [".", "1445261616293"], [".", "1445261616481"], [".", "1445261616693"]]
793	4	42	2015-10-19 13:33:50.133897+00	2015-10-19 13:33:37.924+00	[["..", "1445261618967"], [".", "1445261619155"], [".", "1445261619343"], [".", "1445261619536"]]
794	4	53	2015-10-19 13:33:52.707137+00	2015-10-19 13:33:41.253+00	[["..", "1445261622177"], [".", "1445261622375"], [".", "1445261622575"], [".", "1445261622758"], [".", "1445261622948"], [".", "1445261623155"]]
795	4	93	2015-10-19 13:35:04.739779+00	2015-10-19 13:33:55.213+00	[["..", "1445261692807"], [".", "1445261693005"], [".", "1445261693171"], [".", "1445261693357"], [".", "1445261693552"], [".", "1445261693745"], [".", "1445261693945"]]
796	4	93	2015-10-19 13:35:07.016462+00	2015-10-19 13:34:55.671+00	[[".", "1445261696403"], [".", "1445261696626"], [".", "1445261696805"], [".", "1445261697002"], [".", "1445261697203"], [".", "1445261697399"], [".", "1445261697600"]]
797	4	34	2015-10-19 13:35:10.806702+00	2015-10-19 13:34:58.782+00	[["..", "1445261699661"], [".", "1445261699861"], [".", "1445261700050"], [".", "1445261700241"], [".", "1445261700426"], [".", "1445261700613"]]
798	4	60	2015-10-19 13:35:17.930643+00	2015-10-19 13:35:06.335+00	[["..", "1445261707430"], [".", "1445261707619"], [".", "1445261707801"], [".", "1445261707967"], [".", "1445261708165"], [".", "1445261708366"]]
799	4	128	2015-10-19 13:35:22.737601+00	2015-10-19 13:35:11.157+00	[["..", "1445261712033"], [".", "1445261712229"], [".", "1445261712416"], [".", "1445261712626"], [".", "1445261712801"], [".", "1445261713011"], [".", "1445261713186"]]
800	4	71	2015-10-19 13:35:26.689257+00	2015-10-19 13:35:14.436+00	[[".", "1445261715753"], [".", "1445261715938"], [".", "1445261716127"], [".", "1445261716303"], [".", "1445261716484"], [".", "1445261716674"], [".", "1445261716869"], [".", "1445261717061"], [".", "1445261717288"]]
801	4	87	2015-10-19 13:35:34.1738+00	2015-10-19 13:35:21.735+00	[["..", "1445261723631"], [".", "1445261723805"], [".", "1445261723974"], [".", "1445261724134"], [".", "1445261724287"], [".", "1445261724463"], [".", "1445261724636"], [".", "1445261724773"]]
802	4	52	2015-10-19 13:35:38.387315+00	2015-10-19 13:35:26.184+00	[["..", "1445261727273"], [".", "1445261727466"], [".", "1445261727645"], [".", "1445261727823"], [".", "1445261727980"]]
803	4	52	2015-10-19 13:35:40.356458+00	2015-10-19 13:35:29.24+00	[["..", "1445261730080"], [".", "1445261730262"], [".", "1445261730443"], [".", "1445261730629"], [".", "1445261730809"]]
804	4	82	2015-10-19 13:35:55.726068+00	2015-10-19 13:35:38.939+00	[["que", "1445261741673"], ["he", "1445261743465"], ["mi", "1445261744996"], ["amor", "1445261746171"]]
805	4	99	2015-10-19 13:36:18.942064+00	2015-10-19 13:35:47.924+00	[["fue", "1445261749977"], ["a", "1445261751152"], ["barri", "1445261756231"], ["de", "1445261758211"], ["a", "1445261759759"], ["la", "1445261761529"], ["amigos", "1445261763192"], ["de", "1445261764574"], ["espa\\u00f1a", "1445261766529"]]
806	4	99	2015-10-19 13:37:33.292791+00	2015-10-19 13:36:15.262+00	[["fue", "1445261829594"], ["a ", "1445261833491"], ["mes", "1445261835065"], ["pasado", "1445261836264"], ["a", "1445261837382"], ["unos", "1445261838261"], ["amigos", "1445261839290"], ["de", "1445261841604"], ["Europa", "1445261843385"]]
807	4	62	2015-10-19 13:37:45.828542+00	2015-10-19 13:37:24.89+00	[["no", "1445261847386"], ["hay", "1445261848688"], ["camino", "1445261850076"], ["se", "1445261850817"], ["hace", "1445261851811"], ["camino", "1445261853030"], ["al", "1445261854221"], ["andar", "1445261855238"]]
808	4	62	2015-10-19 13:38:57.960376+00	2015-10-19 13:38:00.648+00	[["no ", "1445261917128"], ["hay", "1445261919031"], ["camino", "1445261920605"], ["se", "1445261921276"], ["hace", "1445261922038"], ["camino", "1445261923498"], ["al", "1445261924964"], ["andar", "1445261925986"]]
809	4	37	2015-10-19 13:39:17.300773+00	2015-10-19 13:38:49.068+00	[["que", "1445261931212"], ["mucho", "1445261933810"], ["hierro", "1445261941157"], ["mata", "1445261942201"], ["a", "1445261943190"], ["hierro", "1445261945331"], ["muere", "1445261947726"]]
810	4	73	2015-10-19 13:39:29.003031+00	2015-10-19 13:39:11.399+00	[["que ", "1445261954729"], ["a", "1445261958028"], ["a", "1445261958750"], ["a", "1445261959431"]]
811	4	88	2015-10-19 13:39:42.841146+00	2015-10-19 13:39:29.533+00	[["a", "1445261970504"], ["a", "1445261971063"], ["a", "1445261971509"], ["a", "1445261971954"], ["a", "1445261972420"]]
812	4	88	2015-10-19 13:39:44.493041+00	2015-10-19 13:39:24.243+00	[["a", "1445261965454"], ["a", "1445261966187"], ["a", "1445261966941"], ["a", "1445261967608"], ["a", "1445261968220"]]
813	4	22	2015-10-19 13:39:49.356871+00	2015-10-19 13:39:36.485+00	[["a", "1445261977763"], ["a", "1445261978312"], ["a", "1445261978539"], ["a", "1445261978733"], ["a", "1445261978918"]]
814	4	22	2015-10-19 13:39:51.539693+00	2015-10-19 13:39:40.345+00	[["a", "1445261981418"], ["a", "1445261981605"], ["a", "1445261981775"], ["aa", "1445261981949"], ["a", "1445261982113"]]
815	4	40	2015-10-19 13:39:56.624802+00	2015-10-19 13:39:44.304+00	[["a", "1445261985602"], ["aaa", "1445261986239"], ["aa", "1445261986743"], ["a", "1445261987060"]]
816	4	106	2015-10-19 13:40:05.298254+00	2015-10-19 13:39:52.927+00	[["a", "1445261994937"], ["a", "1445261995125"], ["a", "1445261995317"], ["a", "1445261995535"], ["a", "1445261995739"]]
817	4	15	2015-10-19 13:40:13.01031+00	2015-10-19 13:40:00.178+00	[["a", "1445262001527"], ["a", "1445262001735"], ["a", "1445262001929"], ["a", "1445262002130"]]
818	4	12	2015-10-19 13:40:17.271912+00	2015-10-19 13:40:05.251+00	[["a", "1445262006894"], ["a", "1445262007101"], ["a", "1445262007293"], ["a", "1445262007494"]]
819	4	115	2015-10-19 13:43:02.044932+00	2015-10-19 13:40:10.749+00	[[".", "1445262163576"], [".", "1445262164388"], [".", "1445262164929"], [".", "1445262165401"], [".", "1445262165863"], [".", "1445262166304"], [".", "1445262166706"], [".", "1445262167217"]]
820	4	103	2015-10-19 13:44:30.553674+00	2015-10-19 13:43:57.359+00	[[".", "1445262259766"], ["..", "1445262260099"], [".", "1445262260378"], [".", "1445262260590"], [".", "1445262260780"], [".", "1445262260972"]]
821	4	32	2015-10-19 13:44:36.390292+00	2015-10-19 13:44:24.349+00	[["..", "1445262265057"], [".", "1445262265253"], [".", "1445262265442"], [".", "1445262265639"], [".", "1445262265823"], [".", "1445262266003"], [".", "1445262266210"], [".", "1445262266374"], [".", "1445262266574"], [".", "1445262266819"]]
822	4	43	2015-10-19 13:44:41.804243+00	2015-10-19 13:44:30.444+00	[["..", "1445262271192"], [".", "1445262271377"], [".", "1445262271561"], [".", "1445262271734"], [".", "1445262271901"], [".", "1445262272084"]]
823	4	92	2015-10-19 13:44:47.300115+00	2015-10-19 13:44:34.939+00	[["..", "1445262275737"], [".", "1445262275934"], [".", "1445262276115"], [".", "1445262276298"], [".", "1445262276472"], ["..", "1445262277052"], [".", "1445262277254"], [".", "1445262277727"]]
824	1	32	2015-10-19 14:19:47.947286+00	2015-10-19 14:19:35.036+00	[["..", "1445264376671"], [".", "1445264376861"], [".", "1445264377035"], [".", "1445264377212"], [".", "1445264377388"], [".", "1445264377574"], [".", "1445264377760"], [".", "1445264377930"], [".", "1445264378119"], [".", "1445264378310"]]
825	1	73	2015-10-19 14:19:51.769926+00	2015-10-19 14:19:40.736+00	[["..", "1445264381654"], [".", "1445264381833"], [".", "1445264381989"], ["..", "1445264382308"]]
826	1	84	2015-10-19 14:20:09.243146+00	2015-10-19 14:19:56.552+00	[["..", "1445264398177"], [".", "1445264398345"], [".", "1445264398517"], [".", "1445264398692"], [".", "1445264398856"], [".", "1445264399021"]]
827	1	104	2015-10-19 18:47:35.692134+00	2015-10-19 18:47:23.827+00	[["1", "1445280445033"], ["1", "1445280445205"], ["1", "1445280445376"], ["1", "1445280445529"], ["1", "1445280445689"], ["1", "1445280445856"]]
828	1	82	2015-10-19 18:47:38.960681+00	2015-10-19 18:47:27.877+00	[["1", "1445280448605"], ["1", "1445280448767"], ["1", "1445280448947"], ["1", "1445280449120"]]
829	1	29	2015-10-19 18:47:42.977287+00	2015-10-19 18:47:31.159+00	[["1", "1445280452044"], ["1", "1445280452220"], ["1", "1445280452392"], ["1", "1445280452570"], ["1", "1445280452746"], ["1", "1445280452919"], ["1", "1445280453109"], ["1", "1445280453296"]]
830	1	33	2015-10-19 18:47:46.13524+00	2015-10-19 18:47:34.967+00	[["1", "1445280455800"], ["1", "1445280455965"], ["1", "1445280456128"], ["1", "1445280456298"]]
831	1	53	2015-10-19 18:47:49.531069+00	2015-10-19 18:47:38.315+00	[["1", "1445280458836"], ["1", "1445280459012"], ["1", "1445280459178"], ["1", "1445280459347"], ["1", "1445280459507"], ["1", "1445280459671"]]
832	1	120	2015-10-19 18:47:52.979677+00	2015-10-19 18:47:41.631+00	[["1", "1445280462297"], ["1", "1445280462461"], ["1", "1445280462634"], ["1", "1445280462800"], ["1", "1445280462967"], ["1", "1445280463143"]]
869	4	111	2015-10-19 18:50:48.643334+00	2015-10-19 18:50:37.665+00	[["1", "1445280638119"], ["11", "1445280638324"], ["1", "1445280638531"], ["1", "1445280638747"], ["1", "1445280638955"]]
833	1	113	2015-10-19 18:47:57.852041+00	2015-10-19 18:47:44.965+00	[["11", "1445280465638"], ["1", "1445280465815"], ["1", "1445280465983"], ["1", "1445280466152"], ["1", "1445280466319"], ["111", "1445280467144"], ["1", "1445280467385"], ["1", "1445280468175"]]
834	1	125	2015-10-19 18:48:01.473618+00	2015-10-19 18:47:50.131+00	[["1", "1445280470732"], ["1", "1445280470915"], ["1", "1445280471087"], ["1", "1445280471261"], ["1", "1445280471435"], ["1", "1445280471611"]]
835	1	50	2015-10-19 18:48:04.814043+00	2015-10-19 18:47:53.573+00	[["1", "1445280474073"], ["1", "1445280474248"], ["1", "1445280474422"], ["1", "1445280474602"], ["1", "1445280474777"], ["1", "1445280474958"]]
836	1	78	2015-10-19 18:48:09.35613+00	2015-10-19 18:47:56.966+00	[["1", "1445280477569"], ["1", "1445280477776"], ["11", "1445280477971"], ["1", "1445280478154"], ["1", "1445280478333"], ["1", "1445280478515"], ["1", "1445280479229"], ["1", "1445280479486"]]
837	1	56	2015-10-19 18:48:12.588268+00	2015-10-19 18:48:01.196+00	[["1", "1445280481990"], ["1", "1445280482176"], ["1", "1445280482359"], ["1", "1445280482549"], ["1", "1445280482732"]]
838	1	67	2015-10-19 18:48:15.978364+00	2015-10-19 18:48:04.643+00	[["1", "1445280485190"], ["1", "1445280485379"], ["1", "1445280485562"], ["1", "1445280485745"], ["1", "1445280485928"], ["1", "1445280486125"]]
839	1	20	2015-10-19 18:48:19.492319+00	2015-10-19 18:48:08.05+00	[["1", "1445280488708"], ["1", "1445280488894"], ["1", "1445280489077"], ["1", "1445280489270"], ["1", "1445280489457"], ["1", "1445280489647"]]
840	1	41	2015-10-19 18:48:23.002056+00	2015-10-19 18:48:11.485+00	[["1", "1445280492194"], ["1", "1445280492390"], ["1", "1445280492587"], ["11", "1445280492783"], ["1", "1445280493158"]]
841	1	23	2015-10-19 18:48:26.832031+00	2015-10-19 18:48:15.122+00	[["1", "1445280495975"], ["1", "1445280496175"], ["1", "1445280496365"], ["1", "1445280496568"], ["1", "1445280496778"], ["1", "1445280496980"]]
842	1	12	2015-10-19 18:48:30.444857+00	2015-10-19 18:48:19.153+00	[["1", "1445280499826"], ["1", "1445280500025"], ["11", "1445280500225"], ["1", "1445280500609"]]
843	1	44	2015-10-19 18:48:33.871139+00	2015-10-19 18:48:22.356+00	[["1", "1445280503040"], ["1", "1445280503243"], ["1", "1445280503449"], ["1", "1445280503642"], ["1", "1445280503833"], ["1", "1445280504027"]]
844	1	65	2015-10-19 18:48:38.504613+00	2015-10-19 18:48:26.743+00	[["1", "1445280507311"], ["11", "1445280507521"], ["1", "1445280507726"], ["1", "1445280507926"], ["1", "1445280508318"], ["1", "1445280508516"], ["1", "1445280508813"]]
845	1	97	2015-10-19 18:48:42.284921+00	2015-10-19 18:48:30.612+00	[["11", "1445280511445"], ["1", "1445280511642"], ["1", "1445280511840"], ["1", "1445280512037"], ["1", "1445280512222"], ["1", "1445280512604"]]
846	1	51	2015-10-19 18:48:46.376045+00	2015-10-19 18:48:34.483+00	[["1", "1445280515151"], ["11", "1445280515351"], ["11", "1445280515745"], ["1", "1445280515938"], ["1", "1445280516122"], ["11", "1445280516541"]]
847	1	26	2015-10-19 18:48:51.005545+00	2015-10-19 18:48:38.286+00	[["11", "1445280518984"], ["1", "1445280519177"], ["1", "1445280519387"], ["1", "1445280519577"], ["1", "1445280519767"], ["1", "1445280519955"], ["11", "1445280520343"], ["11", "1445280521083"], ["1", "1445280521307"]]
848	1	123	2015-10-19 18:48:54.814471+00	2015-10-19 18:48:43.108+00	[["1", "1445280523769"], ["1", "1445280523976"], ["11", "1445280524186"], ["1", "1445280524389"], ["1", "1445280524581"], ["1", "1445280524774"], ["1", "1445280524972"]]
849	1	126	2015-10-19 18:48:58.991246+00	2015-10-19 18:48:46.919+00	[["11", "1445280527417"], ["1", "1445280527616"], ["1", "1445280527816"], ["1", "1445280528022"], ["1", "1445280528219"], ["1", "1445280528416"], ["1", "1445280529136"]]
850	1	89	2015-10-19 18:49:02.361725+00	2015-10-19 18:48:51.119+00	[["1", "1445280531665"], ["1", "1445280531865"], ["1", "1445280532071"], ["1", "1445280532271"], ["1", "1445280532461"], ["1", "1445280532661"]]
851	1	30	2015-10-19 18:49:05.698383+00	2015-10-19 18:48:54.395+00	[["1", "1445280535241"], ["1", "1445280535453"], ["1", "1445280535660"], ["1", "1445280535857"]]
852	1	100	2015-10-19 18:49:09.187294+00	2015-10-19 18:48:57.46+00	[["1", "1445280538272"], ["1", "1445280538485"], ["1", "1445280538705"], ["1", "1445280538918"], ["1", "1445280539117"], ["1", "1445280539325"]]
853	1	60	2015-10-19 18:49:12.915363+00	2015-10-19 18:49:00.93+00	[["1", "1445280542214"], ["1", "1445280542426"], ["1", "1445280542623"], ["1", "1445280542823"], ["1", "1445280543019"], ["1", "1445280543236"]]
854	1	129	2015-10-19 18:49:37.350945+00	2015-10-19 18:49:24.499+00	[["..", "1445280566541"], [".", "1445280566726"], [".", "1445280566910"], [".", "1445280567104"], [".", "1445280567297"], [".", "1445280567507"]]
855	4	83	2015-10-19 18:49:56.26885+00	2015-10-19 18:49:44.411+00	[["..", "1445280585476"], [".", "1445280585805"], [".", "1445280585970"], [".", "1445280586122"], [".", "1445280586279"], [".", "1445280586422"]]
856	4	118	2015-10-19 18:49:59.980291+00	2015-10-19 18:49:48.407+00	[["1", "1445280588649"], ["1", "1445280588835"], ["1", "1445280589011"], ["1", "1445280589181"], ["1", "1445280589347"], ["1", "1445280589522"], ["11", "1445280590140"]]
857	4	125	2015-10-19 18:50:03.218339+00	2015-10-19 18:49:52.003+00	[["1", "1445280592684"], ["1", "1445280592853"], ["1", "1445280593019"], ["1", "1445280593186"], ["1", "1445280593345"], ["1", "1445280593518"]]
858	4	64	2015-10-19 18:50:07.738796+00	2015-10-19 18:49:55.681+00	[["11", "1445280596314"], ["1", "1445280596665"], ["11", "1445280596839"], ["1", "1445280597013"], ["1", "1445280597190"], ["11", "1445280597535"], ["1", "1445280597713"], ["1", "1445280597898"]]
859	4	94	2015-10-19 18:50:12.82558+00	2015-10-19 18:49:59.772+00	[["1", "1445280601119"], ["1", "1445280601301"], ["1", "1445280601469"], ["1", "1445280601640"], ["1", "1445280601823"], ["1", "1445280601992"]]
860	4	110	2015-10-19 18:50:15.867429+00	2015-10-19 18:50:03.826+00	[["1", "1445280604563"], ["1", "1445280604752"], ["1", "1445280604943"], ["11", "1445280605135"], ["1", "1445280605310"], ["1", "1445280605495"], ["1", "1445280605667"], ["1", "1445280605851"], ["1", "1445280606029"]]
861	4	29	2015-10-19 18:50:20.39122+00	2015-10-19 18:50:08.053+00	[["1", "1445280608627"], ["1", "1445280608817"], ["1", "1445280609003"], ["1", "1445280609186"], ["11", "1445280609371"], ["11", "1445280609743"], ["1", "1445280609918"], ["1", "1445280610110"]]
862	4	127	2015-10-19 18:50:23.937355+00	2015-10-19 18:50:12.385+00	[["11", "1445280612993"], ["1", "1445280613184"], ["1", "1445280613371"], ["1", "1445280613549"], ["1", "1445280613739"], ["1", "1445280613919"]]
863	4	48	2015-10-19 18:50:27.231533+00	2015-10-19 18:50:15.812+00	[["11", "1445280616598"], ["1", "1445280616789"], ["1", "1445280616980"], ["1", "1445280617169"], ["1", "1445280617352"], ["1", "1445280617538"]]
864	4	69	2015-10-19 18:50:31.174868+00	2015-10-19 18:50:19.482+00	[["11", "1445280620191"], ["1", "1445280620385"], ["1", "1445280620579"], ["1", "1445280620768"], ["1", "1445280620955"], ["1", "1445280621138"], ["1", "1445280621328"]]
865	4	119	2015-10-19 18:50:34.890183+00	2015-10-19 18:50:23.404+00	[["1", "1445280624022"], ["1", "1445280624222"], ["1", "1445280624421"], ["11", "1445280624637"], ["1", "1445280624834"], ["1", "1445280625023"]]
866	4	107	2015-10-19 18:50:38.354216+00	2015-10-19 18:50:26.863+00	[["1", "1445280627472"], ["11", "1445280627678"], ["1", "1445280627880"], ["1", "1445280628078"], ["1", "1445280628273"], ["1", "1445280628463"], ["1", "1445280628647"]]
867	4	116	2015-10-19 18:50:41.999368+00	2015-10-19 18:50:30.547+00	[["11", "1445280631112"], ["1", "1445280631313"], ["1", "1445280631516"], ["1", "1445280631715"], ["1", "1445280631913"], ["1", "1445280632110"], ["1", "1445280632300"]]
868	4	63	2015-10-19 18:50:45.55231+00	2015-10-19 18:50:34.047+00	[["11", "1445280634677"], ["1", "1445280634887"], ["1", "1445280635093"], ["1", "1445280635300"], ["1", "1445280635503"], ["1", "1445280635701"]]
872	4	104	2015-10-19 18:50:58.668129+00	2015-10-19 18:50:47.221+00	[["1", "1445280647716"], ["1", "1445280647924"], ["1", "1445280648140"], ["1", "1445280648364"], ["1", "1445280648590"], ["1", "1445280648824"]]
873	4	79	2015-10-19 18:51:02.111852+00	2015-10-19 18:50:50.669+00	[["1", "1445280651207"], ["1", "1445280651424"], ["1", "1445280651640"], ["11", "1445280651860"], ["1", "1445280652069"], ["1", "1445280652267"]]
874	4	39	2015-10-19 18:51:06.617795+00	2015-10-19 18:50:54.143+00	[["1", "1445280654769"], ["11", "1445280654992"], ["1", "1445280655215"], ["1", "1445280655432"], ["1", "1445280655645"], ["1", "1445280655856"], ["1", "1445280656276"], ["1", "1445280656938"]]
875	4	44	2015-10-19 18:51:10.504593+00	2015-10-19 18:50:58.618+00	[["1", "1445280659326"], ["1", "1445280659539"], ["11", "1445280659761"], ["11", "1445280660206"], ["1", "1445280660423"], ["1", "1445280660633"]]
876	4	112	2015-10-19 18:51:14.368002+00	2015-10-19 18:51:02.168+00	[["11", "1445280662916"], ["1", "1445280663134"], ["1", "1445280663560"], ["1", "1445280663781"], ["1", "1445280663991"], ["1", "1445280664201"], ["1", "1445280664429"], ["11", "1445280664671"]]
877	4	13	2015-10-19 18:51:18.195719+00	2015-10-19 18:51:06.526+00	[["11", "1445280667068"], ["1", "1445280667498"], ["1", "1445280667714"], ["1", "1445280667928"], ["1", "1445280668141"], ["1", "1445280668352"]]
878	4	86	2015-10-19 18:51:21.876595+00	2015-10-19 18:51:10.146+00	[["1", "1445280670851"], ["1", "1445280671071"], ["1", "1445280671294"], ["1", "1445280671511"], ["1", "1445280671735"], ["1", "1445280671956"], ["11", "1445280672188"]]
879	4	35	2015-10-19 18:51:25.675152+00	2015-10-19 18:51:13.921+00	[["1", "1445280674755"], ["1", "1445280674985"], ["11", "1445280675210"], ["1", "1445280675650"]]
880	4	31	2015-10-19 18:51:29.826881+00	2015-10-19 18:51:17.402+00	[["1", "1445280678189"], ["11", "1445280678429"], ["1", "1445280678867"], ["11", "1445280679081"], ["1", "1445280679302"], ["1", "1445280679512"], ["11", "1445280679952"]]
881	4	85	2015-10-19 18:51:33.670183+00	2015-10-19 18:51:21.692+00	[["1", "1445280682552"], ["1", "1445280682771"], ["1", "1445280682995"], ["1", "1445280683222"], ["1", "1445280683439"], ["1", "1445280683653"]]
882	4	108	2015-10-19 18:51:36.9298+00	2015-10-19 18:51:25.498+00	[["1", "1445280685998"], ["1", "1445280686224"], ["1", "1445280686434"], ["1", "1445280686648"], ["1", "1445280686874"], ["1", "1445280687092"]]
883	4	90	2015-10-19 18:51:41.517731+00	2015-10-19 18:51:29.285+00	[["1", "1445280689926"], ["11", "1445280690151"], ["1", "1445280690367"], ["1", "1445280690581"], ["1", "1445280691003"], ["11", "1445280691228"], ["1", "1445280691668"]]
884	4	33	2015-10-19 18:51:44.5567+00	2015-10-19 18:51:33.159+00	[["1", "1445280694021"], ["1", "1445280694231"], ["11", "1445280694454"], ["1", "1445280694871"]]
885	11	47	2015-10-22 18:53:15.890797+00	2015-10-22 18:52:11.712+00	[["acaba", "1445539941383"], ["muchos", "1445539951762"], ["consuelo", "1445539960357"], ["de", "1445539964909"], ["tontos", "1445539973290"]]
886	11	25	2015-10-22 18:54:17.597801+00	2015-10-22 18:52:59.436+00	[["es", "1445539987471"], ["bueno", "1445540008160"], ["que", "1445540012990"], ["por", "1445540017578"], ["bien", "1445540022565"], ["no", "1445540028465"], ["venga", "1445540035030"]]
887	11	58	2015-10-22 18:55:15.24783+00	2015-10-22 18:53:59.4+00	[["que", "1445540051686"], ["es", "1445540060093"], ["un", "1445540066090"], ["hueso", "1445540071726"], ["en", "1445540077881"], ["el", "1445540083306"], ["jardin", "1445540092683"]]
888	11	98	2015-10-22 18:56:01.840504+00	2015-10-22 18:54:59.389+00	[["buena", "1445540109633"], ["fue", "1445540114818"], ["mal", "1445540121643"], ["forma", "1445540128240"], ["inesperada", "1445540139044"]]
889	11	104	2015-10-22 18:57:01.112298+00	2015-10-22 18:55:44.638+00	[["tube", "1445540153523"], ["sobre", "1445540163958"], ["tuy", "1445540171111"], ["y", "1445540176288"], ["nuestro", "1445540189991"], ["carrera", "1445540198546"]]
890	11	81	2015-10-22 18:57:55.16524+00	2015-10-22 18:56:44.56+00	[["por", "1445540210830"], ["hagas", "1445540221539"], ["corte", "1445540228105"], ["vencido", "1445540238708"], ["ni", "1445540242057"], ["aun", "1445540246201"], ["vencido", "1445540252586"]]
891	11	31	2015-10-22 18:58:35.717935+00	2015-10-22 18:57:36.78+00	[["que", "1445540261591"], ["no", "1445540264745"], ["haz", "1445540269248"], ["de", "1445540275123"], ["beber", "1445540280949"], ["dejala", "1445540286085"], ["correr", "1445540292664"]]
892	11	17	2015-10-22 18:59:18.295702+00	2015-10-22 18:58:15.904+00	[["fin", "1445540305271"], ["le", "1445540315213"], ["dios", "1445540322895"], ["lo", "1445540326881"], ["ayuda", "1445540335737"]]
893	11	89	2015-10-22 19:00:05.730038+00	2015-10-22 18:59:02.095+00	[["vino", "1445540353294"], ["dia", "1445540359538"], ["y", "1445540365056"], ["y", "1445540371061"], ["ma\\u00f1ana", "1445540379315"], ["es", "1445540382811"]]
894	11	91	2015-10-22 19:01:05.97688+00	2015-10-22 18:59:50.35+00	[["toma", "1445540400478"], ["buen", "1445540407911"], ["y", "1445540415911"], ["juegan", "1445540425620"], ["muy", "1445540436747"], ["buenos", "1445540443378"]]
895	11	115	2015-10-22 19:02:24.571039+00	2015-10-22 19:00:50.716+00	[["que", "1445540460919"], ["de", "1445540468574"], ["juan", "1445540475936"], ["es", "1445540484480"], ["mayor", "1445540494791"], ["buen", "1445540508694"], ["muy", "1445540516119"], ["bueno", "1445540521796"]]
896	11	14	2015-10-22 19:03:16.793691+00	2015-10-22 19:02:07.855+00	[["los", "1445540533076"], ["da", "1445540538479"], ["de", "1445540542404"], ["al", "1445540547890"], ["quien", "1445540557322"], ["no", "1445540561392"], ["tiene", "1445540568423"], ["muelas", "1445540573964"]]
897	11	71	2015-10-22 19:04:18.628498+00	2015-10-22 19:03:00.948+00	[["juan", "1445540590983"], ["le", "1445540596987"], ["crecia", "1445540602568"], ["la", "1445540605837"], ["naris", "1445540610740"], ["cuando", "1445540618019"], ["ves", "1445540624084"], ["que", "1445540629281"], ["mentia", "1445540635837"]]
898	11	38	2015-10-22 19:05:28.527157+00	2015-10-22 19:04:01.349+00	[["va", "1445540647177"], ["el", "1445540650887"], ["cantaro", "1445540657552"], ["al", "1445540661410"], ["agua", "1445540666381"], ["fuente", "1445540675418"], ["que", "1445540679429"], ["al", "1445540683589"], ["final", "1445540690759"], ["se ", "1445540698268"], ["rompe", "1445540705719"]]
899	11	61	2015-10-22 19:06:18.494596+00	2015-10-22 19:05:10.561+00	[["mi", "1445540717942"], ["desgracia", "1445540729936"], ["te", "1445540741355"], ["a", "1445540746297"], ["su", "1445540750978"], ["medico", "1445540755879"]]
900	11	72	2015-10-22 19:08:12.03659+00	2015-10-22 19:06:00.323+00	[["amor", "1445540771284"], ["de", "1445540778082"], ["es", "1445540784998"], ["el", "1445540794614"], ["siete", "1445540803301"], ["de", "1445540811672"], ["gala", "1445540829702"], ["orden", "1445540860125"], ["redonda", "1445540868966"]]
901	11	103	2015-10-22 19:09:14.556283+00	2015-10-22 19:07:54.973+00	[["es", "1445540888730"], ["sabra", "1445540898148"], ["lo", "1445540908922"], ["la", "1445540918049"], ["el", "1445540923513"], ["problema", "1445540931494"]]
902	11	54	2015-10-22 19:09:54.404806+00	2015-10-22 19:08:56.24+00	[["es", "1445540943321"], ["la", "1445540948027"], ["segunda", "1445540957728"], ["guerra", "1445540964739"], ["mundial", "1445540971816"]]
903	11	19	2015-10-22 19:10:37.45771+00	2015-10-22 19:09:35.648+00	[["vale", "1445540983861"], ["pajaro", "1445540989832"], ["en", "1445540993526"], ["mano", "1445540999954"], ["que", "1445541003682"], ["cien", "1445541009764"], ["volando", "1445541014627"]]
904	11	126	2015-10-22 19:11:46.622331+00	2015-10-22 19:10:19.317+00	[["tiene", "1445541027651"], ["supo", "1445541034425"], ["jugado", "1445541043767"], ["rabiles", "1445541062820"], ["a", "1445541069779"], ["nadie", "1445541075315"], ["hijos", "1445541083567"]]
937	15	80	2016-02-02 15:11:12.795801+00	2016-02-02 15:10:05.78+00	[["hijo", "1454425819260"], ["iris", "1454425823765"], ["es", "1454425830772"], ["aparece", "1454425843365"], ["con", "1454425848471"], ["de", "1454425852526"], ["la", "1454425860420"], ["lluvia", "1454425865351"]]
905	11	110	2015-10-22 19:13:00.597055+00	2015-10-22 19:11:28.553+00	[["cuesta", "1445541098873"], ["que", "1445541105224"], ["el", "1445541113358"], ["que", "1445541118520"], ["al", "1445541123230"], ["fin", "1445541127478"], ["lo", "1445541131583"], ["canso", "1445541145131"], ["gano", "1445541157790"]]
906	11	94	2015-10-22 19:13:48.120967+00	2015-10-22 19:12:45.134+00	[["hace", "1445541171160"], ["por", "1445541176571"], ["por", "1445541182109"], ["partido", "1445541190485"], ["de", "1445541199710"], ["bol", "1445541205497"]]
907	11	123	2015-10-22 19:14:51.703613+00	2015-10-22 19:13:30.715+00	[["amor", "1445541221064"], ["cansa", "1445541229951"], ["un", "1445541235653"], ["su", "1445541241716"], ["y", "1445541253455"], ["dia", "1445541260755"], ["domingo", "1445541268894"]]
908	11	33	2015-10-22 19:15:25.51688+00	2015-10-22 19:14:37.167+00	[["claras", "1445541284665"], ["conservan", "1445541293323"], ["la", "1445541297168"], ["amistad", "1445541302622"]]
909	11	105	2015-10-22 19:16:14.149176+00	2015-10-22 19:15:08.127+00	[["chica", "1445541320751"], ["fgue", "1445541325975"], ["los", "1445541334998"], ["fue", "1445541341220"], ["sobre", "1445541351083"]]
910	11	44	2015-10-22 19:17:40.112247+00	2015-10-22 19:15:56.343+00	[["que", "1445541363594"], ["de", "1445541369635"], [" amo", "1445541382477"], ["engorda", "1445541392705"], ["al", "1445541397346"], ["ganado", "1445541437279"]]
911	11	22	2015-10-22 19:18:19.352413+00	2015-10-22 19:17:20.481+00	[["casa", "1445541449627"], ["cerrada", "1445541462545"], ["no", "1445541466192"], ["entran", "1445541472071"], ["moscas", "1445541476718"]]
912	11	75	2015-10-22 19:19:35.298691+00	2015-10-22 19:18:01.584+00	[["angeles", "1445541497978"], ["se", "1445541510775"], ["traen", "1445541520984"], ["regalos", "1445541528727"], ["para", "1445541535448"], ["todos", "1445541540497"], ["chicos", "1445541552468"]]
913	11	63	2015-10-22 19:20:44.447449+00	2015-10-22 19:19:18.204+00	[["martin", "1445541568765"], ["cruzo", "1445541579525"], [" los", "1445541591245"], ["andes", "1445541598398"], ["trabajando", "1445541612647"], ["lomo", "1445541621327"]]
914	11	51	2015-10-22 19:21:42.747154+00	2015-10-22 19:20:26.595+00	[["mi", "1445541638284"], [" hace", "1445541648810"], ["noches", "1445541662888"], ["son", "1445541669664"], ["muy", "1445541675461"], ["bajas", "1445541679894"]]
915	11	80	2015-10-22 19:24:52.563896+00	2015-10-22 19:23:30.195+00	[["que", "1445541817482"], ["de", "1445541824826"], ["tiene", "1445541834502"], ["fue", "1445541848205"], ["con", "1445541853903"], ["de", "1445541858432"], ["la", "1445541861791"], ["lluvia", "1445541869724"]]
916	11	57	2015-10-22 19:25:44.314342+00	2015-10-22 19:24:34.017+00	[["bueno", "1445541892057"], ["es", "1445541898020"], ["un", "1445541901807"], ["animal", "1445541908730"], ["racional", "1445541921691"]]
917	11	27	2015-10-22 19:26:32.16074+00	2015-10-22 19:25:26.518+00	[["que", "1445541938237"], ["le", "1445541945900"], ["pescado", "1445541953850"], ["que", "1445541958885"], ["le", "1445541962458"], ["cueste", "1445541969078"]]
918	15	7	2016-02-02 14:54:38.353365+00	2016-02-02 14:51:12.529+00	[["Lagsague", "1454424759074"], ["inteligente", "1454424776653"], ["Obispo", "1454424792871"], ["capaz", "1454424806290"], ["dram\\u00e1tico", "1454424831247"], ["dramas", "1454424844142"], ["Argentina", "1454424860747"]]
919	15	2	2016-02-02 14:56:08.24832+00	2016-02-02 14:54:31.541+00	[["pasada", "1454424882433"], ["de", "1454424888986"], ["hablamos", "1454424898103"], ["hablamos", "1454424907770"], ["dijo", "1454424915834"], ["podemos", "1454424932263"], ["interesante", "1454424943898"], ["no", "1454424951433"]]
920	15	6	2016-02-02 14:57:01.947446+00	2016-02-02 14:55:59.558+00	[["es", "1454424965653"], ["el", "1454424968397"], ["dios", "1454424978690"], ["del ", "1454425000884"], ["vino", "1454425005739"]]
921	15	65	2016-02-02 14:57:50.245579+00	2016-02-02 14:56:50.594+00	[["bueno", "1454425017961"], ["no", "1454425022398"], ["ser", "1454425025748"], ["esa", "1454425032600"], ["es", "1454425039934"], ["la ", "1454425047406"], ["cuesti\\u00f3n", "1454425054469"]]
922	15	91	2016-02-02 14:58:38.342434+00	2016-02-02 14:57:40.158+00	[["es", "1454425066465"], ["una", "1454425072169"], ["muy", "1454425080663"], ["se", "1454425089506"], ["muy", "1454425094894"], ["leales", "1454425103165"]]
923	15	69	2016-02-02 14:59:35.308096+00	2016-02-02 14:58:28.543+00	[["es", "1454425113746"], ["el", "1454425119042"], ["de", "1454425131304"], ["los", "1454425137267"], ["\\u00e1ngeles", "1454425143926"], ["muy", "1454425153582"], ["diablo", "1454425160459"]]
924	15	74	2016-02-02 15:00:29.75188+00	2016-02-02 14:59:25.234+00	[["mi", "1454425170829"], ["lugar", "1454425178288"], ["se", "1454425182926"], ["la", "1454425188440"], ["panader\\u00eda", "1454425195379"], ["se", "1454425201317"], ["lechones", "1454425210130"], ["pan", "1454425215659"]]
925	15	106	2016-02-02 15:00:57.028467+00	2016-02-02 15:00:19.611+00	[["es", "1454425224458"], ["una", "1454425230231"], ["para", "1454425234926"], ["sus", "1454425238044"], ["amigos", "1454425243085"]]
926	15	122	2016-02-02 15:01:52.819847+00	2016-02-02 15:00:46.993+00	[["es", "1454425253984"], ["de", "1454425259389"], ["sugeri\\u00f3", "1454425270650"], ["que", "1454425279560"], ["mi", "1454425284921"], ["empleada", "1454425292979"], ["que", "1454425299688"]]
927	15	70	2016-02-02 15:03:06.431632+00	2016-02-02 15:01:45.433+00	[["se\\u00f1ora", "1454425312296"], ["es", "1454425317666"], ["el", "1454425321754"], ["omb\\u00fa", "1454425327050"], ["y", "1454425336207"], ["caldenes", "1454425345244"], ["caldenes", "1454425358140"], ["el", "1454425366019"], ["nieve", "1454425373830"]]
928	15	85	2016-02-02 15:03:45.01833+00	2016-02-02 15:02:59.878+00	[["mi", "1454425385449"], ["pasillo", "1454425391858"], ["orde\\u00f1an", "1454425401387"], ["las", "1454425405352"], ["las", "1454425409148"], ["vacas", "1454425412959"]]
929	15	107	2016-02-02 15:04:46.465606+00	2016-02-02 15:03:37.368+00	[["debemos", "1454425425546"], ["a", "1454425437405"], ["las", "1454425442828"], ["instrucciones", "1454425450123"], ["que", "1454425460711"], ["la", "1454425470269"], ["salida", "1454425474885"]]
930	15	38	2016-02-02 15:05:34.748352+00	2016-02-02 15:04:39.976+00	[["me", "1454425484869"], ["el", "1454425491700"], ["c\\u00e1ntaro", "1454425497377"], ["a", "1454425499726"], ["la", "1454425501923"], ["fuente", "1454425506133"], ["que", "1454425510964"], ["al", "1454425513868"], ["final", "1454425517251"], ["se", "1454425520254"], ["rompe", "1454425523960"]]
931	15	50	2016-02-02 15:06:29.771635+00	2016-02-02 15:05:28.061+00	[["fue", "1454425537209"], ["por", "1454425543202"], ["las", "1454425548643"], ["guerra", "1454425554601"], ["y", "1454425567689"], ["su", "1454425579288"]]
932	15	79	2016-02-02 15:07:10.291556+00	2016-02-02 15:06:25.618+00	[["asaltaron", "1454425593169"], ["en", "1454425598570"], ["lo", "1454425605246"], ["a", "1454425611286"], ["los", "1454425614795"], ["ojos", "1454425620421"]]
933	15	96	2016-02-02 15:08:05.209347+00	2016-02-02 15:07:05.484+00	[["se\\u00f1ora", "1454425637441"], ["de", "1454425641410"], ["mi", "1454425647921"], ["es", "1454425653445"], ["un", "1454425658438"], ["amplio", "1454425665947"], ["muy", "1454425670776"], ["cuidado", "1454425675701"]]
934	15	87	2016-02-02 15:08:47.950955+00	2016-02-02 15:08:00.05+00	[["flores", "1454425685685"], ["mas", "1454425690388"], ["complican", "1454425699855"], ["de", "1454425704669"], ["o", "1454425708707"], ["no", "1454425712325"], ["se", "1454425715028"], ["hacen", "1454425719079"]]
935	15	16	2016-02-02 15:09:22.679148+00	2016-02-02 15:08:43.164+00	[["que", "1454425727596"], ["no", "1454425730210"], ["ven", "1454425732596"], ["coraz\\u00f3n", "1454425737629"], ["que", "1454425746664"], ["no", "1454425749681"], ["siente", "1454425754184"]]
936	15	102	2016-02-02 15:10:09.76644+00	2016-02-02 15:09:17.196+00	[["buen", "1454425762610"], ["lo", "1454425769685"], ["hicieron", "1454425777922"], ["su", "1454425783038"], ["su", "1454425786276"], ["diploma", "1454425795642"], ["nuevo", "1454425801937"]]
938	15	42	2016-02-02 15:11:35.912698+00	2016-02-02 15:11:08.932+00	[["muy", "1454425874315"], ["ser", "1454425880471"], ["que", "1454425884729"], ["curar", "1454425888954"]]
939	15	104	2016-02-02 16:20:24.303765+00	2016-02-02 16:18:45.126+00	[["te", "1454429932178"], ["mucho", "1454429938673"], ["nuestros", "1454429949159"], ["y", "1454429954773"], ["la", "1454429959075"], ["matrimonio", "1454429967848"]]
940	15	62	2016-02-02 16:20:54.428831+00	2016-02-02 16:19:33.679+00	[["no", "1454429978001"], ["hay", "1454429981184"], ["camino", "1454429984961"], ["se", "1454429987374"], ["hace", "1454429989905"], ["camino", "1454429993696"], ["al", "1454429995217"], ["andar", "1454429998279"]]
941	15	29	2016-02-02 16:21:28.176554+00	2016-02-02 16:20:01.771+00	[["con", "1454430005719"], ["quien", "1454430009223"], ["andas", "1454430012403"], ["y", "1454430014450"], ["te", "1454430016907"], ["dir\\u00e9", "1454430020438"], ["qui\\u00e9n", "1454430028674"], ["eres", "1454430032717"]]
942	15	17	2016-02-02 16:21:57.261289+00	2016-02-02 16:20:37.109+00	[["mal", "1454430041414"], ["nace", "1454430051227"], ["Dios", "1454430056200"], ["lo", "1454430058769"], ["ayuda", "1454430061911"]]
943	15	116	2016-02-02 16:22:31.711008+00	2016-02-02 16:21:05.869+00	[["es", "1454430071528"], ["es", "1454430075311"], ["a", "1454430079674"], ["vacaciones", "1454430086088"], ["a", "1454430089373"], ["la", "1454430091891"], ["playa", "1454430097050"]]
944	15	97	2016-02-02 16:23:10.098778+00	2016-02-02 16:21:42.064+00	[["y", "1454430106234"], ["es", "1454430110782"], ["con", "1454430115302"], ["pero", "1454430120839"], ["las", "1454430127015"], ["esposa", "1454430135593"]]
945	15	52	2016-02-02 16:23:55.744624+00	2016-02-02 16:22:19.585+00	[["queremos", "1454430152955"], ["presentes", "1454430159026"], ["conducen", "1454430165553"], ["a Roma", "1454430174977"], ["Roma", "1454430182022"]]
946	15	56	2016-02-02 16:24:38.043873+00	2016-02-02 16:23:06.754+00	[["un", "1454430198354"], ["hacerse", "1454430206683"], ["en", "1454430212670"], ["de", "1454430220072"], ["actuar", "1454430224620"]]
947	15	23	2016-02-02 16:25:16.758532+00	2016-02-02 16:23:49.907+00	[["me", "1454430235331"], ["mucho", "1454430239734"], ["madrugar", "1454430246397"], ["se", "1454430249315"], ["amanece", "1454430253602"], ["temprano", "1454430263994"]]
948	15	25	2016-02-02 19:57:18.789727+00	2016-02-02 19:55:28.873+00	[["diga", "1454442938100"], ["prenda", "1454442945757"], ["que ", "1454442957441"], ["por", "1454442964789"], ["bien", "1454442968912"], ["no", "1454442977765"], ["venga", "1454442982612"]]
949	15	78	2016-02-02 19:58:29.007512+00	2016-02-02 19:56:27.52+00	[["no", "1454442994295"], ["ser", "1454443000597"], ["positivos", "1454443008876"], ["comportate", "1454443022546"], ["eduques", "1454443035378"], ["lo", "1454443041656"], ["lo", "1454443048900"], ["mismo", "1454443053530"]]
950	15	26	2016-02-02 19:59:17.825861+00	2016-02-02 19:57:37.299+00	[["casa", "1454443062633"], ["mundo", "1454443068548"], ["de", "1454443077382"], ["los", "1454443080579"], ["ciegos", "1454443088440"], ["el", "1454443091856"], ["tuerto", "1454443096811"], ["es", "1454443099666"], ["rey", "1454443103191"]]
951	15	14	2016-02-02 19:59:54.058127+00	2016-02-02 19:58:27.292+00	[["es", "1454443112021"], ["da", "1454443116470"], ["pan", "1454443119914"], ["al", "1454443123388"], ["quien", "1454443128235"], ["no", "1454443131201"], ["tiene", "1454443135052"], ["diente", "1454443139618"]]
952	15	67	2016-02-02 20:00:49.83547+00	2016-02-02 19:59:03.78+00	[["que", "1454443148724"], ["es", "1454443155080"], ["una", "1454443163426"], ["de", "1454443173149"], ["America", "1454443180605"], ["Argentina", "1454443196253"]]
953	15	19	2016-02-02 20:01:29.799871+00	2016-02-02 20:00:00.392+00	[["vale", "1454443205548"], ["p\\u00e1jaro", "1454443210839"], ["en mano", "1454443219663"], ["mano", "1454443224519"], ["que", "1454443228503"], ["cien", "1454443231825"], ["volando", "1454443236533"]]
954	15	49	2016-02-02 20:02:04.625956+00	2016-02-02 20:00:41.087+00	[["dejes", "1454443248228"], ["que", "1454443253111"], ["usar", "1454443260488"], ["peras", "1454443265416"], ["al", "1454443268081"], ["olmo", "1454443271923"]]
955	15	61	2016-02-02 20:02:55.512249+00	2016-02-02 20:01:15.012+00	[["la", "1454443282912"], ["injusticia", "1454443291574"], ["astente", "1454443300430"], ["y", "1454443306472"], ["uno", "1454443314835"], ["profesor", "1454443323116"]]
956	15	51	2016-02-02 20:03:31.883199+00	2016-02-02 20:02:07.603+00	[["casa", "1454443332271"], ["hay", "1454443341203"], ["casas", "1454443346485"], ["son", "1454443352004"], ["muy", "1454443356216"], ["bajas", "1454443360149"]]
957	15	129	2016-02-02 20:04:13.30999+00	2016-02-02 20:02:44.12+00	[["casa", "1454443369180"], ["mundo", "1454443375089"], ["se", "1454443381375"], ["ley", "1454443388832"], ["es", "1454443394720"], ["dudosa", "1454443401773"]]
958	15	53	2016-02-02 20:05:09.046652+00	2016-02-02 20:03:26.594+00	[["casa", "1454443411715"], ["se", "1454443419885"], ["una", "1454443425244"], ["puente", "1454443439992"], ["hace", "1454443451730"], ["los", "1454443458176"]]
959	15	89	2016-02-02 20:05:40.218854+00	2016-02-02 20:04:23.272+00	[["es", "1454443467290"], ["el", "1454443470723"], ["de", "1454443476608"], ["y", "1454443482197"], ["ma\\u00f1ana", "1454443486676"], ["es", "1454443489525"]]
960	15	88	2016-02-02 20:06:12.944513+00	2016-02-02 20:04:55.572+00	[["\\u00fanicos", "1454443503883"], ["no", "1454443510211"], ["creen", "1454443513639"], ["en", "1454443516469"], ["Dios", "1454443522726"]]
961	15	123	2016-02-02 21:55:53.915952+00	2016-02-02 21:53:46.307+00	[["sabia", "1454450043165"], ["puso", "1454450059318"], ["con", "1454450063887"], ["su", "1454450068125"], ["cuando", "1454450079924"], ["d\\u00eda", "1454450089220"], ["d\\u00eda", "1454450097451"]]
962	15	47	2016-02-02 21:56:26.883613+00	2016-02-02 21:55:03.248+00	[["anda", "1454450109928"], ["amor", "1454450115361"], ["consuelo", "1454450123397"], ["de", "1454450126632"], ["tontos", "1454450131026"]]
963	15	41	2016-02-02 21:57:00.163146+00	2016-02-02 21:55:35.026+00	[["estaba", "1454450142666"], ["mal", "1454450147740"], ["\\u00faltimo", "1454450154460"], ["r\\u00ede", "1454450160122"], ["mejor", "1454450164472"]]
964	15	21	2016-02-02 21:57:26.180145+00	2016-02-02 21:56:08.738+00	[["que", "1454450177145"], ["vale", "1454450181763"], ["por", "1454450187675"], ["dos", "1454450191015"]]
965	15	73	2016-02-02 21:57:53.528122+00	2016-02-02 21:56:34.991+00	[["que", "1454450200207"], ["que", "1454450209069"], ["a", "1454450211964"], ["ratones", "1454450218666"]]
966	15	93	2016-02-02 21:58:31.542579+00	2016-02-02 21:57:02.825+00	[["se", "1454450227135"], ["a", "1454450232075"], ["chica", "1454450236755"], ["y", "1454450240992"], ["y", "1454450244869"], ["la", "1454450249081"], ["parque", "1454450256878"]]
967	15	63	2016-02-02 21:59:21.280558+00	2016-02-02 21:57:41.377+00	[["Juan", "1454450271476"], ["pas\\u00f3", "1454450283912"], ["los", "1454450288148"], ["Andes", "1454450292960"], ["cuando", "1454450301283"], ["caballo", "1454450307324"]]
968	15	117	2016-02-02 22:00:13.927585+00	2016-02-02 21:58:31.17+00	[["hija", "1454450317495"], ["de", "1454450323221"], ["mi", "1454450326619"], ["fue", "1454450333416"], ["una", "1454450338458"], ["gran", "1454450342466"], ["interesante", "1454450351824"], ["persona", "1454450360316"]]
969	15	77	2016-02-02 22:00:52.720812+00	2016-02-02 21:59:24.557+00	[["ni\\u00f1o", "1454450371453"], ["es", "1454450375023"], ["un", "1454450378301"], ["\\u00f3rgano", "1454450384264"], ["muy", "1454450390283"], ["hay", "1454450395928"], ["la", "1454450399734"]]
970	15	54	2016-02-02 22:01:31.97416+00	2016-02-02 22:00:05.012+00	[["es", "1454450408917"], ["la", "1454450415297"], ["guerra", "1454450426909"], ["guerra", "1454450433629"], ["mundial", "1454450439049"]]
971	15	71	2016-02-02 22:02:24.558038+00	2016-02-02 22:00:42.932+00	[["buen", "1454450454712"], ["le", "1454450460675"], ["gustaba", "1454450465001"], ["la", "1454450468772"], ["nariz", "1454450472481"], ["cuando", "1454450476927"], ["vez", "1454450483888"], ["que", "1454450487162"], ["ment\\u00eda", "1454450492511"]]
972	15	83	2016-02-02 22:03:02.679549+00	2016-02-02 22:01:36.685+00	[["se\\u00f1or", "1454450505934"], ["hace", "1454450514510"], ["un", "1454450518145"], ["para", "1454450523375"], ["la", "1454450526657"], ["salud", "1454450530839"]]
973	15	124	2016-02-02 22:03:47.987846+00	2016-02-02 22:02:14.669+00	[["nuestro", "1454450543605"], ["casa", "1454450548406"], ["manda", "1454450553854"], ["se", "1454450558462"], ["la", "1454450567310"], ["muy", "1454450572783"], ["ricas", "1454450576847"]]
974	15	121	2016-02-02 22:04:30.72094+00	2016-02-02 22:03:01.121+00	[["es", "1454450584775"], ["una", "1454450589027"], ["buen", "1454450594168"], ["paciencia", "1454450601296"], ["para", "1454450607609"], ["la", "1454450614726"], ["ojos", "1454450619852"]]
975	15	66	2016-02-02 22:05:35.807182+00	2016-02-02 22:03:43.308+00	[["est\\u00e1", "1454450630944"], ["mal", "1454450635686"], ["muy", "1454450652641"], ["de", "1454450657430"], ["pecados", "1454450661760"], ["que", "1454450664499"], ["arroje", "1454450668937"], ["la", "1454450671937"], ["primera", "1454450680408"], ["piedra", "1454450685791"]]
976	15	32	2016-02-02 22:06:30.568703+00	2016-02-02 22:04:49.195+00	[["bien", "1454450694941"], ["que", "1454450707382"], ["te", "1454450713580"], ["har\\u00eda", "1454450719656"], ["pero", "1454450724210"], ["no", "1454450729295"], ["lo", "1454450731780"], ["que", "1454450734484"], ["yo", "1454450737876"], ["hago", "1454450741366"]]
977	15	28	2016-02-02 22:06:55.904387+00	2016-02-02 22:05:45.481+00	[["lo", "1454450752810"], ["no", "1454450756923"], ["hay", "1454450759660"], ["nada", "1454450762269"], ["escrito", "1454450766696"]]
978	15	64	2016-02-02 22:27:57.476969+00	2016-02-02 22:26:11.497+00	[["buen", "1454451981349"], ["le", "1454451984860"], ["Remo", "1454451990405"], ["su", "1454451996413"], ["los", "1454452004581"], ["amamant\\u00f3", "1454452012066"], ["una", "1454452016285"], ["loba", "1454452020093"]]
979	15	100	2016-02-02 22:28:30.818588+00	2016-02-02 22:27:03.947+00	[["y", "1454452028420"], ["dijo", "1454452033444"], ["comer", "1454452038452"], ["a", "1454452044018"], ["a", "1454452047516"], ["m\\u00e9dico", "1454452054043"]]
980	15	18	2016-02-02 22:29:01.764075+00	2016-02-02 22:27:37.972+00	[["buen", "1454452063920"], ["regalado", "1454452069039"], ["no", "1454452072113"], ["se", "1454452073935"], ["le", "1454452075779"], ["miran", "1454452079439"], ["los", "1454452081992"], ["dientes", "1454452085308"]]
981	15	99	2016-02-02 22:29:49.55123+00	2016-02-02 22:28:10.195+00	[["y", "1454452094115"], ["a", "1454452097375"], ["museo", "1454452102957"], ["pasado", "1454452108907"], ["el", "1454452115213"], ["su", "1454452118304"], ["parientes", "1454452124479"], ["que", "1454452129861"], ["su", "1454452133972"]]
982	15	39	2016-02-02 22:30:24.432484+00	2016-02-02 22:28:58.855+00	[["no", "1454452144219"], ["suerte", "1454452151588"], ["se", "1454452155916"], ["vista", "1454452159147"], ["de", "1454452161025"], ["seda", "1454452163204"], ["mona", "1454452166554"], ["se", "1454452169103"]]
983	15	111	2016-02-02 22:30:56.057824+00	2016-02-02 22:29:33.201+00	[["estaba", "1454452179292"], ["de", "1454452188295"], ["unas", "1454452193057"], ["muy", "1454452197522"], ["su", "1454452201353"]]
984	15	24	2016-02-02 22:31:31.755172+00	2016-02-02 22:30:05.857+00	[["te", "1454452211690"], ["que", "1454452215133"], ["ma\\u00f1ana", "1454452220859"], ["lo", "1454452223384"], ["que", "1454452225573"], ["puedas", "1454452230064"], ["hacer", "1454452234247"], ["hoy", "1454452237267"]]
985	15	101	2016-02-02 22:32:09.01466+00	2016-02-02 22:30:41.641+00	[["tu", "1454452246502"], ["hay", "1454452251855"], ["tiempo", "1454452259136"], ["es", "1454452264749"], ["muy", "1454452269147"], ["h\\u00famedo", "1454452275297"]]
986	15	112	2016-02-02 22:33:12.76582+00	2016-02-02 22:31:19.071+00	[["primeros", "1454452287424"], ["son", "1454452291912"], ["deben", "1454452301213"], ["porque", "1454452308206"], ["entr\\u00f3", "1454452315520"], ["un", "1454452321750"], ["un", "1454452328930"], ["leones", "1454452339480"]]
987	15	103	2016-02-02 22:33:46.827528+00	2016-02-02 22:32:23.872+00	[["y", "1454452347417"], ["se", "1454452352650"], ["que", "1454452356992"], ["entraron", "1454452364740"], ["el", "1454452368785"], ["enigma", "1454452374150"]]
988	15	82	2016-02-02 22:34:15.550857+00	2016-02-02 22:32:58.579+00	[["cuando", "1454452386657"], ["fuimos", "1454452395912"], ["mi", "1454452399758"], ["amor", "1454452402951"]]
989	15	58	2016-02-02 22:34:53.853801+00	2016-02-02 22:33:28.06+00	[["tiene", "1454452415146"], ["ladr\\u00f3", "1454452423945"], ["un", "1454452427413"], ["hueso", "1454452431518"], ["en", "1454452434434"], ["el", "1454452436764"], ["jard\\u00edn", "1454452441981"]]
990	15	128	2016-02-02 22:35:36.095651+00	2016-02-02 22:34:06.355+00	[["se\\u00f1or", "1454452454853"], ["fu\\u00e9", "1454452461325"], ["a", "1454452467469"], ["jugarle", "1454452472917"], ["a", "1454452476864"], ["los", "1454452479769"], ["novios", "1454452484362"]]
991	15	22	2016-02-02 22:36:09.420944+00	2016-02-02 22:34:48.639+00	[["el", "1454452495984"], ["cerrada", "1454452506510"], ["no", "1454452509259"], ["entran", "1454452513742"], ["moscas", "1454452518394"]]
992	15	81	2016-02-02 22:36:50.925106+00	2016-02-02 22:35:22.276+00	[["por", "1454452527820"], ["vuelvas", "1454452536483"], ["por", "1454452540780"], ["enterado", "1454452545296"], ["ni", "1454452549992"], ["a\\u00fan", "1454452554882"], ["vencido", "1454452560163"]]
993	15	40	2016-02-02 22:37:17.780293+00	2016-02-02 22:36:04.427+00	[["buen", "1454452569271"], ["entendedor", "1454452575547"], ["pocas", "1454452582003"], ["palabras", "1454452587662"]]
994	15	114	2016-02-02 22:38:04.574275+00	2016-02-02 22:36:33.412+00	[["lugare\\u00f1os", "1454452601512"], ["son", "1454452607154"], ["mi", "1454452611098"], ["son", "1454452615552"], ["en", "1454452621336"], ["todo", "1454452628415"], ["vacaciones", "1454452634732"]]
995	15	68	2016-02-02 22:38:44.482394+00	2016-02-02 22:37:18.183+00	[["o", "1454452648172"], ["premio", "1454452653941"], ["con", "1454452660062"], ["el", "1454452662524"], ["sudor", "1454452665947"], ["de", "1454452668900"], ["tu", "1454452671902"], ["frente", "1454452675389"]]
996	15	126	2016-02-02 22:39:26.480343+00	2016-02-02 22:37:58.265+00	[["fu\\u00e9", "1454452684847"], ["hizo", "1454452693254"], ["hecho", "1454452699789"], ["nada", "1454452706151"], ["a", "1454452709900"], ["su", "1454452712534"], ["padres", "1454452717693"]]
997	15	55	2016-02-02 22:40:03.89755+00	2016-02-02 22:38:41.052+00	[["buen", "1454452726143"], ["mujeres", "1454452731577"], ["de", "1454452739887"], ["mueve", "1454452746438"], ["el", "1454452751223"], ["viento", "1454452755832"]]
998	15	110	2016-02-02 22:40:58.177229+00	2016-02-02 22:39:19.271+00	[["llorar", "1454452770400"], ["el", "1454452774921"], ["el", "1454452781624"], ["que", "1454452786064"], ["al", "1454452788680"], ["final", "1454452792897"], ["lo", "1454452795334"], ["lo", "1454452804243"], ["compraron", "1454452810527"]]
999	15	11	2016-02-02 22:41:37.933073+00	2016-02-02 22:40:14.78+00	[["la", "1454452824945"], ["tenemos", "1454452833145"], ["herrero", "1454452837997"], ["cuchillo", "1454452845613"], ["de", "1454452848248"], ["palo", "1454452850969"]]
1000	15	20	2016-02-02 22:42:04.286312+00	2016-02-02 22:40:54.888+00	[["bien", "1454452859262"], ["bien", "1454452864058"], ["sin", "1454452866994"], ["mirar", "1454452871377"], ["a", "1454452873913"], ["quien", "1454452877472"]]
1001	15	37	2016-02-02 22:42:48.979765+00	2016-02-02 22:41:21.196+00	[["uso", "1454452887355"], ["quiera", "1454452902074"], ["buen", "1454452909113"], ["mata", "1454452913156"], ["a", "1454452915001"], ["hierro", "1454452918957"], ["muere", "1454452922973"]]
1002	15	84	2016-02-02 22:43:33.293908+00	2016-02-02 22:42:05.841+00	[["podr\\u00e1", "1454452937154"], ["niegue", "1454452943218"], ["puesto", "1454452951067"], ["el", "1454452955025"], ["no", "1454452961042"], ["vino", "1454452967411"]]
1003	15	46	2016-02-02 22:44:03.516005+00	2016-02-02 22:42:52.271+00	[["hay", "1454452978077"], ["capit\\u00e1n", "1454452984951"], ["no", "1454452987749"], ["manda", "1454452990823"], ["marinero", "1454452998299"]]
1004	15	43	2016-02-02 22:44:33.348027+00	2016-02-02 22:43:22.352+00	[["hay", "1454453009774"], ["es", "1454453013294"], ["que", "1454453017564"], ["hagas", "1454453021144"], ["es", "1454453024441"], ["oro", "1454453028201"]]
1005	15	115	2016-02-02 22:45:30.360174+00	2016-02-02 22:43:51.248+00	[["que", "1454453037099"], ["mayor", "1454453042968"], ["mi", "1454453047101"], ["es", "1454453051854"], ["abogado", "1454453057253"], ["buen", "1454453063329"], ["especialista", "1454453078746"], ["bueno", "1454453086157"]]
1006	15	12	2016-02-02 22:45:59.65238+00	2016-02-02 22:44:51.134+00	[["que", "1454453096267"], ["le", "1454453107397"], ["buena", "1454453112390"], ["cara", "1454453115507"]]
1007	15	27	2016-02-02 22:46:31.94934+00	2016-02-02 22:45:19.326+00	[["que", "1454453124789"], ["madruga", "1454453131755"], ["pescado", "1454453137630"], ["que", "1454453142253"], ["le", "1454453144684"], ["cueste", "1454453148521"]]
1008	15	86	2016-02-02 23:26:05.51219+00	2016-02-02 23:24:51.54+00	[["hay", "1454455496975"], ["la", "1454455500437"], ["la", "1454455508054"], ["mujer", "1454455512094"], ["de", "1454455514317"], ["tu", "1454455516289"], ["projimo", "1454455526328"]]
1009	15	15	2016-02-02 23:26:31.481683+00	2016-02-02 23:25:32.202+00	[["los", "1454455538656"], ["necias", "1454455543569"], ["oidos", "1454455547150"], ["sordos", "1454455552792"]]
1010	15	72	2016-02-02 23:27:26.796515+00	2016-02-02 23:25:56.534+00	[["que", "1454455565775"], ["de", "1454455570768"], ["sac\\u00f3", "1454455584088"], ["su", "1454455589143"], ["caballeros", "1454455595882"], ["de", "1454455598654"], ["la", "1454455600854"], ["mesa", "1454455603717"], ["redonda", "1454455608652"]]
1011	15	125	2016-02-02 23:28:10.544032+00	2016-02-02 23:26:53.12+00	[["que", "1454455617250"], ["son", "1454455626449"], ["las", "1454455631876"], ["fruta", "1454455636987"], ["de", "1454455642801"], ["frutales", "1454455653018"]]
1012	15	76	2016-02-02 23:28:47.853809+00	2016-02-02 23:27:37.286+00	[["estar", "1454455668553"], ["tener", "1454455677587"], ["de", "1454455681904"], ["los", "1454455684717"], ["cosas", "1454455690559"]]
1013	15	48	2016-02-02 23:29:31.380412+00	2016-02-02 23:28:15.173+00	[["giles", "1454455710455"], ["y", "1454455719192"], ["te", "1454455721610"], ["sacar\\u00e1n", "1454455727145"], ["los", "1454455730168"], ["ojos", "1454455734700"]]
1014	15	95	2016-02-02 23:30:15.853546+00	2016-02-02 23:28:58.413+00	[["buen", "1454455742722"], ["le", "1454455746531"], ["gusta", "1454455750238"], ["comer", "1454455755933"], ["las", "1454455763287"], ["de", "1454455769186"], ["dias", "1454455779405"]]
1015	15	118	2016-02-02 23:30:56.888659+00	2016-02-02 23:29:44.634+00	[["este", "1454455789718"], ["guerra", "1454455796660"], ["no", "1454455801692"], ["no", "1454455806669"], ["salen", "1454455811786"], ["a", "1454455815430"], ["pasear", "1454455821038"]]
1016	15	94	2016-02-02 23:31:34.024349+00	2016-02-02 23:30:25.077+00	[["y", "1454455828419"], ["la", "1454455833922"], ["lo", "1454455838551"], ["circo", "1454455848725"], ["de", "1454455852475"], ["futbol", "1454455858329"]]
1017	15	31	2016-02-02 23:32:17.469672+00	2016-02-02 23:31:01.77+00	[["limpia", "1454455868332"], ["no", "1454455872404"], ["haz", "1454455876039"], ["de", "1454455885427"], ["beber", "1454455889894"], ["d\\u00e9jala", "1454455897840"], ["correr", "1454455902673"]]
1018	15	90	2016-02-02 23:32:55.036053+00	2016-02-02 23:31:46.924+00	[["mi", "1454455914668"], ["casa", "1454455919392"], ["de", "1454455922033"], ["mi", "1454455925357"], ["no", "1454455930518"], ["se", "1454455933427"], ["heladera", "1454455940506"]]
1019	15	105	2016-02-02 23:33:33.22352+00	2016-02-02 23:32:24.518+00	[["plata", "1454455950272"], ["de", "1454455954915"], ["los", "1454455958014"], ["fue", "1454455971962"], ["muy", "1454455979348"]]
1020	15	60	2016-02-02 23:34:09.890465+00	2016-02-02 23:33:03.569+00	[["por", "1454455989090"], ["a", "1454455992407"], ["que", "1454455996657"], ["no", "1454455999435"], ["cumliras", "1454456009475"], ["cumplir", "1454456016157"]]
1021	15	45	2016-02-02 23:34:41.00275+00	2016-02-02 23:33:39.634+00	[["casa", "1454456026051"], ["las", "1454456030937"], ["se", "1454456036658"], ["cuecen", "1454456043426"], ["habas", "1454456047837"]]
1022	15	108	2016-02-02 23:35:24.464401+00	2016-02-02 23:34:11.508+00	[["inquilinos", "1454456060680"], ["de", "1454456064361"], ["intimaron", "1454456072363"], ["cuando", "1454456078598"], ["sus", "1454456086242"], ["momento", "1454456091613"]]
1023	15	35	2016-02-02 23:35:50.620822+00	2016-02-02 23:34:57.044+00	[["que", "1454456103005"], ["que", "1454456107033"], ["mal", "1454456111010"], ["acompa\\u00f1ado", "1454456118342"]]
1024	15	36	2016-02-02 23:36:33.242971+00	2016-02-02 23:35:21.753+00	[["que", "1454456127309"], ["mete", "1454456131655"], ["por", "1454456137204"], ["por", "1454456141036"], ["viejo", "1454456149614"], ["que", "1454456152896"], ["por", "1454456156071"], ["diablo", "1454456161251"]]
1025	15	44	2016-02-02 23:37:10.52283+00	2016-02-02 23:36:04.938+00	[["que", "1454456169862"], ["del", "1454456179455"], ["amo", "1454456182645"], ["engorda", "1454456189279"], ["el", "1454456194630"], ["ganado", "1454456199167"]]
1026	15	109	2016-02-02 23:37:56.735389+00	2016-02-02 23:36:43.378+00	[["ni\\u00f1a", "1454456211481"], ["de", "1454456215005"], ["los", "1454456218664"], ["abejas", "1454456231653"], ["son", "1454456236757"], ["ser", "1454456240532"], ["mortales", "1454456245668"]]
1027	15	75	2016-02-02 23:38:39.836491+00	2016-02-02 23:37:31.503+00	[["ni\\u00f1os", "1454456258475"], ["Magos", "1454456264129"], ["adoraron", "1454456272391"], ["sus", "1454456277819"], ["en", "1454456281518"], ["los", "1454456285052"], ["ni\\u00f1os", "1454456289414"]]
1028	15	127	2016-02-02 23:39:44.672718+00	2016-02-02 23:38:13.21+00	[["vez", "1454456297901"], ["es", "1454456304635"], ["ser", "1454456317082"], ["es", "1454456322538"], ["un", "1454456331803"], ["diferente", "1454456354606"]]
1029	15	57	2016-02-02 23:40:18.116484+00	2016-02-02 23:39:19.564+00	[["amo", "1454456363895"], ["puede", "1454456369486"], ["un", "1454456373207"], ["ser", "1454456376292"], ["racional", "1454456388590"]]
1030	15	119	2016-02-02 23:41:01.860364+00	2016-02-02 23:39:52.099+00	[["animal", "1454456400027"], ["es", "1454456404108"], ["un", "1454456407782"], ["metal", "1454456411758"], ["precioso", "1454456420748"], ["precioso", "1454456432751"]]
1031	15	10	2016-02-02 23:41:25.787639+00	2016-02-02 23:40:36.709+00	[["mal", "1454456441281"], ["quiere", "1454456447947"], ["poco", "1454456451796"], ["aprieta", "1454456457179"]]
1032	15	13	2016-02-02 23:41:55.777639+00	2016-02-02 23:41:01.114+00	[["puedas", "1454456468409"], ["amor", "1454456473776"], ["no", "1454456477576"], ["hay", "1454456480828"], ["pan", "1454456483465"], ["duro", "1454456487445"]]
1033	15	33	2016-02-02 23:42:26.964054+00	2016-02-02 23:41:31.194+00	[["debidas", "1454456501293"], ["hacen", "1454456506133"], ["la", "1454456514123"], ["amistad", "1454456518860"]]
1034	15	34	2016-02-02 23:42:55.321376+00	2016-02-02 23:42:02.536+00	[["de", "1454456527991"], ["amigos", "1454456533348"], ["el", "1454456537129"], ["burro", "1454456542262"], ["se", "1454456544729"], ["asoma", "1454456547763"]]
1035	15	98	2016-02-02 23:43:31.427844+00	2016-02-02 23:42:31.364+00	[["verdad", "1454456563167"], ["era", "1454456569133"], ["muy", "1454456574194"], ["una", "1454456578032"], ["muy", "1454456584036"]]
1036	15	113	2016-02-02 23:44:23.624205+00	2016-02-02 23:43:08.01+00	[["buen", "1454456593230"], ["le", "1454456596731"], ["le", "1454456599959"], ["dejan", "1454456607187"], ["as\\u00ed", "1454456615638"], ["palabras", "1454456622187"], ["tono", "1454456630389"], ["cuento", "1454456636930"]]
1037	15	59	2016-02-02 23:44:55.37194+00	2016-02-02 23:44:00.974+00	[["era", "1454456645613"], ["un", "1454456648548"], ["de", "1454456652775"], ["los", "1454456655292"], ["mosquiteros", "1454456661388"], ["mosquiteros", "1454456668887"]]
1038	15	120	2016-02-03 00:35:33.965585+00	2016-02-03 00:34:28.053+00	[["son", "1454459677413"], ["son", "1454459682254"], ["clima", "1454459690346"], ["est\\u00e1", "1454459696306"], ["muy", "1454459700897"], ["nublado", "1454459708922"]]
1039	15	92	2016-02-03 00:36:20.60576+00	2016-02-03 00:35:15.67+00	[["y", "1454459720370"], ["lo", "1454459725435"], ["prueba", "1454459732848"], ["para", "1454459737079"], ["estudiar", "1454459742543"], ["en", "1454459745398"], ["la", "1454459748161"], ["Universidad", "1454459756273"]]
1040	15	30	2016-02-03 00:36:50.600626+00	2016-02-03 00:36:00.493+00	[["por", "1454459769044"], ["todo", "1454459776250"], ["qui\\u00e9n", "1454459782185"], ["pelea", "1454459786397"]]
1041	17	9	2016-02-03 13:54:56.839052+00	2016-02-03 13:53:50.671+00	[["..", "1454507632496"], [".", "1454507632716"], [".", "1454507632931"], [".", "1454507633163"], [".", "1454507633435"], [".", "1454507633682"], [".", "1454507633922"]]
1042	17	4	2016-02-03 13:55:01.101075+00	2016-02-03 13:53:56.902+00	[["..", "1454507637776"], [".", "1454507637981"], [".", "1454507638175"]]
1043	17	1	2016-02-03 13:55:03.82633+00	2016-02-03 13:54:00.134+00	[[".", "1454507640535"], [".", "1454507640726"], [".", "1454507640892"], [".", "1454507641079"]]
1044	17	110	2016-02-03 13:55:07.70238+00	2016-02-03 13:54:02.851+00	[[".", "1454507643375"], [".", "1454507643572"], [".", "1454507643751"], [".", "1454507643934"], [".", "1454507644116"], [".", "1454507644309"], [".", "1454507644540"], [".", "1454507644772"], [".", "1454507644926"]]
1045	17	46	2016-02-03 13:55:11.063901+00	2016-02-03 13:54:06.778+00	[["..", "1454507647358"], [".", "1454507647576"], [".", "1454507647748"], [".", "1454507647946"], [".", "1454507648147"]]
1046	17	75	2016-02-03 13:55:14.820139+00	2016-02-03 13:54:10.106+00	[[".", "1454507650681"], [".", "1454507650890"], [".", "1454507651081"], [".", "1454507651280"], [".", "1454507651472"], [".", "1454507651681"], [".", "1454507651888"]]
1047	17	60	2016-02-03 13:55:18.618682+00	2016-02-03 13:54:14.075+00	[[".", "1454507654664"], [".", "1454507654870"], [".", "1454507655062"], [".", "1454507655254"], [".", "1454507655462"], [".", "1454507655670"]]
1048	17	11	2016-02-03 13:55:22.169468+00	2016-02-03 13:54:17.587+00	[[".", "1454507658217"], [".", "1454507658421"], [".", "1454507658621"], [".", "1454507658821"], [".", "1454507659022"], [".", "1454507659222"]]
1049	17	14	2016-02-03 13:55:26.133775+00	2016-02-03 13:54:21.003+00	[["..", "1454507661693"], [".", "1454507661884"], [".", "1454507662092"], [".", "1454507662299"], [".", "1454507662510"], [".", "1454507662707"], [".", "1454507662906"], [".", "1454507663100"]]
1050	17	48	2016-02-03 13:55:29.571416+00	2016-02-03 13:54:24.859+00	[["..", "1454507665609"], [".", "1454507665827"], [".", "1454507666026"], [".", "1454507666230"], [".", "1454507666417"], [".", "1454507666633"]]
1051	17	116	2016-02-03 13:55:33.697218+00	2016-02-03 13:54:28.897+00	[["..", "1454507669568"], [".", "1454507669783"], [".", "1454507669983"], [".", "1454507670183"], [".", "1454507670383"], [".", "1454507670584"], [".", "1454507670775"]]
1052	17	63	2016-02-03 13:55:37.544931+00	2016-02-03 13:54:32.811+00	[["..", "1454507673638"], [".", "1454507673822"], [".", "1454507674014"], [".", "1454507674214"], [".", "1454507674406"], [".", "1454507674581"]]
1053	17	33	2016-02-03 13:55:40.996211+00	2016-02-03 13:54:36.441+00	[["..", "1454507677452"], [".", "1454507677667"], [".", "1454507677867"], [".", "1454507678068"]]
1054	17	107	2016-02-03 13:55:46.400328+00	2016-02-03 13:54:40.258+00	[["..", "1454507682258"], [".", "1454507682466"], [".", "1454507682665"], [".", "1454507682857"], [".", "1454507683050"], [".", "1454507683249"], [".", "1454507683457"]]
1055	17	118	2016-02-03 13:55:50.229402+00	2016-02-03 13:54:45.379+00	[["..", "1454507686063"], [".", "1454507686256"], [".", "1454507686449"], [".", "1454507686656"], [".", "1454507686856"], [".", "1454507687047"], [".", "1454507687262"]]
1056	17	102	2016-02-03 13:55:53.982395+00	2016-02-03 13:54:49.071+00	[[".", "1454507689562"], [".", "1454507689785"], [".", "1454507689998"], [".", "1454507690198"], [".", "1454507690405"], [".", "1454507690597"], [".", "1454507690773"]]
1057	17	28	2016-02-03 13:55:57.017152+00	2016-02-03 13:54:52.545+00	[["..", "1454507693293"], [".", "1454507693502"], [".", "1454507693701"], [".", "1454507693909"], [".", "1454507694107"]]
1058	17	82	2016-02-03 13:56:00.220276+00	2016-02-03 13:54:56.05+00	[["..", "1454507696538"], [".", "1454507696764"], [".", "1454507696964"], [".", "1454507697180"]]
1059	17	34	2016-02-03 13:56:03.631094+00	2016-02-03 13:54:58.869+00	[[".", "1454507699480"], [".", "1454507699697"], [".", "1454507699904"], [".", "1454507700096"], [".", "1454507700292"], [".", "1454507700495"]]
1060	17	36	2016-02-03 13:56:07.582249+00	2016-02-03 13:55:02.695+00	[[".", "1454507703201"], [".", "1454507703398"], [".", "1454507703608"], [".", "1454507703814"], [".", "1454507704014"], [".", "1454507704222"], [".", "1454507704407"], [".", "1454507704593"]]
1061	17	17	2016-02-03 13:56:10.798977+00	2016-02-03 13:55:06.545+00	[["..", "1454507707221"], [".", "1454507707412"], [".", "1454507707623"], [".", "1454507707813"], [".", "1454507708012"]]
1062	17	84	2016-02-03 13:56:14.56202+00	2016-02-03 13:55:09.797+00	[["..", "1454507710491"], [".", "1454507710699"], [".", "1454507710899"], [".", "1454507711115"], [".", "1454507711314"], [".", "1454507711531"]]
1063	17	74	2016-02-03 13:56:18.342894+00	2016-02-03 13:55:13.479+00	[["..", "1454507713939"], [".", "1454507714133"], [".", "1454507714345"], [".", "1454507714546"], [".", "1454507714746"], [".", "1454507714952"], [".", "1454507715160"], [".", "1454507715386"]]
1064	17	93	2016-02-03 13:56:22.155215+00	2016-02-03 13:55:17.571+00	[[".", "1454507718098"], [".", "1454507718296"], [".", "1454507718513"], [".", "1454507718711"], [".", "1454507718912"], [".", "1454507719112"], [".", "1454507719313"]]
1065	17	96	2016-02-03 13:56:26.289429+00	2016-02-03 13:55:21.171+00	[["..", "1454507721751"], [".", "1454507721944"], [".", "1454507722143"], [".", "1454507722353"], [".", "1454507722561"], [".", "1454507722774"], [".", "1454507722943"], [".", "1454507723141"]]
1066	17	114	2016-02-03 13:56:30.286277+00	2016-02-03 13:55:25.648+00	[["..", "1454507726276"], [".", "1454507726484"], [".", "1454507726682"], [".", "1454507726875"], [".", "1454507727060"], [".", "1454507727266"], [".", "1454507727460"]]
1067	17	58	2016-02-03 13:56:34.402966+00	2016-02-03 13:55:29.568+00	[["..", "1454507730210"], [".", "1454507730418"], [".", "1454507730617"], [".", "1454507730810"], [".", "1454507730993"], [".", "1454507731185"], [".", "1454507731393"]]
1068	17	37	2016-02-03 13:56:37.987754+00	2016-02-03 13:55:33.214+00	[["..", "1454507733943"], [".", "1454507734135"], [".", "1454507734351"], [".", "1454507734551"], [".", "1454507734757"], [".", "1454507734967"], [".", "1454507735160"]]
1069	17	61	2016-02-03 13:56:41.856337+00	2016-02-03 13:55:37.008+00	[["..", "1454507737864"], [".", "1454507738071"], [".", "1454507738269"], [".", "1454507738462"], [".", "1454507738663"], [".", "1454507738878"]]
1070	17	19	2016-02-03 13:56:46.212937+00	2016-02-03 13:55:41.43+00	[[".", "1454507742110"], [".", "1454507742331"], [".", "1454507742539"], [".", "1454507742743"], [".", "1454507742954"], [".", "1454507743171"], [".", "1454507743378"]]
1071	17	51	2016-02-03 14:30:24.778495+00	2016-02-03 14:29:18.208+00	[[".", "1454509759464"], ["..", "1454509759648"], [".", "1454509759981"], ["....", "1454509760590"], [".", "1454509760758"], [".", "1454509760934"]]
1072	17	68	2016-02-03 14:30:29.116862+00	2016-02-03 14:29:23.821+00	[[".", "1454509764590"], [".", "1454509764809"], [".", "1454509765004"], [".", "1454509765182"], [".", "1454509765377"], [".", "1454509765566"], [".", "1454509765776"], [".", "1454509765972"]]
1073	17	23	2016-02-03 14:30:32.718619+00	2016-02-03 14:29:27.954+00	[[".", "1454509768546"], [".", "1454509768714"], [".", "1454509768920"], [".", "1454509769096"], [".", "1454509769287"], [".", "1454509769478"]]
1074	17	123	2016-02-03 14:30:36.248811+00	2016-02-03 14:29:31.426+00	[[".", "1454509772094"], ["..", "1454509772256"], [".", "1454509772439"], [".", "1454509772602"], [".", "1454509772761"], [".", "1454509772945"], [".", "1454509773118"]]
1220	18	21	2016-02-03 17:16:17.12043+00	2016-02-03 17:15:12.447+00	[["..", "1454519713187"], [".", "1454519713402"], [".", "1454519713613"], [".", "1454519713811"]]
1075	17	117	2016-02-03 14:30:40.002811+00	2016-02-03 14:29:35.312+00	[[".", "1454509775750"], [".", "1454509775905"], [".", "1454509776071"], [".", "1454509776215"], [".", "1454509776416"], [".", "1454509776592"], [".", "1454509776795"], [".", "1454509776975"]]
1076	17	18	2016-02-03 14:30:43.900677+00	2016-02-03 14:29:38.999+00	[[".", "1454509779637"], [".", "1454509779814"], [".", "1454509779975"], [".", "1454509780158"], [".", "1454509780352"], [".", "1454509780530"], [".", "1454509780726"], [".", "1454509780934"]]
1077	17	21	2016-02-03 14:30:47.154895+00	2016-02-03 14:29:42.876+00	[["..", "1454509783615"], [".", "1454509783774"], [".", "1454509783981"], [".", "1454509784170"]]
1078	17	39	2016-02-03 14:30:51.105127+00	2016-02-03 14:29:46.094+00	[[".", "1454509786665"], [".", "1454509786790"], [".", "1454509786978"], [".", "1454509787140"], [".", "1454509787327"], [".", "1454509787526"], [".", "1454509787728"], [".", "1454509787944"]]
1079	17	91	2016-02-03 14:30:54.425902+00	2016-02-03 14:29:49.802+00	[[".", "1454509790370"], [".", "1454509790470"], [".", "1454509790660"], [".", "1454509790846"], [".", "1454509791041"], [".", "1454509791257"]]
1080	17	76	2016-02-03 14:30:57.708309+00	2016-02-03 14:29:53.262+00	[["..", "1454509793955"], [".", "1454509794136"], [".", "1454509794328"], [".", "1454509794521"], [".", "1454509794711"]]
1081	17	12	2016-02-03 14:31:00.792797+00	2016-02-03 14:29:56.765+00	[["..", "1454509797267"], [".", "1454509797425"], [".", "1454509797589"], [".", "1454509797802"]]
1082	17	50	2016-02-03 14:31:04.570343+00	2016-02-03 14:29:59.959+00	[["..", "1454509800547"], [".", "1454509800660"], [".", "1454509800837"], [".", "1454509801032"], [".", "1454509801240"], [".", "1454509801434"]]
1083	17	119	2016-02-03 14:31:08.0473+00	2016-02-03 14:30:03.503+00	[["..", "1454509804064"], [".", "1454509804185"], [".", "1454509804305"], [".", "1454509804509"], [".", "1454509804702"], [".", "1454509804911"]]
1084	17	105	2016-02-03 14:31:11.027371+00	2016-02-03 14:30:07.198+00	[[".", "1454509807299"], [".", "1454509807557"], [".", "1454509807657"], [".", "1454509807890"], [".", "1454509808011"]]
1085	17	65	2016-02-03 14:31:15.048694+00	2016-02-03 14:30:10.052+00	[["..", "1454509810536"], [".", "1454509810670"], [".", "1454509810885"], [".", "1454509811086"], [".", "1454509811299"], [".", "1454509811503"], [".", "1454509811713"]]
1086	17	13	2016-02-03 14:31:18.490896+00	2016-02-03 14:30:13.822+00	[["..", "1454509814274"], [".", "1454509814501"], [".", "1454509814661"], [".", "1454509814870"], [".", "1454509815070"], [".", "1454509815280"]]
1087	17	66	2016-02-03 14:31:22.85999+00	2016-02-03 14:30:17.464+00	[["..", "1454509817827"], [".", "1454509817987"], [".", "1454509818169"], [".", "1454509818342"], [".", "1454509818569"], [".", "1454509818735"], [".", "1454509818946"], [".", "1454509819166"], [".", "1454509819398"], [".", "1454509819719"]]
1088	17	30	2016-02-03 14:31:30.554715+00	2016-02-03 14:30:21.591+00	[["..", "1454509826657"], [".", "1454509826862"], [".", "1454509827046"], [".", "1454509827225"]]
1089	17	95	2016-02-03 14:31:34.113969+00	2016-02-03 14:30:29.255+00	[["..", "1454509829667"], [".", "1454509829819"], [".", "1454509830016"], [".", "1454509830191"], [".", "1454509830392"], [".", "1454509830587"], [".", "1454509830791"]]
1090	17	77	2016-02-03 14:31:37.913669+00	2016-02-03 14:30:32.998+00	[["..", "1454509833648"], [".", "1454509833764"], [".", "1454509833943"], [".", "1454509834153"], [".", "1454509834353"], [".", "1454509834557"], [".", "1454509834759"]]
1091	17	98	2016-02-03 14:31:41.256565+00	2016-02-03 14:30:36.677+00	[["..", "1454509837318"], [".", "1454509837514"], [".", "1454509837694"], [".", "1454509837894"], [".", "1454509838095"]]
1092	17	121	2016-02-03 14:31:44.741253+00	2016-02-03 14:30:40.082+00	[[".", "1454509840644"], [".", "1454509840774"], [".", "1454509840966"], [".", "1454509841158"], [".", "1454509841358"], [".", "1454509841561"], [".", "1454509841769"]]
1093	17	42	2016-02-03 14:31:48.4019+00	2016-02-03 14:30:43.923+00	[["..", "1454509844664"], [".", "1454509844854"], [".", "1454509845046"], [".", "1454509845262"]]
1094	17	129	2016-02-03 14:31:51.906518+00	2016-02-03 14:30:47.207+00	[["..", "1454509847748"], [".", "1454509847944"], [".", "1454509848174"], [".", "1454509848343"], [".", "1454509848544"], [".", "1454509848771"]]
1095	17	109	2016-02-03 14:31:55.768185+00	2016-02-03 14:30:50.91+00	[["..", "1454509851486"], [".", "1454509851599"], [".", "1454509851802"], [".", "1454509851999"], [".", "1454509852214"], [".", "1454509852417"], [".", "1454509852615"]]
1096	17	111	2016-02-03 14:31:58.662012+00	2016-02-03 14:30:54.416+00	[[".", "1454509854972"], [".", "1454509855112"], [".", "1454509855275"], [".", "1454509855471"], [".", "1454509855671"]]
1097	17	127	2016-02-03 14:32:02.574718+00	2016-02-03 14:30:57.879+00	[[".", "1454509858460"], [".", "1454509858595"], [".", "1454509858799"], [".", "1454509859008"], [".", "1454509859215"], [".", "1454509859427"]]
1098	17	56	2016-02-03 14:32:06.128314+00	2016-02-03 14:31:01.621+00	[["..", "1454509862247"], [".", "1454509862391"], [".", "1454509862577"], [".", "1454509862766"], [".", "1454509862982"]]
1099	17	126	2016-02-03 14:32:09.777289+00	2016-02-03 14:31:04.812+00	[["..", "1454509865534"], [".", "1454509865727"], [".", "1454509865935"], [".", "1454509866146"], [".", "1454509866350"], [".", "1454509866543"], [".", "1454509866766"]]
1100	17	72	2016-02-03 14:32:14.314572+00	2016-02-03 14:31:08.743+00	[["..", "1454509869363"], [".", "1454509869575"], [".", "1454509869746"], [".", "1454509869945"], [".", "1454509870128"], [".", "1454509870345"], [".", "1454509870502"], ["..", "1454509870998"], [".", "1454509871190"]]
1101	17	38	2016-02-03 14:32:20.218247+00	2016-02-03 14:31:14.334+00	[["..", "1454509875174"], [".", "1454509875383"], [".", "1454509875599"], [".", "1454509875807"], [".", "1454509876023"], [".", "1454509876214"], [".", "1454509876391"], [".", "1454509876607"], [".", "1454509876831"], [".", "1454509877007"], [".", "1454509877223"]]
1102	17	83	2016-02-03 14:32:24.189997+00	2016-02-03 14:31:19.305+00	[["..", "1454509880013"], [".", "1454509880197"], [".", "1454509880390"], [".", "1454509880623"], [".", "1454509880839"], [".", "1454509881048"]]
1103	17	16	2016-02-03 14:32:28.276355+00	2016-02-03 14:31:23.243+00	[["..", "1454509883938"], [".", "1454509884101"], [".", "1454509884278"], [".", "1454509884494"], [".", "1454509884711"], [".", "1454509884919"], [".", "1454509885126"]]
1104	17	97	2016-02-03 14:32:32.157858+00	2016-02-03 14:31:27.279+00	[[".", "1454509887858"], [".", "1454509888007"], [".", "1454509888217"], [".", "1454509888418"], [".", "1454509888623"], [".", "1454509888841"]]
1105	17	27	2016-02-03 14:32:36.256222+00	2016-02-03 14:31:31.458+00	[[".", "1454509891907"], [".", "1454509892138"], [".", "1454509892320"], [".", "1454509892494"], [".", "1454509892711"], [".", "1454509892925"]]
1106	17	49	2016-02-03 14:32:39.96867+00	2016-02-03 14:31:35.089+00	[["..", "1454509895818"], [".", "1454509896012"], [".", "1454509896192"], [".", "1454509896400"], [".", "1454509896616"], [".", "1454509896833"]]
1107	17	69	2016-02-03 14:32:43.707245+00	2016-02-03 14:31:38.955+00	[["..", "1454509899578"], [".", "1454509899716"], [".", "1454509899903"], [".", "1454509900112"], [".", "1454509900317"], [".", "1454509900518"], [".", "1454509900733"]]
1108	17	62	2016-02-03 14:32:47.885305+00	2016-02-03 14:31:42.696+00	[["..", "1454509903368"], [".", "1454509903503"], [".", "1454509903719"], [".", "1454509903918"], [".", "1454509904119"], [".", "1454509904328"], [".", "1454509904534"], [".", "1454509904746"]]
1109	17	40	2016-02-03 14:32:51.013239+00	2016-02-03 14:31:46.828+00	[["..", "1454509907357"], [".", "1454509907500"], [".", "1454509907699"], [".", "1454509907891"]]
1110	17	115	2016-02-03 14:32:55.427163+00	2016-02-03 14:31:50.246+00	[["..", "1454509911008"], [".", "1454509911216"], [".", "1454509911427"], [".", "1454509911631"], [".", "1454509911832"], [".", "1454509912047"], [".", "1454509912264"], [".", "1454509912456"]]
1111	17	10	2016-02-03 14:32:59.438747+00	2016-02-03 14:31:54.816+00	[["..", "1454509915677"], [".", "1454509915890"], [".", "1454509916094"], [".", "1454509916306"]]
1112	17	24	2016-02-03 14:33:03.550438+00	2016-02-03 14:31:58.264+00	[["..", "1454509918920"], [".", "1454509919110"], [".", "1454509919311"], [".", "1454509919526"], [".", "1454509919742"], [".", "1454509919953"], [".", "1454509920174"], [".", "1454509920423"]]
1113	17	90	2016-02-03 14:33:07.498126+00	2016-02-03 14:32:02.634+00	[["..", "1454509923278"], [".", "1454509923501"], [".", "1454509923680"], [".", "1454509923887"], [".", "1454509924103"], [".", "1454509924297"], [".", "1454509924521"]]
1114	17	122	2016-02-03 14:33:12.996145+00	2016-02-03 14:32:07.682+00	[["..", "1454509928586"], [".", "1454509928791"], [".", "1454509929003"], [".", "1454509929207"], [".", "1454509929419"], [".", "1454509929639"], [".", "1454509929848"]]
1115	17	106	2016-02-03 14:33:16.491495+00	2016-02-03 14:32:12.155+00	[["..", "1454509932769"], [".", "1454509932888"], [".", "1454509933081"], [".", "1454509933289"], [".", "1454509933506"]]
1116	17	80	2016-02-03 14:33:20.72631+00	2016-02-03 14:32:15.617+00	[["..", "1454509936210"], [".", "1454509936354"], [".", "1454509936543"], [".", "1454509936754"], [".", "1454509936968"], [".", "1454509937158"], [".", "1454509937385"], [".", "1454509937568"]]
1117	17	52	2016-02-03 14:33:24.202247+00	2016-02-03 14:32:19.636+00	[["..", "1454509940322"], [".", "1454509940444"], [".", "1454509940623"], [".", "1454509940823"], [".", "1454509941039"]]
1118	17	113	2016-02-03 14:33:28.321936+00	2016-02-03 14:32:23.103+00	[["..", "1454509943772"], [".", "1454509943986"], [".", "1454509944179"], [".", "1454509944391"], [".", "1454509944609"], [".", "1454509944833"], [".", "1454509945065"], [".", "1454509945312"]]
1119	17	64	2016-02-03 14:33:32.941242+00	2016-02-03 14:32:27.441+00	[["..", "1454509948162"], [".", "1454509948380"], [".", "1454509948577"], [".", "1454509948793"], [".", "1454509948999"], [".", "1454509949214"], [".", "1454509949431"], [".", "1454509949655"]]
1120	17	100	2016-02-03 14:33:37.268907+00	2016-02-03 14:32:32.251+00	[["..", "1454509953081"], [".", "1454509953296"], [".", "1454509953504"], [".", "1454509953712"], [".", "1454509953935"], [".", "1454509954134"]]
1121	17	41	2016-02-03 14:33:41.179776+00	2016-02-03 14:32:36.311+00	[["..", "1454509957209"], [".", "1454509957378"], [".", "1454509957613"], [".", "1454509957832"], [".", "1454509958046"]]
1122	17	104	2016-02-03 14:33:45.611381+00	2016-02-03 14:32:40.389+00	[["..", "1454509961159"], [".", "1454509961358"], [".", "1454509961559"], [".", "1454509961761"], [".", "1454509961953"], [".", "1454509962216"]]
1123	17	55	2016-02-03 14:33:49.434232+00	2016-02-03 14:32:44.475+00	[["..", "1454509965272"], [".", "1454509965447"], [".", "1454509965663"], [".", "1454509965873"], [".", "1454509966087"], [".", "1454509966290"]]
1124	17	103	2016-02-03 14:33:54.505168+00	2016-02-03 14:32:48.297+00	[["..", "1454509970310"], [".", "1454509970527"], [".", "1454509970735"], [".", "1454509970938"], [".", "1454509971141"], [".", "1454509971359"]]
1125	17	108	2016-02-03 14:35:02.726308+00	2016-02-03 14:32:53.847+00	[["..", "1454510038447"], [".", "1454510038648"], [".", "1454510038814"], [".", "1454510038999"], [".", "1454510039183"], [".", "1454510039383"]]
1126	17	35	2016-02-03 14:35:06.776705+00	2016-02-03 14:34:01.696+00	[["..", "1454510043224"], [".", "1454510043415"], [".", "1454510043598"], [".", "1454510043776"]]
1127	17	128	2016-02-03 14:35:11.308515+00	2016-02-03 14:34:06.091+00	[["..", "1454510046929"], [".", "1454510047151"], [".", "1454510047320"], [".", "1454510047513"], [".", "1454510047712"], [".", "1454510047944"], [".", "1454510048161"]]
1128	17	54	2016-02-03 14:35:15.104832+00	2016-02-03 14:34:10.576+00	[["..", "1454510051335"], [".", "1454510051532"], [".", "1454510051712"], [".", "1454510051912"], [".", "1454510052111"]]
1129	17	31	2016-02-03 14:35:18.862597+00	2016-02-03 14:34:14.101+00	[["..", "1454510054796"], [".", "1454510054951"], [".", "1454510055099"], [".", "1454510055311"], [".", "1454510055490"], [".", "1454510055679"], [".", "1454510055863"]]
1130	17	45	2016-02-03 14:35:22.659492+00	2016-02-03 14:34:18.209+00	[[".", "1454510058784"], [".", "1454510058953"], [".", "1454510059144"], [".", "1454510059322"], [".", "1454510059512"]]
1131	17	43	2016-02-03 14:35:28.047317+00	2016-02-03 14:34:23.004+00	[[".", "1454510063033"], ["..", "1454510064120"], [".", "1454510064320"], [".", "1454510064518"], [".", "1454510064702"], [".", "1454510064895"]]
1132	17	81	2016-02-03 14:35:32.932949+00	2016-02-03 14:34:27.913+00	[["..", "1454510068668"], [".", "1454510068852"], [".", "1454510069039"], [".", "1454510069200"], [".", "1454510069419"], [".", "1454510069600"], [".", "1454510069791"]]
1133	17	57	2016-02-03 14:35:36.908182+00	2016-02-03 14:34:32.37+00	[["..", "1454510072948"], [".", "1454510073132"], [".", "1454510073318"], [".", "1454510073518"], [".", "1454510073730"]]
1134	17	85	2016-02-03 14:35:40.708237+00	2016-02-03 14:34:35.819+00	[["..", "1454510076528"], [".", "1454510076736"], [".", "1454510076919"], [".", "1454510077121"], [".", "1454510077303"], [".", "1454510077463"]]
1135	17	94	2016-02-03 14:35:44.163435+00	2016-02-03 14:34:39.437+00	[[".", "1454510080039"], [".", "1454510080247"], [".", "1454510080444"], [".", "1454510080631"], [".", "1454510080830"], [".", "1454510081028"]]
1136	17	88	2016-02-03 14:35:47.731079+00	2016-02-03 14:34:43.165+00	[["..", "1454510083837"], [".", "1454510083967"], [".", "1454510084151"], [".", "1454510084350"], [".", "1454510084566"]]
1137	17	87	2016-02-03 14:35:51.993877+00	2016-02-03 14:34:46.371+00	[["..", "1454510087528"], [".", "1454510087729"], [".", "1454510087929"], [".", "1454510088161"], [".", "1454510088373"], [".", "1454510088558"], [".", "1454510088783"], [".", "1454510089024"]]
1138	17	125	2016-02-03 14:35:55.96204+00	2016-02-03 14:34:51.179+00	[["..", "1454510091992"], [".", "1454510092184"], [".", "1454510092382"], [".", "1454510092586"], [".", "1454510092792"], [".", "1454510092987"]]
1139	17	44	2016-02-03 14:35:59.83472+00	2016-02-03 14:34:54.854+00	[["..", "1454510095721"], [".", "1454510095920"], [".", "1454510096111"], [".", "1454510096310"], [".", "1454510096519"], [".", "1454510096695"]]
1140	17	70	2016-02-03 14:36:04.820494+00	2016-02-03 14:34:58.866+00	[["..", "1454510099518"], [".", "1454510099696"], [".", "1454510099878"], [".", "1454510100088"], [".", "1454510100463"], [".", "1454510100656"], [".", "1454510101240"], [".", "1454510101422"], [".", "1454510101673"]]
1141	17	120	2016-02-03 14:36:08.834483+00	2016-02-03 14:35:03.961+00	[["..", "1454510104604"], [".", "1454510104731"], [".", "1454510104910"], [".", "1454510105127"], [".", "1454510105320"], [".", "1454510105528"]]
1142	17	20	2016-02-03 14:36:12.276499+00	2016-02-03 14:35:07.555+00	[["..", "1454510108281"], [".", "1454510108459"], [".", "1454510108651"], [".", "1454510108838"], [".", "1454510109052"], [".", "1454510109271"]]
1143	17	73	2016-02-03 14:36:15.574726+00	2016-02-03 14:35:11.385+00	[["..", "1454510112005"], [".", "1454510112209"], [".", "1454510112407"], [".", "1454510112607"]]
1144	17	99	2016-02-03 14:36:21.440333+00	2016-02-03 14:35:14.992+00	[["..", "1454510115670"], [".", "1454510115855"], [".", "1454510116072"], [".", "1454510116285"], [".", "1454510116496"], [".", "1454510116779"], ["..", "1454510117345"], [".", "1454510117575"], ["..", "1454510118303"]]
1145	17	67	2016-02-03 14:36:25.306575+00	2016-02-03 14:35:20.446+00	[["..", "1454510121123"], [".", "1454510121314"], [".", "1454510121532"], [".", "1454510121728"], [".", "1454510121919"], [".", "1454510122176"]]
1146	17	59	2016-02-03 14:36:29.976027+00	2016-02-03 14:35:24.93+00	[["..", "1454510125945"], [".", "1454510126146"], [".", "1454510126360"], [".", "1454510126561"], [".", "1454510126782"], [".", "1454510126991"]]
1147	17	71	2016-02-03 14:36:35.013095+00	2016-02-03 14:35:28.795+00	[["..", "1454510129913"], [".", "1454510130120"], [".", "1454510130328"], [".", "1454510130534"], [".", "1454510130733"], [".", "1454510130952"], [".", "1454510131144"], ["..", "1454510131863"], [".", "1454510132033"]]
1221	18	105	2016-02-03 17:16:20.404663+00	2016-02-03 17:15:15.622+00	[["..", "1454519716283"], [".", "1454519716491"], [".", "1454519716691"], [".", "1454519716908"], [".", "1454519717114"]]
1148	17	32	2016-02-03 14:36:40.112866+00	2016-02-03 14:35:34.239+00	[[".", "1454510134993"], [".", "1454510135187"], [".", "1454510135394"], [".", "1454510135596"], [".", "1454510135799"], [".", "1454510135982"], [".", "1454510136194"], [".", "1454510136382"], [".", "1454510136599"], [".", "1454510136815"]]
1149	17	79	2016-02-03 14:36:44.771005+00	2016-02-03 14:35:39.223+00	[["...", "1454510140746"], [".", "1454510140943"], [".", "1454510141172"], [".", "1454510141384"], [".", "1454510141567"], [".", "1454510141790"]]
1150	17	29	2016-02-03 14:36:49.152585+00	2016-02-03 14:35:43.94+00	[[".", "1454510144600"], [".", "1454510144787"], [".", "1454510144972"], [".", "1454510145169"], [".", "1454510145376"], [".", "1454510145591"], [".", "1454510145791"], [".", "1454510146008"]]
1151	17	101	2016-02-03 14:36:53.573943+00	2016-02-03 14:35:47.944+00	[["..", "1454510149421"], [".", "1454510149632"], [".", "1454510149842"], [".", "1454510150031"], [".", "1454510150231"], [".", "1454510150432"]]
1152	17	92	2016-02-03 14:36:57.974841+00	2016-02-03 14:35:53.101+00	[["..", "1454510153611"], [".", "1454510153741"], [".", "1454510153940"], [".", "1454510154127"], [".", "1454510154326"], [".", "1454510154539"], [".", "1454510154744"], [".", "1454510154971"]]
1153	17	124	2016-02-03 14:38:55.670688+00	2016-02-03 14:35:57.341+00	[["..", "1454510270950"], [".", "1454510271143"], [".", "1454510271323"], [".", "1454510271488"], [".", "1454510271642"], [".", "1454510271815"], ["..", "1454510272075"]]
1154	17	15	2016-02-03 14:38:59.054372+00	2016-02-03 14:37:54.761+00	[["..", "1454510275522"], [".", "1454510275721"], [".", "1454510275879"], [".", "1454510276079"]]
1155	17	53	2016-02-03 14:39:02.931373+00	2016-02-03 14:37:58.196+00	[["..", "1454510278885"], [".", "1454510279059"], [".", "1454510279231"], [".", "1454510279414"], [".", "1454510279602"], [".", "1454510279787"]]
1156	17	112	2016-02-03 14:39:06.703883+00	2016-02-03 14:38:01.845+00	[[".", "1454510282349"], [".", "1454510282459"], [".", "1454510282606"], ["..", "1454510282778"], [".", "1454510282927"], ["..", "1454510283208"], [".", "1454510283391"], [".", "1454510283562"]]
1157	17	47	2016-02-03 15:01:37.609587+00	2016-02-03 15:00:31.929+00	[["..", "1454511633657"], [".", "1454511633855"], [".", "1454511634014"], [".", "1454511634207"], [".", "1454511634384"]]
1158	17	89	2016-02-03 15:01:41.757256+00	2016-02-03 15:00:36.876+00	[["..", "1454511637695"], [".", "1454511637886"], [".", "1454511638032"], [".", "1454511638215"], [".", "1454511638400"], [".", "1454511638582"]]
1159	17	86	2016-02-03 15:01:45.472322+00	2016-02-03 15:00:40.823+00	[["..", "1454511641407"], [".", "1454511641615"], [".", "1454511641782"], [".", "1454511641958"], [".", "1454511642136"], [".", "1454511642310"], [".", "1454511642473"]]
1160	17	78	2016-02-03 15:01:50.347834+00	2016-02-03 15:00:44.593+00	[["..", "1454511645392"], [".", "1454511645582"], [".", "1454511645768"], [".", "1454511645942"], [".", "1454511646143"], [".", "1454511646328"], [".", "1454511646512"], ["..", "1454511647183"]]
1161	17	22	2016-02-03 15:01:55.142613+00	2016-02-03 15:00:50.619+00	[["..", "1454511651406"], [".", "1454511651598"], [".", "1454511651783"], [".", "1454511651967"], [".", "1454511652142"]]
1162	17	26	2016-02-03 15:01:59.239277+00	2016-02-03 15:00:54.084+00	[["..", "1454511654689"], [".", "1454511654872"], [".", "1454511655056"], [".", "1454511655232"], [".", "1454511655383"], [".", "1454511655534"], [".", "1454511655712"], [".", "1454511655896"], [".", "1454511656072"]]
1163	17	25	2016-02-03 15:02:02.985271+00	2016-02-03 15:00:58.042+00	[["..", "1454511658696"], [".", "1454511658888"], [".", "1454511659072"], [".", "1454511659265"], [".", "1454511659438"], [".", "1454511659608"], [".", "1454511659815"]]
1164	18	6	2016-02-03 17:06:06.140773+00	2016-02-03 17:05:00.703+00	[["..", "1454519102114"], [".", "1454519102299"], [".", "1454519102490"], [".", "1454519102674"], [".", "1454519102851"]]
1165	18	1	2016-02-03 17:12:38.720019+00	2016-02-03 17:07:50.138+00	[[".", "1454519494523"], [".", "1454519494699"], ["..", "1454519494868"], [".", "1454519495019"]]
1166	18	9	2016-02-03 17:12:46.130219+00	2016-02-03 17:11:40.014+00	[["..", "1454519501646"], [".", "1454519501843"], [".", "1454519502035"], [".", "1454519502229"], [".", "1454519502419"], [".", "1454519502618"], [".", "1454519502818"]]
1167	18	128	2016-02-03 17:12:50.331489+00	2016-02-03 17:11:44.826+00	[["..", "1454519505804"], [".", "1454519505994"], [".", "1454519506197"], [".", "1454519506403"], [".", "1454519506618"], [".", "1454519506818"], [".", "1454519507012"]]
1168	18	114	2016-02-03 17:12:54.991806+00	2016-02-03 17:11:48.867+00	[["..", "1454519510587"], [".", "1454519510779"], [".", "1454519510972"], [".", "1454519511154"], [".", "1454519511338"], [".", "1454519511522"], [".", "1454519511693"]]
1169	18	64	2016-02-03 17:13:01.764331+00	2016-02-03 17:11:56.681+00	[[".", "1454519517131"], [".", "1454519517306"], ["..", "1454519517506"], [".", "1454519517682"], [".", "1454519517891"], [".", "1454519518058"], [".", "1454519518250"], [".", "1454519518443"]]
1170	18	77	2016-02-03 17:13:05.861145+00	2016-02-03 17:12:00.681+00	[["..", "1454519521451"], [".", "1454519521643"], [".", "1454519521835"], [".", "1454519522036"], [".", "1454519522227"], [".", "1454519522386"], [".", "1454519522546"]]
1171	18	116	2016-02-03 17:13:10.361708+00	2016-02-03 17:12:04.901+00	[["..", "1454519525573"], [".", "1454519525765"], [".", "1454519525987"], [".", "1454519526163"], [".", "1454519526346"], [".", "1454519526522"], [".", "1454519526739"]]
1172	18	90	2016-02-03 17:13:13.873803+00	2016-02-03 17:12:08.953+00	[[".", "1454519529563"], [".", "1454519529771"], [".", "1454519529947"], [".", "1454519530138"], [".", "1454519530338"], [".", "1454519530514"], [".", "1454519530725"]]
1173	18	96	2016-02-03 17:13:18.54818+00	2016-02-03 17:12:13.302+00	[["..", "1454519533911"], [".", "1454519534121"], [".", "1454519534306"], [".", "1454519534494"], [".", "1454519534690"], [".", "1454519534890"], [".", "1454519535084"], [".", "1454519535258"]]
1174	18	48	2016-02-03 17:13:22.815552+00	2016-02-03 17:12:17.58+00	[[".", "1454519538251"], ["..", "1454519538630"], [".", "1454519538823"], [".", "1454519539018"], [".", "1454519539210"], [".", "1454519539402"]]
1175	18	17	2016-02-03 17:13:26.52323+00	2016-02-03 17:12:21.712+00	[[".", "1454519542499"], ["..", "1454519542699"], [".", "1454519542886"], [".", "1454519543084"], [".", "1454519543282"]]
1176	18	121	2016-02-03 17:13:30.740624+00	2016-02-03 17:12:25.473+00	[[".", "1454519546179"], ["..", "1454519546466"], [".", "1454519546690"], [".", "1454519546882"], [".", "1454519547042"], [".", "1454519547227"], [".", "1454519547460"]]
1177	18	13	2016-02-03 17:13:34.341157+00	2016-02-03 17:12:29.432+00	[["..", "1454519550125"], [".", "1454519550307"], [".", "1454519550483"], [".", "1454519550674"], [".", "1454519550859"], [".", "1454519551042"]]
1178	18	84	2016-02-03 17:13:37.800711+00	2016-02-03 17:12:33.068+00	[[".", "1454519553564"], [".", "1454519553776"], [".", "1454519553966"], [".", "1454519554146"], [".", "1454519554315"], [".", "1454519554492"]]
1179	18	51	2016-02-03 17:13:41.666079+00	2016-02-03 17:12:36.932+00	[["..", "1454519557627"], ["..", "1454519557819"], [".", "1454519558002"], [".", "1454519558186"], [".", "1454519558371"], [".", "1454519558531"]]
1180	18	106	2016-02-03 17:13:45.17645+00	2016-02-03 17:12:40.554+00	[["..", "1454519561084"], [".", "1454519561277"], [".", "1454519561474"], [".", "1454519561667"], [".", "1454519561860"]]
1181	18	19	2016-02-03 17:13:48.638546+00	2016-02-03 17:12:43.62+00	[[".", "1454519564205"], [".", "1454519564396"], [".", "1454519564590"], [".", "1454519564786"], [".", "1454519564938"], [".", "1454519565130"], [".", "1454519565332"]]
1182	18	100	2016-02-03 17:13:52.045422+00	2016-02-03 17:12:46.969+00	[["..", "1454519567804"], [".", "1454519568010"], [".", "1454519568203"], [".", "1454519568388"], [".", "1454519568564"], [".", "1454519568748"]]
1183	18	30	2016-02-03 17:13:55.038132+00	2016-02-03 17:12:50.445+00	[["..", "1454519571160"], [".", "1454519571346"], [".", "1454519571538"], [".", "1454519571722"]]
1184	18	65	2016-02-03 17:13:58.937908+00	2016-02-03 17:12:53.836+00	[["..", "1454519574466"], [".", "1454519574675"], [".", "1454519574866"], [".", "1454519575068"], [".", "1454519575250"], [".", "1454519575452"], [".", "1454519575626"]]
1185	18	71	2016-02-03 17:14:03.491699+00	2016-02-03 17:12:57.561+00	[[".", "1454519578778"], [".", "1454519578947"], ["..", "1454519579146"], [".", "1454519579346"], [".", "1454519579546"], [".", "1454519579730"], [".", "1454519579922"], [".", "1454519580131"], [".", "1454519580347"]]
1186	18	32	2016-02-03 17:14:08.542922+00	2016-02-03 17:13:02.881+00	[[".", "1454519583488"], [".", "1454519583692"], [".", "1454519583899"], [".", "1454519584100"], [".", "1454519584299"], [".", "1454519584492"], [".", "1454519584690"], [".", "1454519584876"], [".", "1454519585068"], [".", "1454519585234"]]
1187	18	79	2016-02-03 17:14:13.035826+00	2016-02-03 17:13:08.073+00	[["..", "1454519588733"], [".", "1454519588922"], [".", "1454519589115"], [".", "1454519589323"], [".", "1454519589531"], [".", "1454519589722"]]
1188	18	40	2016-02-03 17:14:16.14292+00	2016-02-03 17:13:11.705+00	[["..", "1454519592281"], [".", "1454519592466"], [".", "1454519592674"], [".", "1454519592860"]]
1189	18	26	2016-02-03 17:14:20.287756+00	2016-02-03 17:13:14.892+00	[["..", "1454519595449"], [".", "1454519595651"], [".", "1454519595834"], [".", "1454519596020"], [".", "1454519596234"], [".", "1454519596442"], [".", "1454519596619"], [".", "1454519596794"], [".", "1454519596978"]]
1190	18	85	2016-02-03 17:14:23.88962+00	2016-02-03 17:13:18.87+00	[["..", "1454519599485"], [".", "1454519599691"], [".", "1454519599892"], [".", "1454519600077"], [".", "1454519600276"], [".", "1454519600477"]]
1191	18	60	2016-02-03 17:14:27.15327+00	2016-02-03 17:13:22.265+00	[["..", "1454519602914"], [".", "1454519603084"], [".", "1454519603290"], [".", "1454519603483"], [".", "1454519603676"], [".", "1454519603875"]]
1192	18	81	2016-02-03 17:14:31.182586+00	2016-02-03 17:13:25.908+00	[["..", "1454519606446"], [".", "1454519606636"], [".", "1454519606844"], [".", "1454519607052"], [".", "1454519607234"], [".", "1454519607426"], ["..", "1454519607891"]]
1193	18	59	2016-02-03 17:14:35.293715+00	2016-02-03 17:13:30.187+00	[["..", "1454519610756"], [".", "1454519610955"], [".", "1454519611146"], [".", "1454519611340"], [".", "1454519611532"], [".", "1454519611722"]]
1194	18	41	2016-02-03 17:14:38.795742+00	2016-02-03 17:13:34.085+00	[[".", "1454519614195"], [".", "1454519614851"], [".", "1454519615050"], [".", "1454519615259"], [".", "1454519615459"]]
1195	18	63	2016-02-03 17:14:43.037336+00	2016-02-03 17:13:37.575+00	[["..", "1454519618178"], [".", "1454519618397"], [".", "1454519618604"], [".", "1454519618811"], [".", "1454519619026"], [".", "1454519619204"]]
1196	18	67	2016-02-03 17:14:46.018825+00	2016-02-03 17:13:40.952+00	[[".", "1454519621627"], ["..", "1454519621852"], [".", "1454519622044"], [".", "1454519622259"], [".", "1454519622458"], [".", "1454519622676"]]
1197	18	49	2016-02-03 17:14:49.397397+00	2016-02-03 17:13:44.414+00	[["..", "1454519625035"], [".", "1454519625237"], [".", "1454519625436"], [".", "1454519625660"], [".", "1454519625868"], [".", "1454519626091"]]
1198	18	126	2016-02-03 17:14:53.249967+00	2016-02-03 17:13:48.097+00	[["..", "1454519628627"], [".", "1454519628835"], [".", "1454519629052"], [".", "1454519629259"], [".", "1454519629468"], [".", "1454519629660"], [".", "1454519629890"]]
1199	18	109	2016-02-03 17:14:56.792599+00	2016-02-03 17:13:51.659+00	[["..", "1454519632235"], [".", "1454519632434"], [".", "1454519632650"], [".", "1454519632858"], [".", "1454519633076"], [".", "1454519633274"], [".", "1454519633500"]]
1200	18	18	2016-02-03 17:15:00.498513+00	2016-02-03 17:13:55.319+00	[["..", "1454519635844"], [".", "1454519636058"], [".", "1454519636251"], [".", "1454519636458"], [".", "1454519636675"], [".", "1454519636892"], [".", "1454519637140"], [".", "1454519637348"]]
1201	18	122	2016-02-03 17:15:04.336409+00	2016-02-03 17:13:59.218+00	[["..", "1454519639789"], [".", "1454519640002"], [".", "1454519640211"], [".", "1454519640420"], [".", "1454519640618"], [".", "1454519640828"], [".", "1454519641050"]]
1202	18	78	2016-02-03 17:15:08.660863+00	2016-02-03 17:14:03.265+00	[[".", "1454519643891"], ["..", "1454519644114"], [".", "1454519644324"], [".", "1454519644530"], [".", "1454519644746"], [".", "1454519644955"], [".", "1454519645138"], [".", "1454519645363"]]
1203	18	108	2016-02-03 17:15:12.565666+00	2016-02-03 17:14:07.612+00	[["..", "1454519648114"], [".", "1454519648305"], [".", "1454519648522"], [".", "1454519648714"], [".", "1454519648924"], [".", "1454519649131"]]
1204	18	33	2016-02-03 17:15:15.709682+00	2016-02-03 17:14:11.518+00	[["..", "1454519651962"], [".", "1454519652180"], [".", "1454519652371"], [".", "1454519652579"]]
1205	18	98	2016-02-03 17:15:19.441263+00	2016-02-03 17:14:14.535+00	[[".", "1454519655290"], ["..", "1454519655499"], [".", "1454519655698"], [".", "1454519655898"], [".", "1454519656108"]]
1206	18	120	2016-02-03 17:15:23.090166+00	2016-02-03 17:14:17.949+00	[["..", "1454519658572"], [".", "1454519658779"], [".", "1454519658973"], [".", "1454519659154"], [".", "1454519659356"], [".", "1454519659531"]]
1207	18	74	2016-02-03 17:15:26.769492+00	2016-02-03 17:14:21.459+00	[["..", "1454519662051"], [".", "1454519662258"], [".", "1454519662460"], [".", "1454519662667"], [".", "1454519662866"], [".", "1454519663058"], [".", "1454519663259"], [".", "1454519663467"]]
1208	18	83	2016-02-03 17:15:30.377044+00	2016-02-03 17:14:25.396+00	[["..", "1454519666047"], [".", "1454519666251"], [".", "1454519666458"], [".", "1454519666669"], [".", "1454519666868"], [".", "1454519667074"]]
1209	18	39	2016-02-03 17:15:34.791365+00	2016-02-03 17:14:28.781+00	[["..", "1454519669412"], [".", "1454519669618"], [".", "1454519669837"], [".", "1454519670043"], [".", "1454519670245"], [".", "1454519670443"], [".", "1454519670660"], ["..", "1454519671499"]]
1210	18	23	2016-02-03 17:15:38.252666+00	2016-02-03 17:14:33.508+00	[["..", "1454519673906"], [".", "1454519674101"], [".", "1454519674306"], [".", "1454519674516"], [".", "1454519674723"], [".", "1454519674930"]]
1211	18	87	2016-02-03 17:15:41.8564+00	2016-02-03 17:14:36.647+00	[["..", "1454519677245"], [".", "1454519677452"], [".", "1454519677642"], [".", "1454519677844"], [".", "1454519678053"], [".", "1454519678266"], [".", "1454519678474"], [".", "1454519678706"]]
1212	18	47	2016-02-03 17:15:46.041126+00	2016-02-03 17:14:41.095+00	[["..", "1454519681695"], [".", "1454519681906"], [".", "1454519682132"], [".", "1454519682322"], [".", "1454519682538"]]
1213	18	54	2016-02-03 17:15:49.794449+00	2016-02-03 17:14:45.022+00	[["..", "1454519685650"], [".", "1454519685854"], [".", "1454519686058"], [".", "1454519686258"], [".", "1454519686459"]]
1214	18	82	2016-02-03 17:15:53.115068+00	2016-02-03 17:14:48.632+00	[[".", "1454519689171"], [".", "1454519689387"], [".", "1454519689587"], [".", "1454519689802"]]
1215	18	92	2016-02-03 17:15:57.761506+00	2016-02-03 17:14:52.655+00	[["..", "1454519693101"], [".", "1454519693303"], [".", "1454519693509"], [".", "1454519693707"], [".", "1454519693924"], [".", "1454519694116"], [".", "1454519694323"], [".", "1454519694547"]]
1216	18	102	2016-02-03 17:16:01.778388+00	2016-02-03 17:14:56.93+00	[[".", "1454519697389"], [".", "1454519697595"], [".", "1454519697804"], [".", "1454519698011"], [".", "1454519698227"], [".", "1454519698436"], [".", "1454519698644"]]
1217	18	86	2016-02-03 17:16:05.950797+00	2016-02-03 17:15:00.651+00	[["..", "1454519701380"], [".", "1454519701604"], [".", "1454519701810"], [".", "1454519702004"], [".", "1454519702212"], [".", "1454519702427"], [".", "1454519702660"]]
1218	18	29	2016-02-03 17:16:10.202202+00	2016-02-03 17:15:04.599+00	[["..", "1454519705258"], [".", "1454519705459"], [".", "1454519705678"], [".", "1454519705867"], [".", "1454519706068"], [".", "1454519706251"], [".", "1454519706452"], [".", "1454519706683"]]
1219	18	93	2016-02-03 17:16:13.81004+00	2016-02-03 17:15:08.897+00	[["..", "1454519709427"], [".", "1454519709636"], [".", "1454519709844"], [".", "1454519710035"], [".", "1454519710234"], [".", "1454519710459"], [".", "1454519710666"]]
1223	18	68	2016-02-03 17:16:27.544294+00	2016-02-03 17:15:21.997+00	[["..", "1454519722755"], [".", "1454519722968"], [".", "1454519723164"], [".", "1454519723379"], [".", "1454519723579"], [".", "1454519723786"], [".", "1454519723987"], [".", "1454519724251"]]
1224	18	123	2016-02-03 17:16:31.234458+00	2016-02-03 17:15:26.474+00	[[".", "1454519726565"], [".", "1454519726770"], [".", "1454519726988"], [".", "1454519727212"], [".", "1454519727426"], [".", "1454519727651"], [".", "1454519727876"]]
1225	18	31	2016-02-03 17:16:41.73831+00	2016-02-03 17:15:29.493+00	[["..", "1454519737147"], [".", "1454519737363"], [".", "1454519737572"], [".", "1454519737778"], [".", "1454519737986"], [".", "1454519738187"], [".", "1454519738396"]]
1226	18	58	2016-02-03 17:16:45.533508+00	2016-02-03 17:15:40.425+00	[[".", "1454519740836"], ["..", "1454519741051"], [".", "1454519741258"], [".", "1454519741460"], [".", "1454519741666"], [".", "1454519741875"], [".", "1454519742075"]]
1227	18	37	2016-02-03 17:16:49.107368+00	2016-02-03 17:15:43.941+00	[[".", "1454519744506"], [".", "1454519744754"], [".", "1454519744971"], [".", "1454519745180"], [".", "1454519745386"], [".", "1454519745595"], [".", "1454519745803"]]
1228	18	95	2016-02-03 17:16:53.630056+00	2016-02-03 17:15:48.48+00	[["..", "1454519749085"], [".", "1454519749308"], [".", "1454519749514"], [".", "1454519749706"], [".", "1454519749898"], [".", "1454519750090"], [".", "1454519750300"]]
1229	18	28	2016-02-03 17:16:57.287042+00	2016-02-03 17:15:52.315+00	[["..", "1454519753088"], [".", "1454519753291"], [".", "1454519753516"], [".", "1454519753730"], [".", "1454519753939"]]
1230	18	125	2016-02-03 17:17:01.200125+00	2016-02-03 17:15:56.31+00	[["..", "1454519757038"], [".", "1454519757242"], [".", "1454519757452"], [".", "1454519757652"], [".", "1454519757853"], [".", "1454519758050"]]
1231	18	73	2016-02-03 17:17:04.753528+00	2016-02-03 17:16:00.087+00	[["..", "1454519760842"], [".", "1454519761043"], [".", "1454519761250"], [".", "1454519761469"]]
1232	18	11	2016-02-03 17:17:08.238044+00	2016-02-03 17:16:03.44+00	[["..", "1454519764040"], [".", "1454519764250"], [".", "1454519764468"], [".", "1454519764683"], [".", "1454519764900"], [".", "1454519765093"]]
1233	18	22	2016-02-03 17:17:11.94566+00	2016-02-03 17:16:07.116+00	[["..", "1454519767782"], [".", "1454519768003"], [".", "1454519768211"], [".", "1454519768429"], [".", "1454519768635"]]
1234	18	20	2016-02-03 17:17:15.730341+00	2016-02-03 17:16:10.393+00	[["..", "1454519771163"], [".", "1454519771364"], [".", "1454519771579"], [".", "1454519771778"], [".", "1454519771997"], [".", "1454519772202"]]
1235	18	55	2016-02-03 17:17:19.553475+00	2016-02-03 17:16:14.502+00	[["..", "1454519775185"], [".", "1454519775383"], [".", "1454519775596"], [".", "1454519775812"], [".", "1454519776019"], [".", "1454519776234"]]
1236	18	72	2016-02-03 17:17:24.440663+00	2016-02-03 17:16:18.63+00	[[".", "1454519779427"], ["..", "1454519779644"], [".", "1454519779867"], [".", "1454519780084"], [".", "1454519780290"], [".", "1454519780492"], [".", "1454519780690"], [".", "1454519780883"], [".", "1454519781107"]]
1237	18	16	2016-02-03 17:17:28.637153+00	2016-02-03 17:16:23.508+00	[["..", "1454519784259"], [".", "1454519784467"], [".", "1454519784675"], [".", "1454519784874"], [".", "1454519785082"], [".", "1454519785299"], [".", "1454519785506"]]
1238	18	46	2016-02-03 17:17:32.344539+00	2016-02-03 17:16:27.526+00	[["..", "1454519788187"], [".", "1454519788403"], [".", "1454519788612"], [".", "1454519788828"], [".", "1454519789039"]]
1239	18	112	2016-02-03 17:17:36.095662+00	2016-02-03 17:16:30.748+00	[["..", "1454519791346"], [".", "1454519791572"], [".", "1454519791770"], [".", "1454519791974"], [".", "1454519792173"], [".", "1454519792379"], [".", "1454519792570"], [".", "1454519792788"]]
1240	18	38	2016-02-03 17:17:40.558099+00	2016-02-03 17:16:34.59+00	[["..", "1454519795099"], [".", "1454519795323"], [".", "1454519795533"], [".", "1454519795738"], [".", "1454519795964"], [".", "1454519796180"], [".", "1454519796387"], [".", "1454519796580"], [".", "1454519796810"], [".", "1454519797010"], [".", "1454519797253"]]
1241	18	52	2016-02-03 17:17:43.70018+00	2016-02-03 17:16:38.892+00	[["..", "1454519799555"], [".", "1454519799764"], [".", "1454519799980"], [".", "1454519800179"], [".", "1454519800394"]]
1242	18	107	2016-02-03 17:17:47.204755+00	2016-02-03 17:16:42.335+00	[["..", "1454519802779"], [".", "1454519803003"], [".", "1454519803220"], [".", "1454519803427"], [".", "1454519803643"], [".", "1454519803836"], [".", "1454519804067"]]
1243	18	57	2016-02-03 17:17:50.915208+00	2016-02-03 17:16:45.993+00	[["..", "1454519806556"], [".", "1454519806738"], [".", "1454519806962"], [".", "1454519807164"], [".", "1454519807379"]]
1244	18	61	2016-02-03 17:17:54.214101+00	2016-02-03 17:16:48.985+00	[[".", "1454519809845"], [".", "1454519810051"], [".", "1454519810284"], [".", "1454519810484"], [".", "1454519810698"], [".", "1454519810916"]]
1245	18	44	2016-02-03 17:17:57.706937+00	2016-02-03 17:16:52.766+00	[["..", "1454519813359"], [".", "1454519813561"], [".", "1454519813772"], [".", "1454519814002"], [".", "1454519814195"], [".", "1454519814402"]]
1246	18	129	2016-02-03 17:18:00.942416+00	2016-02-03 17:16:56.267+00	[[".", "1454519816739"], ["..", "1454519816956"], [".", "1454519817180"], [".", "1454519817381"], [".", "1454519817596"], [".", "1454519817799"]]
1247	18	70	2016-02-03 17:18:05.074061+00	2016-02-03 17:16:59.632+00	[[".", "1454519820107"], [".", "1454519820315"], ["..", "1454519820530"], [".", "1454519820732"], [".", "1454519820940"], [".", "1454519821139"], [".", "1454519821356"], [".", "1454519821563"], [".", "1454519821754"]]
1248	18	34	2016-02-03 17:18:08.132362+00	2016-02-03 17:17:03.487+00	[["..", "1454519823955"], [".", "1454519824148"], [".", "1454519824357"], [".", "1454519824563"], [".", "1454519824764"], [".", "1454519824994"]]
1249	18	117	2016-02-03 17:18:12.070889+00	2016-02-03 17:17:06.937+00	[["..", "1454519827493"], [".", "1454519827704"], [".", "1454519827909"], [".", "1454519828124"], [".", "1454519828346"], [".", "1454519828538"], [".", "1454519828732"], [".", "1454519828930"]]
1250	18	36	2016-02-03 17:18:16.113053+00	2016-02-03 17:17:10.744+00	[[".", "1454519831282"], ["..", "1454519831500"], [".", "1454519831714"], [".", "1454519831928"], [".", "1454519832131"], [".", "1454519832330"], [".", "1454519832546"], [".", "1454519832754"]]
1251	18	62	2016-02-03 17:18:20.486039+00	2016-02-03 17:17:14.581+00	[[".", "1454519835166"], [".", "1454519835379"], [".", "1454519835594"], [".", "1454519835812"], [".", "1454519836028"], [".", "1454519836258"], [".", "1454519836476"], [".", "1454519836690"]]
1252	18	119	2016-02-03 17:18:23.370542+00	2016-02-03 17:17:18.704+00	[[".", "1454519839170"], ["..", "1454519839402"], [".", "1454519839619"], [".", "1454519839826"], [".", "1454519840019"], [".", "1454519840228"]]
1253	18	91	2016-02-03 17:18:26.844507+00	2016-02-03 17:17:22.044+00	[["..", "1454519842644"], [".", "1454519842868"], [".", "1454519843075"], [".", "1454519843251"], [".", "1454519843474"], [".", "1454519843692"]]
1254	18	10	2016-02-03 17:18:31.304782+00	2016-02-03 17:17:26.576+00	[["..", "1454519847380"], [".", "1454519847596"], [".", "1454519847794"], [".", "1454519848002"]]
1255	18	42	2016-02-03 17:18:33.923253+00	2016-02-03 17:17:29.532+00	[["..", "1454519850219"], [".", "1454519850410"], [".", "1454519850602"], [".", "1454519850788"]]
1256	18	43	2016-02-03 17:18:37.49312+00	2016-02-03 17:17:32.703+00	[["..", "1454519853308"], [".", "1454519853524"], [".", "1454519853723"], [".", "1454519853915"], [".", "1454519854117"], [".", "1454519854346"]]
1257	18	50	2016-02-03 17:18:41.109871+00	2016-02-03 17:17:36.172+00	[["..", "1454519856763"], [".", "1454519856982"], [".", "1454519857196"], [".", "1454519857396"], [".", "1454519857595"], [".", "1454519857802"]]
1258	18	110	2016-02-03 17:18:45.489618+00	2016-02-03 17:17:39.769+00	[[".", "1454519860451"], ["..", "1454519860650"], [".", "1454519860858"], [".", "1454519861067"], [".", "1454519861275"], [".", "1454519861499"], [".", "1454519861716"], [".", "1454519861947"], [".", "1454519862172"]]
1259	18	104	2016-02-03 17:18:48.874561+00	2016-02-03 17:17:44.016+00	[["..", "1454519864647"], [".", "1454519864866"], [".", "1454519865092"], [".", "1454519865290"], [".", "1454519865515"], [".", "1454519865730"]]
1260	18	27	2016-02-03 17:18:52.706402+00	2016-02-03 17:17:47.793+00	[["..", "1454519868422"], [".", "1454519868627"], [".", "1454519868818"], [".", "1454519869019"], [".", "1454519869227"], [".", "1454519869429"]]
1261	18	66	2016-02-03 17:18:58.429822+00	2016-02-03 17:17:51.697+00	[["..", "1454519872387"], [".", "1454519872602"], [".", "1454519872826"], [".", "1454519873042"], [".", "1454519873259"], [".", "1454519873500"], [".", "1454519873762"], [".", "1454519874035"], [".", "1454519874228"], ["..", "1454519874899"]]
1262	18	113	2016-02-03 17:19:02.107902+00	2016-02-03 17:17:56.945+00	[["..", "1454519877468"], [".", "1454519877675"], [".", "1454519877867"], [".", "1454519878083"], [".", "1454519878309"], [".", "1454519878525"], [".", "1454519878732"], [".", "1454519878947"]]
1263	18	103	2016-02-03 17:19:05.706638+00	2016-02-03 17:18:00.743+00	[["..", "1454519881340"], [".", "1454519881547"], [".", "1454519881764"], [".", "1454519881964"], [".", "1454519882155"], [".", "1454519882388"]]
1264	18	101	2016-02-03 17:19:09.221857+00	2016-02-03 17:18:04.15+00	[["..", "1454519884796"], [".", "1454519885004"], [".", "1454519885189"], [".", "1454519885403"], [".", "1454519885618"], [".", "1454519885826"]]
1265	18	111	2016-02-03 17:19:12.2533+00	2016-02-03 17:18:07.992+00	[["..", "1454519888293"], [".", "1454519888485"], [".", "1454519888700"], [".", "1454519888883"], [".", "1454519889099"]]
1266	18	118	2016-02-03 17:19:16.73642+00	2016-02-03 17:18:11.606+00	[["..", "1454519892163"], [".", "1454519892379"], [".", "1454519892594"], [".", "1454519892810"], [".", "1454519893010"], [".", "1454519893210"], [".", "1454519893428"]]
1267	18	12	2016-02-03 17:19:19.776022+00	2016-02-03 17:18:15.219+00	[[".", "1454519895842"], ["..", "1454519896059"], [".", "1454519896259"], [".", "1454519896460"]]
1268	18	127	2016-02-03 17:19:23.228048+00	2016-02-03 17:18:18.435+00	[["..", "1454519899017"], [".", "1454519899236"], [".", "1454519899452"], [".", "1454519899650"], [".", "1454519899859"], [".", "1454519900076"]]
1269	18	88	2016-02-03 17:19:26.81129+00	2016-02-03 17:18:22.036+00	[["..", "1454519902605"], [".", "1454519902835"], [".", "1454519903042"], [".", "1454519903266"], [".", "1454519903484"]]
1270	18	124	2016-02-03 17:19:30.514862+00	2016-02-03 17:18:25.568+00	[["..", "1454519905996"], [".", "1454519906196"], [".", "1454519906404"], [".", "1454519906610"], [".", "1454519906818"], [".", "1454519907026"], [".", "1454519907204"]]
1271	18	56	2016-02-03 17:19:33.628408+00	2016-02-03 17:18:29.047+00	[["..", "1454519909362"], [".", "1454519909565"], [".", "1454519909763"], [".", "1454519909954"], [".", "1454519910170"]]
1272	18	80	2016-02-03 17:19:37.885128+00	2016-02-03 17:18:31.912+00	[["..", "1454519912564"], [".", "1454519912772"], [".", "1454519913047"], [".", "1454519913266"], [".", "1454519913466"], [".", "1454519913691"], [".", "1454519914483"], [".", "1454519914738"]]
1273	18	15	2016-02-03 17:19:41.2269+00	2016-02-03 17:18:36.75+00	[[".", "1454519917331"], ["..", "1454519917533"], [".", "1454519917715"], [".", "1454519917916"]]
1274	18	14	2016-02-03 17:19:45.632222+00	2016-02-03 17:18:39.875+00	[["..", "1454519920893"], [".", "1454519921092"], [".", "1454519921300"], [".", "1454519921516"], [".", "1454519921698"], [".", "1454519921914"], [".", "1454519922107"], [".", "1454519922324"]]
1275	18	97	2016-02-03 17:19:49.343873+00	2016-02-03 17:18:44.454+00	[["..", "1454519925011"], [".", "1454519925219"], [".", "1454519925435"], [".", "1454519925644"], [".", "1454519925840"], [".", "1454519926032"]]
1276	18	99	2016-02-03 17:19:53.594512+00	2016-02-03 17:18:47.814+00	[[".", "1454519928298"], ["..", "1454519928500"], [".", "1454519928715"], [".", "1454519928906"], [".", "1454519929107"], [".", "1454519929306"], [".", "1454519929484"], [".", "1454519930068"], [".", "1454519930282"]]
1277	18	75	2016-02-03 17:19:57.088675+00	2016-02-03 17:18:52.062+00	[[".", "1454519932531"], [".", "1454519932730"], [".", "1454519932947"], [".", "1454519933172"], [".", "1454519933378"], [".", "1454519933572"], [".", "1454519933771"]]
1278	18	76	2016-02-03 17:20:00.713937+00	2016-02-03 17:18:55.981+00	[["..", "1454519936640"], [".", "1454519936862"], [".", "1454519937069"], [".", "1454519937284"], [".", "1454519937491"]]
1279	18	94	2016-02-03 17:20:04.323173+00	2016-02-03 17:18:59.669+00	[["..", "1454519939967"], [".", "1454519940173"], [".", "1454519940396"], [".", "1454519940604"], [".", "1454519940788"], [".", "1454519941012"]]
1280	18	24	2016-02-03 17:20:08.29632+00	2016-02-03 17:19:02.906+00	[["..", "1454519943460"], [".", "1454519943675"], [".", "1454519943891"], [".", "1454519944101"], [".", "1454519944308"], [".", "1454519944476"], [".", "1454519944716"], [".", "1454519944914"]]
1281	18	45	2016-02-03 17:20:11.115311+00	2016-02-03 17:19:06.548+00	[[".", "1454519946982"], [".", "1454519947194"], [".", "1454519947412"], [".", "1454519947620"], [".", "1454519947834"]]
1282	18	115	2016-02-03 17:20:14.814444+00	2016-02-03 17:19:09.526+00	[[".", "1454519950067"], [".", "1454519950268"], [".", "1454519950493"], [".", "1454519950710"], [".", "1454519950890"], [".", "1454519951114"], [".", "1454519951330"], [".", "1454519951620"]]
1283	18	25	2016-02-03 17:20:19.022353+00	2016-02-03 17:19:13.187+00	[["..", "1454519954188"], [".", "1454519954413"], [".", "1454519954588"], [".", "1454519954813"], [".", "1454519955035"], [".", "1454519955244"], [".", "1454519955443"]]
1284	18	69	2016-02-03 17:20:23.20557+00	2016-02-03 17:19:18.307+00	[["..", "1454519958620"], [".", "1454519958826"], [".", "1454519959034"], [".", "1454519959244"], [".", "1454519959461"], [".", "1454519959652"], [".", "1454519959860"]]
1285	18	53	2016-02-03 17:20:26.632386+00	2016-02-03 17:19:21.647+00	[[".", "1454519962364"], ["..", "1454519962586"], [".", "1454519962812"], [".", "1454519963020"], [".", "1454519963242"], [".", "1454519963450"]]
1286	18	89	2016-02-03 17:20:30.804454+00	2016-02-03 17:19:25.655+00	[["..", "1454519966650"], [".", "1454519966860"], [".", "1454519967074"], [".", "1454519967282"], [".", "1454519967498"], [".", "1454519967658"]]
1287	19	0	2016-02-03 17:28:01.787001+00	2016-02-03 17:26:54.142+00	[["a", "1454520417235"], ["a", "1454520417410"], ["a", "1454520417586"], ["a", "1454520417762"], ["a", "1454520417922"], ["a", "1454520418083"], ["a", "1454520418251"], ["a", "1454520418411"]]
1288	19	3	2016-02-03 17:28:04.8327+00	2016-02-03 17:27:00.604+00	[["a", "1454520421164"], ["a", "1454520421328"], ["a", "1454520421489"], ["a", "1454520421659"]]
1289	19	5	2016-02-03 17:28:08.578044+00	2016-02-03 17:27:03.63+00	[["a", "1454520424187"], ["a", "1454520424362"], ["aa", "1454520424707"], ["a", "1454520424891"], ["a", "1454520425059"], ["a", "1454520425234"], ["a", "1454520425403"]]
1290	19	100	2016-02-03 17:28:11.814759+00	2016-02-03 17:27:06.986+00	[["a", "1454520427747"], ["a", "1454520427931"], ["a", "1454520428107"], ["a", "1454520428283"], ["a", "1454520428468"], ["a", "1454520428651"]]
1291	19	43	2016-02-03 17:28:15.161578+00	2016-02-03 17:27:10.606+00	[["a", "1454520431107"], ["a", "1454520431283"], ["a", "1454520431467"], ["a", "1454520431643"], ["a", "1454520431826"], ["a", "1454520431995"]]
1292	19	73	2016-02-03 17:28:18.305349+00	2016-02-03 17:27:13.691+00	[["a", "1454520434275"], ["a", "1454520434490"], ["a", "1454520434682"], ["a", "1454520434859"]]
1293	19	120	2016-02-03 17:28:21.683212+00	2016-02-03 17:27:16.733+00	[["a", "1454520437435"], ["a", "1454520437627"], ["a", "1454520437811"], ["a", "1454520438002"], ["a", "1454520438188"], ["a", "1454520438355"]]
1294	19	10	2016-02-03 17:28:24.545529+00	2016-02-03 17:27:20.193+00	[["a", "1454520440673"], ["a", "1454520440834"], ["a", "1454520441029"], ["a", "1454520441220"]]
1295	19	95	2016-02-03 17:28:29.085977+00	2016-02-03 17:27:22.951+00	[["a", "1454520443471"], ["aa", "1454520443666"], ["a", "1454520443847"], ["a", "1454520444040"], ["a", "1454520444228"], ["a", "1454520444403"], ["aa", "1454520445349"]]
1296	19	24	2016-02-03 17:28:32.829672+00	2016-02-03 17:27:27.61+00	[["s", "1454520448339"], ["s", "1454520448530"], ["ss", "1454520448727"], ["s", "1454520448910"], ["s", "1454520449092"], ["s", "1454520449266"], ["s", "1454520449458"], ["s", "1454520449627"]]
1297	19	63	2016-02-03 17:28:36.602044+00	2016-02-03 17:27:31.611+00	[["s", "1454520452299"], ["s", "1454520452507"], ["s", "1454520452707"], ["s", "1454520452899"], ["ss", "1454520453092"], ["s", "1454520453282"]]
1298	19	77	2016-02-03 17:28:40.610842+00	2016-02-03 17:27:35.603+00	[["s", "1454520456163"], ["s", "1454520456363"], ["ss", "1454520456548"], ["s", "1454520456730"], ["s", "1454520456923"], ["s", "1454520457099"], ["s", "1454520457274"]]
1299	19	59	2016-02-03 17:28:43.723899+00	2016-02-03 17:27:39.074+00	[["s", "1454520459642"], ["s", "1454520459827"], ["s", "1454520460010"], ["s", "1454520460203"], ["s", "1454520460379"], ["s", "1454520460563"]]
1300	19	36	2016-02-03 17:28:47.216814+00	2016-02-03 17:27:42.324+00	[["s", "1454520462763"], ["s", "1454520462940"], ["s", "1454520463123"], ["s", "1454520463315"], ["s", "1454520463499"], ["ss", "1454520463686"], ["s", "1454520463868"], ["s", "1454520464038"]]
1301	19	66	2016-02-03 17:28:51.255917+00	2016-02-03 17:27:45.683+00	[["s", "1454520466228"], ["s", "1454520466434"], ["s", "1454520466619"], ["ss", "1454520466818"], ["s", "1454520467004"], ["s", "1454520467184"], ["s", "1454520467373"], ["s", "1454520467548"], ["s", "1454520467740"], ["s", "1454520467922"]]
1302	19	49	2016-02-03 17:28:54.566034+00	2016-02-03 17:27:49.787+00	[["s", "1454520470283"], ["s", "1454520470483"], ["s", "1454520470675"], ["s", "1454520470859"], ["s", "1454520471051"], ["s", "1454520471243"]]
1303	19	88	2016-02-03 17:28:58.111118+00	2016-02-03 17:27:53.209+00	[["s", "1454520473859"], ["s", "1454520474059"], ["s", "1454520474258"], ["s", "1454520474451"], ["ss", "1454520474655"]]
1304	19	98	2016-02-03 17:29:01.583976+00	2016-02-03 17:27:56.843+00	[["s", "1454520477467"], ["s", "1454520477675"], ["ss", "1454520477870"], ["s", "1454520478065"], ["s", "1454520478251"]]
1305	19	52	2016-02-03 17:29:04.816376+00	2016-02-03 17:28:00.019+00	[["s", "1454520480715"], ["s", "1454520480907"], ["s", "1454520481107"], ["s", "1454520481291"], ["s", "1454520481483"]]
1306	19	54	2016-02-03 17:29:07.893197+00	2016-02-03 17:28:03.404+00	[["s", "1454520483966"], ["s", "1454520484155"], ["s", "1454520484354"], ["s", "1454520484546"], ["s", "1454520484731"]]
1307	19	29	2016-02-03 17:29:12.047737+00	2016-02-03 17:28:06.795+00	[["s", "1454520487347"], ["s", "1454520487547"], ["s", "1454520487739"], ["s", "1454520487939"], ["ss", "1454520488140"], ["s", "1454520488325"], ["s", "1454520488523"], ["s", "1454520488740"]]
1308	19	123	2016-02-03 17:29:15.670445+00	2016-02-03 17:28:10.416+00	[["s", "1454520491002"], ["s", "1454520491211"], ["s", "1454520491403"], ["s", "1454520491611"], ["ss", "1454520491814"], ["s", "1454520491998"], ["s", "1454520492355"]]
1309	19	81	2016-02-03 17:29:19.048948+00	2016-02-03 17:28:13.945+00	[["s", "1454520494499"], ["s", "1454520494715"], ["s", "1454520494915"], ["s", "1454520495107"], ["ss", "1454520495321"], ["ss", "1454520495701"], ["s", "1454520495895"]]
1310	19	104	2016-02-03 17:29:22.603646+00	2016-02-03 17:28:17.701+00	[["s", "1454520498235"], ["ss", "1454520498449"], ["s", "1454520498645"], ["s", "1454520498838"], ["s", "1454520499038"], ["s", "1454520499229"]]
1311	19	30	2016-02-03 17:29:25.484988+00	2016-02-03 17:28:21.279+00	[["s", "1454520501581"], ["s", "1454520501763"], ["ss", "1454520501971"], ["s", "1454520502157"]]
1312	19	62	2016-02-03 17:29:29.209622+00	2016-02-03 17:28:24.008+00	[["s", "1454520504469"], ["s", "1454520504666"], ["ss", "1454520504882"], ["s", "1454520505063"], ["s", "1454520505251"], ["s", "1454520505451"], ["s", "1454520505644"], ["s", "1454520505836"]]
1313	19	40	2016-02-03 17:29:31.997095+00	2016-02-03 17:28:27.552+00	[["s", "1454520508076"], ["s", "1454520508275"], ["s", "1454520508475"], ["ss", "1454520508683"]]
1314	19	108	2016-02-03 17:29:35.066943+00	2016-02-03 17:28:30.583+00	[["s", "1454520510937"], ["s", "1454520511099"], ["s", "1454520511306"], ["ss", "1454520511508"], ["s", "1454520511701"], ["s", "1454520511899"]]
1315	19	60	2016-02-03 17:29:38.400726+00	2016-02-03 17:28:33.736+00	[["s", "1454520514125"], ["s", "1454520514298"], ["s", "1454520514499"], ["ss", "1454520514702"], ["s", "1454520514892"], ["s", "1454520515094"]]
1316	19	129	2016-02-03 17:29:41.835825+00	2016-02-03 17:28:36.851+00	[["s", "1454520517277"], ["s", "1454520517483"], ["s", "1454520517683"], ["s", "1454520517883"], ["s", "1454520518091"], ["s", "1454520518275"]]
1317	19	78	2016-02-03 17:29:46.263572+00	2016-02-03 17:28:40.688+00	[["s", "1454520521539"], ["s", "1454520521739"], ["s", "1454520521939"], ["s", "1454520522138"], ["ss", "1454520522332"], ["s", "1454520522531"], ["s", "1454520522739"], ["s", "1454520522932"]]
1318	19	79	2016-02-03 17:29:49.853343+00	2016-02-03 17:28:44.891+00	[["s", "1454520525530"], ["s", "1454520525739"], ["s", "1454520525939"], ["s", "1454520526139"], ["s", "1454520526331"], ["s", "1454520526530"]]
1319	19	99	2016-02-03 17:29:54.022843+00	2016-02-03 17:28:48.843+00	[["s", "1454520529106"], ["s", "1454520529299"], ["s", "1454520529500"], ["s", "1454520529699"], ["ss", "1454520529893"], ["s", "1454520530085"], ["s", "1454520530291"], ["s", "1454520530524"], ["s", "1454520530724"]]
1320	19	41	2016-02-03 17:29:57.22244+00	2016-02-03 17:28:52.564+00	[["s", "1454520533084"], ["s", "1454520533291"], ["s", "1454520533483"], ["s", "1454520533699"], ["s", "1454520533899"]]
1321	19	39	2016-02-03 17:30:01.377824+00	2016-02-03 17:28:55.924+00	[["s", "1454520536795"], ["s", "1454520536994"], ["s", "1454520537219"], ["s", "1454520537427"], ["s", "1454520537635"], ["s", "1454520537835"], ["s", "1454520538027"], ["s", "1454520538235"]]
1322	19	28	2016-02-03 17:30:06.129116+00	2016-02-03 17:29:01.199+00	[["s", "1454520542028"], ["s", "1454520542235"], ["s", "1454520542443"], ["s", "1454520542635"], ["s", "1454520542827"]]
1323	19	113	2016-02-03 17:30:09.886164+00	2016-02-03 17:29:04.756+00	[["s", "1454520545196"], ["s", "1454520545395"], ["s", "1454520545587"], ["s", "1454520545770"], ["s", "1454520545971"], ["s", "1454520546163"], ["s", "1454520546363"], ["s", "1454520546555"]]
1324	19	20	2016-02-03 17:30:13.028622+00	2016-02-03 17:29:08.172+00	[["s", "1454520548804"], ["s", "1454520549011"], ["s", "1454520549219"], ["s", "1454520549427"], ["s", "1454520549627"], ["s", "1454520549835"]]
1325	19	58	2016-02-03 17:30:16.941232+00	2016-02-03 17:29:11.76+00	[["s", "1454520552166"], ["s", "1454520552362"], ["s", "1454520552563"], ["s", "1454520552763"], ["s", "1454520552963"], ["s", "1454520553163"], ["s", "1454520553363"]]
1326	19	23	2016-02-03 17:30:19.967282+00	2016-02-03 17:29:14.995+00	[["s", "1454520555596"], ["s", "1454520555811"], ["s", "1454520556010"], ["s", "1454520556227"], ["s", "1454520556435"], ["s", "1454520556635"]]
1327	19	121	2016-02-03 17:30:23.33705+00	2016-02-03 17:29:18.506+00	[["s", "1454520558843"], ["s", "1454520559077"], ["s", "1454520559267"], ["s", "1454520559467"], ["s", "1454520559682"], ["s", "1454520559891"], ["s", "1454520560083"]]
1328	19	89	2016-02-03 17:30:26.489907+00	2016-02-03 17:29:21.89+00	[["s", "1454520562356"], ["s", "1454520562554"], ["s", "1454520562747"], ["s", "1454520562946"], ["s", "1454520563155"], ["s", "1454520563338"]]
1329	19	21	2016-02-03 17:30:29.840457+00	2016-02-03 17:29:25.656+00	[["s", "1454520565902"], ["s", "1454520566099"], ["s", "1454520566306"], ["s", "1454520566499"]]
1330	19	128	2016-02-03 17:30:33.401353+00	2016-02-03 17:29:28.537+00	[["s", "1454520568856"], ["s", "1454520569075"], ["s", "1454520569266"], ["s", "1454520569467"], ["s", "1454520569675"], ["s", "1454520569875"], ["s", "1454520570083"]]
1331	19	84	2016-02-03 17:30:37.569178+00	2016-02-03 17:29:32.151+00	[["s", "1454520573074"], ["s", "1454520573290"], ["s", "1454520573508"], ["s", "1454520573787"], ["s", "1454520574011"], ["s", "1454520574227"]]
1332	19	116	2016-02-03 17:30:41.129311+00	2016-02-03 17:29:36.134+00	[["s", "1454520576564"], ["s", "1454520576778"], ["s", "1454520576994"], ["s", "1454520577195"], ["s", "1454520577387"], ["s", "1454520577586"], ["s", "1454520577802"]]
1333	19	50	2016-02-03 17:30:44.574033+00	2016-02-03 17:29:39.881+00	[["s", "1454520580232"], ["s", "1454520580435"], ["s", "1454520580643"], ["s", "1454520580851"], ["s", "1454520581067"], ["s", "1454520581274"]]
1334	19	45	2016-02-03 17:30:47.464464+00	2016-02-03 17:29:43.298+00	[["s", "1454520583486"], ["s", "1454520583700"], ["s", "1454520583899"], ["s", "1454520584099"], ["s", "1454520584307"]]
1335	19	68	2016-02-03 17:30:51.43896+00	2016-02-03 17:29:46.03+00	[["s", "1454520586541"], ["s", "1454520586755"], ["s", "1454520586955"], ["s", "1454520587155"], ["s", "1454520587354"], ["s", "1454520587563"], ["s", "1454520587763"], ["s", "1454520587971"]]
1336	19	37	2016-02-03 17:30:54.763678+00	2016-02-03 17:29:49.825+00	[["s", "1454520590229"], ["s", "1454520590429"], ["s", "1454520590635"], ["s", "1454520590835"], ["s", "1454520591035"], ["s", "1454520591243"], ["s", "1454520591451"]]
1337	19	107	2016-02-03 17:30:58.372796+00	2016-02-03 17:29:53.238+00	[["s", "1454520593772"], ["s", "1454520593995"], ["s", "1454520594202"], ["s", "1454520594411"], ["s", "1454520594643"], ["s", "1454520594852"], ["s", "1454520595044"]]
1338	19	65	2016-02-03 17:31:02.012805+00	2016-02-03 17:29:56.967+00	[["s", "1454520597484"], ["s", "1454520597699"], ["s", "1454520597899"], ["s", "1454520598099"], ["s", "1454520598291"], ["s", "1454520598491"], ["s", "1454520598691"]]
1339	19	27	2016-02-03 17:31:05.242221+00	2016-02-03 17:30:00.31+00	[["s", "1454520600900"], ["s", "1454520601115"], ["s", "1454520601323"], ["s", "1454520601522"], ["s", "1454520601739"], ["s", "1454520601939"]]
1340	19	119	2016-02-03 17:31:08.834369+00	2016-02-03 17:30:03.589+00	[["s", "1454520604291"], ["s", "1454520604523"], ["s", "1454520604722"], ["s", "1454520604931"], ["s", "1454520605139"], ["s", "1454520605338"]]
1341	19	105	2016-02-03 17:31:11.557168+00	2016-02-03 17:30:07.193+00	[["s", "1454520607588"], ["s", "1454520607787"], ["s", "1454520607980"], ["s", "1454520608187"], ["s", "1454520608403"]]
1342	19	64	2016-02-03 17:31:15.548902+00	2016-02-03 17:30:10.203+00	[["s", "1454520610812"], ["s", "1454520611011"], ["s", "1454520611202"], ["s", "1454520611402"], ["s", "1454520611595"], ["s", "1454520611803"], ["s", "1454520612003"], ["s", "1454520612219"]]
1343	19	34	2016-02-03 17:31:18.773208+00	2016-02-03 17:30:13.993+00	[["s", "1454520614388"], ["s", "1454520614578"], ["s", "1454520614786"], ["s", "1454520614987"], ["s", "1454520615203"], ["s", "1454520615423"]]
1344	19	18	2016-02-03 17:31:22.876109+00	2016-02-03 17:30:17.456+00	[["s", "1454520618060"], ["s", "1454520618274"], ["s", "1454520618475"], ["s", "1454520618683"], ["s", "1454520618891"], ["s", "1454520619091"], ["s", "1454520619307"], ["ss", "1454520619542"]]
1345	19	92	2016-02-03 17:31:26.269336+00	2016-02-03 17:30:21.14+00	[["s", "1454520621739"], ["s", "1454520621931"], ["s", "1454520622123"], ["s", "1454520622323"], ["s", "1454520622515"], ["s", "1454520622698"], ["ss", "1454520622903"], ["s", "1454520623109"]]
1346	19	85	2016-02-03 17:31:29.853345+00	2016-02-03 17:30:25.135+00	[["s", "1454520625691"], ["s", "1454520625883"], ["s", "1454520626083"], ["s", "1454520626283"], ["s", "1454520626491"], ["s", "1454520626699"]]
1347	19	72	2016-02-03 17:31:34.462234+00	2016-02-03 17:30:28.622+00	[["s", "1454520629491"], ["s", "1454520629691"], ["s", "1454520629891"], ["s", "1454520630099"], ["s", "1454520630299"], ["s", "1454520630491"], ["s", "1454520630699"], ["s", "1454520630899"], ["s", "1454520631107"]]
1348	19	82	2016-02-03 17:31:37.37427+00	2016-02-03 17:30:32.774+00	[["s", "1454520633371"], ["s", "1454520633571"], ["s", "1454520633755"], ["s", "1454520633955"]]
1349	19	126	2016-02-03 17:31:40.497991+00	2016-02-03 17:30:35.969+00	[["s", "1454520636217"], ["s", "1454520636383"], ["s", "1454520636571"], ["s", "1454520636763"], ["s", "1454520636948"], ["s", "1454520637138"], ["s", "1454520637331"]]
1350	19	42	2016-02-03 17:31:43.592583+00	2016-02-03 17:30:39.172+00	[["s", "1454520639715"], ["s", "1454520639906"], ["s", "1454520640091"], ["s", "1454520640267"]]
1351	19	70	2016-02-03 17:31:47.46531+00	2016-02-03 17:30:42.405+00	[["s", "1454520642738"], ["s", "1454520642931"], ["s", "1454520643130"], ["s", "1454520643315"], ["s", "1454520643507"], ["s", "1454520643691"], ["s", "1454520643891"], ["s", "1454520644099"], ["s", "1454520644282"]]
1352	19	47	2016-02-03 17:31:50.757354+00	2016-02-03 17:30:45.798+00	[["s", "1454520646324"], ["s", "1454520646523"], ["s", "1454520646715"], ["s", "1454520646907"], ["s", "1454520647099"]]
1353	19	48	2016-02-03 17:31:53.791541+00	2016-02-03 17:30:49.343+00	[["s", "1454520649550"], ["s", "1454520649686"], ["s", "1454520649876"], ["s", "1454520650067"], ["s", "1454520650267"], ["s", "1454520650451"]]
1354	19	76	2016-02-03 17:31:56.743342+00	2016-02-03 17:30:52.229+00	[["s", "1454520652606"], ["ss", "1454520652801"], ["s", "1454520653179"], ["ss", "1454520653392"], ["s", "1454520653582"]]
1355	19	125	2016-02-03 17:32:00.134277+00	2016-02-03 17:30:55.228+00	[["s", "1454520655828"], ["s", "1454520656026"], ["s", "1454520656227"], ["s", "1454520656419"], ["ss", "1454520656629"], ["s", "1454520656811"]]
1356	19	83	2016-02-03 17:32:03.436673+00	2016-02-03 17:30:58.727+00	[["s", "1454520659072"], ["s", "1454520659258"], ["s", "1454520659435"], ["s", "1454520659603"], ["s", "1454520659755"], ["s", "1454520659915"]]
1357	19	127	2016-02-03 17:32:06.497854+00	2016-02-03 17:31:01.882+00	[["s", "1454520662153"], ["s", "1454520662308"], ["s", "1454520662467"], ["s", "1454520662643"], ["s", "1454520662797"], ["s", "1454520662954"]]
1358	19	106	2016-02-03 17:32:09.073628+00	2016-02-03 17:31:04.507+00	[["s", "1454520665066"], ["s", "1454520665243"], ["s", "1454520665403"], ["s", "1454520665579"], ["s", "1454520665763"]]
1359	19	56	2016-02-03 17:32:11.684521+00	2016-02-03 17:31:07.551+00	[["s", "1454520667838"], ["s", "1454520668019"], ["s", "1454520668187"], ["s", "1454520668363"], ["s", "1454520668523"]]
1360	19	112	2016-02-03 17:32:15.398715+00	2016-02-03 17:31:10.599+00	[["s", "1454520670825"], ["s", "1454520670982"], ["ss", "1454520671150"], ["s", "1454520671443"], ["ss", "1454520671610"], ["s", "1454520671779"], ["s", "1454520671925"], ["s", "1454520672088"]]
1361	19	14	2016-02-03 17:32:18.853049+00	2016-02-03 17:31:14.181+00	[["s", "1454520674605"], ["s", "1454520674771"], ["s", "1454520674931"], ["s", "1454520675075"], ["s", "1454520675227"], ["s", "1454520675379"], ["s", "1454520675523"], ["s", "1454520675659"]]
1362	19	86	2016-02-03 17:32:22.461102+00	2016-02-03 17:31:17.729+00	[["s", "1454520678198"], ["s", "1454520678355"], ["s", "1454520678515"], ["s", "1454520678668"], ["s", "1454520678813"], ["s", "1454520678966"], ["s", "1454520679122"]]
1363	19	101	2016-02-03 17:32:25.723403+00	2016-02-03 17:31:21.148+00	[["s", "1454520681471"], ["s", "1454520681655"], ["s", "1454520681795"], ["s", "1454520681947"], ["s", "1454520682099"], ["s", "1454520682237"]]
1364	19	96	2016-02-03 17:32:29.259054+00	2016-02-03 17:31:24.327+00	[["s", "1454520684898"], ["s", "1454520685067"], ["s", "1454520685218"], ["s", "1454520685371"], ["s", "1454520685518"], ["s", "1454520685678"], ["s", "1454520685955"], ["s", "1454520686099"]]
1365	19	87	2016-02-03 17:32:32.97213+00	2016-02-03 17:31:28.073+00	[["ss", "1454520688401"], ["s", "1454520688739"], ["s", "1454520688891"], ["s", "1454520689043"], ["s", "1454520689204"], ["s", "1454520689355"], ["s", "1454520689499"], ["s", "1454520689651"]]
1366	19	46	2016-02-03 17:32:36.000019+00	2016-02-03 17:31:31.543+00	[["s", "1454520692000"], ["s", "1454520692187"], ["s", "1454520692355"], ["s", "1454520692522"], ["s", "1454520692675"]]
1367	19	25	2016-02-03 17:32:39.272889+00	2016-02-03 17:31:34.644+00	[["s", "1454520695019"], ["s", "1454520695171"], ["s", "1454520695338"], ["s", "1454520695491"], ["s", "1454520695643"], ["s", "1454520695803"], ["s", "1454520695932"]]
1368	19	97	2016-02-03 17:32:42.49117+00	2016-02-03 17:31:37.74+00	[["ss", "1454520698175"], ["s", "1454520698483"], ["s", "1454520698642"], ["s", "1454520698804"], ["s", "1454520698947"], ["s", "1454520699098"]]
1369	19	55	2016-02-03 17:32:45.249997+00	2016-02-03 17:31:40.602+00	[["s", "1454520701132"], ["s", "1454520701306"], ["s", "1454520701459"], ["s", "1454520701618"], ["s", "1454520701762"], ["s", "1454520701915"]]
1370	19	109	2016-02-03 17:32:48.440703+00	2016-02-03 17:31:43.65+00	[["s", "1454520704139"], ["s", "1454520704331"], ["s", "1454520704491"], ["s", "1454520704667"], ["s", "1454520704811"], ["s", "1454520704971"], ["s", "1454520705114"]]
1371	19	19	2016-02-03 17:32:51.685538+00	2016-02-03 17:31:46.931+00	[["s", "1454520707436"], ["s", "1454520707611"], ["s", "1454520707770"], ["s", "1454520707923"], ["s", "1454520708083"], ["s", "1454520708242"], ["s", "1454520708378"]]
1372	19	13	2016-02-03 17:32:55.056499+00	2016-02-03 17:31:50.345+00	[["s", "1454520710898"], ["s", "1454520711059"], ["s", "1454520711235"], ["s", "1454520711395"], ["s", "1454520711547"], ["s", "1454520711707"]]
1373	19	15	2016-02-03 17:32:57.749065+00	2016-02-03 17:31:53.693+00	[["s", "1454520713959"], ["s", "1454520714123"], ["s", "1454520714290"], ["s", "1454520714443"]]
1374	19	35	2016-02-03 17:33:00.595988+00	2016-02-03 17:31:56.318+00	[["s", "1454520716802"], ["s", "1454520716980"], ["s", "1454520717131"], ["s", "1454520717283"]]
1375	19	16	2016-02-03 17:33:03.953179+00	2016-02-03 17:31:59.08+00	[["s", "1454520719644"], ["s", "1454520719810"], ["s", "1454520719963"], ["s", "1454520720123"], ["s", "1454520720283"], ["s", "1454520720428"], ["s", "1454520720602"]]
1376	19	44	2016-02-03 17:33:06.764435+00	2016-02-03 17:32:02.211+00	[["s", "1454520722652"], ["s", "1454520722819"], ["s", "1454520722979"], ["s", "1454520723131"], ["s", "1454520723291"], ["s", "1454520723435"]]
1377	19	32	2016-02-03 17:34:35.873299+00	2016-02-03 17:33:28.735+00	[["..", "1454520810475"], [".", "1454520810675"], [".", "1454520810843"], [".", "1454520810995"], [".", "1454520811164"], [".", "1454520811291"], [".", "1454520811468"], [".", "1454520811611"], [".", "1454520811763"], [".", "1454520811891"]]
1378	19	31	2016-02-03 17:34:39.039206+00	2016-02-03 17:33:34.184+00	[["..", "1454520814723"], [".", "1454520814867"], [".", "1454520815043"], [".", "1454520815211"], [".", "1454520815347"], ["..", "1454520815659"], [".", "1454520815820"]]
1379	19	33	2016-02-03 17:34:41.779556+00	2016-02-03 17:33:37.671+00	[["..", "1454520818137"], [".", "1454520818299"], [".", "1454520818475"], [".", "1454520818619"]]
1380	19	26	2016-02-03 17:34:45.849136+00	2016-02-03 17:33:40.588+00	[["..", "1454520821102"], [".", "1454520821282"], [".", "1454520821451"], [".", "1454520821596"], [".", "1454520821771"], [".", "1454520821948"], [".", "1454520822085"], [".", "1454520822307"], ["..", "1454520822524"]]
1381	19	124	2016-02-03 17:34:49.348188+00	2016-02-03 17:33:44.459+00	[[".", "1454520824932"], ["..", "1454520825126"], [".", "1454520825308"], [".", "1454520825489"], [".", "1454520825659"], [".", "1454520825811"], [".", "1454520825987"]]
1382	19	110	2016-02-03 17:34:52.804305+00	2016-02-03 17:33:47.566+00	[[".", "1454520828163"], ["..", "1454520828367"], [".", "1454520828548"], [".", "1454520828723"], [".", "1454520828905"], [".", "1454520829091"], [".", "1454520829284"], [".", "1454520829460"], [".", "1454520829636"]]
1383	19	114	2016-02-03 17:34:56.636765+00	2016-02-03 17:33:51.388+00	[["..", "1454520832020"], [".", "1454520832212"], [".", "1454520832619"], ["..", "1454520832811"], [".", "1454520832987"], [".", "1454520833156"], [".", "1454520833307"]]
1384	19	117	2016-02-03 17:35:00.435142+00	2016-02-03 17:33:55.395+00	[["..", "1454520835889"], [".", "1454520836091"], [".", "1454520836284"], [".", "1454520836480"], [".", "1454520836684"], [".", "1454520836844"], [".", "1454520837076"], [".", "1454520837268"]]
1385	19	22	2016-02-03 17:35:04.246907+00	2016-02-03 17:33:59.373+00	[[".", "1454520840308"], ["..", "1454520840507"], [".", "1454520840714"], [".", "1454520840907"], [".", "1454520841084"]]
1386	19	12	2016-02-03 17:35:07.473239+00	2016-02-03 17:34:03.048+00	[["..", "1454520843558"], [".", "1454520843756"], [".", "1454520843955"], [".", "1454520844148"]]
1387	19	102	2016-02-03 17:35:11.014094+00	2016-02-03 17:34:05.892+00	[[".", "1454520846500"], ["..", "1454520846693"], [".", "1454520846892"], [".", "1454520847083"], [".", "1454520847276"], [".", "1454520847492"], [".", "1454520847699"]]
1388	19	11	2016-02-03 17:35:15.460707+00	2016-02-03 17:34:09.428+00	[["..", "1454520850827"], [".", "1454520851011"], [".", "1454520851211"], [".", "1454520851390"], [".", "1454520851627"], [".", "1454520852107"]]
1389	19	115	2016-02-03 17:35:57.524235+00	2016-02-03 17:34:13.723+00	[["...", "1454520892389"], [".", "1454520892571"], [".", "1454520892764"], [".", "1454520892940"], [".", "1454520893115"], [".", "1454520893293"], [".", "1454520893460"], [".", "1454520893635"]]
1390	19	103	2016-02-03 17:36:01.19463+00	2016-02-03 17:34:55.616+00	[["..", "1454520897020"], [".", "1454520897212"], [".", "1454520897395"], [".", "1454520897580"], [".", "1454520897759"], [".", "1454520897924"]]
1391	19	111	2016-02-03 17:36:04.408884+00	2016-02-03 17:34:59.929+00	[["..", "1454520900414"], [".", "1454520900588"], [".", "1454520900760"], [".", "1454520900939"], [".", "1454520901091"]]
1392	19	17	2016-02-03 17:36:07.618951+00	2016-02-03 17:35:03.158+00	[[".", "1454520903580"], ["..", "1454520903763"], [".", "1454520903948"], [".", "1454520904132"], [".", "1454520904300"]]
1393	19	75	2016-02-03 17:36:10.835397+00	2016-02-03 17:35:06.193+00	[["..", "1454520906569"], [".", "1454520906751"], [".", "1454520906924"], [".", "1454520907085"], [".", "1454520907271"], [".", "1454520907428"], [".", "1454520907668"]]
1394	19	90	2016-02-03 17:36:14.693556+00	2016-02-03 17:35:09.72+00	[[".", "1454520910188"], ["..", "1454520910387"], [".", "1454520910548"], [".", "1454520910732"], [".", "1454520910875"], [".", "1454520911051"], ["..", "1454520911363"]]
1395	19	71	2016-02-03 17:36:18.416289+00	2016-02-03 17:35:13.206+00	[["..", "1454520913750"], [".", "1454520913931"], [".", "1454520914108"], [".", "1454520914300"], [".", "1454520914475"], [".", "1454520914668"], [".", "1454520914835"], [".", "1454520915027"], [".", "1454520915253"]]
1396	19	118	2016-02-03 17:36:22.372151+00	2016-02-03 17:35:17.254+00	[["..", "1454520917735"], [".", "1454520917916"], [".", "1454520918103"], [".", "1454520918291"], [".", "1454520918483"], [".", "1454520918684"], [".", "1454520918892"]]
1397	19	80	2016-02-03 17:36:25.787308+00	2016-02-03 17:35:20.773+00	[["..", "1454520921181"], [".", "1454520921381"], [".", "1454520921573"], [".", "1454520921756"], [".", "1454520921940"], [".", "1454520922131"], [".", "1454520922292"], [".", "1454520922476"]]
1398	19	94	2016-02-03 17:36:31.534053+00	2016-02-03 17:35:26.562+00	[["..", "1454520927387"], [".", "1454520927559"], [".", "1454520927717"], [".", "1454520927899"], [".", "1454520928061"], [".", "1454520928216"]]
1399	19	74	2016-02-03 17:36:35.150225+00	2016-02-03 17:35:30.179+00	[["..", "1454520930742"], [".", "1454520930930"], [".", "1454520931101"], [".", "1454520931267"], [".", "1454520931453"], [".", "1454520931620"], [".", "1454520931796"], [".", "1454520931979"]]
1400	19	67	2016-02-03 17:36:39.950132+00	2016-02-03 17:35:33.941+00	[["..", "1454520935863"], [".", "1454520936027"], [".", "1454520936220"], [".", "1454520936411"], [".", "1454520936596"], [".", "1454520936787"]]
1401	19	51	2016-02-03 17:36:44.054264+00	2016-02-03 17:35:39.283+00	[["..", "1454520939883"], [".", "1454520940089"], [".", "1454520940267"], [".", "1454520940451"], [".", "1454520940630"], [".", "1454520940867"]]
1402	19	93	2016-02-03 17:36:48.230391+00	2016-02-03 17:35:42.889+00	[["..", "1454520943673"], [".", "1454520943878"], [".", "1454520944076"], [".", "1454520944275"], [".", "1454520944459"], [".", "1454520944699"], [".", "1454520944907"]]
1403	19	122	2016-02-03 17:36:53.948431+00	2016-02-03 17:35:47.2+00	[["..", "1454520948919"], ["..", "1454520949297"], [".", "1454520949475"], [".", "1454520949636"], [".", "1454520949844"], [".", "1454520950045"], ["..", "1454520950523"]]
1404	19	57	2016-02-03 17:36:58.257538+00	2016-02-03 17:35:53.339+00	[[".", "1454520954124"], ["..", "1454520954302"], [".", "1454520954486"], [".", "1454520954669"], [".", "1454520954828"]]
1405	19	38	2016-02-03 17:37:04.944857+00	2016-02-03 17:35:56.929+00	[[".", "1454520959556"], ["..", "1454520959741"], [".", "1454520959917"], [".", "1454520960059"], [".", "1454520960252"], [".", "1454520960443"], [".", "1454520960619"], [".", "1454520960782"], [".", "1454520961052"], [".", "1454520961219"], [".", "1454520961419"]]
1406	19	91	2016-02-03 17:37:57.573297+00	2016-02-03 17:36:26.617+00	[["..", "1454521013293"], [".", "1454521013492"], [".", "1454521013684"], [".", "1454521013876"], [".", "1454521014014"], [".", "1454521014219"]]
1407	19	69	2016-02-03 17:41:11.341653+00	2016-02-03 17:40:03.528+00	[["..", "1454521206232"], [".", "1454521206420"], [".", "1454521206597"], [".", "1454521206779"], [".", "1454521206963"], [".", "1454521207131"], [".", "1454521207299"]]
1408	19	61	2016-02-03 17:41:16.614729+00	2016-02-03 17:40:09.722+00	[["..", "1454521211952"], [".", "1454521212125"], [".", "1454521212299"], [".", "1454521212459"], [".", "1454521212636"], ["..", "1454521213286"]]
1409	19	53	2016-02-03 17:41:26.508357+00	2016-02-03 17:40:16.32+00	[["..", "1454521221940"], [".", "1454521222181"], [".", "1454521222395"], [".", "1454521222587"], [".", "1454521222781"], [".", "1454521223108"]]
1410	20	5	2016-02-03 18:27:05.186207+00	2016-02-03 18:25:58.931+00	[["..", "1454523960733"], [".", "1454523960925"], [".", "1454523961109"], [".", "1454523961276"], [".", "1454523961454"], [".", "1454523961644"], [".", "1454523961821"]]
1411	20	1	2016-02-03 18:30:54.225694+00	2016-02-03 18:29:48.975+00	[["..", "1454524190302"], [".", "1454524190485"], [".", "1454524190645"], [".", "1454524190830"]]
1412	20	8	2016-02-03 18:33:54.949899+00	2016-02-03 18:32:48.421+00	[[".", "1454524370389"], [".", "1454524370573"], ["..", "1454524370757"], [".", "1454524370941"], [".", "1454524371120"], [".", "1454524371300"], [".", "1454524371501"], [".", "1454524371685"]]
1413	20	97	2016-02-03 18:33:58.635898+00	2016-02-03 18:32:53.918+00	[[".", "1454524374514"], [".", "1454524374682"], [".", "1454524374863"], [".", "1454524375048"], [".", "1454524375221"], [".", "1454524375398"]]
1414	20	124	2016-02-03 18:34:02.73937+00	2016-02-03 18:32:57.667+00	[["..", "1454524378239"], [".", "1454524378422"], [".", "1454524378589"], [".", "1454524378774"], [".", "1454524378957"], [".", "1454524379143"], [".", "1454524379318"]]
1415	20	78	2016-02-03 18:34:06.779371+00	2016-02-03 18:33:01.162+00	[["..", "1454524381717"], [".", "1454524381877"], [".", "1454524382028"], [".", "1454524382215"], [".", "1454524382374"], [".", "1454524382533"], ["..", "1454524383206"], [".", "1454524383392"]]
1416	20	57	2016-02-03 18:34:30.708158+00	2016-02-03 18:33:07.718+00	[["..", "1454524406578"], [".", "1454524406783"], [".", "1454524406958"], [".", "1454524407133"], [".", "1454524407325"]]
1417	20	42	2016-02-03 18:34:34.553887+00	2016-02-03 18:33:29.737+00	[["..", "1454524410601"], [".", "1454524410797"], [".", "1454524410989"], [".", "1454524411173"]]
1418	20	81	2016-02-03 18:34:38.152576+00	2016-02-03 18:33:33.075+00	[["..", "1454524413622"], [".", "1454524413816"], [".", "1454524413989"], [".", "1454524414182"], [".", "1454524414365"], [".", "1454524414549"], [".", "1454524414726"]]
1419	20	54	2016-02-03 18:34:41.052422+00	2016-02-03 18:33:36.483+00	[["..", "1454524417095"], [".", "1454524417285"], [".", "1454524417470"], [".", "1454524417648"], [".", "1454524417837"]]
1420	20	23	2016-02-03 18:34:46.465883+00	2016-02-03 18:33:39.5+00	[["..", "1454524422125"], [".", "1454524422301"], [".", "1454524422496"], [".", "1454524422677"], [".", "1454524422854"], [".", "1454524423046"]]
1421	20	96	2016-02-03 18:34:50.603622+00	2016-02-03 18:33:45.017+00	[["..", "1454524425685"], [".", "1454524425863"], [".", "1454524426045"], [".", "1454524426237"], [".", "1454524426422"], [".", "1454524426605"], [".", "1454524426782"], [".", "1454524427069"]]
1422	20	18	2016-02-03 18:34:54.637262+00	2016-02-03 18:33:49.229+00	[["..", "1454524429902"], [".", "1454524430101"], [".", "1454524430286"], [".", "1454524430470"], [".", "1454524430645"], [".", "1454524430821"], [".", "1454524430997"], [".", "1454524431190"]]
1423	20	113	2016-02-03 18:34:57.930051+00	2016-02-03 18:33:52.917+00	[["..", "1454524433346"], ["..", "1454524433693"], [".", "1454524433861"], [".", "1454524434023"], ["..", "1454524434309"], [".", "1454524434430"], [".", "1454524434566"], [".", "1454524434709"]]
1424	20	48	2016-02-03 18:35:01.132738+00	2016-02-03 18:33:56.713+00	[["..", "1454524437033"], [".", "1454524437154"], [".", "1454524437317"], [".", "1454524437461"], [".", "1454524437597"], [".", "1454524437741"]]
1425	20	49	2016-02-03 18:35:03.980854+00	2016-02-03 18:33:59.622+00	[["..", "1454524440009"], [".", "1454524440158"], [".", "1454524440309"], [".", "1454524440461"], [".", "1454524440604"], [".", "1454524440756"]]
1426	20	27	2016-02-03 18:35:06.809888+00	2016-02-03 18:34:02.557+00	[[".", "1454524442850"], [".", "1454524442991"], [".", "1454524443137"], [".", "1454524443287"], [".", "1454524443429"], [".", "1454524443582"]]
1427	20	123	2016-02-03 18:35:09.869474+00	2016-02-03 18:34:05.321+00	[[".", "1454524445706"], [".", "1454524445870"], [".", "1454524446029"], [".", "1454524446189"], [".", "1454524446341"], [".", "1454524446486"], [".", "1454524446638"]]
1428	20	111	2016-02-03 18:35:12.583594+00	2016-02-03 18:34:08.502+00	[["..", "1454524448760"], [".", "1454524448917"], [".", "1454524449053"], [".", "1454524449204"], [".", "1454524449356"]]
1429	20	43	2016-02-03 18:35:15.827389+00	2016-02-03 18:34:11.158+00	[["...", "1454524451693"], [".", "1454524451845"], [".", "1454524452005"], [".", "1454524452157"], [".", "1454524452318"], [".", "1454524452462"]]
1430	20	69	2016-02-03 18:35:18.888347+00	2016-02-03 18:34:14.219+00	[["..", "1454524454550"], [".", "1454524454701"], [".", "1454524454869"], [".", "1454524455029"], [".", "1454524455198"], [".", "1454524455357"], [".", "1454524455509"]]
1431	20	37	2016-02-03 18:35:22.207715+00	2016-02-03 18:34:17.365+00	[["....", "1454524458045"], [".", "1454524458197"], [".", "1454524458350"], [".", "1454524458501"], [".", "1454524458646"], [".", "1454524458797"], [".", "1454524458949"]]
1432	20	32	2016-02-03 18:35:25.826933+00	2016-02-03 18:34:20.851+00	[[".", "1454524461054"], [".", "1454524461206"], [".", "1454524461341"], [".", "1454524461509"], [".", "1454524461662"], [".", "1454524461814"], [".", "1454524461966"], [".", "1454524462125"], [".", "1454524462285"], [".", "1454524462437"]]
1433	20	88	2016-02-03 18:35:28.618155+00	2016-02-03 18:34:24.314+00	[[".", "1454524464605"], [".", "1454524464758"], [".", "1454524464900"], [".", "1454524465053"], [".", "1454524465220"]]
1434	20	41	2016-02-03 18:35:31.190869+00	2016-02-03 18:34:26.962+00	[[".", "1454524467310"], [".", "1454524467494"], [".", "1454524467645"], [".", "1454524467796"], [".", "1454524467968"]]
1435	20	102	2016-02-03 18:35:34.408604+00	2016-02-03 18:34:29.689+00	[[".", "1454524470083"], [".", "1454524470238"], [".", "1454524470405"], [".", "1454524470564"], [".", "1454524470724"], [".", "1454524470886"], [".", "1454524471036"]]
1436	20	76	2016-02-03 18:35:37.097287+00	2016-02-03 18:34:32.789+00	[[".", "1454524473103"], [".", "1454524473302"], [".", "1454524473413"], [".", "1454524473573"], [".", "1454524473716"]]
1437	20	98	2016-02-03 18:35:39.618921+00	2016-02-03 18:34:35.461+00	[[".", "1454524475716"], [".", "1454524475885"], [".", "1454524476053"], [".", "1454524476220"], [".", "1454524476382"]]
1438	20	125	2016-02-03 18:35:42.43812+00	2016-02-03 18:34:37.906+00	[[".", "1454524478224"], [".", "1454524478406"], [".", "1454524478565"], [".", "1454524478726"], [".", "1454524478877"], [".", "1454524479037"]]
1439	20	110	2016-02-03 18:35:46.445429+00	2016-02-03 18:34:41.129+00	[["..", "1454524481623"], [".", "1454524481805"], [".", "1454524481956"], [".", "1454524482125"], [".", "1454524482284"], [".", "1454524482437"], [".", "1454524482580"], [".", "1454524483045"], [".", "1454524483222"]]
1440	20	56	2016-02-03 18:35:54.380003+00	2016-02-03 18:34:49.514+00	[["..", "1454524490340"], [".", "1454524490517"], [".", "1454524490669"], [".", "1454524490821"], [".", "1454524490972"]]
1441	20	128	2016-02-03 18:35:57.558631+00	2016-02-03 18:34:52.978+00	[[".", "1454524493016"], [".", "1454524493179"], [".", "1454524493350"], [".", "1454524493510"], [".", "1454524493670"], [".", "1454524493837"], [".", "1454524493997"]]
1442	20	75	2016-02-03 18:36:00.251765+00	2016-02-03 18:34:55.699+00	[[".", "1454524496058"], [".", "1454524496212"], [".", "1454524496381"], [".", "1454524496541"], [".", "1454524496709"], [".", "1454524496861"], [".", "1454524497020"]]
1443	20	20	2016-02-03 18:36:03.250628+00	2016-02-03 18:34:58.669+00	[[".", "1454524499003"], [".", "1454524499181"], [".", "1454524499341"], [".", "1454524499517"], [".", "1454524499693"], [".", "1454524499845"]]
1444	20	105	2016-02-03 18:36:05.920348+00	2016-02-03 18:35:01.699+00	[[".", "1454524501865"], [".", "1454524502030"], [".", "1454524502189"], [".", "1454524502373"], [".", "1454524502534"]]
1445	20	31	2016-02-03 18:36:09.580532+00	2016-02-03 18:35:04.416+00	[["..", "1454524504752"], [".", "1454524504909"], [".", "1454524505084"], [".", "1454524505253"], [".", "1454524505420"], [".", "1454524505621"], [".", "1454524506188"]]
1446	20	50	2016-02-03 18:36:12.354562+00	2016-02-03 18:35:07.938+00	[[".", "1454524508279"], [".", "1454524508445"], [".", "1454524508629"], [".", "1454524508790"], [".", "1454524508948"], [".", "1454524509125"]]
1447	20	44	2016-02-03 18:36:15.479715+00	2016-02-03 18:35:10.903+00	[[".", "1454524511264"], [".", "1454524511437"], [".", "1454524511605"], [".", "1454524511765"], [".", "1454524511933"], [".", "1454524512094"]]
1448	20	33	2016-02-03 18:36:18.124002+00	2016-02-03 18:35:13.985+00	[[".", "1454524514212"], [".", "1454524514407"], [".", "1454524514555"], [".", "1454524514725"]]
1449	20	93	2016-02-03 18:36:22.08894+00	2016-02-03 18:35:16.743+00	[["..", "1454524517733"], [".", "1454524517901"], [".", "1454524518072"], [".", "1454524518229"], [".", "1454524518389"], [".", "1454524518541"], [".", "1454524518701"]]
1450	20	40	2016-02-03 18:36:24.893164+00	2016-02-03 18:35:20.551+00	[[".", "1454524520984"], [".", "1454524521173"], [".", "1454524521340"], [".", "1454524521509"]]
1451	20	12	2016-02-03 18:36:27.887799+00	2016-02-03 18:35:23.417+00	[["..", "1454524524135"], [".", "1454524524325"], [".", "1454524524485"], [".", "1454524524653"]]
1452	20	51	2016-02-03 18:36:31.29173+00	2016-02-03 18:35:26.678+00	[[".", "1454524527054"], [".", "1454524527229"], [".", "1454524527397"], [".", "1454524527558"], [".", "1454524527733"], [".", "1454524527892"]]
1453	20	95	2016-02-03 18:36:35.113641+00	2016-02-03 18:35:30.427+00	[[".", "1454524530875"], [".", "1454524531054"], [".", "1454524531220"], [".", "1454524531391"], [".", "1454524531549"], [".", "1454524531709"], [".", "1454524531869"]]
1454	20	15	2016-02-03 18:36:37.987648+00	2016-02-03 18:35:33.725+00	[[".", "1454524534078"], [".", "1454524534245"], [".", "1454524534414"], [".", "1454524534589"]]
1455	20	91	2016-02-03 18:36:41.078321+00	2016-02-03 18:35:36.478+00	[[".", "1454524536846"], [".", "1454524537020"], [".", "1454524537198"], [".", "1454524537365"], [".", "1454524537533"], [".", "1454524537677"]]
1456	20	17	2016-02-03 18:36:43.985862+00	2016-02-03 18:35:39.627+00	[[".", "1454524539929"], [".", "1454524540102"], [".", "1454524540284"], [".", "1454524540429"], [".", "1454524540588"]]
1457	20	10	2016-02-03 18:36:46.956646+00	2016-02-03 18:35:42.625+00	[[".", "1454524543032"], [".", "1454524543221"], [".", "1454524543381"], [".", "1454524543557"]]
1458	20	60	2016-02-03 18:36:50.01079+00	2016-02-03 18:35:45.588+00	[[".", "1454524545967"], [".", "1454524546116"], [".", "1454524546285"], [".", "1454524546453"], [".", "1454524546629"], [".", "1454524546781"]]
1459	20	19	2016-02-03 18:36:53.882275+00	2016-02-03 18:35:48.949+00	[[".", "1454524549464"], [".", "1454524549646"], [".", "1454524549821"], [".", "1454524549980"], [".", "1454524550157"], [".", "1454524550325"], [".", "1454524550488"]]
1460	20	58	2016-02-03 18:36:57.373451+00	2016-02-03 18:35:52.453+00	[[".", "1454524552942"], [".", "1454524553117"], [".", "1454524553309"], [".", "1454524553477"], [".", "1454524553661"], [".", "1454524553829"], [".", "1454524553990"]]
1461	20	29	2016-02-03 18:37:01.593731+00	2016-02-03 18:35:56.137+00	[["..", "1454524556765"], [".", "1454524556940"], [".", "1454524557125"], [".", "1454524557285"], [".", "1454524557461"], [".", "1454524557620"], [".", "1454524557805"], [".", "1454524557957"]]
1462	20	38	2016-02-03 18:37:05.294469+00	2016-02-03 18:35:59.754+00	[[".", "1454524560215"], [".", "1454524560405"], [".", "1454524560565"], [".", "1454524560741"], [".", "1454524560894"], [".", "1454524561069"], [".", "1454524561236"], [".", "1454524561405"], [".", "1454524561565"], [".", "1454524561741"], [".", "1454524561909"]]
1463	20	70	2016-02-03 18:37:09.70742+00	2016-02-03 18:36:04.513+00	[[".", "1454524565022"], [".", "1454524565213"], [".", "1454524565374"], [".", "1454524565549"], [".", "1454524565701"], [".", "1454524565862"], [".", "1454524566029"], [".", "1454524566173"], [".", "1454524566326"]]
1464	20	65	2016-02-03 18:37:15.169335+00	2016-02-03 18:36:08.43+00	[["...", "1454524570621"], [".", "1454524570780"], [".", "1454524570941"], [".", "1454524571109"], [".", "1454524571277"], [".", "1454524571445"], [".", "1454524571605"]]
1465	20	104	2016-02-03 18:37:18.029527+00	2016-02-03 18:36:13.452+00	[[".", "1454524573950"], [".", "1454524574133"], [".", "1454524574301"], [".", "1454524574461"], [".", "1454524574637"], [".", "1454524574805"]]
1466	20	84	2016-02-03 18:37:21.426092+00	2016-02-03 18:36:17.059+00	[[".", "1454524577197"], [".", "1454524577391"], [".", "1454524577557"], [".", "1454524577725"], [".", "1454524577893"], [".", "1454524578045"]]
1467	20	64	2016-02-03 18:37:24.930083+00	2016-02-03 18:36:19.792+00	[["..", "1454524580493"], [".", "1454524580669"], [".", "1454524580845"], [".", "1454524581021"], [".", "1454524581189"], [".", "1454524581364"], [".", "1454524581524"], [".", "1454524581692"]]
1468	20	34	2016-02-03 18:37:28.416092+00	2016-02-03 18:36:23.673+00	[[".", "1454524584136"], [".", "1454524584301"], [".", "1454524584477"], [".", "1454524584661"], [".", "1454524584821"], [".", "1454524584997"]]
1469	20	99	2016-02-03 18:37:32.055327+00	2016-02-03 18:36:26.876+00	[[".", "1454524587317"], [".", "1454524587492"], [".", "1454524587668"], [".", "1454524587846"], [".", "1454524588013"], [".", "1454524588181"], [".", "1454524588349"], [".", "1454524588509"], [".", "1454524588677"]]
1470	20	101	2016-02-03 18:37:35.297577+00	2016-02-03 18:36:30.824+00	[[".", "1454524591013"], [".", "1454524591189"], [".", "1454524591357"], [".", "1454524591525"], [".", "1454524591693"], [".", "1454524591869"]]
1471	20	86	2016-02-03 18:37:38.550113+00	2016-02-03 18:36:33.539+00	[[".", "1454524593942"], [".", "1454524594285"], [".", "1454524594462"], [".", "1454524594629"], [".", "1454524594797"], [".", "1454524594989"], [".", "1454524595157"]]
1472	20	89	2016-02-03 18:37:41.478512+00	2016-02-03 18:36:36.838+00	[[".", "1454524597215"], [".", "1454524597405"], [".", "1454524597557"], [".", "1454524597725"], [".", "1454524597893"], [".", "1454524598069"]]
1473	20	82	2016-02-03 18:37:44.376699+00	2016-02-03 18:36:39.983+00	[["..", "1454524600591"], [".", "1454524600765"], [".", "1454524600941"], [".", "1454524601109"]]
1474	20	74	2016-02-03 18:37:47.834404+00	2016-02-03 18:36:43.182+00	[[".", "1454524603460"], [".", "1454524603615"], [".", "1454524603789"], [".", "1454524603949"], [".", "1454524604117"], [".", "1454524604285"], [".", "1454524604445"], [".", "1454524604613"]]
1475	20	103	2016-02-03 18:37:50.86093+00	2016-02-03 18:36:46.467+00	[[".", "1454524606768"], [".", "1454524606942"], [".", "1454524607117"], [".", "1454524607277"], [".", "1454524607445"], [".", "1454524607613"]]
1476	20	13	2016-02-03 18:37:54.029734+00	2016-02-03 18:36:49.572+00	[[".", "1454524609817"], [".", "1454524609967"], [".", "1454524610141"], [".", "1454524610309"], [".", "1454524610477"], [".", "1454524610637"]]
1477	20	92	2016-02-03 18:37:57.151732+00	2016-02-03 18:36:52.472+00	[[".", "1454524612776"], [".", "1454524612932"], [".", "1454524613101"], [".", "1454524613261"], [".", "1454524613436"], [".", "1454524613605"], [".", "1454524613765"], [".", "1454524613916"]]
1478	20	72	2016-02-03 18:38:00.615302+00	2016-02-03 18:36:56.014+00	[[".", "1454524616056"], [".", "1454524616260"], [".", "1454524616419"], [".", "1454524616590"], [".", "1454524616757"], [".", "1454524616909"], [".", "1454524617069"], [".", "1454524617229"], [".", "1454524617389"]]
1479	20	22	2016-02-03 18:38:03.766605+00	2016-02-03 18:36:59.289+00	[[".", "1454524619584"], [".", "1454524619708"], [".", "1454524619885"], [".", "1454524620053"], [".", "1454524620212"]]
1480	20	129	2016-02-03 18:38:06.774633+00	2016-02-03 18:37:02.137+00	[[".", "1454524622531"], [".", "1454524622707"], [".", "1454524622885"], [".", "1454524623045"], [".", "1454524623215"], [".", "1454524623381"]]
1481	20	61	2016-02-03 18:38:09.782617+00	2016-02-03 18:37:05.185+00	[[".", "1454524625528"], [".", "1454524625693"], [".", "1454524625861"], [".", "1454524626029"], [".", "1454524626189"], [".", "1454524626365"]]
1482	20	53	2016-02-03 18:38:12.799023+00	2016-02-03 18:37:08.259+00	[[".", "1454524628551"], [".", "1454524628733"], [".", "1454524628901"], [".", "1454524629068"], [".", "1454524629236"], [".", "1454524629397"]]
1483	20	63	2016-02-03 18:38:15.596868+00	2016-02-03 18:37:11.253+00	[[".", "1454524631569"], [".", "1454524631723"], [".", "1454524631885"], [".", "1454524632053"], [".", "1454524632220"], [".", "1454524632372"]]
1484	20	109	2016-02-03 18:38:19.185036+00	2016-02-03 18:37:14.268+00	[[".", "1454524634753"], [".", "1454524634933"], [".", "1454524635092"], [".", "1454524635261"], [".", "1454524635436"], [".", "1454524635604"], [".", "1454524635764"]]
1485	20	85	2016-02-03 18:38:22.234079+00	2016-02-03 18:37:17.534+00	[[".", "1454524638015"], [".", "1454524638173"], [".", "1454524638341"], [".", "1454524638509"], [".", "1454524638669"], [".", "1454524638838"]]
1486	20	114	2016-02-03 18:38:25.300606+00	2016-02-03 18:37:20.743+00	[[".", "1454524641096"], [".", "1454524641252"], [".", "1454524641413"], [".", "1454524641573"], [".", "1454524641741"], [".", "1454524641901"], [".", "1454524642069"]]
1487	20	83	2016-02-03 18:38:28.602764+00	2016-02-03 18:37:23.799+00	[["..", "1454524644493"], [".", "1454524644674"], [".", "1454524644837"], [".", "1454524645005"], [".", "1454524645166"], [".", "1454524645341"]]
1488	20	100	2016-02-03 18:38:31.839442+00	2016-02-03 18:37:27.413+00	[[".", "1454524647615"], [".", "1454524647764"], [".", "1454524647948"], [".", "1454524648112"], [".", "1454524648277"], [".", "1454524648446"]]
1489	20	115	2016-02-03 18:38:35.540816+00	2016-02-03 18:37:30.376+00	[[".", "1454524650798"], [".", "1454524650974"], [".", "1454524651141"], [".", "1454524651301"], [".", "1454524651477"], [".", "1454524651638"], [".", "1454524651797"], [".", "1454524651982"]]
1490	20	24	2016-02-03 18:38:38.656462+00	2016-02-03 18:37:33.752+00	[[".", "1454524654230"], [".", "1454524654408"], [".", "1454524654573"], [".", "1454524654726"], [".", "1454524654896"], [".", "1454524655063"], [".", "1454524655245"], [".", "1454524655422"]]
1491	20	59	2016-02-03 18:38:41.719294+00	2016-02-03 18:37:37.25+00	[[".", "1454524657615"], [".", "1454524657786"], [".", "1454524657967"], [".", "1454524658133"], [".", "1454524658300"], [".", "1454524658469"]]
1492	20	120	2016-02-03 18:38:45.015566+00	2016-02-03 18:37:40.35+00	[[".", "1454524660785"], [".", "1454524660949"], [".", "1454524661117"], [".", "1454524661285"], [".", "1454524661453"], [".", "1454524661621"]]
1493	20	28	2016-02-03 18:38:47.908186+00	2016-02-03 18:37:43.27+00	[[".", "1454524663815"], [".", "1454524664005"], [".", "1454524664181"], [".", "1454524664349"], [".", "1454524664517"]]
1494	20	16	2016-02-03 18:38:51.002183+00	2016-02-03 18:37:46.387+00	[[".", "1454524666622"], [".", "1454524666757"], [".", "1454524666921"], [".", "1454524667085"], [".", "1454524667236"], [".", "1454524667413"], [".", "1454524667605"]]
1495	20	79	2016-02-03 18:38:55.168955+00	2016-02-03 18:37:50.163+00	[["..", "1454524670948"], [".", "1454524671141"], [".", "1454524671301"], [".", "1454524671461"], [".", "1454524671621"], [".", "1454524671781"]]
1496	20	35	2016-02-03 18:38:58.617466+00	2016-02-03 18:37:53.759+00	[["...", "1454524674525"], [".", "1454524674701"], [".", "1454524674869"], [".", "1454524675029"]]
1497	20	21	2016-02-03 18:39:01.186673+00	2016-02-03 18:37:56.776+00	[["..", "1454524677462"], [".", "1454524677629"], [".", "1454524677797"], [".", "1454524677956"]]
1498	20	55	2016-02-03 18:39:04.45255+00	2016-02-03 18:37:59.924+00	[[".", "1454524680223"], [".", "1454524680389"], [".", "1454524680557"], [".", "1454524680717"], [".", "1454524680884"], [".", "1454524681037"]]
1499	20	39	2016-02-03 18:39:08.512852+00	2016-02-03 18:38:02.848+00	[[".", "1454524683294"], [".", "1454524683453"], [".", "1454524683630"], [".", "1454524683789"], [".", "1454524683949"], [".", "1454524684092"], [".", "1454524684285"], ["..", "1454524685125"]]
1500	20	71	2016-02-03 18:39:13.393646+00	2016-02-03 18:38:07.889+00	[[".", "1454524688613"], [".", "1454524688789"], [".", "1454524688966"], [".", "1454524689125"], [".", "1454524689285"], [".", "1454524689445"], [".", "1454524689613"], [".", "1454524689788"], [".", "1454524689973"]]
1501	20	62	2016-02-03 18:39:16.484069+00	2016-02-03 18:38:11.922+00	[[".", "1454524692115"], [".", "1454524692286"], [".", "1454524692449"], [".", "1454524692613"], [".", "1454524692773"], [".", "1454524692941"], [".", "1454524693093"], [".", "1454524693236"]]
1502	20	77	2016-02-03 18:39:19.662867+00	2016-02-03 18:38:15.156+00	[[".", "1454524695457"], [".", "1454524695629"], [".", "1454524695796"], [".", "1454524695941"], [".", "1454524696109"], [".", "1454524696260"], [".", "1454524696421"]]
1503	20	127	2016-02-03 18:39:22.656576+00	2016-02-03 18:38:18.179+00	[[".", "1454524698582"], [".", "1454524698757"], [".", "1454524698925"], [".", "1454524699085"], [".", "1454524699253"], [".", "1454524699421"]]
1504	20	30	2016-02-03 18:39:25.56707+00	2016-02-03 18:38:21.269+00	[[".", "1454524701671"], [".", "1454524701845"], [".", "1454524702006"], [".", "1454524702181"]]
1505	20	108	2016-02-03 18:39:28.737761+00	2016-02-03 18:38:24.093+00	[[".", "1454524704631"], [".", "1454524704805"], [".", "1454524704980"], [".", "1454524705150"], [".", "1454524705317"], [".", "1454524705485"]]
1506	20	73	2016-02-03 18:39:31.636113+00	2016-02-03 18:38:27.414+00	[[".", "1454524707748"], [".", "1454524707909"], [".", "1454524708069"], [".", "1454524708237"]]
1507	20	45	2016-02-03 18:39:34.607086+00	2016-02-03 18:38:30.189+00	[[".", "1454524710573"], [".", "1454524710742"], [".", "1454524710901"], [".", "1454524711061"], [".", "1454524711213"]]
1508	20	107	2016-02-03 18:39:37.918625+00	2016-02-03 18:38:33.013+00	[[".", "1454524713511"], [".", "1454524713678"], [".", "1454524713853"], [".", "1454524714021"], [".", "1454524714181"], [".", "1454524714341"], [".", "1454524714501"]]
1509	20	46	2016-02-03 18:39:40.88398+00	2016-02-03 18:38:36.322+00	[[".", "1454524716856"], [".", "1454524717029"], [".", "1454524717188"], [".", "1454524717349"], [".", "1454524717501"]]
1510	20	11	2016-02-03 18:39:44.003957+00	2016-02-03 18:38:39.451+00	[[".", "1454524719933"], [".", "1454524720101"], [".", "1454524720269"], [".", "1454524720437"], [".", "1454524720597"], [".", "1454524720765"]]
1511	20	87	2016-02-03 18:39:47.763357+00	2016-02-03 18:38:42.744+00	[[".", "1454524722996"], [".", "1454524723176"], [".", "1454524723341"], [".", "1454524723494"], [".", "1454524723644"], [".", "1454524723813"], [".", "1454524723973"], [".", "1454524724373"]]
1512	20	47	2016-02-03 18:39:50.570558+00	2016-02-03 18:38:46.315+00	[[".", "1454524726506"], [".", "1454524726671"], [".", "1454524726847"], [".", "1454524727013"], [".", "1454524727189"]]
1513	20	117	2016-02-03 18:39:53.944612+00	2016-02-03 18:38:49.199+00	[[".", "1454524729392"], [".", "1454524729542"], [".", "1454524729709"], [".", "1454524729877"], [".", "1454524730037"], [".", "1454524730197"], [".", "1454524730365"], [".", "1454524730565"]]
1514	20	66	2016-02-03 18:39:57.838042+00	2016-02-03 18:38:52.279+00	[[".", "1454524732692"], [".", "1454524732853"], [".", "1454524733013"], [".", "1454524733174"], [".", "1454524733333"], [".", "1454524733493"], [".", "1454524733653"], [".", "1454524733893"], [".", "1454524734069"], [".", "1454524734453"]]
1515	20	36	2016-02-03 18:40:01.219818+00	2016-02-03 18:38:56.551+00	[[".", "1454524736755"], [".", "1454524736873"], [".", "1454524737054"], [".", "1454524737189"], [".", "1454524737349"], [".", "1454524737508"], [".", "1454524737669"], [".", "1454524737821"]]
1516	20	67	2016-02-03 18:40:04.311029+00	2016-02-03 18:38:59.621+00	[[".", "1454524740120"], [".", "1454524740285"], [".", "1454524740438"], [".", "1454524740597"], [".", "1454524740765"], [".", "1454524740917"]]
1517	20	122	2016-02-03 18:40:07.804824+00	2016-02-03 18:39:02.986+00	[["..", "1454524743422"], [".", "1454524743589"], [".", "1454524743741"], [".", "1454524743896"], [".", "1454524744062"], [".", "1454524744229"], [".", "1454524744405"]]
1518	20	126	2016-02-03 18:40:11.120671+00	2016-02-03 18:39:06.188+00	[[".", "1454524746605"], [".", "1454524746751"], [".", "1454524746918"], [".", "1454524747078"], [".", "1454524747236"], [".", "1454524747381"], [".", "1454524747549"]]
1519	20	26	2016-02-03 18:40:14.290291+00	2016-02-03 18:39:09.249+00	[[".", "1454524749724"], [".", "1454524749901"], [".", "1454524750069"], [".", "1454524750237"], [".", "1454524750394"], [".", "1454524750556"], [".", "1454524750709"], [".", "1454524750869"], [".", "1454524751053"]]
1520	20	118	2016-02-03 18:40:17.540717+00	2016-02-03 18:39:12.925+00	[[".", "1454524753174"], [".", "1454524753329"], [".", "1454524753486"], [".", "1454524753661"], [".", "1454524753814"], [".", "1454524753974"], [".", "1454524754133"]]
1521	20	52	2016-02-03 18:40:20.233062+00	2016-02-03 18:39:16.06+00	[[".", "1454524756337"], [".", "1454524756504"], [".", "1454524756662"], [".", "1454524756829"], [".", "1454524756997"]]
1522	20	119	2016-02-03 18:40:23.384149+00	2016-02-03 18:39:18.77+00	[[".", "1454524759153"], [".", "1454524759333"], [".", "1454524759501"], [".", "1454524759662"], [".", "1454524759837"], [".", "1454524759989"]]
1523	20	80	2016-02-03 18:40:26.716775+00	2016-02-03 18:39:21.711+00	[[".", "1454524762094"], [".", "1454524762293"], [".", "1454524762469"], [".", "1454524762645"], [".", "1454524762813"], [".", "1454524762980"], [".", "1454524763133"], [".", "1454524763309"]]
1524	20	106	2016-02-03 18:40:29.686725+00	2016-02-03 18:39:25.334+00	[[".", "1454524765636"], [".", "1454524765789"], [".", "1454524765957"], [".", "1454524766125"], [".", "1454524766285"]]
1525	20	25	2016-02-03 18:40:32.674591+00	2016-02-03 18:39:28.042+00	[[".", "1454524768484"], [".", "1454524768622"], [".", "1454524768789"], [".", "1454524768957"], [".", "1454524769117"], [".", "1454524769276"], [".", "1454524769445"]]
1526	20	112	2016-02-03 18:40:36.645087+00	2016-02-03 18:39:31.412+00	[[".", "1454524771530"], [".", "1454524771683"], [".", "1454524771846"], [".", "1454524772005"], [".", "1454524772165"], [".", "1454524772325"], [".", "1454524772525"], ["..", "1454524773269"]]
1527	20	68	2016-02-03 18:40:39.873417+00	2016-02-03 18:39:34.967+00	[[".", "1454524775300"], [".", "1454524775459"], [".", "1454524775606"], [".", "1454524775774"], [".", "1454524775933"], [".", "1454524776093"], [".", "1454524776246"], [".", "1454524776477"]]
1528	20	90	2016-02-03 18:40:43.128081+00	2016-02-03 18:39:38.262+00	[[".", "1454524778744"], [".", "1454524778910"], [".", "1454524779085"], [".", "1454524779237"], [".", "1454524779397"], [".", "1454524779548"], [".", "1454524779709"]]
1529	20	94	2016-02-03 18:40:46.385376+00	2016-02-03 18:39:41.75+00	[[".", "1454524782182"], [".", "1454524782349"], [".", "1454524782501"], [".", "1454524782661"], [".", "1454524782821"], [".", "1454524782975"]]
1530	20	121	2016-02-03 18:40:50.832911+00	2016-02-03 18:39:45.375+00	[[".", "1454524785596"], [".", "1454524786597"], [".", "1454524786773"], [".", "1454524786933"], [".", "1454524787093"], [".", "1454524787245"], [".", "1454524787437"]]
1531	20	14	2016-02-03 18:40:54.723883+00	2016-02-03 18:39:49.418+00	[[".", "1454524790151"], [".", "1454524790327"], [".", "1454524790501"], [".", "1454524790661"], [".", "1454524790820"], [".", "1454524790981"], [".", "1454524791141"], [".", "1454524791334"]]
1532	20	116	2016-02-03 18:40:58.42215+00	2016-02-03 18:39:53.32+00	[["..", "1454524794077"], [".", "1454524794253"], [".", "1454524794405"], [".", "1454524794557"], [".", "1454524794717"], [".", "1454524794877"], [".", "1454524795013"]]
1533	21	4	2016-02-03 19:32:42.636424+00	2016-02-03 19:31:38.083+00	[["a", "1454527899010"], ["a", "1454527899178"], ["a", "1454527899338"]]
1534	21	8	2016-02-03 19:32:49.503084+00	2016-02-03 19:31:44.441+00	[["a", "1454527905099"], ["a", "1454527905266"], ["a", "1454527905425"], ["a", "1454527905578"], ["a", "1454527905730"], ["a", "1454527905889"], ["a", "1454527906043"], ["a", "1454527906202"]]
1535	21	3	2016-02-03 19:38:51.607535+00	2016-02-03 19:37:46.027+00	[[".", "1454528267644"], [".", "1454528267802"], ["..", "1454528267970"], [".", "1454528268130"]]
1536	21	40	2016-02-03 19:38:54.699115+00	2016-02-03 19:37:49.91+00	[["..", "1454528270747"], [".", "1454528270939"], [".", "1454528271085"], [".", "1454528271250"]]
1537	21	21	2016-02-03 19:38:58.415903+00	2016-02-03 19:37:53.244+00	[["..", "1454528274646"], [".", "1454528274818"], [".", "1454528274962"], [".", "1454528275124"]]
1538	21	23	2016-02-03 19:39:02.021999+00	2016-02-03 19:37:57.181+00	[["..", "1454528277731"], [".", "1454528277892"], [".", "1454528278052"], [".", "1454528278220"], [".", "1454528278380"], [".", "1454528278562"]]
1539	21	75	2016-02-03 19:39:05.495719+00	2016-02-03 19:38:00.21+00	[[".", "1454528280771"], ["..", "1454528280973"], [".", "1454528281117"], [".", "1454528281395"], [".", "1454528281490"], [".", "1454528281675"], ["..", "1454528281866"]]
1540	21	35	2016-02-03 19:39:08.302791+00	2016-02-03 19:38:03.941+00	[["..", "1454528284493"], [".", "1454528284662"], [".", "1454528284827"], [".", "1454528284980"]]
1541	21	107	2016-02-03 19:39:12.163071+00	2016-02-03 19:38:07.205+00	[[".", "1454528287669"], ["..", "1454528287860"], [".", "1454528288029"], [".", "1454528288212"], [".", "1454528288354"], [".", "1454528288538"], [".", "1454528288715"]]
1542	21	33	2016-02-03 19:39:14.928943+00	2016-02-03 19:38:10.511+00	[[".", "1454528291059"], ["..", "1454528291255"], [".", "1454528291434"], [".", "1454528291630"]]
1543	21	72	2016-02-03 19:39:18.719959+00	2016-02-03 19:38:13.414+00	[["..", "1454528293923"], [".", "1454528294098"], [".", "1454528294284"], [".", "1454528294451"], [".", "1454528294634"], [".", "1454528294855"], [".", "1454528295052"], [".", "1454528295219"], [".", "1454528295426"]]
1544	21	56	2016-02-03 19:40:08.031314+00	2016-02-03 19:38:17.25+00	[[".", "1454528343146"], [".", "1454528343331"], [".", "1454528343443"], [".", "1454528343673"], [".", "1454528343954"]]
1545	21	76	2016-02-03 19:40:10.534608+00	2016-02-03 19:39:05.87+00	[["..", "1454528346247"], ["..", "1454528346562"], [".", "1454528346730"], [".", "1454528346890"], [".", "1454528347059"]]
1546	21	24	2016-02-03 19:40:13.886242+00	2016-02-03 19:39:08.955+00	[["..", "1454528349306"], [".", "1454528349429"], [".", "1454528349581"], [".", "1454528349730"], [".", "1454528349894"], [".", "1454528350066"], [".", "1454528350250"], [".", "1454528350419"]]
1547	21	50	2016-02-03 19:40:16.615915+00	2016-02-03 19:39:12.252+00	[["..", "1454528352470"], [".", "1454528352636"], [".", "1454528352802"], [".", "1454528352948"], [".", "1454528353112"], [".", "1454528353298"]]
1548	21	13	2016-02-03 19:40:19.450598+00	2016-02-03 19:39:15.093+00	[[".", "1454528355292"], ["..", "1454528355435"], [".", "1454528355626"], [".", "1454528355788"], [".", "1454528355973"], [".", "1454528356140"]]
1549	21	93	2016-02-03 19:40:22.523889+00	2016-02-03 19:39:17.791+00	[["..", "1454528358055"], [".", "1454528358243"], [".", "1454528358410"], [".", "1454528358578"], [".", "1454528358763"], [".", "1454528358914"], ["..", "1454528359210"]]
1550	21	98	2016-02-03 19:40:25.715866+00	2016-02-03 19:39:21.421+00	[[".", "1454528361720"], [".", "1454528361892"], [".", "1454528362066"], [".", "1454528362235"], [".", "1454528362404"]]
1551	21	122	2016-02-03 19:40:29.131807+00	2016-02-03 19:39:24.091+00	[[".", "1454528364524"], ["..", "1454528364714"], [".", "1454528364895"], [".", "1454528365075"], [".", "1454528365258"], [".", "1454528365444"], [".", "1454528365642"]]
1552	21	62	2016-02-03 19:40:32.33602+00	2016-02-03 19:39:27.376+00	[[".", "1454528367747"], ["..", "1454528367934"], [".", "1454528368108"], [".", "1454528368283"], [".", "1454528368484"], [".", "1454528368632"], [".", "1454528368803"], [".", "1454528369004"]]
1553	21	101	2016-02-03 19:40:35.599261+00	2016-02-03 19:39:30.618+00	[["..", "1454528371210"], [".", "1454528371406"], [".", "1454528371578"], [".", "1454528371739"], [".", "1454528371932"], [".", "1454528372140"]]
1554	21	58	2016-02-03 19:40:38.700105+00	2016-02-03 19:39:34.081+00	[["..", "1454528374341"], [".", "1454528374456"], [".", "1454528374620"], [".", "1454528374803"], [".", "1454528374962"], [".", "1454528375178"], ["..", "1454528375404"]]
1555	21	86	2016-02-03 19:40:41.850305+00	2016-02-03 19:39:37.323+00	[[".", "1454528377502"], [".", "1454528377702"], [".", "1454528377860"], [".", "1454528378037"], [".", "1454528378208"], [".", "1454528378403"], [".", "1454528378552"]]
1556	21	36	2016-02-03 19:40:46.459777+00	2016-02-03 19:39:40.996+00	[[".", "1454528381168"], ["..", "1454528381361"], [".", "1454528381531"], [".", "1454528381740"], [".", "1454528381917"], [".", "1454528382118"], [".", "1454528382300"], ["..", "1454528382956"]]
1557	21	39	2016-02-03 19:40:49.826108+00	2016-02-03 19:39:44.571+00	[[".", "1454528385002"], [".", "1454528385187"], [".", "1454528385346"], [".", "1454528385523"], [".", "1454528385866"], ["..", "1454528386051"], [".", "1454528386234"], [".", "1454528386364"]]
1558	21	51	2016-02-03 19:40:52.617633+00	2016-02-03 19:39:48.147+00	[[".", "1454528388290"], [".", "1454528388469"], [".", "1454528388627"], [".", "1454528388834"], [".", "1454528388947"], [".", "1454528389164"]]
1559	21	115	2016-02-03 19:40:56.944489+00	2016-02-03 19:39:50.835+00	[[".", "1454528391379"], [".", "1454528391547"], [".", "1454528391730"], ["..", "1454528391923"], [".", "1454528392082"], [".", "1454528392260"], [".", "1454528392435"], [".", "1454528392644"]]
1560	21	89	2016-02-03 19:40:58.896838+00	2016-02-03 19:39:54.371+00	[[".", "1454528394641"], [".", "1454528394819"], [".", "1454528395007"], [".", "1454528395186"], [".", "1454528395363"], [".", "1454528395595"]]
1561	21	30	2016-02-03 19:41:02.632407+00	2016-02-03 19:39:58.094+00	[[".", "1454528398594"], ["..", "1454528398785"], [".", "1454528398988"], [".", "1454528399180"]]
1562	21	43	2016-02-03 19:41:05.590063+00	2016-02-03 19:40:01.234+00	[[".", "1454528401473"], ["..", "1454528401646"], [".", "1454528401820"], [".", "1454528401995"], [".", "1454528402147"], [".", "1454528402298"]]
1563	21	94	2016-02-03 19:41:11.861886+00	2016-02-03 19:40:05.27+00	[[".", "1454528407131"], ["..", "1454528407316"], [".", "1454528407484"], [".", "1454528407626"], [".", "1454528407778"], [".", "1454528407994"]]
1564	23	0	2016-02-04 18:49:28.131915+00	2016-02-04 18:45:12.696+00	[["aprobados", "1454611649219"], ["juegan", "1454611664625"], ["mucho", "1454611674434"], ["juego", "1454611685371"], ["matutino", "1454611712425"], ["tiempo", "1454611731505"], ["tarde", "1454611760025"], ["ayer", "1454611789049"]]
1565	23	8	2016-02-04 18:51:47.332539+00	2016-02-04 18:49:55.624+00	[["Juan", "1454611854147"], ["ma\\u00f1ana", "1454611862785"], ["cercana", "1454611871737"], ["llega", "1454611883705"], ["ingresar", "1454611892721"], ["r\\u00e1pido", "1454611908425"], ["hoy", "1454611920273"], ["barco", "1454611928225"]]
1566	23	6	2016-02-04 18:57:02.943076+00	2016-02-04 18:53:05.521+00	[["es", "1454612191787"], ["un", "1454612202017"], ["que", "1454612218137"], ["de", "1454612229553"], ["los", "1454612243721"]]
1567	23	97	2016-02-04 18:58:11.859499+00	2016-02-04 18:57:39.405+00	[["juega", "1454612270523"], ["puede", "1454612277803"], ["caminando", "1454612291745"], ["de", "1454612298073"], ["su", "1454612301601"], ["estudio", "1454612312649"]]
1568	23	90	2016-02-04 18:59:46.108137+00	2016-02-04 18:58:38.503+00	[["boca", "1454612326787"], ["casa", "1454612335681"], ["de", "1454612352881"], ["juan", "1454612363409"], ["hay", "1454612386441"], ["hay", "1454612397057"], ["perro", "1454612406913"]]
1569	23	121	2016-02-04 19:00:53.02405+00	2016-02-04 19:00:11.356+00	[["vive", "1454612423195"], ["auto", "1454612433003"], ["buenos", "1454612442105"], ["inteligencia", "1454612450961"], ["para", "1454612458377"], ["la", "1454612468145"], ["ojos", "1454612473833"]]
1570	23	91	2016-02-04 19:02:04.263105+00	2016-02-04 19:01:16.4+00	[["est\\u00e1", "1454612487107"], ["estudios", "1454612495923"], ["importantes", "1454612507035"], ["viajan", "1454612521169"], ["alegres", "1454612528833"], ["buenos", "1454612545041"]]
1571	23	24	2016-02-04 19:02:49.381787+00	2016-02-04 19:02:28.787+00	[["sabemos ", "1454612561672"], ["para", "1454612567017"], ["ma\\u00f1ana", "1454612570601"], ["lo", "1454612572753"], ["que", "1454612575481"], ["puedes ", "1454612583688"], ["hacer", "1454612587561"], ["hoy", "1454612590553"]]
1572	23	111	2016-02-04 19:03:29.61163+00	2016-02-04 19:03:13.627+00	[["que", "1454612599898"], ["hace", "1454612606611"], ["magia", "1454612613771"], ["en", "1454612623617"], ["la", "1454612630443"]]
1573	23	39	2016-02-04 19:04:40.344484+00	2016-02-04 19:03:55.867+00	[["digas", "1454612645283"], ["ma\\u00f1ana", "1454612668747"], ["se", "1454612672369"], ["vista", "1454612677601"], ["de", "1454612680785"], ["seda", "1454612695081"], ["mona", "1454612697769"], ["queda", "1454612701137"]]
1574	23	92	2016-02-04 19:05:32.677822+00	2016-02-04 19:05:04.23+00	[["est\\u00e1", "1454612710894"], ["empleo", "1454612717267"], ["beca", "1454612721105"], ["en", "1454612726329"], ["estudiar", "1454612733017"], ["en", "1454612744217"], ["la", "1454612747769"], ["universidad", "1454612753865"]]
1575	23	75	2016-02-04 19:06:16.237292+00	2016-02-04 19:05:56.77+00	[["ni\\u00f1os", "1454612763059"], ["vienen", "1454612770403"], ["llegan", "1454612780234"], ["regalos", "1454612784857"], ["para", "1454612790017"], ["los", "1454612793185"], ["ni\\u00f1os", "1454612797051"]]
1576	23	84	2016-02-04 19:07:15.588621+00	2016-02-04 19:06:39.622+00	[["puede", "1454612810115"], ["levanta", "1454612817913"], ["llegado", "1454612824433"], ["el", "1454612835265"], ["el", "1454612842185"], ["vino", "1454612856801"]]
1577	23	96	2016-02-04 19:08:36.032736+00	2016-02-04 19:07:41.271+00	[["pelota", "1454612870147"], ["est\\u00e1", "1454612875329"], ["Pedro", "1454612882995"], ["est\\u00e1", "1454612894251"], ["jard\\u00edn", "1454612904378"], ["garage", "1454612913178"], ["grande", "1454612932305"], ["grande", "1454612936889"]]
1578	23	126	2016-02-04 19:09:42.298207+00	2016-02-04 19:09:00.168+00	[["estudia", "1454612947771"], ["fue", "1454612953531"], ["salido", "1454612958981"], ["deportes", "1454612984098"], ["a", "1454612990097"], ["su", "1454612993561"], ["padres", "1454613003297"]]
1579	23	43	2016-02-04 19:10:09.756855+00	2016-02-04 19:10:06.56+00	[["salgas", "1454613016443"], ["lo", "1454613019329"], ["que", "1454613021363"], ["reluce", "1454613023994"], ["es", "1454613028091"], ["oro", "1454613030961"]]
1580	23	118	2016-02-04 19:11:22.624182+00	2016-02-04 19:10:34.12+00	[["las", "1454613038266"], ["funci\\u00f3n", "1454613046916"], ["salgo", "1454613069673"], ["pasean", "1454613079833"], ["gritan", "1454613088330"], ["de", "1454613097681"], ["pasear", "1454613103681"]]
1581	23	11	2016-02-04 19:11:55.008115+00	2016-02-04 19:11:52.487+00	[["los", "1454613119474"], ["de", "1454613123186"], ["herrero", "1454613127258"], ["cuchillo", "1454613130939"], ["de", "1454613133154"], ["palo", "1454613136187"]]
1582	23	33	2016-02-04 19:12:16.86455+00	2016-02-04 19:12:22.712+00	[["claras", "1454613149435"], ["conservan", "1454613153562"], ["la", "1454613154865"], ["amistad", "1454613158106"]]
1583	23	45	2016-02-04 19:12:46.927035+00	2016-02-04 19:12:41.15+00	[["boca", "1454613166522"], ["las", "1454613173339"], ["se", "1454613177938"], ["cuecen", "1454613181954"], ["habas", "1454613187946"]]
1584	23	46	2016-02-04 19:13:11.883608+00	2016-02-04 19:13:12.977+00	[["los", "1454613198915"], ["capit\\u00e1n", "1454613203915"], ["no", "1454613206178"], ["manda", "1454613207970"], ["marinero", "1454613213106"]]
1585	23	95	2016-02-04 19:14:13.030159+00	2016-02-04 19:13:36.262+00	[["las", "1454613220450"], ["no", "1454613228379"], ["dieron", "1454613237314"], ["el", "1454613242754"], ["televisi\\u00f3n", "1454613253266"], ["policial", "1454613261666"], ["domingos", "1454613273978"]]
1586	23	81	2016-02-04 19:15:09.285881+00	2016-02-04 19:14:38.48+00	[["salgas", "1454613284195"], ["embarques", "1454613314451"], ["por", "1454613317538"], ["vencido", "1454613321538"], ["ni", "1454613324114"], ["a\\u00fan", "1454613326834"], ["vencido", "1454613330482"]]
1587	23	128	2016-02-04 19:15:44.132378+00	2016-02-04 19:15:32.97+00	[["que", "1454613336650"], ["te", "1454613341498"], ["a", "1454613348243"], ["jugarte", "1454613352347"], ["a", "1454613356618"], ["los", "1454613359274"], ["amigos", "1454613365114"]]
1588	23	22	2016-02-04 19:16:17.527372+00	2016-02-04 19:16:08.235+00	[["casa", "1454613374810"], ["de", "1454613385803"], ["no", "1454613390986"], ["entran", "1454613395354"], ["moscas", "1454613398730"]]
1589	23	122	2016-02-04 19:17:16.302034+00	2016-02-04 19:16:41.448+00	[["que", "1454613406346"], ["sali\\u00f3", "1454613413499"], ["indica", "1454613419954"], ["que", "1454613426330"], ["Pedro", "1454613433450"], ["empleada", "1454613448466"], ["limpiar", "1454613457274"]]
1590	23	28	2016-02-04 19:17:39.213163+00	2016-02-04 19:17:41.218+00	[["la", "1454613468242"], ["no", "1454613471827"], ["hay", "1454613474138"], ["nada", "1454613476122"], ["escrito", "1454613480467"]]
1591	23	103	2016-02-04 19:18:22.406744+00	2016-02-04 19:18:04.213+00	[["sali\\u00f3", "1454613489387"], ["pasea", "1454613498938"], ["que", "1454613501802"], ["ocurri\\u00f3", "1454613512810"], ["el", "1454613515938"], ["problema", "1454613523402"]]
1592	23	73	2016-02-04 19:18:49.804746+00	2016-02-04 19:18:46.606+00	[["alumno", "1454613536739"], ["juega", "1454613542955"], ["al", "1454613546330"], ["ratones", "1454613551050"]]
1593	23	51	2016-02-04 19:19:45.488737+00	2016-02-04 19:19:13.761+00	[["la", "1454613569939"], ["hace", "1454613575778"], ["noches", "1454613589866"], ["son", "1454613593378"], ["muy", "1454613601066"], ["bajas", "1454613606506"]]
1594	23	99	2016-02-04 19:34:19.270845+00	2016-02-04 19:33:05.307+00	[["sale", "1454614391778"], ["a", "1454614395170"], ["parque", "1454614411994"], ["pasado", "1454614418394"], ["el", "1454614425754"], ["Juan", "1454614439178"], ["amigos", "1454614445490"], ["que", "1454614454538"], ["la", "1454614480339"]]
1595	23	66	2016-02-04 19:35:07.707321+00	2016-02-04 19:34:46.187+00	[["perro", "1454614491322"], ["madruga", "1454614504427"], ["m\\u00e1s", "1454614509266"], ["de", "1454614512898"], ["culpa", "1454614516674"], ["que", "1454614519962"], ["tire", "1454614522362"], ["la", "1454614524106"], ["primera", "1454614526522"], ["piedra", "1454614528986"]]
1596	23	129	2016-02-04 19:36:34.459135+00	2016-02-04 19:35:32.758+00	[["la", "1454614542156"], ["club", "1454614554867"], ["juzgaron", "1454614568986"], ["jueza", "1454614578994"], ["fue", "1454614608466"], ["a", "1454614615594"]]
1597	23	107	2016-02-04 19:38:32.346529+00	2016-02-04 19:37:00.813+00	[["digas", "1454614625554"], ["justos", "1454614631363"], ["sus", "1454614636789"], ["preguntas", "1454614645299"], ["resueltas", "1454614659066"], ["pago", "1454614671162"], ["compra", "1454614733418"]]
1598	23	71	2016-02-04 19:39:18.885377+00	2016-02-04 19:38:59.485+00	[["quien", "1454614745194"], ["le", "1454614751499"], ["crece", "1454614757100"], ["la", "1454614762026"], ["nariz", "1454614765466"], ["cuando", "1454614770418"], ["vez", "1454614773962"], ["que", "1454614776538"], ["ment\\u00eda", "1454614780170"]]
1599	23	27	2016-02-04 19:39:48.518836+00	2016-02-04 19:39:42.546+00	[["que", "1454614787274"], ["madruga", "1454614791428"], ["celeste", "1454614803636"], ["que", "1454614806082"], ["le", "1454614807418"], ["cueste", "1454614809554"]]
1600	23	34	2016-02-04 19:40:56.000524+00	2016-02-04 19:40:11.685+00	[["de", "1454614816229"], ["los", "1454614849082"], ["el", "1454614868874"], ["burro", "1454614872010"], ["se", "1454614873586"], ["asoma", "1454614877146"]]
1601	23	80	2016-02-04 19:41:47.551196+00	2016-02-04 19:41:20.118+00	[["que", "1454614887139"], ["de", "1454614892220"], ["sali\\u00f3", "1454614901123"], ["ve", "1454614908130"], ["con", "1454614915898"], ["de", "1454614918274"], ["la", "1454614920514"], ["lluvia", "1454614928875"]]
1602	23	53	2016-02-04 19:42:40.182684+00	2016-02-04 19:42:11.163+00	[["la", "1454614937372"], ["se", "1454614943602"], ["cerveza", "1454614958683"], ["puente", "1454614971538"], ["de", "1454614975946"], ["Berl\\u00edn", "1454614981290"]]
1603	23	106	2016-02-04 19:43:09.179952+00	2016-02-04 19:43:04.055+00	[["sale", "1454614989323"], ["una", "1454614995035"], ["para", "1454614998640"], ["sus", "1454615001698"], ["amigos", "1454615010500"]]
1604	23	12	2016-02-04 19:43:27.238517+00	2016-02-04 19:43:32.737+00	[["salir", "1454615017274"], ["tiempo", "1454615024044"], ["buena", "1454615026468"], ["cara", "1454615028562"]]
1605	23	15	2016-02-04 19:43:48.889961+00	2016-02-04 19:43:50.875+00	[["quien", "1454615036243"], ["necias", "1454615043027"], ["o\\u00eddos", "1454615046548"], ["sordos", "1454615049987"]]
1606	23	127	2016-02-04 19:45:12.328566+00	2016-02-04 19:44:12.801+00	[["uno", "1454615058748"], ["tiene", "1454615067106"], ["idioma", "1454615081570"], ["es", "1454615087658"], ["caracter\\u00edsticas", "1454615108058"], ["forma", "1454615133434"]]
1607	23	38	2016-02-04 19:45:48.872357+00	2016-02-04 19:45:39.43+00	[["va", "1454615145011"], ["el\\u00e7", "1454615146874"], ["c\\u00e1ntaro", "1454615156004"], ["a", "1454615157482"], ["la", "1454615158618"], ["fuente", "1454615161442"], ["que", "1454615163354"], ["al", "1454615165218"], ["final", "1454615167274"], ["se", "1454615168370"], ["rompe", "1454615170210"]]
1608	23	116	2016-02-04 19:46:31.635754+00	2016-02-04 19:46:14.617+00	[["mes", "1454615177979"], ["ir\\u00e9", "1454615183956"], ["a", "1454615190066"], ["viaje", "1454615196930"], ["a", "1454615205778"], ["la", "1454615207874"], ["playa", "1454615212746"]]
1609	23	101	2016-02-04 19:47:23.27729+00	2016-02-04 19:46:57.216+00	[["la", "1454615222131"], ["gar\\u00faa", "1454615237604"], ["tiempo", "1454615251370"], ["es", "1454615257594"], ["muy", "1454615260459"], ["h\\u00famedo", "1454615264594"]]
1610	23	40	2016-02-04 19:47:53.003695+00	2016-02-04 19:47:47.92+00	[["la", "1454615272212"], ["entendedor", "1454615286451"], ["pocas", "1454615289458"], ["palabras", "1454615294106"]]
1611	23	76	2016-02-04 19:48:27.565181+00	2016-02-04 19:48:17.311+00	[["que", "1454615306132"], ["prometer", "1454615312522"], ["en", "1454615317586"], ["otros", "1454615323858"], ["cosas", "1454615328890"]]
1612	23	113	2016-02-04 19:49:34.459489+00	2016-02-04 19:48:51.791+00	[["buen", "1454615341308"], ["le", "1454615348260"], ["le", "1454615351922"], ["enga\\u00f1an", "1454615358228"], ["f\\u00e1cilmente", "1454615375074"], ["facilidad", "1454615385083"], ["cuento", "1454615390034"], ["cuento", "1454615395610"]]
1613	23	50	2016-02-04 19:51:06.846169+00	2016-02-04 19:50:03.217+00	[["fue", "1454615426564"], ["contra", "1454615441123"], ["la", "1454615473058"], ["batalla", "1454615478210"], ["de", "1454615485250"], ["los", "1454615487954"]]
1614	23	87	2016-02-04 19:51:51.312344+00	2016-02-04 19:51:38.61+00	[["palabras", "1454615507892"], ["por", "1454615511058"], ["realizan", "1454615518468"], ["bien", "1454615522988"], ["o", "1454615524866"], ["no", "1454615527186"], ["se", "1454615528778"], ["hacen", "1454615532682"]]
1615	23	123	2016-02-04 19:53:37.125327+00	2016-02-04 19:52:17.016+00	[["puede", "1454615551852"], ["fue", "1454615581754"], ["con", "1454615584922"], ["un", "1454615588338"], ["en", "1454615592498"], ["s\\u00e1bado", "1454615615989"], ["fin", "1454615638290"]]
1616	23	21	2016-02-04 19:53:54.823069+00	2016-02-04 19:54:02.632+00	[["prevenido", "1454615649860"], ["vale", "1454615652602"], ["por", "1454615654034"], ["dos", "1454615656186"]]
1617	23	29	2016-02-04 19:54:16.518144+00	2016-02-04 19:54:19.752+00	[["con", "1454615665139"], ["quien", "1454615667794"], ["andas", "1454615669626"], ["y", "1454615671066"], ["te", "1454615672123"], ["dir\\u00e9", "1454615674514"], ["quien", "1454615676420"], ["eres", "1454615677874"]]
1618	23	109	2016-02-04 19:55:28.366834+00	2016-02-04 19:54:42.644+00	[["casa", "1454615687723"], ["de", "1454615690204"], ["un", "1454615693162"], ["v\\u00edboras", "1454615717148"], ["son", "1454615726554"], ["provocar", "1454615738922"], ["peligrosa", "1454615749530"]]
1619	23	115	2016-02-04 19:56:15.659749+00	2016-02-04 19:55:52.009+00	[["se\\u00f1or", "1454615756651"], ["de", "1454615759210"], ["Pedro", "1454615762716"], ["juega", "1454615771524"], ["campe\\u00f3n", "1454615776794"], ["estudiante", "1454615787242"], ["famoso", "1454615791770"], ["reconocido", "1454615797034"]]
1620	23	104	2016-02-04 19:57:19.040707+00	2016-02-04 19:56:41.677+00	[["vino", "1454615817788"], ["sobre", "1454615825306"], ["mis", "1454615839363"], ["sobre", "1454615845874"], ["pol\\u00edtica", "1454615853570"], ["carrera", "1454615860194"]]
1621	23	67	2016-02-04 19:58:07.894659+00	2016-02-04 19:57:44.711+00	[["est\\u00e1", "1454615869787"], ["es", "1454615875244"], ["bueno", "1454615879042"], ["de", "1454615882756"], ["Misiones", "1454615891642"], ["provincia", "1454615909266"]]
1622	23	89	2016-02-04 19:58:45.423668+00	2016-02-04 19:58:37.142+00	[["es", "1454615921331"], ["el", "1454615926519"], ["de", "1454615934290"], ["y", "1454615938162"], ["ma\\u00f1ana", "1454615942395"], ["navidad", "1454615946578"]]
1623	23	98	2016-02-04 19:59:43.764115+00	2016-02-04 19:59:09.608+00	[["cas", "1454615952683"], ["fue", "1454615957210"], ["bien", "1454615966564"], ["rodarse", "1454615996075"], ["imprevista", "1454616005115"]]
1624	23	85	2016-02-04 20:01:31.878065+00	2016-02-04 20:01:14.323+00	[["la", "1454616077899"], ["dormitorio", "1454616091051"], ["se", "1454616101274"], ["las", "1454616104770"], ["las", "1454616109274"], ["vacas", "1454616113082"]]
1625	23	32	2016-02-04 20:02:28.490092+00	2016-02-04 20:01:56.179+00	[["el", "1454616119275"], ["bueno", "1454616124844"], ["te", "1454616131996"], ["te", "1454616135554"], [" y", "1454616150741"], ["no", "1454616160539"], ["lo", "1454616162610"], ["que", "1454616164138"], ["yo", "1454616166922"], ["hago", "1454616169866"]]
1626	23	60	2016-02-04 20:02:52.812349+00	2016-02-04 20:02:53.18+00	[["se", "1454616177235"], ["lo", "1454616180298"], ["que", "1454616183620"], ["no", "1454616185658"], ["puedas", "1454616190588"], ["cumplir", "1454616194202"]]
1627	23	54	2016-02-04 20:03:32.991122+00	2016-02-04 20:03:17.508+00	[["es", "1454616203724"], ["la", "1454616220811"], ["guerra", "1454616224531"], ["guerra", "1454616230171"], ["mundial", "1454616234195"]]
1628	23	37	2016-02-04 20:04:18.178338+00	2016-02-04 20:03:57.424+00	[["padre", "1454616243364"], ["dice", "1454616248523"], ["veces", "1454616257955"], ["marca", "1454616267043"], ["a", "1454616272290"], ["hierro", "1454616276339"], ["muere", "1454616279563"]]
1629	23	23	2016-02-04 20:04:54.219653+00	2016-02-04 20:04:44.835+00	[["digas", "1454616289371"], ["mucho", "1454616296835"], ["madrugar", "1454616300395"], ["amanece", "1454616307523"], ["m\\u00e1s", "1454616310899"], ["temprano", "1454616315426"]]
1630	23	41	2016-02-04 20:05:20.624074+00	2016-02-04 20:05:20.09+00	[["se\\u00f1or", "1454616326219"], ["dice", "1454616329420"], ["antes", "1454616332939"], ["r\\u00ede", "1454616338244"], ["mejor", "1454616342004"]]
1631	23	102	2016-02-04 20:06:13.947178+00	2016-02-04 20:05:47.485+00	[["qui\\u00e9n", "1454616357756"], ["le", "1454616364907"], ["agrada", "1454616369539"], ["un", "1454616373403"], ["un", "1454616377571"], ["auto", "1454616384739"], ["nuevo", "1454616395131"]]
1632	23	48	2016-02-04 20:06:39.336728+00	2016-02-04 20:06:40.348+00	[["hijos", "1454616406067"], ["y", "1454616409868"], ["te", "1454616411715"], ["sacar\\u00e1n", "1454616415787"], ["los", "1454616417804"], ["ojos", "1454616420739"]]
1633	23	19	2016-02-04 20:07:06.191198+00	2016-02-04 20:07:04.524+00	[["vale", "1454616429507"], ["p\\u00e1jaro", "1454616436692"], ["en", "1454616438611"], ["mano", "1454616440467"], ["que", "1454616442356"], ["cien", "1454616444763"], ["volando", "1454616447571"]]
1634	23	64	2016-02-04 20:07:47.843651+00	2016-02-04 20:07:30.12+00	[["la", "1454616454492"], ["le", "1454616458475"], ["Remo", "1454616465595"], ["Remo", "1454616471883"], ["los", "1454616475123"], ["aliment\\u00f3", "1454616482883"], ["una", "1454616485003"], ["loba", "1454616489059"]]
1635	23	31	2016-02-04 20:08:12.675756+00	2016-02-04 20:08:11.712+00	[["que", "1454616496123"], ["no", "1454616498211"], ["has", "1454616500324"], ["de", "1454616502347"], ["beber", "1454616506163"], ["d\\u00e9jala", "1454616510324"], ["correr", "1454616514076"]]
1636	23	119	2016-02-04 20:09:02.373545+00	2016-02-04 20:08:37.441+00	[["se", "1454616522083"], ["es", "1454616531756"], ["un", "1454616534243"], ["metal", "1454616537723"], ["brilloso", "1454616545747"], ["brilloso", "1454616563579"]]
1637	23	93	2016-02-04 20:10:22.840576+00	2016-02-04 20:09:26.847+00	[["y", "1454616570579"], ["una", "1454616584940"], ["informaci\\u00f3n", "1454616620459"], ["y", "1454616623667"], ["y", "1454616627275"], ["la", "1454616630643"], ["cine", "1454616644019"]]
1638	23	74	2016-02-04 20:11:21.421199+00	2016-02-04 20:10:47.632+00	[["la", "1454616651787"], ["patio", "1454616660211"], ["hay", "1454616669691"], ["mi", "1454616673555"], ["pizzer\\u00eda", "1454616687211"], ["hay", "1454616695843"], ["pan", "1454616699099"], ["pan", "1454616702843"]]
1639	23	114	2016-02-04 20:12:08.052227+00	2016-02-04 20:11:46.334+00	[["que", "1454616711411"], ["de", "1454616715556"], ["mi", "1454616721267"], ["estudian", "1454616729492"], ["en", "1454616737899"], ["las", "1454616744595"], ["vacaciones", "1454616749483"]]
1640	23	30	2016-02-04 20:12:28.206465+00	2016-02-04 20:12:33.109+00	[["salgas", "1454616757571"], ["para", "1454616761739"], ["quien", "1454616766587"], ["pelea", "1454616769452"]]
1641	23	20	2016-02-04 20:12:45.996589+00	2016-02-04 20:12:51.546+00	[["el", "1454616776347"], ["bien", "1454616779203"], ["sin", "1454616781427"], ["mirar", "1454616783691"], ["a", "1454616784603"], ["quien", "1454616787427"]]
1642	23	110	2016-02-04 20:14:25.183775+00	2016-02-04 20:13:10.352+00	[["va", "1454616793195"], ["en", "1454616798916"], ["salir", "1454616822996"], ["que", "1454616830963"], ["al", "1454616836091"], ["final", "1454616838819"], ["gan\\u00f3", "1454616844043"], ["realiz\\u00f3", "1454616879411"], ["creyeron", "1454616886387"]]
1643	23	56	2016-02-04 20:14:54.555672+00	2016-02-04 20:14:50.864+00	[["mucho", "1454616895852"], ["pensar", "1454616903092"], ["bien", "1454616909900"], ["de", "1454616912819"], ["hablar", "1454616915995"]]
1644	23	117	2016-02-04 20:16:51.130147+00	2016-02-04 20:15:21.166+00	[["gente", "1454616926931"], ["se", "1454616930812"], ["Miguel", "1454616939203"], ["hace", "1454616960339"], ["muy", "1454616979723"], ["defensora", "1454617016683"], ["buena", "1454617022779"], ["tejedora", "1454617032371"]]
1645	23	72	2016-02-04 20:17:59.326618+00	2016-02-04 20:17:16.282+00	[["se\\u00f1or", "1454617043683"], ["es", "1454617052356"], ["y", "1454617057788"], ["la", "1454617060867"], ["reyes", "1454617076211"], ["de", "1454617082627"], ["Espa\\u00f1a", "1454617086403"], ["corte", "1454617091211"], ["redonda", "1454617100587"]]
1646	23	59	2016-02-04 20:18:55.370288+00	2016-02-04 20:18:25.604+00	[["es", "1454617112283"], ["el", "1454617121164"], ["de", "1454617123603"], ["la", "1454617125419"], ["d\\u00e9biles", "1454617149387"], ["mosqueteros", "1454617156819"]]
1647	23	125	2016-02-04 20:19:37.898816+00	2016-02-04 20:19:19.599+00	[["que", "1454617163387"], ["gritan", "1454617168300"], ["y", "1454617172587"], ["comida", "1454617177819"], ["de", "1454617184155"], ["maiz", "1454617199139"]]
1648	23	16	2016-02-04 20:20:05.006295+00	2016-02-04 20:20:02.893+00	[["que", "1454617206099"], ["no", "1454617208052"], ["ven", "1454617210107"], ["coraz\\u00f3n", "1454617213915"], ["que", "1454617215179"], ["no siente", "1454617221393"], ["siente", "1454617226435"]]
1649	23	42	2016-02-04 20:20:30.452449+00	2016-02-04 20:20:29.444+00	[["mejor", "1454617233285"], ["creer", "1454617242852"], ["que", "1454617247611"], ["lamentar", "1454617251875"]]
1650	23	69	2016-02-04 20:21:19.077848+00	2016-02-04 20:20:55.937+00	[["es", "1454617259931"], ["un", "1454617263012"], ["de", "1454617265579"], ["los", "1454617268480"], ["gatos", "1454617273291"], ["de", "1454617281540"], ["caballo", "1454617300339"]]
1651	23	63	2016-02-04 20:21:51.483476+00	2016-02-04 20:21:44.499+00	[["Jos\\u00e9", "1454617314549"], ["es", "1454617320204"], ["los", "1454617322763"], ["Andes", "1454617325731"], ["a", "1454617328243"], ["caballo", "1454617332923"]]
1652	23	58	2016-02-04 20:22:29.791029+00	2016-02-04 20:22:15.654+00	[["que", "1454617339387"], ["est\\u00e1", "1454617347476"], ["al", "1454617356660"], ["hueso", "1454617361539"], ["en", "1454617365715"], ["el", "1454617367507"], ["patio", "1454617371043"]]
1653	23	79	2016-02-04 20:22:53.348282+00	2016-02-04 20:22:53.407+00	[["que", "1454617379012"], ["es", "1454617384251"], ["invisible", "1454617387996"], ["a", "1454617389411"], ["los", "1454617391891"], ["ojos", "1454617394787"]]
1654	23	83	2016-02-04 22:39:20.072732+00	2016-02-04 22:39:05.012+00	[["se\\u00f1or", "1454625558085"], ["es", "1454625563757"], ["perjudicial", "1454625570909"], ["para", "1454625573717"], ["la", "1454625576909"], ["salud", "1454625581653"]]
1655	23	57	2016-02-04 22:40:27.311843+00	2016-02-04 22:39:45.391+00	[["ni\\u00f1o", "1454625599406"], ["que", "1454625623902"], ["amigo", "1454625629237"], ["aliado", "1454625646333"], ["de", "1454625648901"]]
1656	23	61	2016-02-04 22:40:56.421367+00	2016-02-04 22:40:53.306+00	[["la", "1454625658717"], ["duda", "1454625661318"], ["mejor", "1454625669974"], ["a", "1454625673013"], ["su", "1454625674997"], ["m\\u00e9dico", "1454625678285"]]
1657	23	14	2016-02-04 22:41:21.467493+00	2016-02-04 22:41:21.554+00	[["es", "1454625685277"], ["da", "1454625688254"], ["pan", "1454625690373"], ["a", "1454625691885"], ["quien", "1454625696806"], ["no", "1454625698765"], ["tiene", "1454625701245"], ["dientes", "1454625703325"]]
1658	23	62	2016-02-04 22:41:49.710801+00	2016-02-04 22:41:45.932+00	[["no", "1454625709189"], ["hay", "1454625711453"], ["camino", "1454625713905"], ["se", "1454625715981"], ["hace", "1454625718389"], ["camino", "1454625720541"], ["al andar", "1454625727400"], ["andar", "1454625731317"]]
1659	23	26	2016-02-04 22:44:56.596063+00	2016-02-04 22:42:14.445+00	[["casa", "1454625763678"], ["garage", "1454625773109"], ["hay", "1454625778349"], ["mayor", "1454625813149"], ["vivos", "1454625824901"], ["mi", "1454625834781"], ["que", "1454625838069"], ["es", "1454625844437"], ["rey", "1454625918197"]]
1660	23	124	2016-02-04 22:46:29.931227+00	2016-02-04 22:45:21.113+00	[["casa", "1454625926342"], ["casa", "1454625938342"], ["hay", "1454625946117"], ["hay", "1454625953117"], ["cosas", "1454626000862"], ["ricas", "1454626005678"], ["ricas", "1454626011549"]]
1661	23	18	2016-02-04 22:47:03.12939+00	2016-02-04 22:46:54.39+00	[["la", "1454626020998"], ["del", "1454626027533"], ["no", "1454626030221"], ["se", "1454626033381"], ["le", "1454626035485"], ["mira", "1454626039597"], ["los", "1454626042157"], ["dientes", "1454626044989"]]
1662	23	17	2016-02-04 22:47:47.052819+00	2016-02-04 22:47:28.217+00	[["se\\u00f1or", "1454626060446"], ["acierte", "1454626078725"], ["Dios", "1454626083317"], ["lo", "1454626085725"], ["ayuda", "1454626088685"]]
1663	23	68	2016-02-04 22:48:51.551778+00	2016-02-04 22:48:11.041+00	[["con", "1454626109726"], ["premio", "1454626137837"], ["con", "1454626142989"], ["el", "1454626144981"], ["sudor", "1454626147205"], ["de", "1454626148685"], ["tu", "1454626150221"], ["frente", "1454626153189"]]
1664	23	82	2016-02-04 22:49:35.539527+00	2016-02-04 22:49:16.321+00	[["que", "1454626164629"], ["llegamos", "1454626169526"], ["mi", "1454626175094"], ["amor", "1454626197381"]]
1665	23	77	2016-02-04 22:50:30.242794+00	2016-02-04 22:50:01.752+00	[["que", "1454626207989"], ["late", "1454626222342"], ["un", "1454626227757"], ["\\u00f3rgano", "1454626232477"], ["que", "1454626239917"], ["late", "1454626242429"], ["la", "1454626251861"]]
1666	23	86	2016-02-04 22:50:55.752473+00	2016-02-04 22:50:56.31+00	[["hagas", "1454626261487"], ["la", "1454626263837"], ["la", "1454626267891"], ["mujer", "1454626270469"], ["de", "1454626272509"], ["tu", "1454626273813"], ["pr\\u00f3jimo", "1454626277645"]]
1667	23	108	2016-02-04 22:51:54.866964+00	2016-02-04 22:51:20.826+00	[["que", "1454626285765"], ["est\\u00e1n", "1454626297758"], ["conocen", "1454626303157"], ["hasta", "1454626309893"], ["su", "1454626314341"], ["proyecto", "1454626336461"]]
1668	23	94	2016-02-04 22:52:25.540275+00	2016-02-04 22:52:19.866+00	[["est\\u00e1", "1454626345311"], ["a", "1454626349461"], ["con", "1454626352230"], ["tiempo", "1454626356205"], ["con", "1454626361709"], ["f\\u00fatbol", "1454626367437"]]
1669	23	49	2016-02-04 22:52:59.284154+00	2016-02-04 22:52:51.6+00	[["hagas", "1454626378007"], ["lugar", "1454626388093"], ["pensar", "1454626391901"], ["peras", "1454626396709"], ["al", "1454626398677"], ["olmo", "1454626400949"]]
1670	23	36	2016-02-04 22:53:40.605112+00	2016-02-04 22:53:24.433+00	[["que", "1454626407533"], ["sabe", "1454626410510"], ["por", "1454626412533"], ["diablo", "1454626415925"], ["diablo", "1454626431126"], ["que", "1454626435325"], ["por", "1454626436973"], ["diablo", "1454626442509"]]
1671	23	44	2016-02-04 22:54:06.759338+00	2016-02-04 22:54:05.588+00	[["que", "1454626450741"], ["del", "1454626455606"], ["amo", "1454626458413"], ["engorda", "1454626461798"], ["el", "1454626464645"], ["ganado", "1454626468365"]]
1672	23	105	2016-02-04 22:55:14.54341+00	2016-02-04 22:54:31.184+00	[["gente", "1454626478301"], ["sigue", "1454626497990"], ["Juan", "1454626505437"], ["contin\\u00faa", "1454626515581"], ["muy", "1454626536189"]]
1673	23	78	2016-02-04 22:56:17.559987+00	2016-02-04 22:55:39.198+00	[["la", "1454626543389"], ["conseguir", "1454626554726"], ["trabaja", "1454626573693"], ["cambia", "1454626579605"], ["contin\\u00faes", "1454626587293"], ["lo", "1454626592141"], ["lo", "1454626595757"], ["mismo", "1454626599221"]]
1674	23	70	2016-02-04 22:58:45.460267+00	2016-02-04 22:56:42.844+00	[["mujer", "1454626608127"], ["tiene", "1454626613589"], ["el", "1454626615358"], ["omb\\u00fa", "1454626617981"], [" y", "1454626628531"], ["la", "1454626656893"], ["hombres", "1454626717389"], ["tiene", "1454626732805"], ["cordillera", "1454626747117"]]
1675	23	10	2016-02-04 22:59:16.521816+00	2016-02-04 22:59:10.546+00	[["mal", "1454626759839"], ["abarca", "1454626771126"], ["poco", "1454626774022"], ["aprieta", "1454626778445"]]
1676	23	120	2016-02-04 23:00:02.695869+00	2016-02-04 22:59:42.996+00	[["piensan", "1454626789173"], ["est\\u00e1n", "1454626798439"], ["tiempo", "1454626808718"], ["est\\u00e1", "1454626814245"], ["nublado", "1454626818261"], ["nublado", "1454626824373"]]
1677	23	13	2016-02-04 23:00:38.447862+00	2016-02-04 23:00:28.64+00	[["la", "1454626834165"], ["viento", "1454626847886"], ["no", "1454626852781"], ["hay", "1454626855117"], ["pan", "1454626857797"], ["duro", "1454626860389"]]
1678	23	25	2016-02-04 23:02:10.04413+00	2016-02-04 23:01:03.765+00	[["hagas", "1454626868847"], ["palabras", "1454626932767"], ["que", "1454626936165"], ["por", "1454626938277"], ["mal", "1454626943717"], ["no", "1454626949837"], ["sea", "1454626951701"]]
1679	23	112	2016-02-04 23:05:13.366569+00	2016-02-04 23:02:36.842+00	[["hermanos", "1454626962734"], ["est\\u00e1n", "1454626969383"], ["juntan", "1454626973576"], ["por", "1454626984957"], ["vieron", "1454626989741"], ["al", "1454627019989"], ["su", "1454627126582"], ["perros", "1454627135101"]]
1840	28	35	2016-02-08 04:04:01.854487+00	2016-02-08 04:02:17.756+00	[["poco", "1454904146918"], ["que", "1454904153791"], ["mal", "1454904158027"], ["acompa\\u00f1ado", "1454904170485"]]
1680	23	55	2016-02-04 23:06:20.867207+00	2016-02-04 23:05:39.816+00	[["qui\\u00e9n", "1454627149895"], ["amigas", "1454627160319"], ["hay", "1454627170262"], ["hormigas", "1454627196365"], ["el", "1454627199341"], ["viento", "1454627202605"]]
1681	23	65	2016-02-04 23:07:11.239591+00	2016-02-04 23:06:46.212+00	[["una", "1454627210878"], ["ser", "1454627214005"], ["ser", "1454627230559"], ["es", "1454627244357"], ["es", "1454627247069"], ["la", "1454627249029"], ["consigna", "1454627253189"]]
1682	23	47	2016-02-04 23:07:29.87829+00	2016-02-04 23:07:37.637+00	[["de", "1454627260718"], ["muchos", "1454627263877"], ["consuelo", "1454627267781"], ["de", "1454627269077"], ["pocos", "1454627271621"]]
1683	23	52	2016-02-04 23:07:57.590993+00	2016-02-04 23:07:55.373+00	[["est\\u00e1n", "1454627280863"], ["trabajadores", "1454627289143"], ["conducen", "1454627294349"], ["a", "1454627295861"], ["Roma", "1454627299493"]]
1684	23	35	2016-02-04 23:08:32.926713+00	2016-02-04 23:08:23.337+00	[["realizar", "1454627318279"], ["que", "1454627321373"], ["acompa\\u00f1ado", "1454627326533"], ["acompa\\u00f1ado", "1454627334661"]]
1685	23	100	2016-02-04 23:09:10.696126+00	2016-02-04 23:08:58.652+00	[["est\\u00e1", "1454627344190"], ["llam\\u00f3", "1454627349335"], ["continuar", "1454627361479"], ["al", "1454627364333"], ["al", "1454627367549"], ["m\\u00e9dico", "1454627372645"]]
1686	23	88	2016-02-04 23:09:38.870608+00	2016-02-04 23:09:36.133+00	[["que", "1454627379614"], ["son", "1454627387199"], ["creen", "1454627394861"], ["en", "1454627397461"], ["Dios", "1454627400565"]]
1687	25	5	2016-02-06 14:51:26.569033+00	2016-02-06 14:48:01.395+00	[["paz", "1454770107297"], ["asusta", "1454770118078"], ["intimidante", "1454770131191"], ["simbolo de la muerte", "1454770168532"], ["intimidante", "1454770198155"], ["muerte", "1454770208323"], ["muerte", "1454770217384"]]
1688	25	9	2016-02-06 14:53:34.514774+00	2016-02-06 14:50:24.066+00	[["asiste", "1454770243793"], ["informa", "1454770254075"], ["hombro", "1454770267552"], ["omoplato", "1454770279226"], ["derecho", "1454770288124"], ["negligente", "1454770338158"], ["vez", "1454770345252"]]
1689	25	2	2016-02-06 14:56:42.217332+00	2016-02-06 14:52:30.042+00	[["amor", "1454770386582"], ["previsto", "1454770396703"], ["esperaba", "1454770408228"], ["pensaba", "1454770419884"], ["aparentaba", "1454770447298"], ["seguramente", "1454770463765"], ["esperable", "1454770486370"], ["no suponer", "1454770532927"]]
1690	25	12	2016-02-06 14:57:40.788662+00	2016-02-06 14:55:38.339+00	[["llegar", "1454770545957"], ["tiempo", "1454770557051"], ["paciencia", "1454770585228"], ["cara", "1454770592030"]]
1691	25	86	2016-02-06 14:59:25.68111+00	2016-02-06 14:56:35.617+00	[["supongas", "1454770605539"], ["fracasar", "1454770613551"], ["nadie", "1454770644019"], ["escasez", "1454770670655"], ["ajena", "1454770679330"], ["otro", "1454770685255"], ["projimo", "1454770696429"]]
1692	25	101	2016-02-06 15:00:58.595574+00	2016-02-06 14:58:21.546+00	[["paz", "1454770707389"], ["pronto", "1454770717363"], ["verano", "1454770759308"], ["nublado", "1454770772742"], ["lluvioso", "1454770781167"], ["frio", "1454770789318"]]
1693	25	127	2016-02-06 15:02:14.881365+00	2016-02-06 14:59:56.52+00	[["vez", "1454770801366"], ["interesante", "1454770817121"], ["mundo", "1454770828011"], ["actual", "1454770842040"], ["encanto", "1454770853318"], ["atraccion", "1454770865670"]]
1694	25	10	2016-02-06 15:03:05.532418+00	2016-02-06 15:01:11.999+00	[["quiera", "1454770879033"], ["abarca", "1454770887487"], ["pierde", "1454770908284"], ["aprieta", "1454770916783"]]
1695	25	79	2016-02-06 15:04:48.039509+00	2016-02-06 15:02:00.6+00	[["bueno", "1454770929915"], ["aceptable", "1454770961773"], ["importante", "1454770972110"], ["totalmente", "1454770996619"], ["uno", "1454771008355"], ["necios", "1454771018775"]]
1696	25	56	2016-02-06 15:05:43.953652+00	2016-02-06 15:03:42.565+00	[["mucho", "1454771029104"], ["repartir", "1454771036891"], ["mucho", "1454771043760"], ["bien", "1454771066754"], ["actuar", "1454771075195"]]
1697	25	48	2016-02-06 15:07:43.267346+00	2016-02-06 15:04:38.901+00	[["cuervos", "1454771086627"], ["cuidadosamente", "1454771135074"], ["maldad", "1454771167502"], ["traicionaran", "1454771179276"], ["todo", "1454771187641"], ["ojos", "1454771194022"]]
1698	25	98	2016-02-06 15:09:02.915376+00	2016-02-06 15:06:37.664+00	[["bondad", "1454771207128"], ["se\\u00f1era", "1454771222188"], ["bien", "1454771228936"], ["rodarse", "1454771259008"], ["abrupta", "1454771273703"]]
1699	25	92	2016-02-06 15:10:27.686054+00	2016-02-06 15:07:57.297+00	[["ama", "1454771284804"], ["trabajo", "1454771291454"], ["medalla", "1454771303290"], ["importante", "1454771316164"], ["posgrado", "1454771334095"], ["afuera", "1454771341108"], ["londres", "1454771347822"], ["universidad", "1454771358427"]]
1700	25	29	2016-02-06 15:12:52.605853+00	2016-02-06 15:09:21.75+00	[["bajito", "1454771370661"], ["ternura", "1454771380536"], ["sales", "1454771386297"], ["diariamente", "1454771399317"], ["sales", "1454771411161"], ["acuestas", "1454771421386"], ["elige", "1454771497915"], ["eres", "1454771503361"]]
1701	25	80	2016-02-06 15:15:03.271801+00	2016-02-06 15:11:46.467+00	[["hombre", "1454771512620"], ["atrae", "1454771531736"], ["ilumina", "1454771541210"], ["opaco", "1454771548923"], ["instantaneamente", "1454771563439"], ["soleado", "1454771609524"], ["lluvia", "1454771618887"], ["neblina", "1454771634112"]]
1702	25	87	2016-02-06 15:16:36.997803+00	2016-02-06 15:13:57.822+00	[["ni\\u00f1as", "1454771644692"], ["buenas", "1454771652610"], ["agotan", "1454771659737"], ["largas", "1454771668351"], ["voluntariamente", "1454771694884"], ["mal", "1454771699779"], ["siempre", "1454771720754"], ["hacen", "1454771727806"]]
1703	25	34	2016-02-06 15:17:23.151319+00	2016-02-06 15:15:31.292+00	[["fuerte", "1454771738711"], ["otros", "1454771745016"], ["asoman", "1454771753898"], ["burro", "1454771763882"], ["asoma", "1454771769090"], ["asoma", "1454771774384"]]
1704	25	69	2016-02-06 15:19:22.25053+00	2016-02-06 15:16:17.526+00	[["maldito", "1454771790528"], ["maligno", "1454771798462"], ["malo", "1454771846134"], ["malignos", "1454771861441"], ["malditos", "1454771870165"], ["innombrables", "1454771883447"], ["infierno", "1454771893072"]]
1705	25	51	2016-02-06 15:20:24.904139+00	2016-02-06 15:18:17.216+00	[["buenos aires", "1454771916164"], ["nieva", "1454771927609"], ["especies", "1454771936679"], ["frias", "1454771942974"], ["frias", "1454771948599"], ["rigidas", "1454771955681"]]
1706	25	84	2016-02-06 15:21:12.741835+00	2016-02-06 15:19:18.731+00	[["llama", "1454771964777"], ["cree", "1454771969216"], ["creido", "1454771976555"], ["todo", "1454771982697"], ["absolutamente", "1454771998377"], ["vino", "1454772003999"]]
1707	25	77	2016-02-06 15:22:14.702018+00	2016-02-06 15:20:07.188+00	[["hombre", "1454772020386"], ["grande", "1454772025762"], ["fundamental", "1454772036197"], ["organo", "1454772043844"], ["importante", "1454772054667"], ["late", "1454772059663"], ["sangre", "1454772065526"]]
1708	25	57	2016-02-06 15:22:53.413247+00	2016-02-06 15:21:08.516+00	[["amo", "1454772074337"], ["bueno", "1454772080394"], ["importante", "1454772091884"], ["ser", "1454772095790"], ["cruel", "1454772104658"]]
1709	25	27	2016-02-06 15:24:14.044653+00	2016-02-06 15:21:48.255+00	[["llegar", "1454772116899"], ["madruga", "1454772123807"], ["lola", "1454772134516"], ["duro", "1454772166331"], ["trabaje", "1454772176388"], ["cueste", "1454772184791"]]
1710	25	36	2016-02-06 15:25:43.055934+00	2016-02-06 15:23:08.077+00	[["amor", "1454772193256"], ["colea", "1454772200806"], ["mucho", "1454772208677"], ["artima\\u00f1as", "1454772239604"], ["diablo", "1454772248040"], ["seguro", "1454772257392"], ["nada", "1454772266931"], ["diablo", "1454772273797"]]
1711	25	113	2016-02-06 15:27:04.007608+00	2016-02-06 15:24:37.108+00	[["muchos", "1454772283472"], ["atrae", "1454772310055"], ["gustarle", "1454772319301"], ["quieren", "1454772325717"], ["facilmente", "1454772333348"], ["sonrisa", "1454772340902"], ["tono", "1454772346245"], ["refran", "1454772354730"]]
1712	25	125	2016-02-06 15:27:46.637287+00	2016-02-06 15:25:58.923+00	[["chicos", "1454772365542"], ["hablan", "1454772372309"], ["mucho", "1454772377707"], ["comida", "1454772383679"], ["entera", "1454772391783"], ["maiz", "1454772397881"]]
1713	24	9	2016-02-06 15:27:48.236041+00	2016-02-06 15:20:18.048+00	[["juega", "1454772071750"], ["entretiene", "1454772167377"], ["la cadera", "1454772316362"], ["tobillo", "1454772358621"], ["izquierdo", "1454772372562"], ["osteoporosis", "1454772386736"], ["vez", "1454772398568"]]
1714	25	73	2016-02-06 15:28:22.507901+00	2016-02-06 15:26:41.703+00	[["mal", "1454772409000"], ["maula", "1454772416648"], ["ratones", "1454772424541"], ["ratones", "1454772433204"]]
1715	25	33	2016-02-06 15:29:00.307741+00	2016-02-06 15:27:16.256+00	[["claras", "1454772441590"], ["buenisimo", "1454772457739"], ["amistad", "1454772464707"], ["amistad", "1454772471550"]]
1716	25	115	2016-02-06 15:30:37.210681+00	2016-02-06 15:27:56.488+00	[["se\\u00f1or", "1454772501441"], ["mayor", "1454772508329"], ["elsa", "1454772514306"], ["lleg\\u00f3", "1454772528521"], ["bueno", "1454772535226"], ["artista", "1454772547232"], ["destacado", "1454772558227"], ["importante", "1454772568030"]]
1717	25	49	2016-02-06 15:31:23.687997+00	2016-02-06 15:29:34.121+00	[["grites", "1454772584268"], ["nada", "1454772588689"], ["gritar", "1454772594683"], ["nada", "1454772600054"], ["verdes", "1454772610360"], ["olmo", "1454772614943"]]
1718	24	1	2016-02-06 15:35:11.977894+00	2016-02-06 15:26:46.796+00	[["cari\\u00f1o", "1454772413620"], ["ensordecedor", "1454772436844"], ["algarab\\u00eda", "1454772483888"], ["nueces", "1454772842305"]]
1719	24	8	2016-02-06 15:36:54.464178+00	2016-02-06 15:34:07.902+00	[["prueba", "1454772870595"], ["ma\\u00f1ana", "1454772877752"], ["fuimos", "1454772898533"], ["arribo", "1454772907610"], ["llegar", "1454772915817"], ["nadando", "1454772922441"], ["nadando", "1454772936819"], ["aire", "1454772944925"]]
1720	24	115	2016-02-06 15:38:18.949238+00	2016-02-06 15:35:50.828+00	[["solitario", "1454772960214"], ["ausente", "1454772967416"], ["crianza", "1454772976168"], ["lleg\\u00f3", "1454772988537"], ["astronauta", "1454773005387"], ["audaz", "1454773012713"], ["kinesiologo", "1454773023984"], ["tenaz", "1454773029415"]]
1721	24	57	2016-02-06 15:40:07.38367+00	2016-02-06 15:37:15.474+00	[["dolar", "1454773043003"], ["aud\\u00e1z", "1454773086724"], ["ingeniero", "1454773095227"], ["receloso", "1454773122048"], ["pensante", "1454773137725"]]
1722	24	126	2016-02-06 15:42:14.948084+00	2016-02-06 15:39:02.974+00	[["Elena", "1454773160572"], ["duerme", "1454773170394"], ["viajado", "1454773178854"], ["telar", "1454773196730"], ["a", "1454773244661"], ["nadie", "1454773255934"], ["hijos", "1454773264625"]]
1723	24	118	2016-02-06 15:44:17.126462+00	2016-02-06 15:41:09.437+00	[["el", "1454773292511"], ["noche", "1454773299229"], ["parece", "1454773307286"], ["sienten", "1454773316696"], ["aullan", "1454773331449"], ["a merodear", "1454773357416"], ["corretear", "1454773387465"]]
1724	24	103	2016-02-06 15:45:27.002092+00	2016-02-06 15:43:12.508+00	[["llora", "1454773404275"], ["sale", "1454773410688"], ["mentir", "1454773417203"], ["ingrez\\u00f3", "1454773427614"], ["el ", "1454773446748"], ["problema", "1454773457396"]]
1725	24	17	2016-02-06 15:46:04.020788+00	2016-02-06 15:44:25.267+00	[["nene", "1454773474375"], ["pueda", "1454773479866"], ["Dios", "1454773487610"], ["lo", "1454773490362"], ["ayuda", "1454773494498"]]
1726	24	124	2016-02-06 15:46:58.871312+00	2016-02-06 15:44:59.161+00	[["azar", "1454773506529"], ["casa", "1454773513555"], ["no", "1454773518248"], ["hay", "1454773521731"], ["rabioles", "1454773530545"], ["dieteticas", "1454773539772"], ["sabrozas", "1454773548783"]]
1727	24	14	2016-02-06 15:48:25.746256+00	2016-02-06 15:45:54.469+00	[["ayuda", "1454773568006"], ["di\\u00f3", "1454773572972"], ["a", "1454773576624"], ["al", "1454773586875"], ["qui\\u00e9n", "1454773599165"], ["se ", "1454773611298"], ["puede", "1454773621658"], ["dientes", "1454773631737"]]
1728	25	91	2016-02-06 15:58:21.414888+00	2016-02-06 15:56:16.233+00	[["viene", "1454774185612"], ["sed", "1454774194563"], ["buenos", "1454774202957"], ["ayudan", "1454774212746"], ["grandes", "1454774219947"], ["buenos", "1454774232096"]]
1729	25	106	2016-02-06 15:59:05.01141+00	2016-02-06 15:57:17.239+00	[["vendra", "1454774249013"], ["comida", "1454774255370"], ["fuerte", "1454774261522"], ["todos", "1454774268440"], ["amigos", "1454774276277"]]
1730	25	18	2016-02-06 16:00:34.177718+00	2016-02-06 15:58:00.647+00	[["muchos", "1454774288473"], ["regalado", "1454774312114"], ["desdentado", "1454774329278"], ["mirar", "1454774336648"], ["miran", "1454774343989"], ["miran", "1454774349916"], ["dientes", "1454774357186"], ["dientes", "1454774365004"]]
1731	25	82	2016-02-06 16:01:08.526583+00	2016-02-06 15:59:28.243+00	[["siempre", "1454774378733"], ["llegue", "1454774386045"], ["siempre", "1454774393253"], ["amor", "1454774399774"]]
1732	25	50	2016-02-06 16:02:01.486855+00	2016-02-06 16:00:03.452+00	[["siempre", "1454774412946"], ["mucho", "1454774420252"], ["guerras", "1454774428203"], ["guerra", "1454774433987"], ["fuerte", "1454774441982"], ["grecia", "1454774452335"]]
1733	25	14	2016-02-06 16:03:19.155175+00	2016-02-06 16:00:55.584+00	[["existe", "1454774462375"], ["da", "1454774468590"], ["todo", "1454774473582"], ["siempre", "1454774485392"], ["desdentados", "1454774494100"], ["necesita", "1454774511052"], ["necesita", "1454774523589"], ["dientes", "1454774529995"]]
1734	25	78	2016-02-06 16:04:45.005572+00	2016-02-06 16:02:12.571+00	[["quieres", "1454774542024"], ["venir", "1454774547324"], ["trabaja", "1454774555031"], ["cambia", "1454774567794"], ["repitas", "1454774576414"], ["repeticiones", "1454774596901"], ["igual", "1454774608067"], ["mismo", "1454774615823"]]
1735	25	112	2016-02-06 16:06:00.617782+00	2016-02-06 16:03:39.788+00	[["chicos", "1454774628846"], ["juegan", "1454774637983"], ["rien", "1454774643325"], ["mucho", "1454774649947"], ["lleg\\u00f3", "1454774658727"], ["monstruos", "1454774669539"], ["lucifer", "1454774683842"], ["enanos", "1454774691438"]]
1736	25	104	2016-02-06 16:06:46.105106+00	2016-02-06 16:04:54.668+00	[["vi", "1454774699735"], ["mucho", "1454774705553"], ["ellos", "1454774711372"], ["mucho", "1454774721224"], ["todos", "1454774727711"], ["pareja", "1454774737324"]]
1737	25	35	2016-02-06 16:07:51.872148+00	2016-02-06 16:05:41.061+00	[["estudia", "1454774750395"], ["come", "1454774756757"], ["atosigado", "1454774793494"], ["acompa\\u00f1ado", "1454774802715"]]
1738	25	61	2016-02-06 16:08:47.825792+00	2016-02-06 16:06:46.362+00	[["todo", "1454774813611"], ["multitud", "1454774822644"], ["detente", "1454774829487"], ["siempre", "1454774837379"], ["medicos", "1454774849132"], ["mentor", "1454774859103"]]
1739	25	38	2016-02-06 16:10:39.514056+00	2016-02-06 16:07:42.855+00	[["da\\u00f1o", "1454774868770"], ["cantaro", "1454774878398"], ["cantaro", "1454774885231"], ["fuente", "1454774897736"], ["fuente", "1454774908314"], ["fuente", "1454774915226"], ["rompe", "1454774933812"], ["rompe", "1454774946885"], ["final", "1454774955086"], ["rompe", "1454774963682"], ["rompe", "1454774970279"]]
1740	25	24	2016-02-06 18:26:46.863216+00	2016-02-06 18:24:24.775+00	[["mas", "1454783073834"], ["entrar", "1454783080443"], ["ma\\u00f1ana", "1454783088774"], ["hazlo", "1454783101034"], ["u", "1454783117287"], ["importante", "1454783123612"], ["hacer", "1454783131171"], ["hoy", "1454783136816"]]
1741	25	43	2016-02-06 18:27:39.654209+00	2016-02-06 18:25:42.429+00	[["hables", "1454783154667"], ["perdido", "1454783162341"], ["visto", "1454783178037"], ["ves", "1454783181952"], ["es", "1454783186127"], ["oro", "1454783190133"]]
1742	25	81	2016-02-06 18:28:44.324681+00	2016-02-06 18:26:33.619+00	[["dejes", "1454783205390"], ["quejes", "1454783212703"], ["manija", "1454783222040"], ["vencido", "1454783230040"], ["aun", "1454783236701"], ["vencido", "1454783245741"], ["vencido", "1454783254371"]]
1743	25	23	2016-02-06 18:29:36.090416+00	2016-02-06 18:27:38.751+00	[["quieras", "1454783276326"], ["mucho", "1454783282822"], ["madrugar", "1454783289829"], ["amanece", "1454783297278"], ["mas", "1454783300898"], ["temprano", "1454783306567"]]
1744	25	119	2016-02-06 18:30:39.882312+00	2016-02-06 18:28:29.731+00	[["que", "1454783320280"], ["no", "1454783340735"], ["metal", "1454783349097"], ["metal", "1454783354470"], ["precioso", "1454783361173"], ["valioso", "1454783369897"]]
1745	25	90	2016-02-06 18:31:58.328179+00	2016-02-06 18:29:33.352+00	[["pocas", "1454783378584"], ["familia", "1454783389063"], ["anidan", "1454783399993"], ["dios", "1454783411371"], ["comen", "1454783420576"], ["rechazan", "1454783438448"], ["ladrones", "1454783448388"]]
1746	25	63	2016-02-06 18:33:16.815085+00	2016-02-06 18:30:51.959+00	[["nicolas", "1454783459371"], ["jose", "1454783469656"], ["cordillera", "1454783478791"], ["andes", "1454783484282"], ["acompa\\u00f1ado", "1454783520019"], ["mula", "1454783526802"]]
1747	25	108	2016-02-06 18:34:25.236951+00	2016-02-06 18:32:11.074+00	[["inmigrantes", "1454783539121"], ["leales", "1454783549454"], ["apoyan", "1454783557595"], ["siempre", "1454783565393"], ["situaciones", "1454783586586"], ["momento", "1454783595237"]]
1748	25	122	2016-02-06 18:35:40.86565+00	2016-02-06 18:33:19.054+00	[["amor", "1454783606099"], ["ordena", "1454783613319"], ["pide", "1454783619030"], ["trabajar", "1454783627874"], ["juan", "1454783634067"], ["sierva", "1454783649704"], ["dedicacion", "1454783670818"]]
1749	25	46	2016-02-06 18:36:34.162254+00	2016-02-06 18:34:34.218+00	[["estamos", "1454783681878"], ["capitan", "1454783697997"], ["calla", "1454783710365"], ["manda", "1454783718093"], ["marinero", "1454783724636"]]
1750	25	75	2016-02-06 18:37:41.29218+00	2016-02-06 18:35:28.064+00	[["ni\\u00f1os", "1454783738150"], ["magos", "1454783744112"], ["regalan", "1454783751796"], ["juguetes", "1454783760977"], ["lindos", "1454783775432"], ["ni\\u00f1os", "1454783783326"], ["chicos", "1454783791253"]]
1751	25	53	2016-02-06 18:38:34.918431+00	2016-02-06 18:36:34.874+00	[["casa", "1454783799210"], ["paseamos", "1454783813903"], ["muebles", "1454783821962"], ["cohete", "1454783832792"], ["abajo", "1454783839071"], ["berlin", "1454783845409"]]
1752	25	16	2016-02-06 18:39:32.091455+00	2016-02-06 18:37:29.771+00	[["que", "1454783856300"], ["no", "1454783860116"], ["ven", "1454783865764"], ["corazon", "1454783871725"], ["que ", "1454783891871"], ["no", "1454783897482"], ["ven", "1454783902004"]]
1753	25	109	2016-02-06 18:40:55.510094+00	2016-02-06 18:38:26.241+00	[["ciudad", "1454783916686"], ["duele", "1454783926506"], ["mosquito", "1454783934000"], ["alima\\u00f1as", "1454783958334"], ["infectan", "1454783969137"], ["infectar", "1454783978569"], ["mortal", "1454783985499"]]
1754	25	40	2016-02-06 18:41:29.942805+00	2016-02-06 18:39:48.59+00	[["buen", "1454784000071"], ["entendedor", "1454784008918"], ["pocas", "1454784013721"], ["palabras", "1454784020415"]]
1755	25	11	2016-02-06 18:42:16.495119+00	2016-02-06 18:40:24.137+00	[["casa", "1454784028830"], ["de", "1454784031880"], ["herrero", "1454784037408"], ["cuchillo", "1454784043172"], ["de ", "1454784060087"], ["palo", "1454784066555"]]
1756	25	42	2016-02-06 18:42:55.814648+00	2016-02-06 18:41:10.853+00	[["bueno", "1454784084645"], ["callar", "1454784094974"], ["que", "1454784100502"], ["curar", "1454784106293"]]
1757	25	102	2016-02-06 18:44:20.683724+00	2016-02-06 18:41:49.25+00	[["buen", "1454784138263"], ["le", "1454784145020"], ["gusta", "1454784149974"], ["plata", "1454784157397"], ["dinero", "1454784176217"], ["pago", "1454784182956"], ["nuevo", "1454784190735"]]
1758	25	54	2016-02-06 20:36:29.895078+00	2016-02-06 20:34:33.698+00	[["pais", "1454790893136"], ["guerra", "1454790900964"], ["guerra", "1454790907000"], ["guerra", "1454790913699"], ["mundial", "1454790920378"]]
1759	25	52	2016-02-06 20:37:15.023097+00	2016-02-06 20:35:25.124+00	[["necesitamos", "1454790942433"], ["hombres", "1454790950237"], ["conducen", "1454790957875"], ["a", "1454790960455"], ["roma", "1454790966000"]]
1760	25	95	2016-02-06 20:38:33.186072+00	2016-02-06 20:36:09.074+00	[["caballo", "1454790978607"], ["le", "1454791000554"], ["regalan", "1454791009449"], ["comer", "1454791015366"], ["peliculas", "1454791024364"], ["de", "1454791031236"], ["domingos", "1454791043596"]]
1761	25	93	2016-02-06 20:39:18.662044+00	2016-02-06 20:37:26.779+00	[["elige", "1454791053355"], ["una", "1454791060697"], ["mascota", "1454791065669"], ["en", "1454791072202"], ["en", "1454791078144"], ["la", "1454791081078"], ["subte", "1454791089630"]]
1762	25	107	2016-02-06 20:40:54.702182+00	2016-02-06 20:38:13.269+00	[["niegues", "1454791101622"], ["a", "1454791109523"], ["sus", "1454791115071"], ["ordenes", "1454791122124"], ["adeudadas", "1454791141306"], ["deudas", "1454791176552"], ["empresa", "1454791185105"]]
1763	25	126	2016-02-06 20:42:06.433066+00	2016-02-06 20:39:48.946+00	[["va", "1454791194482"], ["miente", "1454791204079"], ["mentido", "1454791212300"], ["acuerdos", "1454791224156"], ["a ", "1454791238746"], ["nadie", "1454791246202"], ["hermanos", "1454791256951"]]
1764	25	41	2016-02-06 20:43:04.361236+00	2016-02-06 20:41:23.699+00	[["ni\\u00f1o", "1454791289803"], ["no", "1454791294100"], ["ultimo", "1454791303004"], ["rie", "1454791308764"], ["mejor", "1454791315325"]]
1765	25	64	2016-02-06 20:44:05.339721+00	2016-02-06 20:41:58.82+00	[["quien", "1454791334446"], ["y", "1454791342253"], ["remo", "1454791346340"], ["remo", "1454791353251"], ["los", "1454791360542"], ["alimento", "1454791367690"], ["una", "1454791372677"], ["loba", "1454791376317"]]
1766	25	58	2016-02-06 20:45:00.880583+00	2016-02-06 20:42:59.907+00	[["cantaro", "1454791395024"], ["es", "1454791401259"], ["un", "1454791405184"], ["hueso", "1454791409834"], ["grande", "1454791417662"], ["la", "1454791425128"], ["jardin", "1454791431838"]]
1767	25	20	2016-02-06 20:45:41.251893+00	2016-02-06 20:43:55.404+00	[["el", "1454791440288"], ["bien", "1454791445269"], ["sin", "1454791449260"], ["mirar", "1454791453740"], ["a quien", "1454791463937"], ["quien", "1454791471812"]]
1768	25	100	2016-02-06 20:46:25.065318+00	2016-02-06 20:44:38.906+00	[["quiere", "1454791487214"], ["quiere", "1454791494610"], ["a", "1454791499303"], ["a", "1454791504638"], ["a", "1454791508983"], ["medico", "1454791516028"]]
1769	25	71	2016-02-06 20:47:39.05942+00	2016-02-06 20:45:19.339+00	[["mi", "1454791525089"], ["malherido", "1454791541068"], ["ataco", "1454791554246"], ["la", "1454791557901"], ["nariz", "1454791563158"], ["por", "1454791572356"], ["vez", "1454791579248"], ["que", "1454791583587"], ["mentia", "1454791589511"]]
1770	25	44	2016-02-06 20:48:17.066423+00	2016-02-06 20:46:34.867+00	[["que", "1454791604298"], ["del", "1454791608694"], ["amo", "1454791612631"], ["engorda", "1454791619050"], ["el", "1454791621622"], ["ganado", "1454791628031"]]
1771	25	89	2016-02-06 20:49:09.11737+00	2016-02-06 20:47:11.974+00	[["es", "1454791644549"], ["el", "1454791649944"], ["estrellada", "1454791659442"], ["ma\\u00f1ana", "1454791668028"], ["ma\\u00f1ana", "1454791675971"], ["es", "1454791679558"]]
1772	25	59	2016-02-06 20:50:20.561245+00	2016-02-06 20:48:16.878+00	[["es", "1454791702919"], ["un", "1454791710471"], ["de", "1454791716340"], ["alguien", "1454791734429"], ["reyes", "1454791741812"], ["mosqueteros", "1454791751080"]]
1773	25	66	2016-02-06 20:55:15.148662+00	2016-02-06 20:49:14.074+00	[["se\\u00f1or", "1454791761158"], ["mucho", "1454791769990"], ["libre", "1454791777136"], ["de", "1454791780473"], ["culpa", "1454791786461"], ["que", "1454791792040"], ["tire ", "1454791798359"], ["primera", "1454791804112"], ["primera piedra", "1454792037830"], ["piedra", "1454792045650"]]
1774	25	47	2016-02-06 20:55:58.500686+00	2016-02-06 20:54:08.409+00	[["anda", "1454792054613"], ["amores", "1454792060277"], ["consuelo", "1454792067739"], ["de ", "1454792079412"], ["tontos", "1454792089465"]]
2005	29	34	2016-02-09 00:43:07.489536+00	2016-02-09 00:41:28.962+00	[["de", "1454978492098"], ["Roma", "1454978497376"], ["el", "1454978499403"], ["diablo ", "1454978505599"], ["se", "1454978512707"], ["asoma", "1454978515559"]]
1775	25	37	2016-02-06 20:56:48.316005+00	2016-02-06 20:54:52.22+00	[["amor", "1454792100072"], ["mucho", "1454792110958"], ["nunca", "1454792121201"], ["mata", "1454792126436"], ["a", "1454792130156"], ["hierro", "1454792134593"], ["muere", "1454792138795"]]
1776	25	13	2016-02-06 20:57:20.265679+00	2016-02-06 20:55:41.564+00	[["la", "1454792148126"], ["mucha", "1454792154032"], ["no", "1454792158406"], ["hay", "1454792162971"], ["pan", "1454792167026"], ["duro", "1454792171247"]]
1777	25	128	2016-02-06 20:58:21.45388+00	2016-02-06 20:56:14.616+00	[["dia", "1454792180611"], ["se", "1454792185956"], ["inesperadamente", "1454792202656"], ["golpear", "1454792213147"], ["la", "1454792220790"], ["los", "1454792225169"], ["amantes", "1454792231893"]]
1778	25	28	2016-02-06 20:58:49.937521+00	2016-02-06 20:57:15.434+00	[["gustos", "1454792244165"], ["no", "1454792247975"], ["hay", "1454792252778"], ["nada", "1454792256071"], ["escrito", "1454792260903"]]
1779	25	103	2016-02-06 20:59:32.916747+00	2016-02-06 20:57:44.004+00	[["va", "1454792269066"], ["miente", "1454792274498"], ["nada", "1454792281734"], ["ocurri\\u00f3", "1454792290871"], ["el", "1454792295785"], ["problema", "1454792303446"]]
1780	25	55	2016-02-06 21:00:08.387773+00	2016-02-06 20:58:26.352+00	[["veces", "1454792311855"], ["buenas", "1454792318073"], ["muertas", "1454792323565"], ["lleva", "1454792329341"], ["el", "1454792333508"], ["viento", "1454792339354"]]
1781	25	76	2016-02-06 21:00:39.95215+00	2016-02-06 20:59:02.688+00	[["reir", "1454792350068"], ["llorar", "1454792356839"], ["de", "1454792361115"], ["mas", "1454792364444"], ["cosas", "1454792370478"]]
1782	25	97	2016-02-06 21:01:19.703193+00	2016-02-06 20:59:33.513+00	[["dijo", "1454792380584"], ["quiere", "1454792387571"], ["con", "1454792392727"], ["de", "1454792396046"], ["ellos", "1454792404561"], ["mujer", "1454792410673"]]
1783	25	114	2016-02-06 21:02:17.59727+00	2016-02-06 21:00:13.963+00	[["chicos", "1454792424278"], ["respetan", "1454792432450"], ["ellos", "1454792440686"], ["no", "1454792445226"], ["medicina", "1454792452875"], ["a\\u00f1os", "1454792459888"], ["vacaciones", "1454792468121"]]
1784	25	123	2016-02-06 21:03:29.413163+00	2016-02-06 21:01:11.144+00	[["dijo", "1454792479885"], ["enoj\\u00f3", "1454792491336"], ["una ", "1454792500860"], ["una", "1454792506715"], ["en", "1454792520099"], ["la ", "1454792532477"], ["d\\u00eda", "1454792539903"]]
1785	25	85	2016-02-06 21:04:15.166047+00	2016-02-06 21:02:25.43+00	[["Roma", "1454792552907"], ["patio", "1454792558308"], ["las ", "1454792569029"], ["vacas", "1454792575536"], ["las", "1454792581407"], ["vacas", "1454792586132"]]
1786	25	45	2016-02-06 21:05:08.122432+00	2016-02-06 21:03:08.976+00	[["Buenos aires", "1454792602056"], ["las ", "1454792624645"], ["se", "1454792629311"], ["cuecen", "1454792634609"], ["habas", "1454792638656"]]
1787	25	124	2016-02-06 21:05:58.892288+00	2016-02-06 21:04:04.31+00	[["todas", "1454792650646"], ["casa", "1454792654309"], ["habitan", "1454792662394"], ["hay", "1454792667386"], ["comida", "1454792675998"], ["ricas", "1454792684270"], ["ricas", "1454792689865"]]
1788	25	116	2016-02-06 22:23:08.78145+00	2016-02-06 22:20:57.126+00	[["individuo", "1454797268860"], ["ser\\u00e1", "1454797276229"], ["de", "1454797280324"], ["vacaciones", "1454797304104"], ["a", "1454797310031"], ["la", "1454797313735"], ["playa", "1454797318689"]]
1789	25	120	2016-02-06 22:23:47.414413+00	2016-02-06 22:22:02.57+00	[["creen", "1454797328516"], ["son", "1454797332762"], ["cielo", "1454797339651"], ["est\\u00e1", "1454797345486"], ["gris", "1454797350209"], ["cubierto", "1454797357780"]]
1790	25	70	2016-02-06 22:25:33.809492+00	2016-02-06 22:22:41.118+00	[["humildad", "1454797368664"], ["h\\u00fameda", "1454797376555"], ["el", "1454797380969"], ["omb\\u00fa", "1454797387281"], ["grande", "1454797399638"], ["el", "1454797431212"], ["cultivos", "1454797444074"], ["las", "1454797453982"], ["monta\\u00f1a", "1454797463650"]]
1791	25	26	2016-02-06 22:26:55.080095+00	2016-02-06 22:24:27.237+00	[["verano", "1454797474538"], ["sur", "1454797483022"], ["de", "1454797491589"], ["los", "1454797495632"], ["tuertos", "1454797511196"], ["el", "1454797521716"], ["sordo", "1454797535813"], ["es", "1454797541093"], ["rey", "1454797544986"]]
1792	25	65	2016-02-06 22:27:26.352534+00	2016-02-06 22:25:47.975+00	[["o", "1454797551567"], ["no", "1454797554822"], ["ser", "1454797557915"], ["esa", "1454797563735"], ["es", "1454797566894"], ["la", "1454797569766"], ["cuestion", "1454797576721"]]
1793	25	15	2016-02-06 22:27:52.898708+00	2016-02-06 22:26:19.913+00	[["todos", "1454797586198"], ["necias", "1454797592710"], ["oidos", "1454797597985"], ["sordos", "1454797603290"]]
1794	25	117	2016-02-06 22:28:59.291994+00	2016-02-06 22:26:46.755+00	[["voz", "1454797611991"], ["es", "1454797616850"], ["todos", "1454797628572"], ["es", "1454797634296"], ["buena", "1454797639745"], ["se\\u00f1ora", "1454797651638"], ["buenaq", "1454797659916"], ["cocinera", "1454797669192"]]
1795	25	88	2016-02-06 22:29:28.126604+00	2016-02-06 22:27:52.408+00	[["chicos", "1454797681413"], ["no", "1454797685590"], ["creen", "1454797689807"], ["en", "1454797693616"], ["dios", "1454797698512"]]
1796	25	30	2016-02-06 22:30:03.074074+00	2016-02-06 22:28:21.802+00	[["creas", "1454797713152"], ["seguro", "1454797722099"], ["quien", "1454797727747"], ["pelea", "1454797732991"]]
1797	25	99	2016-02-06 22:31:16.48607+00	2016-02-06 22:28:56.837+00	[["cree", "1454797742744"], ["a", "1454797745823"], ["museo", "1454797753615"], ["pasado", "1454797767114"], ["a", "1454797774435"], ["su", "1454797778140"], ["amigos", "1454797786512"], ["lejanos", "1454797794889"], ["alemania", "1454797806378"]]
1798	25	17	2016-02-06 22:31:44.942231+00	2016-02-06 22:30:10.526+00	[["salir", "1454797817294"], ["madruga", "1454797823533"], ["dios", "1454797828803"], ["lo", "1454797831444"], ["ayuda", "1454797835264"]]
1799	25	110	2016-02-06 22:32:58.897795+00	2016-02-06 22:30:47.856+00	[["gusto", "1454797856695"], ["que", "1454797861809"], ["venir", "1454797868054"], ["que", "1454797873114"], ["lo", "1454797877249"], ["final", "1454797889641"], ["lo", "1454797893842"], ["di\\u00f3", "1454797902086"], ["dieron", "1454797908824"]]
1800	25	19	2016-02-06 22:33:54.264376+00	2016-02-06 22:31:52.151+00	[["es", "1454797921533"], ["tarde", "1454797926847"], ["en ", "1454797938426"], ["mano", "1454797943680"], ["que ", "1454797951976"], ["cien", "1454797957767"], ["volando", "1454797964652"]]
1801	25	25	2016-02-06 22:34:52.699215+00	2016-02-06 22:32:53.807+00	[["creas", "1454797980887"], ["nadie", "1454797987602"], ["que", "1454797992722"], ["por", "1454797998814"], ["bien no", "1454798012095"], ["no", "1454798017957"], ["venga", "1454798023061"]]
1802	25	60	2016-02-06 22:55:32.004277+00	2016-02-06 22:53:34.847+00	[["cries", "1454799238317"], ["a", "1454799242691"], ["que", "1454799248686"], ["no", "1454799251784"], ["puedas", "1454799256058"], ["cumplir", "1454799262402"]]
1803	25	39	2016-02-06 22:56:08.463294+00	2016-02-06 22:54:28.315+00	[["no", "1454799274026"], ["ira", "1454799278909"], ["se", "1454799282326"], ["vista", "1454799286819"], ["de", "1454799288912"], ["seda", "1454799291750"], ["la", "1454799295066"], ["mona", "1454799298382"]]
1804	25	21	2016-02-06 22:56:28.341399+00	2016-02-06 22:55:02.619+00	[["al", "1454799307496"], ["vale", "1454799312523"], ["por", "1454799315835"], ["dos", "1454799318722"]]
1805	25	67	2016-02-06 22:57:26.896873+00	2016-02-06 22:55:21.608+00	[["hombre", "1454799356569"], ["es", "1454799360638"], ["una", "1454799364161"], ["de", "1454799367347"], ["la", "1454799370486"], ["argentina", "1454799376871"]]
1806	25	94	2016-02-06 22:57:58.03557+00	2016-02-06 22:56:19.93+00	[["no", "1454799384484"], ["a", "1454799387979"], ["y", "1454799392142"], ["entorno", "1454799399823"], ["de", "1454799404701"], ["pie", "1454799408424"]]
1807	25	118	2016-02-06 22:58:57.871926+00	2016-02-06 22:56:51.698+00	[["la", "1454799418767"], ["guerra", "1454799424335"], ["todos", "1454799431115"], ["se", "1454799449347"], ["son", "1454799455509"], ["a", "1454799464015"], ["la", "1454799467848"]]
1808	25	83	2016-02-06 22:59:33.935401+00	2016-02-06 22:57:51.176+00	[["dia", "1454799478847"], ["hace", "1454799484340"], ["perjudicial", "1454799493827"], ["para", "1454799498197"], ["la", "1454799501004"], ["salud", "1454799504323"]]
1809	25	22	2016-02-06 23:00:01.973559+00	2016-02-06 22:58:27.217+00	[["roma", "1454799515437"], ["cerrada", "1454799521081"], ["no", "1454799524078"], ["entran", "1454799528118"], ["moscas", "1454799531943"]]
1810	25	72	2016-02-06 23:01:25.093581+00	2016-02-06 22:58:54.909+00	[["dia", "1454799541967"], ["reina", "1454799549670"], ["se", "1454799559214"], ["los", "1454799563638"], ["caballeros", "1454799571898"], ["de ", "1454799589294"], ["la", "1454799603744"], ["tabla", "1454799609390"], ["redonda", "1454799614982"]]
1811	25	68	2016-02-06 23:02:07.608525+00	2016-02-06 23:00:19.287+00	[["con", "1454799633034"], ["pan", "1454799638020"], ["con", "1454799640845"], ["el", "1454799643720"], ["sudor", "1454799647800"], ["de", "1454799651277"], ["tu", "1454799653992"], ["frente", "1454799657998"]]
1812	28	1	2016-02-08 03:23:11.886599+00	2016-02-08 03:20:33.383+00	[["gusto", "1454901667470"], ["intenso", "1454901686113"], ["alegria", "1454901702037"], ["nueces", "1454901720318"]]
1813	28	9	2016-02-08 03:25:29.550735+00	2016-02-08 03:22:11.181+00	[["sonrie", "1454901757243"], ["viste", "1454901776379"], ["el", "1454901789599"], ["tobillo", "1454901805865"], ["cuando", "1454901833524"], ["travieso", "1454901847256"], ["vez", "1454901857919"]]
1814	28	3	2016-02-08 03:26:25.087652+00	2016-02-08 03:24:26.038+00	[["recuerda", "1454901879858"], ["anda", "1454901894754"], ["mal", "1454901903447"], ["tremina", "1454901913714"]]
1815	28	21	2016-02-08 03:27:07.970895+00	2016-02-08 03:25:20.235+00	[["sano", "1454901934298"], ["vale", "1454901941623"], ["por", "1454901950150"], ["dos", "1454901956602"]]
1816	28	99	2016-02-08 03:29:12.409388+00	2016-02-08 03:26:00.309+00	[["refleja", "1454901979664"], ["la", "1454901987351"], ["parque", "1454901998015"], ["anterior", "1454902019836"], ["a", "1454902030329"], ["sus", "1454902037540"], ["amigos", "1454902047815"], ["lejanos", "1454902064996"], ["espa\\u00f1a", "1454902080807"]]
1817	28	123	2016-02-08 03:30:44.435798+00	2016-02-08 03:28:05.732+00	[["tomate", "1454902106766"], ["fue", "1454902117092"], ["con", "1454902128360"], ["su", "1454902136371"], ["su", "1454902152313"], ["mes", "1454902163036"], ["dia", "1454902172846"]]
1818	28	93	2016-02-08 03:32:40.020983+00	2016-02-08 03:29:38.191+00	[["camino", "1454902192162"], ["una", "1454902199725"], ["billetera", "1454902211947"], ["en", "1454902224217"], ["en", "1454902238653"], ["la", "1454902243770"], ["frente", "1454902288411"]]
1819	28	118	2016-02-08 03:34:28.89919+00	2016-02-08 03:31:35.815+00	[["la", "1454902305597"], ["siesta", "1454902321353"], ["escucho", "1454902336206"], ["adolescentes", "1454902356048"], ["aullaban", "1454902368128"], ["en", "1454902380904"], ["ladrar", "1454902397290"]]
1820	28	30	2016-02-08 03:35:41.387722+00	2016-02-08 03:33:22.113+00	[["interrumpas", "1454902419263"], ["libre", "1454902430405"], ["el", "1454902441038"], ["pelea", "1454902469785"]]
1821	28	57	2016-02-08 03:36:28.560067+00	2016-02-08 03:34:33.532+00	[["ni\\u00f1o", "1454902480750"], ["solo", "1454902493560"], ["un", "1454902502509"], ["animal", "1454902512215"], ["de", "1454902517200"]]
1822	28	107	2016-02-08 03:38:32.285434+00	2016-02-08 03:35:26.278+00	[["juegues", "1454902546697"], ["a", "1454902555200"], ["las", "1454902564590"], ["palabras", "1454902577743"], ["que", "1454902595152"], ["gastos", "1454902616150"], ["libreria", "1454902640694"]]
1823	28	85	2016-02-08 03:39:50.5805+00	2016-02-08 03:37:26.184+00	[["la", "1454902652976"], ["circo", "1454902662986"], ["orde\\u00f1aron", "1454902678932"], ["muchas", "1454902695611"], ["vacas", "1454902705614"], ["vacas", "1454902718961"]]
1824	28	77	2016-02-08 03:41:03.206171+00	2016-02-08 03:38:44.897+00	[["que", "1454902734570"], ["late", "1454902742690"], ["el", "1454902749019"], ["organo", "1454902759699"], ["vital", "1454902771838"], ["late", "1454902780505"], ["sangre", "1454902791641"]]
1825	28	127	2016-02-08 03:42:35.259209+00	2016-02-08 03:39:56.025+00	[["persona", "1454902810520"], ["tiene", "1454902822593"], ["ni\\u00f1o", "1454902852149"], ["aporta", "1454902863668"], ["su", "1454902872838"], ["propia", "1454902883694"]]
1826	28	110	2016-02-08 03:44:42.848117+00	2016-02-08 03:41:29.081+00	[["tengo", "1454902900947"], ["que", "1454902913566"], ["escribir", "1454902930012"], ["que", "1454902940293"], ["la", "1454902949739"], ["hacerlo", "1454902961848"], ["deistio", "1454902981428"], ["logro", "1454902996450"], ["permitieron", "1454903011247"]]
1827	28	120	2016-02-08 03:45:55.472794+00	2016-02-08 03:43:35.774+00	[["hombres", "1454903025426"], ["son", "1454903034470"], ["cartero", "1454903045695"], ["esta", "1454903055628"], ["nublado", "1454903066924"], ["nublado", "1454903083894"]]
1828	28	71	2016-02-08 03:47:53.418057+00	2016-02-08 03:44:48.991+00	[["traves", "1454903111609"], ["le", "1454903118222"], ["crecio", "1454903126242"], ["la", "1454903132325"], ["nariz", "1454903138248"], ["y ", "1454903172602"], ["vez", "1454903181276"], ["que", "1454903191592"], ["mentia", "1454903201826"]]
1829	28	60	2016-02-08 03:48:48.964294+00	2016-02-08 03:46:46.401+00	[["entres", "1454903215918"], ["a", "1454903223179"], ["que", "1454903230828"], ["no", "1454903235688"], ["puedas", "1454903245644"], ["cumplir", "1454903257591"]]
1830	28	78	2016-02-08 03:50:53.028872+00	2016-02-08 03:47:41.592+00	[["tienes", "1454903272263"], ["visitar", "1454903285707"], ["has", "1454903294095"], ["investiga", "1454903311358"], ["hagas", "1454903323327"], ["identicas", "1454903366222"], ["lo", "1454903375252"], ["mismi", "1454903381422"]]
1831	28	125	2016-02-08 03:52:05.536839+00	2016-02-08 03:49:45.009+00	[["alumnos", "1454903397101"], ["no", "1454903409834"], ["mijo", "1454903419783"], ["comida", "1454903436306"], ["de", "1454903443786"], ["mijo", "1454903453975"]]
1832	28	117	2016-02-08 03:53:46.597344+00	2016-02-08 03:50:58.161+00	[["sombra", "1454903470295"], ["se", "1454903478974"], ["juan", "1454903486243"], ["trabaja", "1454903498513"], ["docente", "1454903508206"], ["excelente", "1454903525745"], ["dinamica", "1454903541098"], ["cocinera", "1454903555018"]]
1833	28	39	2016-02-08 03:55:35.222982+00	2016-02-08 03:52:39.054+00	[["tardes", "1454903567511"], ["puerta", "1454903575741"], ["se", "1454903583694"], ["vista", "1454903591717"], ["de ", "1454903610882"], ["mona", "1454903634782"], ["mona", "1454903655237"], ["queda", "1454903663660"]]
1834	28	121	2016-02-08 03:57:06.132812+00	2016-02-08 03:54:27.32+00	[["tiene", "1454903682513"], ["dislocado", "1454903696309"], ["buenos", "1454903707085"], ["paciencia", "1454903718562"], ["por", "1454903731571"], ["la", "1454903746957"], ["ojos", "1454903754567"]]
1835	28	38	2016-02-08 03:59:05.733131+00	2016-02-08 03:55:57.964+00	[["tiempo", "1454903765616"], ["el", "1454903774956"], ["hombre", "1454903783995"], ["el", "1454903794128"], ["romperse", "1454903813561"], ["vertiente", "1454903828199"], ["que", "1454903841560"], ["se", "1454903847180"], ["hombre", "1454903857868"], ["se", "1454903866891"], ["rompe", "1454903874124"]]
1836	28	55	2016-02-08 04:00:06.217251+00	2016-02-08 03:57:57.583+00	[["maria", "1454903888354"], ["personas", "1454903898453"], ["de", "1454903905703"], ["lleva", "1454903921329"], ["el", "1454903926926"], ["viento", "1454903934642"]]
1837	28	76	2016-02-08 04:01:07.414818+00	2016-02-08 03:58:57.671+00	[["poco", "1454903946415"], ["digas", "1454903955228"], ["que", "1454903963707"], ["intereses", "1454903986416"], ["cosas", "1454903995843"]]
1838	28	23	2016-02-08 04:02:17.973384+00	2016-02-08 03:59:59.998+00	[["culpes", "1454904010940"], ["mucho", "1454904022795"], ["madrugar", "1454904031944"], ["se", "1454904043615"], ["amanece", "1454904055893"], ["temprano", "1454904066381"]]
1839	28	16	2016-02-08 04:03:25.941992+00	2016-02-08 04:01:11.793+00	[["verdes", "1454904083064"], ["mirais", "1454904096696"], ["ven", "1454904103923"], ["corazon", "1454904112982"], ["que", "1454904118222"], ["no", "1454904124855"], ["siente", "1454904134355"]]
1841	28	63	2016-02-08 04:05:05.317322+00	2016-02-08 04:02:54.056+00	[["valentin", "1454904190633"], ["cruzo", "1454904199949"], ["los", "1454904204679"], ["andes", "1454904210559"], ["a ", "1454904224874"], ["caballo", "1454904233681"]]
1842	28	31	2016-02-08 04:06:18.5508+00	2016-02-08 04:04:17.76+00	[["que", "1454904264392"], ["no", "1454904269626"], ["has", "1454904275359"], ["de", "1454904280199"], ["beber", "1454904286172"], ["dejala", "1454904295768"], ["correr", "1454904306955"]]
1843	28	104	2016-02-08 04:07:32.329799+00	2016-02-08 04:05:10.17+00	[["llovio", "1454904318141"], ["personalmente", "1454904335607"], ["nuestros", "1454904351256"], ["y", "1454904358633"], ["la", "1454904367358"], ["situacion", "1454904380708"]]
1844	28	128	2016-02-08 04:08:36.13758+00	2016-02-08 04:06:24.526+00	[["indice", "1454904396621"], ["de", "1454904403017"], ["a", "1454904408524"], ["repetirse", "1454904420349"], ["a", "1454904426907"], ["la", "1454904431110"], ["amigos", "1454904444569"]]
1845	28	113	2016-02-08 04:10:14.995007+00	2016-02-08 04:07:28.232+00	[["toda", "1454904455132"], ["le", "1454904460957"], ["le", "1454904466171"], ["hicieron", "1454904480988"], ["las", "1454904490503"], ["bonitas", "1454904503889"], ["discurso", "1454904526642"], ["texto", "1454904543314"]]
1846	28	28	2016-02-08 04:10:53.871509+00	2016-02-08 04:09:07.558+00	[["la", "1454904553027"], ["no", "1454904559620"], ["hay", "1454904563963"], ["nada", "1454904570136"], ["escrito", "1454904582483"]]
1847	28	40	2016-02-08 04:11:37.402171+00	2016-02-08 04:09:47.095+00	[["todos", "1454904598602"], ["entendedor", "1454904607985"], ["pocas", "1454904615241"], ["palabras", "1454904625831"]]
1848	28	83	2016-02-08 04:12:35.937642+00	2016-02-08 04:10:28.422+00	[["buen", "1454904639237"], ["no", "1454904647050"], ["perjudicial", "1454904663589"], ["para", "1454904669546"], ["la", "1454904674242"], ["salud", "1454904684555"]]
1849	28	95	2016-02-08 04:14:18.258009+00	2016-02-08 04:11:28.27+00	[["la", "1454904697181"], ["no", "1454904703381"], ["gusta", "1454904712174"], ["leer", "1454904720907"], ["peliculas", "1454904735537"], ["en", "1454904749133"], ["cinematrografos", "1454904786664"]]
1850	28	50	2016-02-08 04:15:30.062616+00	2016-02-08 04:13:10.669+00	[["tiene", "1454904802770"], ["contra", "1454904813183"], ["grecia", "1454904824840"], ["guerra", "1454904836556"], ["de", "1454904850625"], ["los", "1454904858455"]]
1851	28	42	2016-02-08 04:16:10.174787+00	2016-02-08 04:14:23.386+00	[["importante", "1454904873811"], ["saber", "1454904883132"], ["que", "1454904889671"], ["curar", "1454904898776"]]
1852	28	26	2016-02-08 04:17:39.89004+00	2016-02-08 04:15:02.582+00	[["la", "1454904908614"], ["hogar", "1454904917664"], ["hay", "1454904927533"], ["maria", "1454904941808"], ["unos", "1454904966237"], ["el", "1454904974284"], ["tuerto", "1454904981350"], ["es", "1454904985744"], ["el", "1454904988274"]]
1853	28	15	2016-02-08 04:18:49.756345+00	2016-02-08 04:16:33.469+00	[["traves", "1454905007483"], ["sonsas", "1454905021793"], ["oidos", "1454905051065"], ["sordos", "1454905058161"]]
1854	28	41	2016-02-08 04:19:40.770557+00	2016-02-08 04:17:43.336+00	[["ni\\u00f1o", "1454905072991"], ["madruga", "1454905082787"], ["siempre", "1454905098826"], ["rie", "1454905104731"], ["mejor", "1454905109363"]]
1855	28	108	2016-02-08 04:20:50.477771+00	2016-02-08 04:18:33.053+00	[["amigos", "1454905123235"], ["siempre", "1454905134097"], ["quieren", "1454905150414"], ["en", "1454905163490"], ["el", "1454905168970"], ["feo", "1454905178870"]]
1856	28	105	2016-02-08 04:21:46.80467+00	2016-02-08 04:19:44.227+00	[["torta", "1454905193489"], ["se", "1454905198683"], ["ambos", "1454905209833"], ["no", "1454905217695"], ["insignificante", "1454905235429"]]
1857	28	98	2016-02-08 04:22:47.342561+00	2016-02-08 04:20:39.529+00	[["puerta", "1454905248119"], ["me", "1454905255472"], ["bastante", "1454905266645"], ["filmarse", "1454905278440"], ["inesperada", "1454905295944"]]
1858	28	22	2016-02-08 04:23:24.516965+00	2016-02-08 04:21:39.958+00	[["boca", "1454905306597"], ["cerrada", "1454905313690"], ["no", "1454905319043"], ["entran", "1454905327356"], ["moscas", "1454905333129"]]
1859	28	119	2016-02-08 04:24:24.85288+00	2016-02-08 04:22:16.947+00	[["que", "1454905346112"], ["es", "1454905353268"], ["un", "1454905359028"], ["metal", "1454905366635"], ["preciosa", "1454905375118"], ["solicitado", "1454905393250"]]
1860	28	106	2016-02-08 04:25:11.093548+00	2016-02-08 04:23:17.118+00	[["corre", "1454905404915"], ["la", "1454905410789"], ["en", "1454905421192"], ["la", "1454905430312"], ["amigos", "1454905439698"]]
1861	28	46	2016-02-08 04:26:05.843854+00	2016-02-08 04:24:02.944+00	[["manda", "1454905461384"], ["capitan", "1454905471760"], ["no", "1454905479610"], ["manda", "1454905487426"], ["el", "1454905494220"]]
1862	28	129	2016-02-08 04:27:20.180282+00	2016-02-08 04:24:59.798+00	[["casa", "1454905505549"], ["hogar", "1454905522058"], ["se", "1454905528281"], ["sentencia", "1454905542819"], ["no", "1454905550027"], ["favorable", "1454905568573"]]
1863	28	100	2016-02-08 04:28:31.801538+00	2016-02-08 04:26:12.739+00	[["visito", "1454905582043"], ["llamo", "1454905589808"], ["una", "1454905598785"], ["al", "1454905614018"], ["a", "1454905623058"], ["oftelmologo", "1454905640197"]]
1864	28	33	2016-02-08 04:29:35.681206+00	2016-02-08 04:27:24.642+00	[["caras", "1454905653293"], ["palabras", "1454905682389"], ["amistad", "1454905694948"], ["amistad", "1454905704094"]]
1865	28	97	2016-02-08 04:31:02.930093+00	2016-02-08 04:28:27.936+00	[["poseia", "1454905721590"], ["tiene", "1454905731297"], ["con", "1454905741143"], ["caminando", "1454905766542"], ["muletas", "1454905781603"], ["jefe", "1454905791348"]]
1866	28	122	2016-02-08 04:32:24.003467+00	2016-02-08 04:29:55.388+00	[["que", "1454905803627"], ["de", "1454905809550"], ["presto", "1454905818787"], ["realizar", "1454905829353"], ["martin", "1454905841726"], ["servidumbre", "1454905859735"], ["limpiar", "1454905872418"]]
1867	28	64	2016-02-08 04:33:34.505286+00	2016-02-08 04:31:16.525+00	[["las", "1454905886270"], ["y", "1454905892185"], ["remo", "1454905902673"], ["remo", "1454905915906"], ["los", "1454905922949"], ["alimento", "1454905930475"], ["una", "1454905936448"], ["loba", "1454905942892"]]
1868	28	74	2016-02-08 04:34:53.649677+00	2016-02-08 04:32:26.58+00	[["boca", "1454905953554"], ["tirmpo", "1454905966584"], ["se", "1454905976154"], ["barro", "1454905984447"], ["cocina", "1454905995225"], ["se", "1454906004209"], ["pan", "1454906015582"], ["pan", "1454906022062"]]
1869	28	82	2016-02-08 04:35:54.895934+00	2016-02-08 04:33:45.994+00	[["la", "1454906032981"], ["llegamos", "1454906050977"], ["el", "1454906057724"], ["paciencia", "1454906083309"]]
1870	28	62	2016-02-08 04:37:18.925904+00	2016-02-08 04:34:47.787+00	[["que", "1454906096555"], ["temas", "1454906108635"], ["cami\\u00f1o", "1454906116828"], ["al", "1454906121384"], ["hace", "1454906143690"], ["al", "1454906148538"], ["al", "1454906161560"], ["andar", "1454906167317"]]
1871	28	49	2016-02-08 04:38:29.309998+00	2016-02-08 04:36:10.933+00	[["justifiques", "1454906199056"], ["lugar", "1454906207475"], ["llorar", "1454906222191"], ["peras", "1454906229281"], ["al", "1454906232854"], ["olmo", "1454906237687"]]
1872	28	94	2016-02-08 04:39:59.067197+00	2016-02-08 04:37:48.175+00	[["llega", "1454906278086"], ["un", "1454906285282"], ["de", "1454906293234"], ["paisaje", "1454906305355"], ["por", "1454906316804"], ["la", "1454906327457"]]
1873	28	34	2016-02-08 04:40:41.997135+00	2016-02-08 04:38:51.498+00	[["de", "1454906339003"], ["huelles", "1454906346763"], ["el", "1454906352873"], ["burro", "1454906359819"], ["se", "1454906365606"], ["asoma", "1454906370580"]]
1874	28	91	2016-02-08 04:42:25.435137+00	2016-02-08 04:39:35.476+00	[["solia", "1454906386218"], ["mucha", "1454906394951"], ["en", "1454906405227"], ["comparten", "1454906424360"], ["compa\\u00f1eros", "1454906447042"], ["inteligentes", "1454906473815"]]
1875	28	79	2016-02-08 04:43:10.670719+00	2016-02-08 04:41:17.162+00	[["que", "1454906483900"], ["es", "1454906489514"], ["envisible", "1454906501117"], ["a", "1454906504953"], ["los", "1454906511783"], ["ojos", "1454906519272"]]
1876	28	109	2016-02-08 04:44:47.667982+00	2016-02-08 04:42:02.528+00	[["rifa", "1454906530732"], ["del", "1454906536789"], ["vibora", "1454906557301"], ["clases", "1454906588723"], ["es", "1454906596366"], ["ser", "1454906603456"], ["venenosas", "1454906616026"]]
1877	28	18	2016-02-08 04:46:20.197809+00	2016-02-08 04:43:40.105+00	[["mal", "1454906628135"], ["regalado", "1454906639411"], ["no", "1454906645328"], ["hay", "1454906652371"], ["puede", "1454906663670"], ["puede", "1454906673663"], ["los", "1454906689429"], ["envases", "1454906708576"]]
1878	28	27	2016-02-08 04:47:21.208926+00	2016-02-08 04:45:13.114+00	[["trabajo", "1454906723525"], ["madruga", "1454906737051"], ["pan", "1454906750138"], ["que", "1454906757857"], ["le", "1454906763076"], ["cueste", "1454906769613"]]
1879	28	86	2016-02-08 04:48:12.093825+00	2016-02-08 04:46:13.504+00	[["por", "1454906782846"], ["a", "1454906787932"], ["la", "1454906793615"], ["muler", "1454906800578"], ["de", "1454906804285"], ["tu", "1454906807278"], ["projimo", "1454906820701"]]
1880	28	51	2016-02-08 04:49:19.210259+00	2016-02-08 04:47:04.727+00	[["casa", "1454906833024"], ["los", "1454906843447"], ["casas", "1454906854299"], ["son", "1454906869172"], ["muy", "1454906877732"], ["bajas", "1454906887605"]]
1881	28	90	2016-02-08 04:50:42.142067+00	2016-02-08 04:48:11.43+00	[["boca", "1454906899181"], ["tieda", "1454906913936"], ["del", "1454906921450"], ["maria", "1454906932624"], ["hay", "1454906940003"], ["tienen", "1454906955869"], ["electricidad", "1454906970481"]]
1882	28	87	2016-02-08 04:51:57.182783+00	2016-02-08 04:49:34.242+00	[["mariposas", "1454906987541"], ["no", "1454906993397"], ["ven", "1454907002687"], ["con", "1454907011096"], ["y", "1454907030836"], ["no", "1454907035929"], ["se", "1454907039452"], ["hacen", "1454907045595"]]
1883	28	126	2016-02-08 04:53:18.739846+00	2016-02-08 04:50:49.174+00	[["limpia", "1454907060634"], ["cocina", "1454907073971"], ["dejado", "1454907085527"], ["mal", "1454907096060"], ["a", "1454907101880"], ["nadie", "1454907109779"], ["padres", "1454907127132"]]
1884	28	72	2016-02-08 04:55:16.677375+00	2016-02-08 04:52:11.551+00	[["limon", "1454907141491"], ["tiene", "1454907154834"], ["lucho", "1454907164320"], ["los", "1454907174727"], ["cruxados", "1454907192109"], ["lucharon", "1454907215115"], ["la", "1454907227951"], ["cruz", "1454907234234"], ["cuadrada", "1454907245090"]]
1885	28	29	2016-02-08 04:56:27.596641+00	2016-02-08 04:54:11.841+00	[["que", "1454907263243"], ["quien", "1454907270723"], ["andas", "1454907278216"], ["y", "1454907282122"], ["te", "1454907286032"], ["dore", "1454907291386"], ["con", "1454907307658"], ["eres", "1454907315951"]]
1886	28	45	2016-02-08 04:57:13.982694+00	2016-02-08 04:55:19.311+00	[["tu", "1454907326306"], ["las", "1454907335014"], ["se", "1454907340843"], ["cuezen", "1454907352476"], ["habas", "1454907362561"]]
1887	28	19	2016-02-08 04:58:19.10591+00	2016-02-08 04:56:06.197+00	[["dinero", "1454907378627"], ["tarde", "1454907386707"], ["pajaro", "1454907402690"], ["en", "1454907405096"], ["que", "1454907413363"], ["cien", "1454907419156"], ["volando", "1454907427489"]]
1888	28	88	2016-02-08 04:59:07.919714+00	2016-02-08 04:57:14.05+00	[["dedos", "1454907445082"], ["no", "1454907452574"], ["creen", "1454907464647"], ["en", "1454907469897"], ["dios", "1454907476504"]]
1889	28	68	2016-02-08 04:59:55.563025+00	2016-02-08 04:57:59.986+00	[["el", "1454907485022"], ["pan", "1454907491721"], ["con", "1454907497974"], ["el", "1454907502443"], ["sudor", "1454907511016"], ["de", "1454907515786"], ["tu", "1454907517736"], ["frente", "1454907523946"]]
1890	28	44	2016-02-08 05:01:22.000305+00	2016-02-08 04:58:48.189+00	[["cielo", "1454907540055"], ["del", "1454907547962"], ["patron", "1454907562024"], ["enriquese", "1454907578841"], ["su", "1454907590040"], ["tesoro", "1454907610389"]]
1891	28	25	2016-02-08 05:02:10.321819+00	2016-02-08 05:00:14.591+00	[["tengas", "1454907621922"], ["peor", "1454907629805"], ["que", "1454907637061"], ["dure", "1454907643733"], ["cien", "1454907647601"], ["no", "1454907653587"], ["venga", "1454907658924"]]
1892	28	103	2016-02-08 05:03:33.274883+00	2016-02-08 05:01:02.944+00	[["y", "1454907669059"], ["viajo", "1454907686592"], ["que", "1454907695612"], ["llegar", "1454907710588"], ["un", "1454907718977"], ["problema", "1454907741623"]]
1893	28	81	2016-02-08 05:05:10.091848+00	2016-02-08 05:02:25.346+00	[["sabes", "1454907756319"], ["inquietes", "1454907769805"], ["por", "1454907780308"], ["vencida", "1454907791384"], ["cuando", "1454907801504"], ["pot", "1454907817520"], ["muerto", "1454907838496"]]
1894	28	84	2016-02-08 05:06:27.497314+00	2016-02-08 05:04:08.935+00	[["mal", "1454907855008"], ["luce", "1454907869831"], ["tomado", "1454907881607"], ["el", "1454907891274"], ["no", "1454907902690"], ["vino", "1454907915869"]]
1895	28	43	2016-02-08 05:07:20.622564+00	2016-02-08 05:05:21.423+00	[["llames", "1454907931845"], ["es", "1454907937768"], ["brilla", "1454907946855"], ["brilla", "1454907958595"], ["es", "1454907964417"], ["oro", "1454907969224"]]
1896	28	75	2016-02-08 05:08:32.800031+00	2016-02-08 05:06:13.134+00	[["amigos", "1454907984600"], ["magos", "1454907994586"], ["tren", "1454908005016"], ["regalos", "1454908015955"], ["al", "1454908026978"], ["los", "1454908034275"], ["ni\\u00f1os", "1454908041164"]]
1897	28	114	2016-02-08 05:09:52.086335+00	2016-02-08 05:07:24.663+00	[["ingleses", "1454908055550"], ["son", "1454908072096"], ["juan", "1454908080549"], ["se", "1454908091527"], ["en", "1454908103736"], ["las", "1454908111406"], ["vacaciones", "1454908120442"]]
1898	28	101	2016-02-08 05:11:10.47099+00	2016-02-08 05:08:43.357+00	[["tu", "1454908132368"], ["esta", "1454908142548"], ["dia", "1454908153297"], ["es", "1454908161644"], ["inestable", "1454908186636"], ["inestable", "1454908198822"]]
1899	28	20	2016-02-08 05:12:06.294746+00	2016-02-08 05:10:02.583+00	[["con", "1454908213138"], ["bien", "1454908220748"], ["sin", "1454908226608"], ["preguntar", "1454908238268"], ["a", "1454908247154"], ["quien", "1454908254877"]]
1900	28	24	2016-02-08 05:13:11.135827+00	2016-02-08 05:10:58.947+00	[["hagas", "1454908273753"], ["de", "1454908279139"], ["ma\\u00f1ana", "1454908289499"], ["lo", "1454908293029"], ["que", "1454908297799"], ["puedas", "1454908306015"], ["hacer", "1454908312438"], ["hoy", "1454908319514"]]
1901	28	56	2016-02-08 05:13:58.881482+00	2016-02-08 05:12:03.549+00	[["de", "1454908328931"], ["comer", "1454908337523"], ["para", "1454908354976"], ["de", "1454908360896"], ["hacer", "1454908367489"]]
1902	28	111	2016-02-08 05:15:30.138757+00	2016-02-08 05:13:36.78+00	[["que", "1454908424497"], ["de", "1454908430170"], ["magia", "1454908439776"], ["de", "1454908445949"], ["pa\\u00f1uelos", "1454908458515"]]
1903	28	96	2016-02-08 05:17:03.771154+00	2016-02-08 05:14:22.526+00	[["lectura", "1454908476381"], ["estaba", "1454908486818"], ["maria", "1454908496530"], ["queda", "1454908506127"], ["mucho", "1454908521086"], ["altillo", "1454908533706"], ["muy", "1454908542199"], ["grande", "1454908552151"]]
1904	28	36	2016-02-08 05:18:45.088816+00	2016-02-08 05:15:56.106+00	[["tener", "1454908567557"], ["lo", "1454908577686"], ["por", "1454908587239"], ["por", "1454908599172"], ["experiencia", "1454908624204"], ["que", "1454908636867"], ["por", "1454908646967"], ["sabio", "1454908653420"]]
1905	28	14	2016-02-08 05:20:58.426697+00	2016-02-08 05:17:39.568+00	[["alumbra", "1454908675139"], ["dio", "1454908682305"], ["vida", "1454908698241"], ["al", "1454908717701"], ["quienes", "1454908736720"], ["lo", "1454908748059"], ["tiene", "1454908774548"], ["dientes", "1454908786808"]]
1906	28	10	2016-02-08 05:21:49.756541+00	2016-02-08 05:19:50.23+00	[["levante", "1454908801754"], ["anda", "1454908809304"], ["mal", "1454908816887"], ["aprieta", "1454908838312"]]
1907	28	112	2016-02-08 05:23:55.544123+00	2016-02-08 05:20:41.94+00	[["ni\\u00f1os", "1454908851245"], ["tienen", "1454908866888"], ["divierten", "1454908882087"], ["con", "1454908897457"], ["vieron", "1454908906973"], ["al", "1454908918479"], ["acercarse", "1454908937185"], ["leones", "1454908963861"]]
1908	28	80	2016-02-08 05:25:22.754518+00	2016-02-08 05:22:48.315+00	[["que", "1454908981577"], ["tiene", "1454908999243"], ["tiene", "1454909009004"], ["ve", "1454909018385"], ["luego", "1454909028308"], ["de", "1454909032815"], ["una", "1454909040034"], ["tormente", "1454909051134"]]
1909	28	59	2016-02-08 05:26:31.630367+00	2016-02-08 05:24:16.285+00	[["y", "1454909067573"], ["un", "1454909076516"], ["de", "1454909090712"], ["los", "1454909098832"], ["cuatro", "1454909105772"], ["espadacines", "1454909119984"]]
1910	28	116	2016-02-08 05:27:47.629858+00	2016-02-08 05:25:25.599+00	[["dia", "1454909134887"], ["es", "1454909142124"], ["a", "1454909157240"], ["vacaciones", "1454909169449"], ["al", "1454909177615"], ["la", "1454909187414"], ["playa", "1454909196041"]]
1911	28	69	2016-02-08 05:29:14.671328+00	2016-02-08 05:26:39.843+00	[["es", "1454909207794"], ["un", "1454909215301"], ["de", "1454909225960"], ["los", "1454909231313"], ["magos", "1454909250837"], ["de", "1454909267476"], ["firmamento", "1454909283039"]]
1912	28	115	2016-02-08 05:30:51.675505+00	2016-02-08 05:28:09.147+00	[["trje", "1454909296181"], ["de", "1454909302034"], ["juan", "1454909309764"], ["se", "1454909317301"], ["ingeniero", "1454909328993"], ["estudiante", "1454909347532"], ["rural", "1454909364531"], ["reconocido", "1454909380007"]]
1913	28	66	2016-02-08 05:32:16.31109+00	2016-02-08 05:29:43.613+00	[["nido", "1454909392534"], ["come", "1454909400659"], ["libre", "1454909409273"], ["de", "1454909412943"], ["culpa", "1454909420207"], ["que", "1454909430176"], ["levante", "1454909442436"], ["la", "1454909448869"], ["primera", "1454909458152"], ["piedra", "1454909464675"]]
1914	28	47	2016-02-08 05:33:15.398869+00	2016-02-08 05:31:08.593+00	[["anda", "1454909479719"], ["chagas", "1454909490814"], ["bien", "1454909512676"], ["de", "1454909517243"], ["pocos", "1454909524004"]]
1915	28	67	2016-02-08 05:34:16.799541+00	2016-02-08 05:32:08.978+00	[["amor", "1454909536921"], ["es", "1454909545681"], ["un", "1454909552857"], ["de", "1454909566753"], ["la", "1454909572276"], ["mesopotamia", "1454909585388"]]
1916	28	52	2016-02-08 05:35:07.68405+00	2016-02-08 05:33:09.859+00	[["los", "1454909597510"], ["libros", "1454909607216"], ["conducen", "1454909617379"], ["a ", "1454909628791"], ["roma", "1454909636255"]]
1917	28	53	2016-02-08 05:36:15.931839+00	2016-02-08 05:34:00.027+00	[["casa", "1454909647471"], ["se", "1454909659797"], ["bombas", "1454909677037"], ["muro", "1454909684480"], ["de", "1454909689929"], ["berlin", "1454909704309"]]
1918	28	124	2016-02-08 05:37:47.720045+00	2016-02-08 05:35:08.606+00	[["varias", "1454909720955"], ["juventud", "1454909734034"], ["juan", "1454909743469"], ["hay", "1454909752927"], ["tertulias", "1454909770889"], ["tipicas", "1454909785845"], ["sabrosas", "1454909796071"]]
1919	28	37	2016-02-08 05:39:26.752452+00	2016-02-08 05:36:40.14+00	[["que", "1454909808767"], ["tiene", "1454909818210"], ["trabsjado", "1454909840837"], ["esta", "1454909854883"], ["mal", "1454909865479"], ["un", "1454909878954"], ["muere", "1454909895134"]]
1920	28	61	2016-02-08 05:40:49.967436+00	2016-02-08 05:38:18.902+00	[["todas", "1454909909303"], ["menor", "1454909917496"], ["pregunta", "1454909929275"], ["a ", "1454909959053"], ["un", "1454909968777"], ["medico", "1454909978320"]]
1921	28	58	2016-02-08 05:41:56.701225+00	2016-02-08 05:39:41.828+00	[["sobre", "1454909996029"], ["ladra", "1454910005506"], ["un", "1454910012902"], ["hueso", "1454910023488"], ["en", "1454910030941"], ["el", "1454910036828"], ["jardin", "1454910044524"]]
1922	28	32	2016-02-08 05:43:28.188044+00	2016-02-08 05:40:48.377+00	[["bien", "1454910059435"], ["que", "1454910066053"], ["debas", "1454910074123"], ["digo", "1454910089822"], ["y", "1454910098515"], ["lo", "1454910108232"], ["lo", "1454910118504"], ["que", "1454910124044"], ["yo", "1454910129724"], ["hago", "1454910135990"]]
1923	28	73	2016-02-08 05:44:14.144545+00	2016-02-08 05:42:23.392+00	[["fuego", "1454910152150"], ["maullaba", "1454910165376"], ["un", "1454910171116"], ["ratones", "1454910181199"]]
1924	28	89	2016-02-08 05:45:11.180921+00	2016-02-08 05:43:05.128+00	[["hare", "1454910197481"], ["lunes", "1454910212114"], ["de", "1454910219794"], ["y", "1454910225530"], ["ma\\u00f1ana", "1454910234040"], ["es", "1454910239526"]]
1925	28	13	2016-02-08 05:46:28.576409+00	2016-02-08 05:44:04.643+00	[["termine", "1454910254712"], ["cafe", "1454910267479"], ["hasta", "1454910280015"], ["importa", "1454910295374"], ["mucho", "1454910304924"], ["que", "1454910316963"]]
1926	28	11	2016-02-08 05:47:13.227861+00	2016-02-08 05:45:22.148+00	[["tu", "1454910328457"], ["de", "1454910334949"], ["maria", "1454910343889"], ["cuchillo", "1454910353318"], ["de", "1454910357743"], ["palo", "1454910361795"]]
1927	28	70	2016-02-08 05:49:26.666455+00	2016-02-08 05:46:05.718+00	[["nieve", "1454910376224"], ["es", "1454910383287"], ["grandes", "1454910396623"], ["ombu", "1454910409420"], ["y", "1454910427166"], ["los", "1454910435692"], ["\\u00f1andues", "1454910453804"], ["las", "1454910472770"], ["monta\\u00f1a", "1454910495016"]]
1928	28	48	2016-02-08 05:50:46.937798+00	2016-02-08 05:48:20.139+00	[["chanchos", "1454910526508"], ["que", "1454910534928"], ["tendras", "1454910545867"], ["haran", "1454910561353"], ["los", "1454910567610"], ["ojos", "1454910575270"]]
1929	28	65	2016-02-08 05:51:38.779367+00	2016-02-08 05:49:41.282+00	[["mayor", "1454910589939"], ["no", "1454910594914"], ["ser", "1454910600359"], ["esa", "1454910607362"], ["es", "1454910614058"], ["la", "1454910618704"], ["cuestion", "1454910627358"]]
1930	28	12	2016-02-08 05:52:20.352095+00	2016-02-08 05:50:31.131+00	[["tornero", "1454910645617"], ["de", "1454910655643"], ["buena", "1454910662649"], ["cara", "1454910668739"]]
1931	28	102	2016-02-08 05:53:38.523796+00	2016-02-08 05:51:13.472+00	[["tu", "1454910681209"], ["le", "1454910693875"], ["hicieron", "1454910706271"], ["in", "1454910713836"], ["su", "1454910721674"], ["diploma", "1454910736576"], ["nuevo", "1454910746853"]]
1932	28	92	2016-02-08 05:55:07.899824+00	2016-02-08 05:52:30.94+00	[["tiene", "1454910758736"], ["un", "1454910765192"], ["buena", "1454910776628"], ["para", "1454910788501"], ["estudiar", "1454910800720"], ["en", "1454910806367"], ["europa", "1454910814477"], ["universidad", "1454910836239"]]
1933	28	54	2016-02-08 05:55:57.606561+00	2016-02-08 05:54:00.215+00	[["tiene", "1454910850949"], ["las", "1454910857558"], ["segunda", "1454910869794"], ["guerra", "1454910877501"], ["mundial", "1454910886194"]]
1934	28	17	2016-02-08 05:56:42.503918+00	2016-02-08 05:54:50.995+00	[["rio", "1454910899713"], ["gana", "1454910912773"], ["dios", "1454910919969"], ["lo", "1454910922662"], ["ayuda", "1454910930855"]]
1935	25	121	2016-02-08 12:43:16.179914+00	2016-02-08 12:40:55.236+00	[["come", "1454935264765"], ["ganas", "1454935273042"], ["buen", "1454935282452"], ["plata", "1454935289267"], ["nocturna", "1454935301880"], ["negocios", "1454935315652"], ["ojos", "1454935323396"]]
1936	25	74	2016-02-08 12:44:19.672953+00	2016-02-08 12:42:08.827+00	[["buenos", "1454935340399"], ["pais", "1454935346961"], ["se", "1454935353695"], ["barro", "1454935360737"], ["panaderia", "1454935369929"], ["se", "1454935374174"], ["pan", "1454935381335"], ["pan", "1454935386921"]]
1937	25	129	2016-02-08 12:45:10.937493+00	2016-02-08 12:43:13.959+00	[["sintesis", "1454935404795"], ["pais", "1454935410253"], ["de", "1454935413748"], ["gente", "1454935423145"], ["es", "1454935429853"], ["unanime", "1454935438611"]]
1938	25	111	2016-02-08 12:45:46.763648+00	2016-02-08 12:44:02.937+00	[["hombre", "1454935449044"], ["sin", "1454935453190"], ["magia", "1454935459432"], ["buenos", "1454935468813"], ["las", "1454935474024"]]
1939	25	96	2016-02-08 12:46:29.500534+00	2016-02-08 12:44:37.722+00	[["sed", "1454935482460"], ["es", "1454935485871"], ["marta", "1454935491052"], ["es", "1454935495656"], ["garage", "1454935501238"], ["patio", "1454935507607"], ["muy", "1454935512730"], ["grande", "1454935517164"]]
2006	29	57	2016-02-09 00:43:30.83728+00	2016-02-09 00:41:59.865+00	[["que", "1454978526383"], ["que", "1454978530759"], ["un", "1454978534012"], ["animla", "1454978537169"], ["de", "1454978539204"]]
1940	25	62	2016-02-08 12:47:09.679044+00	2016-02-08 12:45:23.457+00	[["no", "1454935527653"], ["hay", "1454935531294"], ["camino", "1454935536601"], ["se", "1454935539498"], ["hace", "1454935543319"], ["camino", "1454935547933"], ["el", "1454935550237"], ["andar", "1454935556932"]]
1941	25	31	2016-02-08 12:47:51.928695+00	2016-02-08 12:46:01.653+00	[["que", "1454935567376"], ["no", "1454935570496"], ["has ", "1454935580669"], ["de", "1454935585365"], ["beber", "1454935589129"], ["dejala", "1454935595528"], ["correr", "1454935599595"]]
1942	24	11	2016-02-08 20:57:37.993527+00	2016-02-08 20:55:21.036+00	[["aquel", "1454964937940"], ["paterna", "1454964957701"], ["campo", "1454964969148"], ["cuchillo", "1454964978210"], ["de", "1454964980499"], ["palo", "1454964983985"]]
1943	24	44	2016-02-08 20:58:18.514713+00	2016-02-08 20:56:27.622+00	[["ave", "1454964995483"], ["del", "1454965002360"], ["patron", "1454965010511"], ["engorda", "1454965019044"], ["el", "1454965021591"], ["ganado", "1454965024722"]]
1944	24	58	2016-02-08 20:59:43.91712+00	2016-02-08 20:57:09.278+00	[["perro", "1454965040530"], ["flaco", "1454965047463"], ["la ", "1454965086784"], ["hueso", "1454965096368"], ["en", "1454965103941"], ["la", "1454965106359"], ["cucha", "1454965110461"]]
1945	24	109	2016-02-08 21:00:55.128478+00	2016-02-08 20:58:34.633+00	[["casa", "1454965126814"], ["del", "1454965131449"], ["mosquito", "1454965137730"], ["v\\u00edvoras", "1454965153189"], ["hacen ", "1454965166625"], ["causar", "1454965176337"], ["grave", "1454965181665"]]
1946	24	33	2016-02-08 21:01:27.914556+00	2016-02-08 20:59:45.235+00	[["claras", "1454965191031"], ["conservan", "1454965199209"], ["la ", "1454965207948"], ["amistad", "1454965214635"]]
1947	24	30	2016-02-08 21:02:17.654554+00	2016-02-08 21:00:19.244+00	[["engaq\\u00f1e", "1454965233244"], ["bien", "1454965243573"], ["quien ", "1454965256711"], ["pelea", "1454965263614"]]
1948	24	48	2016-02-08 21:02:49.354503+00	2016-02-08 21:01:07.791+00	[["cuervos", "1454965277733"], ["y", "1454965281604"], ["te", "1454965283967"], ["sacar\\u00e1n", "1454965290215"], ["los", "1454965293301"], ["ojos", "1454965296121"]]
1949	24	55	2016-02-08 21:03:54.963976+00	2016-02-08 21:01:40.617+00	[["perro", "1454965311719"], ["grandes", "1454965328766"], ["se", "1454965338174"], ["lleva ", "1454965349500"], ["el", "1454965356669"], ["viento", "1454965360936"]]
1950	24	37	2016-02-08 21:04:44.004912+00	2016-02-08 21:02:45.262+00	[["que", "1454965371726"], ["madruga", "1454965376199"], ["hierro", "1454965383290"], ["mata", "1454965386856"], ["a ", "1454965398835"], ["hierro", "1454965407480"], ["muere", "1454965410758"]]
1951	24	74	2016-02-08 21:05:56.07011+00	2016-02-08 21:03:34.601+00	[["boca", "1454965422294"], ["ocaso", "1454965439989"], ["se ", "1454965452843"], ["barro", "1454965460702"], ["vida", "1454965465661"], ["se ", "1454965473749"], ["el", "1454965480053"], ["pan", "1454965482485"]]
1952	24	21	2016-02-08 21:06:31.924967+00	2016-02-08 21:04:46.519+00	[["precabido", "1454965497517"], ["sirve", "1454965509348"], ["por", "1454965516210"], ["dos", "1454965518663"]]
1953	24	10	2016-02-08 21:07:02.403622+00	2016-02-08 21:05:23.566+00	[["madruga", "1454965534508"], ["abarca", "1454965540203"], ["poco", "1454965543663"], ["aprieta", "1454965548390"]]
1954	24	90	2016-02-08 21:08:43.710397+00	2016-02-08 21:05:58.554+00	[["boca", "1454965566336"], ["batalla", "1454965576680"], ["del ", "1454965588902"], ["herrero", "1454965595781"], ["el", "1454965630163"], ["se", "1454965639039"], ["miseria", "1454965650230"]]
1955	24	106	2016-02-08 21:09:28.158134+00	2016-02-08 21:07:36.455+00	[["corre", "1454965664037"], ["un ", "1454965673647"], ["fuerte", "1454965681159"], ["recibir", "1454965689319"], ["amigos", "1454965694914"]]
1956	24	86	2016-02-08 21:10:29.537184+00	2016-02-08 21:08:18.943+00	[["juegues", "1454965707186"], ["la ", "1454965727418"], ["la", "1454965731900"], ["mujer", "1454965736339"], ["de", "1454965738590"], ["tu", "1454965741075"], ["projimo", "1454965752065"]]
1957	24	50	2016-02-08 21:11:26.017618+00	2016-02-08 21:09:18.02+00	[["y", "1454965776159"], ["contra", "1454965781604"], ["Roma", "1454965790814"], ["guerra", "1454965799954"], ["de\\u00f1", "1454965804951"], ["Roma", "1454965812753"]]
1958	24	53	2016-02-08 21:12:18.855213+00	2016-02-08 21:10:17.472+00	[["boca", "1454965824817"], ["hay", "1454965829502"], ["la ", "1454965840749"], ["primer", "1454965853044"], ["de", "1454965857503"], ["Berl\\u00edn", "1454965864990"]]
1959	24	18	2016-02-08 21:13:08.834619+00	2016-02-08 21:11:09.859+00	[["donde", "1454965884490"], ["regalado", "1454965896538"], ["no", "1454965899617"], ["se", "1454965900826"], ["le", "1454965903065"], ["miran", "1454965906369"], ["los", "1454965907552"], ["dientes", "1454965915369"]]
1960	24	62	2016-02-08 21:13:38.912882+00	2016-02-08 21:11:59.761+00	[["no", "1454965925287"], ["hay", "1454965928287"], ["camino", "1454965931723"], ["se", "1454965935154"], ["hace", "1454965937285"], ["camino", "1454965940215"], ["al", "1454965942608"], ["andar", "1454965945650"]]
1961	24	39	2016-02-08 21:40:16.527468+00	2016-02-08 21:38:13.717+00	[["llueva", "1454967503065"], ["lluvia", "1454967514924"], ["vista", "1454967523658"], ["vista", "1454967529937"], ["de", "1454967532085"], ["seda", "1454967534020"], ["mona", "1454967539047"], ["queda", "1454967542986"]]
1962	24	40	2016-02-08 21:40:55.082728+00	2016-02-08 21:39:08.073+00	[["perro", "1454967555270"], ["entendedor", "1454967562916"], ["pocas", "1454967570914"], ["palabraas", "1454967581719"]]
1963	24	12	2016-02-08 21:41:57.571956+00	2016-02-08 21:39:46.309+00	[["que", "1454967590557"], ["obrar", "1454967627085"], ["buena", "1454967640697"], ["cara", "1454967643491"]]
1964	24	119	2016-02-08 21:42:59.456931+00	2016-02-08 21:40:48.522+00	[["que", "1454967658729"], ["no", "1454967670975"], ["un ", "1454967682952"], ["metal", "1454967690847"], ["ductil", "1454967700095"], ["vil", "1454967705302"]]
1965	24	66	2016-02-08 21:44:01.940102+00	2016-02-08 21:41:51.626+00	[["qui", "1454967724066"], ["madruga", "1454967731596"], ["descontento", "1454967740590"], ["de", "1454967744347"], ["pecado", "1454967747942"], ["que", "1454967749930"], ["tire", "1454967753052"], ["la", "1454967755744"], ["primera", "1454967760287"], ["piedra", "1454967768417"]]
1966	24	77	2016-02-08 21:45:45.098012+00	2016-02-08 21:42:53.197+00	[["animal", "1454967813597"], ["contento", "1454967823243"], ["un ", "1454967836261"], ["m\\u00fasculo", "1454967844742"], ["muy", "1454967855850"], ["enamora", "1454967865092"], ["sangre", "1454967871550"]]
1967	24	112	2016-02-08 21:47:08.557996+00	2016-02-08 21:44:36.054+00	[["pecados", "1454967889521"], ["ser\\u00e1n ", "1454967899449"], ["acuestan", "1454967911265"], ["del", "1454967916247"], ["oscureci\\u00f3", "1454967927218"], ["el", "1454967941201"], ["una", "1454967948293"], ["payasos", "1454967955021"]]
1968	24	87	2016-02-08 21:48:12.346347+00	2016-02-08 21:46:00.671+00	[["palomas", "1454967986171"], ["claras", "1454967990930"], ["conservan", "1454968000122"], ["de", "1454968006572"], ["o", "1454968009748"], ["no", "1454968012023"], ["se", "1454968015275"], ["hacen", "1454968018768"]]
1969	24	24	2016-02-08 21:48:48.614846+00	2016-02-08 21:47:02.984+00	[["pierdo", "1454968029630"], ["para", "1454968035720"], ["ma\\u00f1ana", "1454968039577"], ["lo", "1454968042422"], ["que", "1454968044515"], ["puedes", "1454968047458"], ["hacer", "1454968051177"], ["hoy", "1454968055283"]]
1970	24	28	2016-02-08 22:02:12.283749+00	2016-02-08 21:47:39.359+00	[["llovido", "1454968844924"], ["no\\u00e7", "1454968847940"], ["hay", "1454968850763"], ["nada", "1454968852612"], ["escrito", "1454968858598"]]
1971	24	72	2016-02-08 22:03:49.263454+00	2016-02-08 22:01:02.675+00	[["zorro", "1454968889302"], ["manda", "1454968899137"], ["goberno", "1454968907568"], ["anastacia", "1454968914661"], ["moros", "1454968925809"], [" de", "1454968936643"], ["la", "1454968942915"], ["cama", "1454968949835"], ["redonda", "1454968955656"]]
1972	24	97	2016-02-08 22:04:42.507758+00	2016-02-08 22:02:41.136+00	[["gaviota", "1454968970463"], ["juega", "1454968979294"], ["por", "1454968984624"], ["en ", "1454968994738"], ["buena", "1454969001315"], ["mujer", "1454969009116"]]
1973	24	13	2016-02-08 22:05:36.434555+00	2016-02-08 22:03:33.239+00	[["triunfas", "1454969031869"], ["algo", "1454969046904"], ["no", "1454969050850"], ["hay", "1454969054636"], ["pan", "1454969057805"], ["duro", "1454969062829"]]
1974	24	107	2016-02-08 22:06:50.010317+00	2016-02-08 22:04:26.954+00	[["se", "1454969090964"], ["aquellos", "1454969099682"], ["las", "1454969104126"], ["palabras", "1454969109855"], ["dadas", "1454969117669"], ["aquel", "1454969125840"], ["sociedad", "1454969136372"]]
1975	24	127	2016-02-08 22:07:53.260633+00	2016-02-08 22:05:51.831+00	[["loco", "1454969158854"], ["dice", "1454969167655"], ["universo", "1454969177244"], ["tiene", "1454969185893"], ["un", "1454969191006"], ["fon\\u00e9tica", "1454969199100"]]
1976	24	73	2016-02-08 22:08:20.992155+00	2016-02-08 22:06:44.44+00	[["harag\\u00e1n", "1454969214885"], ["saca", "1454969223269"], ["a", "1454969225870"], ["un", "1454969227584"]]
1977	29	5	2016-02-09 00:26:07.674921+00	2016-02-09 00:24:05.232+00	[["luna", "1454977453322"], ["corta", "1454977466077"], ["filosa", "1454977471086"], ["instrumento", "1454977478773"], ["muerte", "1454977488024"], ["la", "1454977492290"], ["muerte", "1454977496026"]]
1978	29	3	2016-02-09 00:26:27.989209+00	2016-02-09 00:25:00.538+00	[["eres", "1454977506277"], ["anda", "1454977511029"], ["mal", "1454977513813"], ["acaba", "1454977516140"]]
1979	29	1	2016-02-09 00:26:54.651568+00	2016-02-09 00:25:19.14+00	[["gusto", "1454977528784"], ["y ", "1454977535364"], ["nueces", "1454977538129"], ["nueces", "1454977543029"]]
1980	29	72	2016-02-09 00:28:10.23367+00	2016-02-09 00:25:44.87+00	[["aire", "1454977549712"], ["tiene", "1454977555757"], ["fue", "1454977562611"], ["la", "1454977571055"], ["asistentes", "1454977598328"], ["de la ", "1454977608560"], ["la", "1454977611313"], ["tabla", "1454977614471"], ["redonda", "1454977618381"]]
1981	29	60	2016-02-09 00:28:40.491709+00	2016-02-09 00:27:00.584+00	[["hables", "1454977626967"], ["a", "1454977630197"], ["que", "1454977636030"], ["no", "1454977638487"], ["has", "1454977644202"], ["cumplir", "1454977648864"]]
1982	29	119	2016-02-09 00:29:25.318928+00	2016-02-09 00:27:31.708+00	[["que", "1454977658672"], ["reluce", "1454977665958"], ["pulido", "1454977673166"], ["elemento", "1454977680434"], ["dorado", "1454977688880"], ["valliso", "1454977693483"]]
1983	29	54	2016-02-09 00:29:45.295129+00	2016-02-09 00:28:16.289+00	[["es", "1454977698926"], ["la", "1454977701638"], ["guerra", "1454977704661"], ["guerra", "1454977708612"], ["mundil", "1454977713678"]]
1984	29	77	2016-02-09 00:30:25.595392+00	2016-02-09 00:28:35.585+00	[["viento", "1454977719881"], ["es", "1454977722551"], ["el", "1454977724207"], ["organo", "1454977729291"], ["primordial", "1454977737504"], ["bombea", "1454977743421"], ["autom\\u00e1ticamente", "1454977753929"]]
1985	29	44	2016-02-09 00:30:57.104604+00	2016-02-09 00:29:18.014+00	[["sol", "1454977761004"], ["es", "1454977765810"], ["hombre", "1454977773663"], ["engord", "1454977781129"], ["el", "1454977782941"], ["ganado", "1454977785472"]]
1986	29	88	2016-02-09 00:31:32.293107+00	2016-02-09 00:29:50.41+00	[["patos", "1454977799625"], ["no", "1454977802846"], ["creen", "1454977806904"], ["en Dios", "1454977815420"], ["Dios", "1454977820397"]]
1987	29	14	2016-02-09 00:32:15.105699+00	2016-02-09 00:30:22.687+00	[["es", "1454977825366"], ["orden\\u00f3", "1454977835826"], ["la", "1454977840048"], ["al", "1454977845117"], ["quien ", "1454977852301"], ["no", "1454977855912"], ["tiene", "1454977858960"], ["dientes", "1454977863461"]]
1988	29	112	2016-02-09 00:33:24.536046+00	2016-02-09 00:31:08.5+00	[["que", "1454977877227"], ["son", "1454977881277"], ["alegran", "1454977898725"], ["de", "1454977901566"], ["vieron", "1454977906454"], ["las", "1454977909479"], ["la", "1454977913932"], ["fantasmas", "1454977932693"]]
1989	29	62	2016-02-09 00:33:58.349702+00	2016-02-09 00:32:16.17+00	[["no", "1454977947088"], ["hay", "1454977949635"], ["camino", "1454977952901"], ["se", "1454977955153"], ["hace", "1454977960970"], ["camino", "1454977963366"], ["al", "1454977965062"], ["andar", "1454977966725"]]
1990	29	113	2016-02-09 00:35:13.859555+00	2016-02-09 00:32:49.146+00	[["quien", "1454977972764"], ["V", "1454977983085"], ["lo", "1454977985865"], ["movi\\u00f3", "1454977995224"], ["las", "1454978004831"], ["mentiras", "1454978014611"], ["argumento", "1454978037824"], ["cuento", "1454978041996"]]
1991	29	53	2016-02-09 00:35:45.556872+00	2016-02-09 00:34:07.098+00	[["la", "1454978050214"], ["todos", "1454978056889"], ["una", "1454978062196"], ["muro", "1454978068405"], ["de", "1454978069943"], ["Berlin", "1454978073930"]]
1992	29	30	2016-02-09 00:36:04.240389+00	2016-02-09 00:34:36.25+00	[["se", "1454978081871"], ["muerto", "1454978086310"], ["quien", "1454978089303"], ["pelea", "1454978092606"]]
1993	29	107	2016-02-09 00:36:47.40804+00	2016-02-09 00:34:54.962+00	[["hay", "1454978103959"], ["dichos", "1454978111129"], ["las", "1454978113703"], ["expresiones", "1454978120303"], ["y", "1454978125346"], ["la", "1454978130667"], ["rendici\\u00f3n", "1454978135482"]]
1994	29	127	2016-02-09 00:37:24.816528+00	2016-02-09 00:35:39.404+00	[["uno", "1454978143652"], ["tiene", "1454978148034"], ["mundo", "1454978155941"], ["tiene", "1454978160603"], ["su", "1454978163723"], ["gram\\u00e1tica", "1454978173169"]]
1995	29	11	2016-02-09 00:37:51.676431+00	2016-02-09 00:36:20.491+00	[["el", "1454978184126"], ["de", "1454978186998"], ["herrero", "1454978190680"], ["cuchillo", "1454978196183"], ["de", "1454978197160"], ["palo", "1454978199856"]]
1996	29	106	2016-02-09 00:38:13.449775+00	2016-02-09 00:36:42.577+00	[["el", "1454978206941"], ["una", "1454978210109"], ["en", "1454978212913"], ["la", "1454978217012"], ["invitados", "1454978221828"]]
1997	29	26	2016-02-09 00:38:46.303284+00	2016-02-09 00:37:05.482+00	[["la", "1454978228134"], ["patio", "1454978231958"], ["de", "1454978234917"], ["los", "1454978240170"], ["ciegos", "1454978243601"], ["el", "1454978246282"], ["tuerto", "1454978250604"], ["es", "1454978251830"], ["Rey", "1454978254676"]]
1998	29	24	2016-02-09 00:39:11.715087+00	2016-02-09 00:37:37.046+00	[["hay", "1454978262094"], ["que", "1454978265074"], ["ma\\u00f1ana", "1454978269004"], ["lo", "1454978270098"], ["que", "1454978273044"], ["puedes", "1454978275240"], ["hacer", "1454978277310"], ["hoy", "1454978279868"]]
1999	29	71	2016-02-09 00:39:51.134646+00	2016-02-09 00:38:04.591+00	[["buen", "1454978289025"], ["le", "1454978292688"], ["creci\\u00f3", "1454978297311"], ["la", "1454978299678"], ["nar\\u00edz", "1454978303332"], ["cuando", "1454978308002"], ["vez", "1454978311558"], ["que", "1454978313476"], ["ment\\u00eda", "1454978319478"]]
2000	29	93	2016-02-09 00:40:22.095022+00	2016-02-09 00:38:43.197+00	[["es", "1454978328430"], ["en", "1454978331560"], ["serpiente", "1454978339393"], ["con", "1454978342661"], ["en", "1454978345493"], ["el", "1454978347447"], ["suelo", "1454978350254"]]
2001	29	27	2016-02-09 00:40:47.509531+00	2016-02-09 00:39:14.18+00	[["mejor", "1454978360010"], ["adruga", "1454978364219"], ["celeste", "1454978369878"], ["que", "1454978372087"], ["le", "1454978373352"], ["cueste", "1454978375855"]]
2002	29	17	2016-02-09 00:41:12.886306+00	2016-02-09 00:39:39.576+00	[["que", "1454978382961"], ["madruga", "1454978386752"], ["Dios ", "1454978392887"], ["lo", "1454978397461"], ["ayuda", "1454978401208"]]
2003	29	121	2016-02-09 00:41:56.754395+00	2016-02-09 00:40:08.934+00	[["fue", "1454978415587"], ["un", "1454978418166"], ["chico", "1454978425486"], ["memoria", "1454978430878"], ["de", "1454978435061"], ["su", "1454978441769"], ["ojos", "1454978444894"]]
2004	29	129	2016-02-09 00:42:33.962077+00	2016-02-09 00:40:48.704+00	[["el", "1454978451596"], ["pais", "1454978454957"], ["de", "1454978459084"], ["jueza", "1454978469932"], ["de", "1454978475292"], ["muy", "1454978482318"]]
2007	29	50	2016-02-09 00:44:39.910116+00	2016-02-09 00:42:37.995+00	[["tiene", "1454978566565"], ["con", "1454978570955"], ["marte", "1454978586598"], ["guerra", "1454978597177"], ["Ponica", "1454978601858"], ["la", "1454978608068"]]
2008	29	118	2016-02-09 00:45:23.39696+00	2016-02-09 00:43:33.497+00	[["la", "1454978616164"], ["funci\\u00f3n", "1454978623231"], ["entro", "1454978629185"], ["no", "1454978633736"], ["aullan", "1454978643548"], ["a", "1454978648183"], ["cazar", "1454978651728"]]
2009	29	58	2016-02-09 00:45:54.078148+00	2016-02-09 00:44:14.217+00	[["pez", "1454978661424"], ["que", "1454978665212"], ["el", "1454978669002"], ["hueso", "1454978672564"], ["en", "1454978674705"], ["en", "1454978677752"], ["jard\\u00edn", "1454978682241"]]
2010	29	29	2016-02-09 00:46:27.286862+00	2016-02-09 00:44:46.052+00	[["con", "1454978695102"], ["quien", "1454978697690"], ["andas", "1454978700503"], ["y", "1454978702286"], ["te", "1454978703360"], ["dir\\u00e9", "1454978705675"], ["quien", "1454978712891"], ["eres", "1454978715643"]]
2011	29	109	2016-02-09 00:46:57.395066+00	2016-02-09 00:45:20.541+00	[["mariposa", "1454978725646"], ["de", "1454978727885"], ["aveja", "1454978730486"], ["ara\\u00f1as", "1454978736431"], ["es", "1454978739860"], ["ser", "1454978742063"], ["venenosa", "1454978745527"]]
2012	29	122	2016-02-09 00:47:44.149381+00	2016-02-09 00:45:49.429+00	[["palo", "1454978757334"], ["le", "1454978760251"], ["pidi\\u00f3", "1454978767148"], ["hacer", "1454978771815"], ["Jacinto", "1454978781415"], ["peonada", "1454978789319"], ["que", "1454978792515"]]
2013	29	56	2016-02-09 00:48:10.861043+00	2016-02-09 00:46:36.509+00	[["mucha", "1454978800917"], ["salir", "1454978808633"], ["en", "1454978812078"], ["de", "1454978814746"], ["hablar", "1454978819033"]]
2014	29	22	2016-02-09 00:48:31.534609+00	2016-02-09 00:47:01.894+00	[["boca", "1454978825007"], ["cerrada", "1454978829196"], ["no", "1454978833621"], ["entran", "1454978836551"], ["moscas", "1454978839902"]]
2015	29	73	2016-02-09 00:48:53.934863+00	2016-02-09 00:47:22.547+00	[["que", "1454978849741"], ["se", "1454978854164"], ["un", "1454978857257"], ["ratones", "1454978862299"]]
2016	29	98	2016-02-09 00:49:28.039273+00	2016-02-09 00:47:45.002+00	[["canilla", "1454978869982"], ["fue", "1454978873195"], ["mal", "1454978876599"], ["improviso", "1454978884631"], ["abrupta", "1454978896220"]]
2017	29	47	2016-02-09 00:49:53.74128+00	2016-02-09 00:48:18.684+00	[["bicho", "1454978906884"], ["muchos", "1454978912631"], ["consuelo", "1454978917481"], ["de", "1454978919103"], ["tontos", "1454978922123"]]
2018	29	25	2016-02-09 00:50:21.822178+00	2016-02-09 00:48:50.062+00	[["vale", "1454978933734"], ["que", "1454978936501"], ["que", "1454978939414"], ["por", "1454978943079"], ["bien", "1454978946514"], ["no", "1454978948052"], ["venga", "1454978950185"]]
2019	29	20	2016-02-09 00:50:40.309708+00	2016-02-09 00:49:12.641+00	[["bien", "1454978956613"], ["bien", "1454978959581"], ["sin", "1454978962119"], ["mirar", "1454978964824"], ["a", "1454978965902"], ["quien", "1454978968462"]]
2020	29	10	2016-02-09 00:51:07.302474+00	2016-02-09 00:49:32.576+00	[["mal", "1454978977146"], ["abarca", "1454978985610"], ["poco", "1454978991923"], ["aprieta", "1454978995681"]]
2021	29	43	2016-02-09 00:51:28.097487+00	2016-02-09 00:49:59.851+00	[["es", "1454979004167"], ["lo", "1454979007012"], ["que", "1454979009245"], ["reluce", "1454979012236"], ["es", "1454979014624"], ["oro", "1454979016469"]]
2022	29	19	2016-02-09 00:51:54.019139+00	2016-02-09 00:50:24.217+00	[["vale", "1454979027885"], ["p\\u00e1jaro", "1454979032420"], ["en", "1454979034790"], ["mano", "1454979036882"], ["aue", "1454979039132"], ["cien", "1454979040325"], ["volan", "1454979042533"]]
2023	29	64	2016-02-09 00:52:40.145652+00	2016-02-09 00:50:47.43+00	[["que", "1454979050879"], ["lo", "1454979056880"], ["Remo", "1454979065555"], ["Remo", "1454979074979"], ["los", "1454979077756"], ["cri\\u00f3", "1454979081253"], ["una", "1454979086203"], ["loba", "1454979088500"]]
2024	29	12	2016-02-09 00:53:06.217427+00	2016-02-09 00:51:32.216+00	[["m\\u00e1s", "1454979098386"], ["tiempo", "1454979109599"], ["buena", "1454979113105"], ["cara", "1454979114370"]]
2025	29	79	2016-02-09 00:53:28.335413+00	2016-02-09 00:51:56.925+00	[["que", "1454979120474"], ["es", "1454979123747"], ["invisible", "1454979129415"], ["a", "1454979130679"], ["los", "1454979132318"], ["ojos", "1454979136694"]]
2026	29	67	2016-02-09 00:53:56.406257+00	2016-02-09 00:52:20.299+00	[["alma", "1454979143588"], ["es", "1454979146125"], ["la", "1454979150981"], ["de", "1454979153806"], ["americ", "1454979156466"], ["provinci", "1454979164763"]]
2027	29	28	2016-02-09 00:54:22.828351+00	2016-02-09 00:52:48.349+00	[["heroes", "1454979174204"], ["no", "1454979177640"], ["hay", "1454979179633"], ["nada", "1454979182064"], ["escrito", "1454979190997"]]
2028	29	84	2016-02-09 00:55:19.418046+00	2016-02-09 00:53:32.177+00	[["mal", "1454979219183"], ["cree", "1454979227384"], ["podido", "1454979237214"], ["el", "1454979240798"], ["el", "1454979245325"], ["vino", "1454979247761"]]
2029	29	33	2016-02-09 00:55:38.33763+00	2016-02-09 00:54:11.677+00	[["ceuntas", "1454979256227"], ["conservan", "1454979262532"], ["la", "1454979264404"], ["amistad", "1454979266665"]]
2030	29	81	2016-02-09 00:56:08.742349+00	2016-02-09 00:54:28.93+00	[["hay", "1454979273267"], ["confies", "1454979278871"], ["por", "1454979283200"], ["vncido", "1454979287770"], ["ni", "1454979291164"], ["a\\u00fan", "1454979294286"], ["vencido", "1454979297064"]]
2031	29	59	2016-02-09 00:56:41.224369+00	2016-02-09 00:55:01.051+00	[["es", "1454979305440"], ["un", "1454979308485"], ["de", "1454979315655"], ["los", "1454979318056"], ["Mosqueteros", "1454979322844"], ["Mosqueteros", "1454979329395"]]
2032	29	75	2016-02-09 00:57:20.171886+00	2016-02-09 00:55:32.771+00	[["gatos", "1454979339006"], ["de", "1454979341752"], ["trajeron", "1454979347296"], ["regalos", "1454979352605"], ["a", "1454979355637"], ["el", "1454979360992"], ["ni\\u00f1os", "1454979368533"]]
2033	29	128	2016-02-09 00:58:06.432194+00	2016-02-09 00:56:22.263+00	[["que", "1454979389251"], ["es", "1454979391774"], ["a", "1454979394191"], ["traerlo", "1454979402135"], ["a", "1454979407698"], ["los", "1454979409747"], ["enamorados", "1454979414522"]]
2034	29	38	2016-02-09 00:58:39.309848+00	2016-02-09 00:56:58.157+00	[["el", "1454979420710"], ["el", "1454979423626"], ["c\\u00e1ntaro", "1454979427561"], ["a", "1454979428688"], ["l", "1454979430330"], ["fuente", "1454979432656"], ["que", "1454979434954"], ["se", "1454979436539"], ["rompe", "1454979441092"], ["se", "1454979444267"], ["rompe", "1454979447676"]]
2035	29	49	2016-02-09 00:59:02.291174+00	2016-02-09 00:57:32.272+00	[["tien", "1454979456762"], ["mal", "1454979459720"], ["que", "1454979462252"], ["por", "1454979463992"], ["bien", "1454979465480"], ["olmo", "1454979470657"]]
2036	29	13	2016-02-09 00:59:28.351014+00	2016-02-09 00:57:54.638+00	[["es", "1454979478164"], ["hambre", "1454979483338"], ["no", "1454979486032"], ["hay", "1454979491121"], ["pan", "1454979493568"], ["duro", "1454979496501"]]
2037	29	80	2016-02-09 01:00:19.280049+00	2016-02-09 00:58:40.717+00	[["ave", "1454979525906"], ["iris", "1454979529045"], ["es", "1454979531906"], ["una", "1454979534119"], ["por", "1454979539182"], ["de", "1454979541791"], ["la", "1454979543534"], ["lluvi", "1454979547636"]]
2038	29	63	2016-02-09 01:00:55.816095+00	2016-02-09 00:59:10.134+00	[["Valent\\u00edn", "1454979560293"], ["libert\\u00f3", "1454979568303"], ["los", "1454979570787"], ["andes", "1454979572510"], ["en", "1454979575346"], ["caballo", "1454979583989"]]
2039	29	124	2016-02-09 01:01:26.580703+00	2016-02-09 00:59:46.021+00	[["m\\u00e1s", "1454979591784"], ["casa", "1454979595315"], ["hay", "1454979598694"], ["hay", "1454979602107"], ["tortas", "1454979607286"], ["ligeras", "1454979611418"], ["ricas", "1454979614946"]]
2040	29	39	2016-02-09 01:02:03.877254+00	2016-02-09 01:00:18.609+00	[["llueva", "1454979624384"], ["suete", "1454979629574"], ["se ", "1454979641447"], ["vista", "1454979644345"], ["de", "1454979645637"], ["seda", "1454979647497"], ["mona", "1454979649999"], ["queda", "1454979651895"]]
2041	29	111	2016-02-09 01:02:23.526504+00	2016-02-09 01:00:54.236+00	[["que", "1454979657513"], ["ppropuso", "1454979663949"], ["un", "1454979666609"], ["con", "1454979670139"], ["las", "1454979672040"]]
2042	29	70	2016-02-09 01:03:25.538853+00	2016-02-09 01:01:14.804+00	[["carta", "1454979678922"], ["tien", "1454979684169"], ["el", "1454979691220"], ["omb\\u00fa", "1454979695499"], ["la", "1454979698063"], ["cordillera", "1454979703221"], ["otrs", "1454979716435"], ["cordillera", "1454979728501"], ["cordillera", "1454979733697"]]
2043	29	69	2016-02-09 01:04:02.752978+00	2016-02-09 01:02:16.683+00	[["es", "1454979739658"], ["un", "1454979742494"], ["\\u00e1ngel", "1454979745935"], ["los", "1454979750952"], ["\\u00e1ngeles", "1454979754849"], ["de", "1454979762880"], ["diablo", "1454979771117"]]
2044	29	97	2016-02-09 01:04:32.610571+00	2016-02-09 01:02:53.495+00	[["es", "1454979776128"], ["pudo", "1454979780826"], ["po", "1454979784990"], ["despu\\u00e9s", "1454979790720"], ["la", "1454979795063"], ["bicicleta", "1454979800680"]]
2045	29	40	2016-02-09 01:05:02.880688+00	2016-02-09 01:03:24.031+00	[["mayor", "1454979810896"], ["entendedor", "1454979825789"], ["pocas", "1454979828668"], ["palabras", "1454979831249"]]
2046	29	61	2016-02-09 01:05:33.047785+00	2016-02-09 01:03:53.503+00	[["el", "1454979836898"], ["situaci\\u00f3n", "1454979844092"], ["no", "1454979849457"], ["al", "1454979852118"], ["profesional", "1454979856648"], ["m\\u00e9dico", "1454979861391"]]
2047	29	123	2016-02-09 01:06:08.412969+00	2016-02-09 01:04:23.232+00	[["le", "1454979867316"], ["mueve", "1454979873117"], ["un", "1454979876159"], ["un", "1454979880934"], ["en", "1454979883907"], ["s\\u00e1bado", "1454979889763"], ["d\\u00eda", "1454979896778"]]
2048	29	86	2016-02-09 01:06:35.993529+00	2016-02-09 01:05:00.647+00	[["puede", "1454979903975"], ["que", "1454979906844"], ["tu", "1454979910536"], ["mujer", "1454979916216"], ["de", "1454979917806"], ["tu", "1454979919580"], ["pr\\u00f3jimo", "1454979924095"]]
2049	29	83	2016-02-09 01:06:56.947887+00	2016-02-09 01:05:26.686+00	[["sabio", "1454979930814"], ["es", "1454979933042"], ["perjudicial", "1454979939272"], ["para", "1454979941066"], ["la", "1454979942400"], ["salud", "1454979945309"]]
2050	29	115	2016-02-09 01:07:37.348924+00	2016-02-09 01:05:48.613+00	[["que", "1454979952702"], ["de", "1454979954834"], ["tu", "1454979957113"], ["es", "1454979961510"], ["mellizo", "1454979966291"], ["ingeniero", "1454979973654"], ["reconocido", "1454979979774"], ["prestigioso", "1454979985504"]]
2051	29	101	2016-02-09 01:08:08.515485+00	2016-02-09 01:06:27.392+00	[["ave", "1454979990891"], ["hay", "1454979996452"], ["aire", "1454980000230"], ["es", "1454980002442"], ["h\\u00famedo", "1454980008843"], ["h\\u00famedo", "1454980016889"]]
2052	29	55	2016-02-09 01:08:40.427125+00	2016-02-09 01:07:00.584+00	[["la", "1454980024792"], ["puertas", "1454980031633"], ["de", "1454980034697"], ["lleva", "1454980037973"], ["el", "1454980043127"], ["viento", "1454980048563"]]
2053	29	48	2016-02-09 01:08:59.483708+00	2016-02-09 01:07:31.271+00	[["cuervo", "1454980056443"], ["y", "1454980058572"], ["te", "1454980059599"], ["comer\\u00e1n", "1454980063148"], ["los", "1454980066062"], ["ojos", "1454980067844"]]
2054	29	66	2016-02-09 01:09:46.138132+00	2016-02-09 01:07:52.915+00	[["m\\u00e1s", "1454980082059"], ["mal", "1454980086667"], ["sin", "1454980091381"], ["de", "1454980093941"], ["pecado", "1454980096824"], ["que", "1454980099021"], ["arroje", "1454980101960"], ["la", "1454980104228"], ["primera", "1454980107790"], ["piedra", "1454980113498"]]
2055	29	35	2016-02-09 01:10:12.798796+00	2016-02-09 01:08:37.536+00	[["p\\u00e1jaro", "1454980124896"], ["que", "1454980128540"], ["mal", "1454980130701"], ["acompa\\u00f1ado", "1454980141144"]]
2056	29	85	2016-02-09 01:10:43.33175+00	2016-02-09 01:09:04.242+00	[["el", "1454980149195"], ["pato", "1454980154336"], ["hay", "1454980163281"], ["vacas", "1454980166586"], ["las", "1454980169197"], ["vacas", "1454980171688"]]
2057	29	78	2016-02-09 01:11:23.072047+00	2016-02-09 01:09:35.014+00	[["tiene", "1454980179274"], ["que", "1454980182864"], ["buenos", "1454980186963"], ["realiza", "1454980195436"], ["hagas", "1454980199026"], ["lo", "1454980201293"], ["lo", "1454980208626"], ["mismo", "1454980211403"]]
2058	29	45	2016-02-09 01:11:43.80411+00	2016-02-09 01:10:13.868+00	[["la", "1454980218462"], ["las", "1454980220737"], ["hay", "1454980224548"], ["puede", "1454980227961"], ["habas", "1454980232169"]]
2059	29	23	2016-02-09 01:12:09.09844+00	2016-02-09 01:10:34.308+00	[["hagas", "1454980238886"], ["mucho", "1454980243288"], ["madrugar", "1454980247093"], ["amanece", "1454980250629"], ["m\\u00e1s", "1454980253720"], ["temprano", "1454980257186"]]
2060	29	15	2016-02-09 01:12:25.600179+00	2016-02-09 01:10:59.356+00	[["quien", "1454980262526"], ["necias", "1454980266725"], ["oidos", "1454980271084"], ["sordos", "1454980274143"]]
2061	29	74	2016-02-09 01:12:56.80121+00	2016-02-09 01:11:17.318+00	[["el", "1454980279436"], ["pais", "1454980282134"], ["se", "1454980285637"], ["barro", "1454980291516"], ["vida", "1454980295036"], ["se", "1454980299170"], ["el", "1454980302736"], ["pan", "1454980305143"]]
2062	29	92	2016-02-09 01:13:26.732291+00	2016-02-09 01:11:48.806+00	[["se", "1454980311621"], ["el", "1454980315083"], ["beca", "1454980319199"], ["para", "1454980322640"], ["viajar", "1454980325500"], ["en", "1454980328605"], ["la", "1454980330829"], ["universidad", "1454980334909"]]
2063	29	94	2016-02-09 01:13:54.223811+00	2016-02-09 01:12:16.648+00	[["quiere", "1454980339740"], ["por", "1454980342855"], ["sin", "1454980345782"], ["tiempo", "1454980350977"], ["callado", "1454980356305"], ["pie", "1454980362591"]]
2064	29	96	2016-02-09 01:14:31.407958+00	2016-02-09 01:12:45.142+00	[["madre", "1454980368791"], ["est\\u00e1", "1454980374101"], ["juegos", "1454980378502"], ["est\\u00e1", "1454980382664"], ["una", "1454980385306"], ["balc\\u00f3n", "1454980391516"], ["enorme", "1454980395514"], ["bonito", "1454980399556"]]
2065	29	36	2016-02-09 01:15:16.014223+00	2016-02-09 01:13:22.572+00	[["poco", "1454980409699"], ["sabe", "1454980415501"], ["por", "1454980420656"], ["por", "1454980427651"], ["viejo", "1454980431259"], ["que", "1454980438952"], ["por", "1454980440971"], ["diablo", "1454980444338"]]
2066	29	120	2016-02-09 01:15:46.44271+00	2016-02-09 01:14:06.754+00	[["de", "1454980449177"], ["llueve", "1454980454665"], ["clima", "1454980459393"], ["est\\u00e1", "1454980463300"], ["nublado", "1454980467422"], ["despejado", "1454980474603"]]
2067	29	99	2016-02-09 01:16:29.736336+00	2016-02-09 01:14:43.685+00	[["tiene", "1454980487948"], ["al", "1454980490850"], ["museo", "1454980497643"], ["pasado", "1454980503721"], ["a", "1454980505131"], ["la", "1454980508159"], ["clientes", "1454980513255"], ["en", "1454980515935"], ["la", "1454980518090"]]
2068	29	51	2016-02-09 01:16:54.293052+00	2016-02-09 01:15:20.436+00	[["el", "1454980523880"], ["hace", "1454980529865"], ["focas", "1454980533311"], ["son", "1454980536266"], ["bajas", "1454980539346"], ["bajs", "1454980542395"]]
2069	29	68	2016-02-09 01:17:24.741625+00	2016-02-09 01:15:44.941+00	[["el", "1454980551935"], ["pan", "1454980554066"], ["con", "1454980556843"], ["el", "1454980560811"], ["sudor", "1454980563855"], ["de", "1454980565636"], ["tu", "1454980568759"], ["frente", "1454980573081"]]
2070	29	116	2016-02-09 01:17:53.35897+00	2016-02-09 01:16:15.476+00	[["me", "1454980579449"], ["e", "1454980583443"], ["al", "1454980586527"], ["viaje", "1454980591201"], ["al", "1454980593707"], ["mendoza", "1454980598340"], ["playa", "1454980601681"]]
2071	29	65	2016-02-09 01:18:25.346025+00	2016-02-09 01:16:45.299+00	[["inelligente", "1454980610627"], ["no", "1454980614691"], ["ser", "1454980616502"], ["es", "1454980618588"], ["es", "1454980620849"], ["la", "1454980628791"], ["cuesti\\u00f3n", "1454980633707"]]
2072	29	125	2016-02-09 01:18:59.058547+00	2016-02-09 01:17:17.841+00	[["ni\\u00f1os", "1454980641800"], ["vienen", "1454980649188"], ["las", "1454980651620"], ["fruta", "1454980659121"], ["de", "1454980661653"], ["najanjas", "1454980667177"]]
2073	29	114	2016-02-09 01:19:35.126109+00	2016-02-09 01:17:50.751+00	[["indios", "1454980677564"], ["de", "1454980679951"], ["los", "1454980682575"], ["salieron", "1454980691764"], ["en", "1454980694443"], ["el", "1454980697397"], ["vacaciones", "1454980703441"]]
2074	29	31	2016-02-09 01:19:55.882587+00	2016-02-09 01:18:26.474+00	[["que", "1454980709655"], ["no", "1454980711869"], ["has", "1454980714153"], ["de", "1454980715109"], ["beber", "1454980717169"], ["dejala", "1454980720726"], ["correr", "1454980724420"]]
2075	29	91	2016-02-09 01:20:21.846964+00	2016-02-09 01:18:46.944+00	[["es", "1454980729056"], ["un", "1454980731650"], ["en", "1454980734792"], ["navegan", "1454980744617"], ["de", "1454980746858"], ["river", "1454980749982"]]
2076	29	126	2016-02-09 01:20:49.719939+00	2016-02-09 01:19:12.516+00	[["es", "1454980754706"], ["fue", "1454980757629"], ["visto", "1454980761640"], ["una", "1454980766363"], ["a", "1454980771540"], ["nadie", "1454980774194"], ["hijos", "1454980778036"]]
2077	29	104	2016-02-09 01:21:12.615846+00	2016-02-09 01:19:40.98+00	[["fue", "1454980783830"], ["con", "1454980786818"], ["los", "1454980789339"], ["de", "1454980792593"], ["sus", "1454980795472"], ["talento", "1454980800940"]]
2078	29	103	2016-02-09 01:21:41.617923+00	2016-02-09 01:20:04.858+00	[["tien", "1454980808691"], ["fue", "1454980811508"], ["que", "1454980814236"], ["hacer", "1454980817104"], ["un", "1454980822211"], ["problema", "1454980829692"]]
2079	29	87	2016-02-09 01:22:16.67822+00	2016-02-09 01:20:32.069+00	[["nieves", "1454980837066"], ["son", "1454980839740"], ["olvidan", "1454980848472"], ["bien", "1454980853175"], ["o", "1454980857078"], ["mal", "1454980859670"], ["se", "1454980862269"], ["hacen", "1454980865004"]]
2080	29	89	2016-02-09 01:22:48.840643+00	2016-02-09 01:21:07.946+00	[["fueron", "1454980871535"], ["d\\u00eda", "1454980877606"], ["de", "1454980881106"], ["y ", "1454980888892"], ["ma\\u00f1ana", "1454980892920"], ["navidad", "1454980896971"]]
2081	29	42	2016-02-09 01:23:07.370801+00	2016-02-09 01:21:41.912+00	[["una", "1454980905562"], ["andar", "1454980910666"], ["que", "1454980913158"], ["lamentar", "1454980915720"]]
2082	29	52	2016-02-09 01:23:32.947119+00	2016-02-09 01:21:59.589+00	[["tiene", "1454980922602"], ["ni\\u00f1os", "1454980929543"], ["conducen", "1454980934177"], ["a", "1454980935179"], ["Roma", "1454980941300"]]
2083	29	76	2016-02-09 01:23:55.087254+00	2016-02-09 01:22:24.756+00	[["p\\u00e1jaro", "1454980951397"], ["dejes", "1454980955749"], ["de", "1454980957997"], ["lo", "1454980959978"], ["cosas", "1454980963236"]]
2084	29	21	2016-02-09 01:24:06.016596+00	2016-02-09 01:22:45.05+00	[["de", "1454980967835"], ["vale", "1454980971022"], ["por", "1454980972970"], ["dos", "1454980974388"]]
2085	29	41	2016-02-09 01:24:31.195427+00	2016-02-09 01:22:57.061+00	[["lugar", "1454980981103"], ["madruga", "1454980986681"], ["primero", "1454980990862"], ["rie", "1454980996294"], ["mejor", "1454980999552"]]
2086	29	105	2016-02-09 01:24:59.124257+00	2016-02-09 01:23:22.696+00	[["licha", "1454981007189"], ["termin\\u00f3", "1454981012611"], ["hoy", "1454981018365"], ["termin\\u00f3", "1454981023911"], ["sobre", "1454981027254"]]
2087	29	95	2016-02-09 01:25:27.693544+00	2016-02-09 01:23:50.594+00	[["la", "1454981033049"], ["le", "1454981035863"], ["gust\\u00f3", "1454981041456"], ["la", "1454981044290"], ["pel\\u00edculas", "1454981050024"], ["en", "1454981052798"], ["su", "1454981056030"]]
2088	29	46	2016-02-09 01:25:53.98459+00	2016-02-09 01:24:19.527+00	[["hay", "1454981062713"], ["capit\\u00e1n", "1454981067743"], ["no", "1454981071398"], ["mANDA", "1454981076859"], ["MARINERO", "1454981082338"]]
2089	29	82	2016-02-09 01:26:13.791489+00	2016-02-09 01:24:46.423+00	[["hay", "1454981090216"], ["fui", "1454981094750"], ["mi", "1454981098236"], ["paciencia", "1454981102328"]]
2090	29	102	2016-02-09 01:26:41.133536+00	2016-02-09 01:25:06.174+00	[["la", "1454981108711"], ["le", "1454981111226"], ["gustan", "1454981114723"], ["el", "1454981118172"], ["el", "1454981122220"], ["diploma", "1454981125830"], ["nuevo", "1454981129454"]]
2091	29	16	2016-02-09 01:27:00.468875+00	2016-02-09 01:25:31.941+00	[["que", "1454981134927"], ["no", "1454981137249"], ["ven", "1454981138500"], ["coraz\\u00f3n", "1454981142442"], ["que", "1454981144654"], ["no", "1454981146087"], ["sient", "1454981148788"]]
2092	29	37	2016-02-09 01:27:26.549157+00	2016-02-09 01:25:51.411+00	[["mal", "1454981154313"], ["nacce", "1454981157144"], ["la", "1454981162313"], ["mata", "1454981167478"], ["a", "1454981168075"], ["hierro", "1454981171931"], ["muere", "1454981174714"]]
2093	29	117	2016-02-09 01:27:58.491681+00	2016-02-09 01:26:17.042+00	[["lucha", "1454981180641"], ["aes", "1454981182805"], ["esa", "1454981185442"], ["es", "1454981187410"], ["la", "1454981189423"], ["belleza", "1454981194575"], ["elegante", "1454981200529"], ["person", "1454981206832"]]
2094	29	32	2016-02-09 01:28:36.697194+00	2016-02-09 01:26:49.386+00	[["bien", "1454981213497"], ["que", "1454981216048"], ["te", "1454981218015"], ["digo", "1454981226519"], ["pero", "1454981229189"], ["no", "1454981232148"], ["lo", "1454981234038"], ["que", "1454981236525"], ["yo", "1454981239388"], ["haga", "1454981244841"]]
2095	29	90	2016-02-09 01:29:08.801618+00	2016-02-09 01:27:26.587+00	[["el", "1454981249660"], ["plaza", "1454981253954"], ["de", "1454981255795"], ["Rosa", "1454981261536"], ["el", "1454981266238"], ["hay", "1454981270849"], ["puertas", "1454981277157"]]
2096	29	100	2016-02-09 01:29:33.554556+00	2016-02-09 01:27:59.02+00	[["tien", "1454981282145"], ["cont\\u00f3", "1454981286276"], ["un", "1454981291801"], ["al", "1454981295190"], ["al", "1454981297614"], ["m\\u00e9dico", "1454981301910"]]
2097	29	110	2016-02-09 01:30:15.303409+00	2016-02-09 01:28:24.197+00	[["fue", "1454981308006"], ["que", "1454981310687"], ["que", "1454981313591"], ["que", "1454981316356"], ["acept\\u00e9", "1454981324412"], ["final", "1454981330416"], ["acept\\u00e9", "1454981334425"], ["fue", "1454981337978"], ["compr\\u00e9", "1454981343415"]]
2098	29	108	2016-02-09 01:30:45.730632+00	2016-02-09 01:29:08.087+00	[["animales", "1454981353332"], ["son", "1454981356549"], ["cuidaron", "1454981362697"], ["al", "1454981366373"], ["su", "1454981370793"], ["viaje", "1454981374078"]]
2099	29	18	2016-02-09 01:31:10.290687+00	2016-02-09 01:29:37.023+00	[["que", "1454981381553"], ["regalado", "1454981385643"], ["no", "1454981388254"], ["se", "1454981389237"], ["le", "1454981390853"], ["miran", "1454981394197"], ["los", "1454981395612"], ["dientes", "1454981398632"]]
2100	25	105	2016-02-09 02:06:32.724938+00	2016-02-09 02:04:37.778+00	[["vida", "1454983487954"], ["es", "1454983496958"], ["ambos", "1454983503788"], ["fue", "1454983509729"], ["tonta", "1454983519502"]]
2101	25	32	2016-02-09 02:07:23.505516+00	2016-02-09 02:05:23.838+00	[["el", "1454983529589"], ["que", "1454983534146"], ["puedas", "1454983541009"], ["te", "1454983544901"], ["mas", "1454983549983"], ["no", "1454983553374"], ["lo", "1454983555660"], ["que", "1454983563307"], ["yo", "1454983566987"], ["hago", "1454983570688"]]
2102	24	47	2016-02-11 13:16:16.505458+00	2016-02-11 13:14:17.256+00	[["amigo", "1455196488621"], ["amores", "1455196494025"], ["consuelo", "1455196500783"], ["de", "1455196502014"], ["tontos", "1455196505157"]]
2103	24	38	2016-02-11 13:16:54.386334+00	2016-02-11 13:15:11.283+00	[["va", "1455196516553"], ["el", "1455196519019"], ["cantaro", "1455196523966"], ["a", "1455196525745"], ["la", "1455196527288"], ["fuente", "1455196530899"], ["que", "1455196535804"], ["al", "1455196537737"], ["fin", "1455196539926"], ["se", "1455196541020"], ["rompe", "1455196543473"]]
2104	24	83	2016-02-11 13:17:39.153301+00	2016-02-11 13:15:48.877+00	[["que", "1455196558305"], ["perjudica", "1455196574970"], ["malo", "1455196579266"], ["para", "1455196583188"], ["la", "1455196584603"], ["salud", "1455196588264"]]
2105	24	108	2016-02-11 13:18:15.103579+00	2016-02-11 13:16:32.661+00	[["buenos", "1455196598526"], ["estan", "1455196603654"], ["quieren", "1455196610386"], ["hasta", "1455196616192"], ["las", "1455196619396"], ["momento", "1455196624436"]]
2106	24	19	2016-02-11 13:18:53.526852+00	2016-02-11 13:17:12.063+00	[["de", "1455196642005"], ["p\\u00e1jaro", "1455196650111"], ["en", "1455196652940"], ["mano", "1455196654830"], ["que", "1455196656500"], ["cien", "1455196658588"], ["volando", "1455196661986"]]
2107	24	120	2016-02-11 13:19:47.251137+00	2016-02-11 13:17:47.457+00	[["aciertos", "1455196676951"], ["tengo", "1455196686011"], ["calor", "1455196693584"], ["se", "1455196697013"], ["obscuro", "1455196710761"], ["negro", "1455196716454"]]
2108	24	76	2016-02-11 13:20:20.83756+00	2016-02-11 13:18:40.227+00	[["reir", "1455196727131"], ["jugar", "1455196732830"], ["dem\\u00e1s", "1455196737624"], ["otros", "1455196742194"], ["personas", "1455196749879"]]
2109	24	20	2016-02-11 13:22:13.716147+00	2016-02-11 13:19:13.927+00	[["el", "1455196837745"], ["bien", "1455196840248"], ["sin", "1455196842761"], ["mirar", "1455196845273"], ["a", "1455196857853"], ["qien", "1455196862823"]]
2110	24	70	2016-02-11 13:23:09.358922+00	2016-02-11 13:21:06.823+00	[["ley", "1455196871871"], ["tiene", "1455196875697"], ["el", "1455196878299"], ["ombu", "1455196880993"], ["y", "1455196886900"], ["ademas", "1455196891587"], ["algarrobos", "1455196900748"], ["majestuosos", "1455196910540"], ["cordillera", "1455196918403"]]
2111	24	129	2016-02-11 13:23:40.367246+00	2016-02-11 13:22:03.116+00	[["boca", "1455196928146"], ["arte", "1455196933039"], ["todos", "1455196936654"], ["ley", "1455196942281"], ["fue", "1455196945384"], ["a", "1455196949151"]]
2112	24	81	2016-02-11 13:24:30.060171+00	2016-02-11 13:22:36.553+00	[["hagas", "1455196968370"], ["inmiscuyas", "1455196976637"], ["l\\u00e1stima", "1455196985765"], ["vencido", "1455196990240"], ["ni", "1455196992477"], ["aun", "1455196994357"], ["vencido", "1455196999131"]]
2113	24	49	2016-02-11 13:25:19.699504+00	2016-02-11 13:23:23.725+00	[["tienes", "1455197023326"], ["mal", "1455197026972"], ["darse", "1455197033476"], ["peras", "1455197038165"], ["al", "1455197040859"], ["olmo", "1455197045472"]]
2114	24	49	2016-02-11 13:25:53.595178+00	2016-02-11 13:24:10.151+00	[["te", "1455197056805"], ["nadie", "1455197064417"], ["pensar", "1455197070275"], ["peras", "1455197076447"], ["al", "1455197079047"], ["olmo", "1455197082630"]]
2115	24	51	2016-02-11 13:26:41.608928+00	2016-02-11 13:24:46.626+00	[["el", "1455197102074"], ["viven", "1455197109151"], ["casas", "1455197114099"], ["son", "1455197117746"], ["extremadamente", "1455197126251"], ["bajas", "1455197130888"]]
2116	24	101	2016-02-11 13:27:20.656946+00	2016-02-11 13:25:35.588+00	[["mi", "1455197139743"], ["hay", "1455197144266"], ["clima", "1455197150759"], ["es", "1455197153000"], ["lluvioso", "1455197159686"], ["nublado", "1455197169653"]]
2117	24	123	2016-03-25 13:53:40.877663+00	2016-03-25 13:50:05.464+00	[["se esmero", "1458913834954"], ["esmer\\u00f3", "1458913841568"], ["solo", "1458913846940"], ["la ", "1458913857981"], ["por", "1458913867325"], ["dia", "1458913873905"], ["dia", "1458913890114"]]
2118	24	123	2016-03-25 13:54:36.629879+00	2016-03-25 13:51:45.927+00	[["se", "1458913915735"], ["cons\\u00f3", "1458913920740"], ["con ", "1458913931697"], ["Mar\\u00eda", "1458913937463"], ["en ", "1458913944180"], ["otro", "1458913949469"], ["d\\u00eda", "1458913954034"]]
2119	24	91	2016-03-25 13:55:13.728938+00	2016-03-25 13:52:37.275+00	[["y ", "1458913964229"], ["una", "1458913968655"], ["en", "1458913971943"], ["quier", "1458913975891"], ["muy", "1458913986126"], ["alegres", "1458913990905"]]
2120	24	15	2016-03-25 13:55:43.393981+00	2016-03-25 13:53:14.69+00	[["cada", "1458914009550"], ["necias", "1458914014124"], ["oidos", "1458914017589"], ["sordos", "1458914020792"]]
2121	24	80	2016-03-25 13:56:41.398011+00	2016-03-25 13:53:44.151+00	[["azar", "1458914043314"], ["es", "1458914048699"], ["sal\\u00edo", "1458914056490"], ["ve ", "1458914063671"], ["despues", "1458914070277"], ["de", "1458914073022"], ["la", "1458914074926"], ["lluvia", "1458914078565"]]
2122	24	116	2016-03-25 13:57:34.986831+00	2016-03-25 13:54:42.377+00	[["ser", "1458914094111"], ["empiezo", "1458914101042"], ["de ", "1458914107341"], ["vacaciones", "1458914113638"], ["a", "1458914116420"], ["Disney", "1458914124919"], ["monta\\u00f1a", "1458914132304"]]
2123	24	104	2016-03-25 13:58:06.67892+00	2016-03-25 13:55:36.555+00	[["y", "1458914140133"], ["hoy", "1458914142760"], ["mis", "1458914147164"], ["y ", "1458914154118"], ["la", "1458914160150"], ["vida", "1458914163826"]]
2124	24	46	2016-03-25 13:58:38.888495+00	2016-03-25 13:56:07.733+00	[["hay", "1458914180862"], ["capit\\u00e1n", "1458914188115"], ["no", "1458914189776"], ["manda", "1458914191929"], ["marinero", "1458914196267"]]
2125	24	117	2016-03-25 13:59:41.040015+00	2016-03-25 13:56:40.253+00	[["ley", "1458914205364"], ["fu\\u00e9", "1458914232816"], ["mi", "1458914235958"], ["es", "1458914238758"], ["docente", "1458914243312"], ["buena", "1458914250089"], ["buena", "1458914254703"], ["madre", "1458914258163"]]
2126	24	36	2016-03-25 14:00:19.772246+00	2016-03-25 13:57:41.777+00	[["se", "1458914273893"], ["sabe", "1458914278146"], ["por", "1458914280214"], ["diablo", "1458914283907"], ["viejo", "1458914289826"], ["que", "1458914292111"], ["por", "1458914293662"], ["diablo", "1458914297140"]]
2127	24	27	2016-03-25 14:00:55.949191+00	2016-03-25 13:58:20.564+00	[["buen", "1458914312268"], ["madruga", "1458914316942"], ["celeste", "1458914326519"], ["que", "1458914328716"], ["le", "1458914329937"], ["cueste", "1458914333097"]]
2128	24	89	2016-03-25 14:01:36.668688+00	2016-03-25 13:58:56.528+00	[["amanec\\u00ed", "1458914346085"], ["feriado", "1458914352078"], ["y ", "1458914360714"], ["y", "1458914365789"], ["ma\\u00f1ana", "1458914370164"], ["navidad", "1458914374038"]]
2129	24	75	2016-03-25 14:02:12.769536+00	2016-03-25 13:59:37.502+00	[["amigos", "1458914383772"], ["Magos", "1458914388505"], ["llegan", "1458914394282"], ["buenos", "1458914398854"], ["a", "1458914403194"], ["los", "1458914406792"], ["ni\\u00f1os", "1458914409930"]]
2130	24	22	2016-03-25 14:02:39.912243+00	2016-03-25 14:00:13.854+00	[["aquel", "1458914424012"], ["cerrada", "1458914429699"], ["no", "1458914431716"], ["entran", "1458914434344"], ["moscas", "1458914437233"]]
2131	24	82	2016-03-25 14:03:11.192901+00	2016-03-25 14:00:40.589+00	[["ma\\u00f1ana", "1458914447690"], ["llegamos", "1458914452166"], ["mi ", "1458914464325"], ["amor", "1458914468567"]]
2132	24	29	2016-03-25 14:03:52.286547+00	2016-03-25 14:01:12.337+00	[["que", "1458914478139"], ["quien", "1458914492476"], ["andas", "1458914495949"], ["y", "1458914499523"], ["te", "1458914500988"], ["dire", "1458914502848"], ["quien", "1458914506362"], ["eres", "1458914509643"]]
2133	24	41	2016-03-25 14:04:19.056719+00	2016-03-25 14:01:53.889+00	[["que", "1458914518808"], ["madruga", "1458914523415"], ["ultimo", "1458914528712"], ["r\\u00ede", "1458914533476"], ["mejor", "1458914536136"]]
2134	24	65	2016-03-25 14:04:50.960008+00	2016-03-25 14:02:19.253+00	[["la", "1458914548065"], ["no", "1458914551260"], ["ser", "1458914552866"], ["es", "1458914556557"], ["la", "1458914557700"], ["cuestion", "1458914561700"], ["cuestion", "1458914568289"]]
2135	24	26	2016-04-07 20:51:01.934805+00	2016-04-07 20:51:31.184+00	[["boca", "1460062300043"], ["mundo", "1460062304597"], ["de", "1460062309614"], ["los", "1460062313115"], ["ciegos", "1460062317535"], ["el", "1460062320663"], ["tuerto", "1460062324261"], ["es", "1460062326417"], ["rey", "1460062328746"]]
2136	24	23	2016-04-07 20:51:56.848048+00	2016-04-07 20:52:23.01+00	[["mires", "1460062358131"], ["mucho", "1460062363330"], ["madrugar", "1460062368476"], ["amanece", "1460062375215"], ["mas", "1460062378076"], ["temprano", "1460062383797"]]
2137	24	60	2016-04-07 20:52:30.058401+00	2016-04-07 20:53:08.695+00	[["mires", "1460062394753"], ["lo", "1460062398426"], ["que", "1460062400676"], ["no", "1460062402449"], ["quieres", "1460062406519"], ["cumplir", "1460062416851"]]
2138	24	43	2016-04-07 20:52:54.775601+00	2016-04-07 20:53:41.269+00	[["mires", "1460062426469"], ["lo", "1460062430161"], ["que", "1460062432417"], ["reluce", "1460062436840"], ["es", "1460062439573"], ["oro", "1460062441798"]]
2139	24	71	2016-04-07 20:53:47.704196+00	2016-04-07 20:54:05.516+00	[["buen", "1460062450833"], ["le", "1460062455645"], ["crecio", "1460062463632"], ["la", "1460062467264"], ["nariz", "1460062471773"], ["por", "1460062478631"], ["vez", "1460062484339"], ["que", "1460062487272"], ["mentia", "1460062493762"]]
2140	24	78	2016-04-07 20:54:42.240591+00	2016-04-07 20:54:57.147+00	[["te", "1460062504670"], ["celeste", "1460062511631"], ["empieza", "1460062518499"], ["haz", "1460062524021"], ["hagas", "1460062537701"], ["lo", "1460062539729"], ["mismo", "1460062543060"], ["mismo", "1460062549266"]]
2141	24	96	2016-04-07 20:55:31.679017+00	2016-04-07 20:55:53.29+00	[["mentira", "1460062562146"], ["del", "1460062566227"], ["herrero", "1460062570765"], ["es", "1460062574517"], ["muchas", "1460062579819"], ["lindo", "1460062584981"], ["muy", "1460062588013"], ["grande", "1460062593245"]]
2142	24	96	2016-04-07 20:57:00.290567+00	2016-04-07 20:56:39.537+00	[["mentra", "1460062660119"], ["del", "1460062663625"], ["herrero", "1460062669244"], ["tiene", "1460062674949"], ["un", "1460062677225"], ["parque", "1460062681048"], ["muy", "1460062683550"], ["grande", "1460062687053"]]
2143	24	79	2016-04-07 20:57:27.823245+00	2016-04-07 20:58:10.333+00	[["bueno", "1460062695575"], ["es", "1460062698504"], ["invisible", "1460062705001"], ["a", "1460062707043"], ["los", "1460062708393"], ["ojos", "1460062713443"]]
2144	24	100	2016-04-07 20:58:02.657329+00	2016-04-07 20:58:36.464+00	[["tiene", "1460062724106"], ["gusta", "1460062729725"], ["un", "1460062732755"], ["un", "1460062735633"], ["con", "1460062739735"], ["medico", "1460062745873"]]
2145	24	100	2016-04-07 20:58:31.430924+00	2016-04-07 20:59:10.796+00	[["me", "1460062759441"], ["recomendo", "1460062764921"], ["visitar", "1460062771364"], ["a", "1460062773716"], ["un", "1460062775105"], ["medicxo", "1460062778452"]]
2146	24	102	2016-04-07 20:59:15.337682+00	2016-04-07 20:59:42.873+00	[["buen", "1460062788466"], ["se", "1460062792060"], ["cayo", "1460062796799"], ["el", "1460062800373"], ["una", "1460062804102"], ["auto", "1460062814282"], ["nuevo", "1460062822054"]]
2147	24	94	2016-04-07 20:59:56.493195+00	2016-04-07 21:00:25.122+00	[["miguel", "1460062832160"], ["a", "1460062836028"], ["muy", "1460062840320"], ["paisaje", "1460062850185"], ["por", "1460062855593"], ["futbol", "1460062861558"]]
2148	24	42	2016-04-07 21:00:35.308452+00	2016-04-07 21:01:19.315+00	[["se\\u00f1or", "1460062885285"], ["resultado", "1460062891778"], ["que", "1460062898024"], ["curar", "1460062902069"]]
2149	24	61	2016-04-07 21:01:32.821678+00	2016-04-07 21:01:46.915+00	[["todo", "1460062932066"], ["emergencia", "1460062940382"], ["mejor", "1460062947464"], ["a", "1460062950884"], ["uno", "1460062952688"], ["medico", "1460062959828"]]
2150	24	128	2016-04-10 12:26:48.209718+00	2016-04-10 12:25:58.381+00	[["de", "1460291172954"], ["es", "1460291176718"], ["a", "1460291180266"], ["jugarle", "1460291186125"], ["a", "1460291189481"], ["los", "1460291191801"], ["enamoradrs", "1460291200375"]]
2151	24	32	2016-04-10 12:27:49.87304+00	2016-04-10 12:26:44.391+00	[["el", "1460291209083"], ["correcto", "1460291215129"], ["tu", "1460291220199"], ["digo", "1460291225877"], ["y", "1460291227299"], ["no", "1460291229022"], ["lo", "1460291237434"], ["que", "1460291242716"], ["hago", "1460291253498"], ["hago", "1460291262025"]]
2152	24	114	2016-04-10 12:28:48.624555+00	2016-04-10 12:27:46.765+00	[["que", "1460291276161"], ["son", "1460291281910"], ["mi", "1460291299170"], ["son", "1460291303439"], ["mucho", "1460291310490"], ["la", "1460291317661"], ["s", "1460291321017"]]
2153	24	84	2016-04-10 12:30:24.655602+00	2016-04-10 12:28:47.975+00	[["hace", "1460291338759"], ["viste", "1460291398652"], ["caido", "1460291403858"], ["todo", "1460291409720"], ["el", "1460291412393"], ["vino", "1460291416816"]]
2154	24	56	2016-04-10 12:30:49.820357+00	2016-04-10 12:30:21.355+00	[["el", "1460291426027"], ["bien", "1460291429331"], ["con", "1460291435343"], ["de", "1460291438441"], ["obrar", "1460291442210"]]
2155	24	25	2016-04-10 12:31:55.936497+00	2016-04-10 12:30:45.818+00	[["hagas", "1460291455154"], ["mal", "1460291459437"], ["que por", "1460291482815"], ["po", "1460291486819"], ["bien", "1460291491204"], ["no ", "1460291497446"], ["venga", "1460291508097"]]
2156	24	31	2016-04-10 12:32:33.972851+00	2016-04-10 12:31:52.016+00	[["que", "1460291521461"], ["no", "1460291524760"], ["has", "1460291527173"], ["de", "1460291528778"], ["beber", "1460291532265"], ["dejala", "1460291541911"], ["correr", "1460291546368"]]
2157	24	111	2016-04-10 12:33:15.683372+00	2016-04-10 12:32:30.004+00	[["que", "1460291557943"], ["hace", "1460291565520"], ["magia", "1460291572286"], ["muy", "1460291581930"], ["la", "1460291587625"]]
2158	24	59	2016-04-10 12:33:55.696834+00	2016-04-10 12:33:12.15+00	[["era", "1460291605290"], ["un", "1460291608063"], ["de", "1460291611321"], ["los", "1460291613457"], ["pobres", "1460291618145"], ["mosqueteros", "1460291628081"]]
2159	24	35	2016-04-10 12:34:26.358224+00	2016-04-10 12:33:52.03+00	[["pajaro", "1460291642338"], ["que", "1460291648385"], ["mal", "1460291651299"], ["acompa\\u00f1ado", "1460291658460"]]
2160	24	54	2016-04-10 12:34:59.057027+00	2016-04-10 12:34:22.444+00	[["y", "1460291669884"], ["la", "1460291673853"], ["guerra", "1460291678923"], ["guerra", "1460291684816"], ["mundial", "1460291691403"]]
2161	24	63	2016-04-10 12:35:42.264626+00	2016-04-10 12:34:58.628+00	[["jose", "1460291706312"], ["cruzo", "1460291714973"], ["la", "1460291717731"], ["andes", "1460291722560"], ["y", "1460291728288"], ["caballo", "1460291734160"]]
2162	24	121	2016-04-10 12:37:20.228201+00	2016-04-10 12:35:46.075+00	[["y", "1460291753479"], ["una", "1460291757261"], ["buenos", "1460291763082"], ["paciencia", "1460291771704"], ["de", "1460291775786"], ["sus", "1460291826978"], ["ojos", "1460291832330"]]
2163	24	64	2016-04-10 12:38:22.542019+00	2016-04-10 12:37:17.759+00	[["buen", "1460291852022"], ["y", "1460291856265"], ["remo", "1460291858613"], ["remo", "1460291864214"], ["los", "1460291870058"], ["amamanto", "1460291875716"], ["una loba", "1460291890032"], ["loba", "1460291894647"]]
2164	24	122	2016-04-10 12:39:32.820007+00	2016-04-10 12:38:17.902+00	[["amigo", "1460291923698"], ["mando", "1460291930094"], ["indico", "1460291935856"], ["hacer", "1460291940515"], ["los", "1460291950007"], ["mujer", "1460291960692"], ["que", "1460291964970"]]
2165	24	52	2016-04-10 12:40:14.54992+00	2016-04-10 12:39:28.617+00	[["saben", "1460291976253"], ["chicos", "1460291983775"], ["conducen", "1460291989585"], ["a roma", "1460291998493"], ["roma", "1460292003803"]]
2166	24	93	2016-04-10 12:40:55.005902+00	2016-04-10 12:40:18.032+00	[["y", "1460292021302"], ["una", "1460292025226"], ["flor", "1460292030519"], ["y", "1460292033227"], ["la", "1460292035199"], ["la", "1460292038893"], ["jardin", "1460292046077"]]
2167	24	105	2016-04-10 12:41:20.250486+00	2016-04-10 12:40:50.28+00	[["mirada", "1460292057880"], ["se", "1460292061641"], ["hizo", "1460292065130"], ["era", "1460292069634"], ["muy", "1460292072622"]]
2168	24	88	2016-04-10 12:41:52.669652+00	2016-04-10 12:41:18.609+00	[["hijos", "1460292090654"], ["no", "1460292094664"], ["creen", "1460292097829"], ["en", "1460292100408"], ["dios", "1460292105033"]]
2169	24	113	2016-04-10 12:42:58.572547+00	2016-04-10 12:41:48.757+00	[["buen", "1460292113894"], ["y", "1460292131643"], ["le", "1460292135348"], ["gustan", "1460292140731"], ["con", "1460292145184"], ["cualquier", "1460292152136"], ["cosa", "1460292156384"], ["cuento", "1460292170722"]]
2170	31	8	2016-10-04 17:55:22.325316+00	2016-10-04 17:56:02.678+00	[["a", "1475603764352"], ["a", "1475603764968"], ["a", "1475603765271"], ["a", "1475603765616"], ["a", "1475603765952"], ["a", "1475603766272"], ["a", "1475603766615"], ["a", "1475603766968"]]
2171	31	9	2016-10-04 17:55:27.043419+00	2016-10-04 17:56:08.995+00	[["a", "1475603769760"], ["a", "1475603770072"], ["a", "1475603770392"], ["a", "1475603770712"], ["a", "1475603771040"], ["a", "1475603771376"], ["a", "1475603771696"]]
2172	31	6	2016-10-04 17:55:31.027145+00	2016-10-04 17:56:13.783+00	[["a", "1475603774472"], ["a", "1475603774784"], ["a", "1475603775056"], ["a", "1475603775367"], ["a", "1475603775679"]]
2173	31	96	2016-10-04 17:55:35.606939+00	2016-10-04 17:56:17.55+00	[["a", "1475603778184"], ["a", "1475603778464"], ["a", "1475603778744"], ["a", "1475603779039"], ["a", "1475603779328"], ["a", "1475603779631"], ["a", "1475603779928"], ["a", "1475603780255"]]
2174	32	8	2018-01-11 17:17:49.377456+00	2018-01-11 17:17:59.674+00	[["a", "1515691082567"], ["a", "1515691083439"], ["a", "1515691084142"], ["a", "1515691084886"], ["a", "1515691085590"], ["a", "1515691086246"], ["a", "1515691086886"], ["a", "1515691087582"]]
2175	32	1	2018-01-11 17:17:54.475418+00	2018-01-11 17:18:09.828+00	[["a", "1515691090999"], ["a", "1515691091622"], ["a", "1515691092238"], ["a", "1515691092894"]]
2176	32	5	2018-01-11 17:18:31.637619+00	2018-01-11 17:18:14.982+00	[["a", "1515691127029"], ["a", "1515691127206"], ["a", "1515691127398"], ["a", "1515691127565"], ["a", "1515691127757"], ["a", "1515691127933"], ["aa", "1515691128454"]]
\.


--
-- Name: cloze_trial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('cloze_trial_id_seq', 2176, true);


--
-- Data for Name: cloze_trialoption; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY cloze_trialoption (id, text_id, missing_words) FROM stdin;
0	0	[1,2,3,4,5,6,7,8]
1	1	[1,2,3,4]
2	2	[1,2,3,4,5,6,7,8]
3	3	[1,2,3,4]
4	4	[1,2,3]
5	5	[1,2,3,4,5,6,7]
6	6	[1,2,3,4,5]
7	7	[1,2,3,4,5,6,7]
8	8	[1,2,3,4,5,6,7,8]
9	9	[1,2,3,4,5,6,7]
10	10	[1,2,3,4]
11	11	[1,2,3,4,5,6]
12	12	[1,2,3,4]
13	13	[1,2,3,4,5,6]
14	14	[1,2,3,4,5,6,7,8]
15	15	[1,2,3,4]
16	16	[1,2,3,4,5,6,7]
17	17	[1,2,3,4,5]
18	18	[1,2,3,4,5,6,7,8]
19	19	[1,2,3,4,5,6,7]
20	20	[1,2,3,4,5,6]
21	21	[1,2,3,4]
22	22	[1,2,3,4,5]
23	23	[1,2,3,4,5,6]
24	24	[1,2,3,4,5,6,7,8]
25	25	[1,2,3,4,5,6,7]
26	26	[1,2,3,4,5,6,7,8,9]
27	27	[1,2,3,4,5,6]
28	28	[1,2,3,4,5]
29	29	[1,2,3,4,5,6,7,8]
30	30	[1,2,3,4]
31	31	[1,2,3,4,5,6,7]
32	32	[1,2,3,4,5,6,7,8,9,10]
33	33	[1,2,3,4]
34	34	[1,2,3,4,5,6]
35	35	[1,2,3,4]
36	36	[1,2,3,4,5,6,7,8]
37	37	[1,2,3,4,5,6,7]
38	38	[1,2,3,4,5,6,7,8,9,10,11]
39	39	[1,2,3,4,5,6,7,8]
40	40	[1,2,3,4]
41	41	[1,2,3,4,5]
42	42	[1,2,3,4]
43	43	[1,2,3,4,5,6]
44	44	[1,2,3,4,5,6]
45	45	[1,2,3,4,5]
46	46	[1,2,3,4,5]
47	47	[1,2,3,4,5]
48	48	[1,2,3,4,5,6]
49	49	[1,2,3,4,5,6]
50	50	[1,2,3,4,5,6]
51	51	[1,2,3,4,5,6]
52	52	[1,2,3,4,5]
53	53	[1,2,3,4,5,6]
54	54	[1,2,3,4,5]
55	55	[1,2,3,4,5,6]
56	56	[1,2,3,4,5]
57	57	[1,2,3,4,5]
58	58	[1,2,3,4,5,6,7]
59	59	[1,2,3,4,5,6]
60	60	[1,2,3,4,5,6]
61	61	[1,2,3,4,5,6]
62	62	[1,2,3,4,5,6,7,8]
63	63	[1,2,3,4,5,6]
64	64	[1,2,3,4,5,6,7,8]
65	65	[1,2,3,4,5,6,7]
66	66	[1,2,3,4,5,6,7,8,9,10]
67	67	[1,2,3,4,5,6]
68	68	[1,2,3,4,5,6,7,8]
69	69	[1,2,3,4,5,6,7]
70	70	[1,2,3,4,5,6,7,8,9]
71	71	[1,2,3,4,5,6,7,8,9]
72	72	[1,2,3,4,5,6,7,8,9]
73	73	[1,2,3,4]
74	74	[1,2,3,4,5,6,7,8]
75	75	[1,2,3,4,5,6,7]
76	76	[1,2,3,4,5]
77	77	[1,2,3,4,5,6,7]
78	78	[1,2,3,4,5,6,7,8]
79	79	[1,2,3,4,5,6]
80	80	[1,2,3,4,5,6,7,8]
81	81	[1,2,3,4,5,6,7]
82	82	[1,2,3,4]
83	83	[1,2,3,4,5,6]
84	84	[1,2,3,4,5,6]
85	85	[1,2,3,4,5,6]
86	86	[1,2,3,4,5,6,7]
87	87	[1,2,3,4,5,6,7,8]
88	88	[1,2,3,4,5]
89	89	[1,2,3,4,5,6]
90	90	[1,2,3,4,5,6,7]
91	91	[1,2,3,4,5,6]
92	92	[1,2,3,4,5,6,7,8]
93	93	[1,2,3,4,5,6,7]
94	94	[1,2,3,4,5,6]
95	95	[1,2,3,4,5,6,7]
96	96	[1,2,3,4,5,6,7,8]
97	97	[1,2,3,4,5,6]
98	98	[1,2,3,4,5]
99	99	[1,2,3,4,5,6,7,8,9]
100	100	[1,2,3,4,5,6]
101	101	[1,2,3,4,5,6]
102	102	[1,2,3,4,5,6,7]
103	103	[1,2,3,4,5,6]
104	104	[1,2,3,4,5,6]
105	105	[1,2,3,4,5]
106	106	[1,2,3,4,5]
107	107	[1,2,3,4,5,6,7]
108	108	[1,2,3,4,5,6]
109	109	[1,2,3,4,5,6,7]
110	110	[1,2,3,4,5,6,7,8,9]
111	111	[1,2,3,4,5]
112	112	[1,2,3,4,5,6,7,8]
113	113	[1,2,3,4,5,6,7,8]
114	114	[1,2,3,4,5,6,7]
115	115	[1,2,3,4,5,6,7,8]
116	116	[1,2,3,4,5,6,7]
117	117	[1,2,3,4,5,6,7,8]
118	118	[1,2,3,4,5,6,7]
119	119	[1,2,3,4,5,6]
120	120	[1,2,3,4,5,6]
121	121	[1,2,3,4,5,6,7]
122	122	[1,2,3,4,5,6,7]
123	123	[1,2,3,4,5,6,7]
124	124	[1,2,3,4,5,6,7]
125	125	[1,2,3,4,5,6]
126	126	[1,2,3,4,5,6,7]
127	127	[1,2,3,4,5,6]
128	128	[1,2,3,4,5,6,7]
129	129	[1,2,3,4,5,6]
\.


--
-- Name: cloze_trialoption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('cloze_trialoption_id_seq', 1, false);


--
-- Data for Name: cloze_trialsequence; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY cloze_trialsequence (id, seq) FROM stdin;
1	[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129]
\.


--
-- Name: cloze_trialsequence_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('cloze_trialsequence_id_seq', 1, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	auth	user
4	contenttypes	contenttype
5	sessions	session
6	sites	site
7	admin	logentry
8	cloze	subject
9	cloze	information
10	cloze	trialsequence
11	cloze	text
12	cloze	trialoption
13	cloze	trial
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('django_content_type_id_seq', 13, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-09-28 19:22:46.862565+00
2	auth	0001_initial	2015-09-28 19:22:48.263542+00
3	admin	0001_initial	2015-09-28 19:22:48.483116+00
4	contenttypes	0002_remove_content_type_name	2015-09-28 19:22:48.576932+00
5	auth	0002_alter_permission_name_max_length	2015-09-28 19:22:48.654585+00
6	auth	0003_alter_user_email_max_length	2015-09-28 19:22:48.71702+00
7	auth	0004_alter_user_username_opts	2015-09-28 19:22:48.783107+00
8	auth	0005_alter_user_last_login_null	2015-09-28 19:22:48.889286+00
9	auth	0006_require_contenttypes_0002	2015-09-28 19:22:48.905529+00
10	sessions	0001_initial	2015-09-28 19:22:49.108196+00
11	sites	0001_initial	2015-09-28 19:22:49.18614+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('django_migrations_id_seq', 11, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: cloze
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cloze
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: cloze_information_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY cloze_information
    ADD CONSTRAINT cloze_information_pkey PRIMARY KEY (subject_id);


--
-- Name: cloze_subject_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY cloze_subject
    ADD CONSTRAINT cloze_subject_pkey PRIMARY KEY (id);


--
-- Name: cloze_text_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY cloze_text
    ADD CONSTRAINT cloze_text_pkey PRIMARY KEY (id);


--
-- Name: cloze_trial_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY cloze_trial
    ADD CONSTRAINT cloze_trial_pkey PRIMARY KEY (id);


--
-- Name: cloze_trialoption_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY cloze_trialoption
    ADD CONSTRAINT cloze_trialoption_pkey PRIMARY KEY (id);


--
-- Name: cloze_trialsequence_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY cloze_trialsequence
    ADD CONSTRAINT cloze_trialsequence_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: cloze; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: cloze_trial_4b01cbf2; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX cloze_trial_4b01cbf2 ON cloze_trial USING btree ("trialOpt_id");


--
-- Name: cloze_trial_ffaba1d1; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX cloze_trial_ffaba1d1 ON cloze_trial USING btree (subject_id);


--
-- Name: cloze_trialoption_65eb77fe; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX cloze_trialoption_65eb77fe ON cloze_trialoption USING btree (text_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: cloze; Tablespace: 
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cloze_informati_subject_id_7a1407b62f2c8ea4_fk_cloze_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY cloze_information
    ADD CONSTRAINT cloze_informati_subject_id_7a1407b62f2c8ea4_fk_cloze_subject_id FOREIGN KEY (subject_id) REFERENCES cloze_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cloze_tria_trialOpt_id_32fbfa91030e7db0_fk_cloze_trialoption_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY cloze_trial
    ADD CONSTRAINT "cloze_tria_trialOpt_id_32fbfa91030e7db0_fk_cloze_trialoption_id" FOREIGN KEY ("trialOpt_id") REFERENCES cloze_trialoption(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cloze_trial_subject_id_1119c0b902237218_fk_cloze_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY cloze_trial
    ADD CONSTRAINT cloze_trial_subject_id_1119c0b902237218_fk_cloze_subject_id FOREIGN KEY (subject_id) REFERENCES cloze_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cloze_trialoption_text_id_4e2ec7ff4e2b859d_fk_cloze_text_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY cloze_trialoption
    ADD CONSTRAINT cloze_trialoption_text_id_4e2ec7ff4e2b859d_fk_cloze_text_id FOREIGN KEY (text_id) REFERENCES cloze_text(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cloze
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

