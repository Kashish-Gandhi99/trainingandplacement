PGDMP                         x            tnp    12.1    12.1 �    0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            3           1262    34441    tnp    DATABASE     �   CREATE DATABASE tnp WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE tnp;
                postgres    false            �            1259    34442 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    34445    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    202            4           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    203            �            1259    34447    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    34450    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    204            5           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    205            �            1259    34452    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    34455    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    206            6           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    207            �            1259    34457 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    34463    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    34466    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    209            7           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    210            �            1259    34468    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    208            8           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    211            �            1259    34470    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    34473 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    212            9           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    213            �            1259    34475    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    34482    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    214            :           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    215            �            1259    34484    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    34487    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    216            ;           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    217            �            1259    34489    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    34495    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    218            <           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    219            �            1259    34497    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    34503    faculty_fdetails    TABLE     �   CREATE TABLE public.faculty_fdetails (
    empcode text NOT NULL,
    name text NOT NULL,
    middlename text NOT NULL,
    lastname text NOT NULL,
    email character varying(254) NOT NULL,
    phno text NOT NULL,
    gender text NOT NULL
);
 $   DROP TABLE public.faculty_fdetails;
       public         heap    postgres    false            �            1259    60375    opportunity_finalresults    TABLE     �  CREATE TABLE public.opportunity_finalresults (
    id integer NOT NULL,
    encode_company character varying(100),
    opp_type character varying(100),
    enrollmentno character varying(11) NOT NULL,
    firstname character varying(30),
    middlename character varying(30),
    lastname character varying(30),
    companyname character varying(30),
    typeofjob character varying(30),
    location character varying(30),
    preferredlanguages character varying(30),
    preferredtoolsandtechnologies character varying(30),
    package double precision,
    stipend smallint,
    bondterm double precision,
    deadline date,
    CONSTRAINT opportunity_finalresults_stipend_check CHECK ((stipend >= 0))
);
 ,   DROP TABLE public.opportunity_finalresults;
       public         heap    postgres    false            �            1259    60373    opportunity_finalresults_id_seq    SEQUENCE     �   CREATE SEQUENCE public.opportunity_finalresults_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.opportunity_finalresults_id_seq;
       public          postgres    false    242            =           0    0    opportunity_finalresults_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.opportunity_finalresults_id_seq OWNED BY public.opportunity_finalresults.id;
          public          postgres    false    241            �            1259    43528 !   opportunity_internshipopportunity    TABLE     '  CREATE TABLE public.opportunity_internshipopportunity (
    id integer NOT NULL,
    companyname character varying(30),
    typeofjob character varying(30),
    location character varying(30),
    preferredlanguages character varying(30),
    preferredtoolsandtechnologies character varying(30),
    stipend smallint,
    deadline date,
    interviewdate date,
    details text,
    encode_company character varying(100),
    last_result character varying(100),
    CONSTRAINT opportunity_internshipopportunity_stipend_check CHECK ((stipend >= 0))
);
 5   DROP TABLE public.opportunity_internshipopportunity;
       public         heap    postgres    false            �            1259    43526 (   opportunity_internshipopportunity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.opportunity_internshipopportunity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.opportunity_internshipopportunity_id_seq;
       public          postgres    false    232            >           0    0 (   opportunity_internshipopportunity_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.opportunity_internshipopportunity_id_seq OWNED BY public.opportunity_internshipopportunity.id;
          public          postgres    false    231            �            1259    43540 .   opportunity_internshipplusplacementopportunity    TABLE     ~  CREATE TABLE public.opportunity_internshipplusplacementopportunity (
    id integer NOT NULL,
    companyname character varying(30),
    typeofjob character varying(30),
    location character varying(30),
    preferredlanguages character varying(30),
    preferredtoolsandtechnologies character varying(30),
    package double precision,
    stipend smallint,
    bondterm double precision,
    deadline date,
    interviewdate date,
    details text,
    encode_company character varying(100),
    last_result character varying(100),
    CONSTRAINT opportunity_internshipplusplacementopportunity_stipend_check CHECK ((stipend >= 0))
);
 B   DROP TABLE public.opportunity_internshipplusplacementopportunity;
       public         heap    postgres    false            �            1259    43538 5   opportunity_internshipplusplacementopportunity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.opportunity_internshipplusplacementopportunity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.opportunity_internshipplusplacementopportunity_id_seq;
       public          postgres    false    234            ?           0    0 5   opportunity_internshipplusplacementopportunity_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.opportunity_internshipplusplacementopportunity_id_seq OWNED BY public.opportunity_internshipplusplacementopportunity.id;
          public          postgres    false    233            �            1259    43554     opportunity_placementopportunity    TABLE     �  CREATE TABLE public.opportunity_placementopportunity (
    id integer NOT NULL,
    companyname character varying(30),
    typeofjob character varying(30),
    location character varying(30),
    preferredlanguages character varying(30),
    preferredtoolsandtechnologies character varying(30),
    package double precision,
    bondterm double precision,
    deadline date,
    interviewdate date,
    details text,
    encode_company character varying(100),
    last_result character varying(100)
);
 4   DROP TABLE public.opportunity_placementopportunity;
       public         heap    postgres    false            �            1259    43552 '   opportunity_placementopportunity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.opportunity_placementopportunity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.opportunity_placementopportunity_id_seq;
       public          postgres    false    236            @           0    0 '   opportunity_placementopportunity_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.opportunity_placementopportunity_id_seq OWNED BY public.opportunity_placementopportunity.id;
          public          postgres    false    235            �            1259    51685    opportunity_results    TABLE     �   CREATE TABLE public.opportunity_results (
    id integer NOT NULL,
    encode_company character varying(100),
    results_type character varying(100),
    enrollmentno_name character varying(200),
    results_name character varying(100),
    date date
);
 '   DROP TABLE public.opportunity_results;
       public         heap    postgres    false            �            1259    51683    opportunity_results_id_seq    SEQUENCE     �   CREATE SEQUENCE public.opportunity_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.opportunity_results_id_seq;
       public          postgres    false    240            A           0    0    opportunity_results_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.opportunity_results_id_seq OWNED BY public.opportunity_results.id;
          public          postgres    false    239            �            1259    43614    student_applied    TABLE     �   CREATE TABLE public.student_applied (
    id integer NOT NULL,
    encode_company character varying(100),
    enrollmentno character varying(11),
    name character varying(100)
);
 #   DROP TABLE public.student_applied;
       public         heap    postgres    false            �            1259    43612    student_applied_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_applied_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.student_applied_id_seq;
       public          postgres    false    238            B           0    0    student_applied_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.student_applied_id_seq OWNED BY public.student_applied.id;
          public          postgres    false    237            �            1259    43411    student_city    TABLE     c   CREATE TABLE public.student_city (
    id integer NOT NULL,
    city_name character varying(30)
);
     DROP TABLE public.student_city;
       public         heap    postgres    false            �            1259    43409    student_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.student_city_id_seq;
       public          postgres    false    223            C           0    0    student_city_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.student_city_id_seq OWNED BY public.student_city.id;
          public          postgres    false    222            �            1259    43427    student_completeddetails    TABLE       CREATE TABLE public.student_completeddetails (
    enrollmentno character varying(11) NOT NULL,
    filleddetails boolean NOT NULL,
    internship boolean NOT NULL,
    placement boolean NOT NULL,
    internshipselected boolean NOT NULL,
    placementselected boolean NOT NULL,
    "NOCDetails" character varying(100),
    "NOCgenerated" boolean NOT NULL,
    "OfferLetter" character varying(100),
    "OfferLetterNotSubmitted" boolean NOT NULL,
    "OfferLetterVerified" boolean NOT NULL,
    "OfferLetterComment" text
);
 ,   DROP TABLE public.student_completeddetails;
       public         heap    postgres    false            �            1259    43432    student_details    TABLE     �  CREATE TABLE public.student_details (
    enrollmentno character varying(11) NOT NULL,
    firstname character varying(30),
    middlename character varying(30),
    lastname character varying(30),
    gender character varying(30),
    dob date,
    phno character varying(10),
    parentphno character varying(10),
    program text,
    email character varying(254),
    ssc_year smallint,
    ssc_percentage double precision,
    ssc_board text,
    hsc_year smallint,
    hsc_percentage double precision,
    hsc_board character varying(30),
    diploma_year smallint,
    diploma_university character varying(30),
    diploma_percentage double precision,
    sgpa_sem_1 double precision,
    sgpa_sem_2 double precision,
    sgpa_sem_3 double precision,
    sgpa_sem_4 double precision,
    sgpa_sem_5 double precision,
    sgpa_sem_6 double precision,
    sgpa_sem_7 double precision,
    sgpa_sem_8 double precision,
    cgpa double precision,
    cityofinterest text,
    skillset text,
    positionofinterest text,
    toolsandtechnology text,
    "linkedinURL" character varying(400),
    effbacklog smallint,
    resume character varying(1000),
    photo character varying(1000),
    sign character varying(1000),
    CONSTRAINT student_details_diploma_year_check CHECK ((diploma_year >= 0)),
    CONSTRAINT student_details_effbacklog_check CHECK ((effbacklog >= 0)),
    CONSTRAINT student_details_hsc_year_check CHECK ((hsc_year >= 0)),
    CONSTRAINT student_details_ssc_year_check CHECK ((ssc_year >= 0))
);
 #   DROP TABLE public.student_details;
       public         heap    postgres    false            �            1259    43457    student_placed    TABLE     X   CREATE TABLE public.student_placed (
    enrollmentno character varying(11) NOT NULL
);
 "   DROP TABLE public.student_placed;
       public         heap    postgres    false            �            1259    43448    student_position    TABLE     Z   CREATE TABLE public.student_position (
    id integer NOT NULL,
    name text NOT NULL
);
 $   DROP TABLE public.student_position;
       public         heap    postgres    false            �            1259    43446    student_postion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_postion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.student_postion_id_seq;
       public          postgres    false    229            D           0    0    student_postion_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.student_postion_id_seq OWNED BY public.student_position.id;
          public          postgres    false    228            �            1259    60397     student_studentinternshipdetails    TABLE     �  CREATE TABLE public.student_studentinternshipdetails (
    enrollmentno character varying(11) NOT NULL,
    firstname character varying(30),
    lastname character varying(30),
    companyname character varying(30),
    stipend smallint,
    typeofjob character varying(30),
    encode_company character varying(100),
    CONSTRAINT student_studentintershipdetails_stipend_check CHECK ((stipend >= 0))
);
 4   DROP TABLE public.student_studentinternshipdetails;
       public         heap    postgres    false            �            1259    60403    student_studentplaceddetails    TABLE     c  CREATE TABLE public.student_studentplaceddetails (
    enrollmentno character varying(11) NOT NULL,
    firstname character varying(30),
    lastname character varying(30),
    companyname character varying(30),
    package double precision,
    bondterm double precision,
    typeofjob character varying(30),
    encode_company character varying(100)
);
 0   DROP TABLE public.student_studentplaceddetails;
       public         heap    postgres    false            �            1259    43421    studentcoordinator_city    TABLE     n   CREATE TABLE public.studentcoordinator_city (
    id integer NOT NULL,
    city_name character varying(30)
);
 +   DROP TABLE public.studentcoordinator_city;
       public         heap    postgres    false            �            1259    43419    studentcoordinator_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.studentcoordinator_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.studentcoordinator_city_id_seq;
       public          postgres    false    225            E           0    0    studentcoordinator_city_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.studentcoordinator_city_id_seq OWNED BY public.studentcoordinator_city.id;
          public          postgres    false    224                       2604    34535    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202                       2604    34536    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204                       2604    34537    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206                       2604    34538    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    208                       2604    34539    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209                       2604    34540    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212                       2604    34541    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214                       2604    34542    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216                       2604    34543    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            %           2604    60378    opportunity_finalresults id    DEFAULT     �   ALTER TABLE ONLY public.opportunity_finalresults ALTER COLUMN id SET DEFAULT nextval('public.opportunity_finalresults_id_seq'::regclass);
 J   ALTER TABLE public.opportunity_finalresults ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242                       2604    43531 $   opportunity_internshipopportunity id    DEFAULT     �   ALTER TABLE ONLY public.opportunity_internshipopportunity ALTER COLUMN id SET DEFAULT nextval('public.opportunity_internshipopportunity_id_seq'::regclass);
 S   ALTER TABLE public.opportunity_internshipopportunity ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232                        2604    43543 1   opportunity_internshipplusplacementopportunity id    DEFAULT     �   ALTER TABLE ONLY public.opportunity_internshipplusplacementopportunity ALTER COLUMN id SET DEFAULT nextval('public.opportunity_internshipplusplacementopportunity_id_seq'::regclass);
 `   ALTER TABLE public.opportunity_internshipplusplacementopportunity ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            "           2604    43557 #   opportunity_placementopportunity id    DEFAULT     �   ALTER TABLE ONLY public.opportunity_placementopportunity ALTER COLUMN id SET DEFAULT nextval('public.opportunity_placementopportunity_id_seq'::regclass);
 R   ALTER TABLE public.opportunity_placementopportunity ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            $           2604    51688    opportunity_results id    DEFAULT     �   ALTER TABLE ONLY public.opportunity_results ALTER COLUMN id SET DEFAULT nextval('public.opportunity_results_id_seq'::regclass);
 E   ALTER TABLE public.opportunity_results ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            #           2604    43617    student_applied id    DEFAULT     x   ALTER TABLE ONLY public.student_applied ALTER COLUMN id SET DEFAULT nextval('public.student_applied_id_seq'::regclass);
 A   ALTER TABLE public.student_applied ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238                       2604    43414    student_city id    DEFAULT     r   ALTER TABLE ONLY public.student_city ALTER COLUMN id SET DEFAULT nextval('public.student_city_id_seq'::regclass);
 >   ALTER TABLE public.student_city ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223                       2604    43451    student_position id    DEFAULT     y   ALTER TABLE ONLY public.student_position ALTER COLUMN id SET DEFAULT nextval('public.student_postion_id_seq'::regclass);
 B   ALTER TABLE public.student_position ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229                       2604    43424    studentcoordinator_city id    DEFAULT     �   ALTER TABLE ONLY public.studentcoordinator_city ALTER COLUMN id SET DEFAULT nextval('public.studentcoordinator_city_id_seq'::regclass);
 I   ALTER TABLE public.studentcoordinator_city ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225                      0    34442 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    202   �                0    34447    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    204   �                0    34452    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    206   �      	          0    34457 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    208   |      
          0    34463    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   �                0    34470    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    212   �                0    34475    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    214   �                0    34484    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    216   �                0    34489    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    218   �                0    34497    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   "                0    34503    faculty_fdetails 
   TABLE DATA           d   COPY public.faculty_fdetails (empcode, name, middlename, lastname, email, phno, gender) FROM stdin;
    public          postgres    false    221   }9      +          0    60375    opportunity_finalresults 
   TABLE DATA           �   COPY public.opportunity_finalresults (id, encode_company, opp_type, enrollmentno, firstname, middlename, lastname, companyname, typeofjob, location, preferredlanguages, preferredtoolsandtechnologies, package, stipend, bondterm, deadline) FROM stdin;
    public          postgres    false    242   �9      !          0    43528 !   opportunity_internshipopportunity 
   TABLE DATA           �   COPY public.opportunity_internshipopportunity (id, companyname, typeofjob, location, preferredlanguages, preferredtoolsandtechnologies, stipend, deadline, interviewdate, details, encode_company, last_result) FROM stdin;
    public          postgres    false    232   �9      #          0    43540 .   opportunity_internshipplusplacementopportunity 
   TABLE DATA           �   COPY public.opportunity_internshipplusplacementopportunity (id, companyname, typeofjob, location, preferredlanguages, preferredtoolsandtechnologies, package, stipend, bondterm, deadline, interviewdate, details, encode_company, last_result) FROM stdin;
    public          postgres    false    234   �;      %          0    43554     opportunity_placementopportunity 
   TABLE DATA           �   COPY public.opportunity_placementopportunity (id, companyname, typeofjob, location, preferredlanguages, preferredtoolsandtechnologies, package, bondterm, deadline, interviewdate, details, encode_company, last_result) FROM stdin;
    public          postgres    false    236   R>      )          0    51685    opportunity_results 
   TABLE DATA           v   COPY public.opportunity_results (id, encode_company, results_type, enrollmentno_name, results_name, date) FROM stdin;
    public          postgres    false    240   v?      '          0    43614    student_applied 
   TABLE DATA           Q   COPY public.student_applied (id, encode_company, enrollmentno, name) FROM stdin;
    public          postgres    false    238   �?                0    43411    student_city 
   TABLE DATA           5   COPY public.student_city (id, city_name) FROM stdin;
    public          postgres    false    223   �?                0    43427    student_completeddetails 
   TABLE DATA             COPY public.student_completeddetails (enrollmentno, filleddetails, internship, placement, internshipselected, placementselected, "NOCDetails", "NOCgenerated", "OfferLetter", "OfferLetterNotSubmitted", "OfferLetterVerified", "OfferLetterComment") FROM stdin;
    public          postgres    false    226   �?                0    43432    student_details 
   TABLE DATA           �  COPY public.student_details (enrollmentno, firstname, middlename, lastname, gender, dob, phno, parentphno, program, email, ssc_year, ssc_percentage, ssc_board, hsc_year, hsc_percentage, hsc_board, diploma_year, diploma_university, diploma_percentage, sgpa_sem_1, sgpa_sem_2, sgpa_sem_3, sgpa_sem_4, sgpa_sem_5, sgpa_sem_6, sgpa_sem_7, sgpa_sem_8, cgpa, cityofinterest, skillset, positionofinterest, toolsandtechnology, "linkedinURL", effbacklog, resume, photo, sign) FROM stdin;
    public          postgres    false    227   @                0    43457    student_placed 
   TABLE DATA           6   COPY public.student_placed (enrollmentno) FROM stdin;
    public          postgres    false    230   ^C                0    43448    student_position 
   TABLE DATA           4   COPY public.student_position (id, name) FROM stdin;
    public          postgres    false    229   {C      ,          0    60397     student_studentinternshipdetails 
   TABLE DATA           �   COPY public.student_studentinternshipdetails (enrollmentno, firstname, lastname, companyname, stipend, typeofjob, encode_company) FROM stdin;
    public          postgres    false    243   IE      -          0    60403    student_studentplaceddetails 
   TABLE DATA           �   COPY public.student_studentplaceddetails (enrollmentno, firstname, lastname, companyname, package, bondterm, typeofjob, encode_company) FROM stdin;
    public          postgres    false    244   fE                0    43421    studentcoordinator_city 
   TABLE DATA           @   COPY public.studentcoordinator_city (id, city_name) FROM stdin;
    public          postgres    false    225   �E      F           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    203            G           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    205            H           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    207            I           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    210            J           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_user_id_seq', 178, true);
          public          postgres    false    211            K           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    213            L           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 209, true);
          public          postgres    false    215            M           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 25, true);
          public          postgres    false    217            N           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 99, true);
          public          postgres    false    219            O           0    0    opportunity_finalresults_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.opportunity_finalresults_id_seq', 18, true);
          public          postgres    false    241            P           0    0 (   opportunity_internshipopportunity_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.opportunity_internshipopportunity_id_seq', 9, true);
          public          postgres    false    231            Q           0    0 5   opportunity_internshipplusplacementopportunity_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.opportunity_internshipplusplacementopportunity_id_seq', 15, true);
          public          postgres    false    233            R           0    0 '   opportunity_placementopportunity_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.opportunity_placementopportunity_id_seq', 7, true);
          public          postgres    false    235            S           0    0    opportunity_results_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.opportunity_results_id_seq', 107, true);
          public          postgres    false    239            T           0    0    student_applied_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.student_applied_id_seq', 96, true);
          public          postgres    false    237            U           0    0    student_city_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.student_city_id_seq', 1, false);
          public          postgres    false    222            V           0    0    student_postion_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.student_postion_id_seq', 1, false);
          public          postgres    false    228            W           0    0    studentcoordinator_city_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.studentcoordinator_city_id_seq', 16, true);
          public          postgres    false    224            *           2606    34546    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    202            /           2606    34548 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    204    204            2           2606    34550 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    204            ,           2606    34552    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    202            5           2606    34554 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    206    206            7           2606    34556 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    206            ?           2606    34558 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    209            B           2606    34560 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    209    209            9           2606    34562    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    208            E           2606    34564 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    212            H           2606    34566 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    212    212            <           2606    34568     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    208            K           2606    34570 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    214            N           2606    34572 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    216    216            P           2606    34574 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    216            R           2606    34576 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    218            U           2606    34578 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            Y           2606    34580 &   faculty_fdetails faculty_fdetails_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.faculty_fdetails
    ADD CONSTRAINT faculty_fdetails_pkey PRIMARY KEY (empcode);
 P   ALTER TABLE ONLY public.faculty_fdetails DROP CONSTRAINT faculty_fdetails_pkey;
       public            postgres    false    221            t           2606    60381 6   opportunity_finalresults opportunity_finalresults_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.opportunity_finalresults
    ADD CONSTRAINT opportunity_finalresults_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.opportunity_finalresults DROP CONSTRAINT opportunity_finalresults_pkey;
       public            postgres    false    242            j           2606    43537 H   opportunity_internshipopportunity opportunity_internshipopportunity_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.opportunity_internshipopportunity
    ADD CONSTRAINT opportunity_internshipopportunity_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.opportunity_internshipopportunity DROP CONSTRAINT opportunity_internshipopportunity_pkey;
       public            postgres    false    232            l           2606    43551 b   opportunity_internshipplusplacementopportunity opportunity_internshipplusplacementopportunity_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.opportunity_internshipplusplacementopportunity
    ADD CONSTRAINT opportunity_internshipplusplacementopportunity_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.opportunity_internshipplusplacementopportunity DROP CONSTRAINT opportunity_internshipplusplacementopportunity_pkey;
       public            postgres    false    234            n           2606    43564 F   opportunity_placementopportunity opportunity_placementopportunity_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.opportunity_placementopportunity
    ADD CONSTRAINT opportunity_placementopportunity_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.opportunity_placementopportunity DROP CONSTRAINT opportunity_placementopportunity_pkey;
       public            postgres    false    236            r           2606    51690 ,   opportunity_results opportunity_results_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.opportunity_results
    ADD CONSTRAINT opportunity_results_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.opportunity_results DROP CONSTRAINT opportunity_results_pkey;
       public            postgres    false    240            p           2606    43619 $   student_applied student_applied_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.student_applied
    ADD CONSTRAINT student_applied_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.student_applied DROP CONSTRAINT student_applied_pkey;
       public            postgres    false    238            [           2606    43416    student_city student_city_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.student_city
    ADD CONSTRAINT student_city_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.student_city DROP CONSTRAINT student_city_pkey;
       public            postgres    false    223            `           2606    43431 6   student_completeddetails student_completeddetails_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.student_completeddetails
    ADD CONSTRAINT student_completeddetails_pkey PRIMARY KEY (enrollmentno);
 `   ALTER TABLE ONLY public.student_completeddetails DROP CONSTRAINT student_completeddetails_pkey;
       public            postgres    false    226            c           2606    43445 $   student_details student_details_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.student_details
    ADD CONSTRAINT student_details_pkey PRIMARY KEY (enrollmentno);
 N   ALTER TABLE ONLY public.student_details DROP CONSTRAINT student_details_pkey;
       public            postgres    false    227            h           2606    43461 "   student_placed student_placed_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.student_placed
    ADD CONSTRAINT student_placed_pkey PRIMARY KEY (enrollmentno);
 L   ALTER TABLE ONLY public.student_placed DROP CONSTRAINT student_placed_pkey;
       public            postgres    false    230            e           2606    43456 %   student_position student_postion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.student_position
    ADD CONSTRAINT student_postion_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.student_position DROP CONSTRAINT student_postion_pkey;
       public            postgres    false    229            w           2606    60402 E   student_studentinternshipdetails student_studentintershipdetails_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.student_studentinternshipdetails
    ADD CONSTRAINT student_studentintershipdetails_pkey PRIMARY KEY (enrollmentno);
 o   ALTER TABLE ONLY public.student_studentinternshipdetails DROP CONSTRAINT student_studentintershipdetails_pkey;
       public            postgres    false    243            z           2606    60407 >   student_studentplaceddetails student_studentplaceddetails_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.student_studentplaceddetails
    ADD CONSTRAINT student_studentplaceddetails_pkey PRIMARY KEY (enrollmentno);
 h   ALTER TABLE ONLY public.student_studentplaceddetails DROP CONSTRAINT student_studentplaceddetails_pkey;
       public            postgres    false    244            ]           2606    43426 4   studentcoordinator_city studentcoordinator_city_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.studentcoordinator_city
    ADD CONSTRAINT studentcoordinator_city_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.studentcoordinator_city DROP CONSTRAINT studentcoordinator_city_pkey;
       public            postgres    false    225            (           1259    34589    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    202            -           1259    34590 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    204            0           1259    34591 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    204            3           1259    34592 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    206            =           1259    34593 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    209            @           1259    34594 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    209            C           1259    34595 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    212            F           1259    34596 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    212            :           1259    34597     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    208            I           1259    34598 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    214            L           1259    34599 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    214            S           1259    34600 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            V           1259    34601 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            W           1259    34602 &   faculty_fdetails_empcode_76d25783_like    INDEX     w   CREATE INDEX faculty_fdetails_empcode_76d25783_like ON public.faculty_fdetails USING btree (empcode text_pattern_ops);
 :   DROP INDEX public.faculty_fdetails_empcode_76d25783_like;
       public            postgres    false    221            ^           1259    43462 3   student_completeddetails_enrollmentno_2aa54c83_like    INDEX     �   CREATE INDEX student_completeddetails_enrollmentno_2aa54c83_like ON public.student_completeddetails USING btree (enrollmentno varchar_pattern_ops);
 G   DROP INDEX public.student_completeddetails_enrollmentno_2aa54c83_like;
       public            postgres    false    226            a           1259    43463 *   student_details_enrollmentno_134c5f4a_like    INDEX     �   CREATE INDEX student_details_enrollmentno_134c5f4a_like ON public.student_details USING btree (enrollmentno varchar_pattern_ops);
 >   DROP INDEX public.student_details_enrollmentno_134c5f4a_like;
       public            postgres    false    227            f           1259    43469 )   student_placed_enrollmentno_6c96eb44_like    INDEX     �   CREATE INDEX student_placed_enrollmentno_6c96eb44_like ON public.student_placed USING btree (enrollmentno varchar_pattern_ops);
 =   DROP INDEX public.student_placed_enrollmentno_6c96eb44_like;
       public            postgres    false    230            u           1259    60408 :   student_studentintershipdetails_enrollmentno_c770b603_like    INDEX     �   CREATE INDEX student_studentintershipdetails_enrollmentno_c770b603_like ON public.student_studentinternshipdetails USING btree (enrollmentno varchar_pattern_ops);
 N   DROP INDEX public.student_studentintershipdetails_enrollmentno_c770b603_like;
       public            postgres    false    243            x           1259    60409 7   student_studentplaceddetails_enrollmentno_21f8a697_like    INDEX     �   CREATE INDEX student_studentplaceddetails_enrollmentno_21f8a697_like ON public.student_studentplaceddetails USING btree (enrollmentno varchar_pattern_ops);
 K   DROP INDEX public.student_studentplaceddetails_enrollmentno_21f8a697_like;
       public            postgres    false    244            {           2606    34606 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    204    2871    206            |           2606    34611 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    202    2860    204            }           2606    34616 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    216    206    2896            ~           2606    34621 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2860    202    209                       2606    34626 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    208    209    2873            �           2606    34631 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2871    206    212            �           2606    34636 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2873    208    212            �           2606    34641 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    214    2896    216            �           2606    34646 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2873    214    208            �           2606    43464 @   student_placed student_placed_enrollmentno_6c96eb44_fk_student_d    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_placed
    ADD CONSTRAINT student_placed_enrollmentno_6c96eb44_fk_student_d FOREIGN KEY (enrollmentno) REFERENCES public.student_details(enrollmentno) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.student_placed DROP CONSTRAINT student_placed_enrollmentno_6c96eb44_fk_student_d;
       public          postgres    false    227    2915    230                  x������ � �            x������ � �         p  x�}�ݒ�0���S�	:1 �}�����e&H;y��-Y��.���Y�.~��ӭ�O��n�c-t��~�H�v��u?C܄�*K��a6N�	OՖ�;��9���x7�<O����]���Qw%Qp�閻�48�tG.%k�r���Ώ���Ee����gn��!ͽyl!T�%�X7T��b����u�J�܉'�	B��C����x�:A��N��7�X/8T��n~�rGO,��a�A�;{L�'3n˻h��}l����1�F��xN�9"Y�sκ#�*6�sX�a��Փ�P�(|Ab]1XԽ�����^���HU��L���I�[U��q�"*0�w�X�j�f)����SU��a�����?w �pX�����Ӹ�gS�G�� sǔ�D��4XQ�� ,rAͪ>ĭeS���}Z�=U-j�A��s��=��Q֙g����2�_�̛�v�?��jq��&�8#��[&;:�6���؅��Zmw�PĪ�-ɑ�rN��w����G���.z����ejO��lp>2u�t��.�H+�KN�o�(��?����"����� RS[�W��s�4L���c	��@&�YB��B���"�<��2�����LehevB^�2�2K!��L1�VH/Q��*�-O�M�ʓ2E���H$CQ�D�
�Q&�����9�	)d&(ҩLH$3AQgB�	
XW���^v�]C���A��d� �r��>2t�Oۗ�f���Q���U�8���*q�cT;�Ʀ*��'�6�U�.F���2�	c1��B}�u��_n��n�XM�W���~����=�Ĳ�w��W�8�)���Jq�SJ����t�$T?�R�J��8      	   �  x���[o�0F�ͯ�!o�`���D��
�r	�4�BZ9	��+]�_��v�����7[3�9�C��;��=��5�\�@���A~ɄҷwG��k��ew�q�p�Oî6I��6�fv6�d�(z@�71k�fPnP��Ё�./�ʸ�2(b�ʇӯ.��P'�l1h�gy�T:E�#ؾ|��X-m&��$l�Fۅk�)����E������Lׯt����*,t�(�$LQ55��j�aqdP�Ȗ��j��Ŗr��㮹��d�~D7�x<>84���Kq��������L��h@��4L���@�&E��L� $��>�a�zYR֟>��5��nF9e��K���ɬ$v��	�)����G++��d4�]����^�N�
V����#�3+��c��Jp[�{���4�~ ��&A���s��V��W����(���2x˲O�����0�e�6,صHr��b�I�k��
Z��� �"[zA�"�<m�J�M���l�Z��D���      
      x������ � �            x������ � �         �  x�՜[sGvǟ�O��SR������*?X+�"ծjcy׎v�$ 		E��.�f�{N��F�
 i�)����_�����u���|�p0%?�А�I��9��;�3�\�O?��O.>̮�/�O��<y�\\����}����z3��}\<��ɓ?̊o6�w�&��l�i�~�t����^��~�����g��BkC#��,�3@b�ӱɲ��89�eS1[8b���z�0iH@ �z;�w��f��\OV�����L�e��=�l�l>����`��i�O�;n������@�� 즄�#J��p�06B�F�8�B�Sp����C�F@���$�a���Jё;��-4+m��(Ӈ����fqs����^]_�n6�����=y�b�t��qʾA^� ������rv�����>塰*e�9vA��8g�N��5�	8֔�A�vk/��� (K���)`�	i�s�|�Q��DǿY�ҏO��HS��톯g��ϫ�y��%_��4E�*<��M"�A�sC���I��AuHS�M�C<Am��?[�oGm՘�Q9OM�H�᠁���x��,WW_طm�s�'�	���y8΃�>_$��{�5��yX��ԉ��H��5��yT��SS(�����8�-�S�	춚7��@���Ih�L���q��x9rƆ ��x[��"B��@�"��"b�� �M�	�n�E��㳪U�<T/	,i�K��FyT�@y�t�<�������-�ց5�yE�BW*�JP�p���,�JƵJ����'q��`V�0�V�ՠD�h�Mڪ��J��r���c�
�%#��>����$��%K�>��+����#Z���h����?��d� X���`��h�� �4�*�%õd���E�ݳF+�גQ"Q��#Z��d��L&��S�n�8��%õd��9$%���,�dp\2\KF08�h5���Z3҆�����G��ךM
U3��Kn�j�5�F34�0�h5��a�M,�Y;uf�:Z��f�hF�Hl|.M�����kF�f�&�h7k���q͈����:�KV34�1��v�h%�%d5C㚑B3!'�(�(Ns.�(��������f1?���\O
׃�1M�MrCY����v0�L���j0E�����-�WtҸ��#�j�hx��)-͟�+:C���x�#�試�)h���`e|!Ҕ+`N9�t�B����E��!�{,Lc�:N�KT�`��cCc�����a��^�bX)-�,M�qQS��g���a-�8�p9��kS������'G���}O�*�`�����6S��p��[\�q0u�U��}�+n0�nq��(�������������@�@Ш��#a�|o}g� �f�LCN�Kж�
5���B���Zz��	N��j�����=�����-]��U7��X*f���)ZJ�Xco�:�9m��@�C�S�\�:�\aǌ53�
ر���ʋ�z�ءy���^t����4�C�>d="TL���>���h���`~��T#[W�ی��F;�`�蚸h�! =���.yO7!D'��|qO��9��.�����~���i�b���vϲ#�6�Q+�r��#Y:���F�S]RrSw��� ��'3�b�dY�k�q���
	k�����T_�,�Ҹ}��N\1E���G[,{t�p�Ds4%?�⻎m^,�招�@~}19_�n�����[�?m����a�Y���|��$o�U���\<�>l-�>2�����֐����ᶗ����'Y��5t�Q..�.���'Y�jK8wU������{�;\�h>���M&	E���N�ر4�!�D�X�S�-+|�ƚ ���#�8��4u��Tg�'^p��kIm���)~�x�:ŭ�R��3��ǹ?9?b�i߮���O�p��n��N�4��<�N^^�[�?�'��������ջɫչ��+cu3y�z��yv��<[���\]/n��iv�?���5j|;�v�B9xN��F����.��L��o�GGg�wY�m1p*FʽQ҂����F_� �Q��Č��u� ����M���9ߟ��Z�`m��䚦A�m��<��r(� e��AN�(�yzp�b�5��џ]��e��"�)��3��Z�GM�䪨E/;���s�{V8`�����z��u6S��\����9�m�hq�i�!�]IÐ�+�`�1h6���!ZF,i����b��P0�{I����d��wJ�wj����Է
��#���/�6.�g��(T#�,Q7�*�?�6,\3b{A�k��%dT2�bh6%Ҥ�?�d����տ�^��6SI<���|v�������[��f���}	&ˠ�����F[$�e�|��篿���?^�t�|��9�us���o�>�������?�|�_��}��7����h��bv5��������qw_|���/�W�7�o����ڥ��Q��8��8Ȁ|��ېV�Xj��=��=�ɝ��G��F�{��Bq��v���x�4�(?t��v��u��H]ֈ�uA����>�_<�g|}��q�_��/^�4�>�g��l��b���zSlnPa��?-?�g��mT\�l�Gc1�W������c��˧��O�����f��8|��9�s`�dJ#D|T��s\�BŨ��֎�=N���8�}��Y}n�KJ�mg���6�%��<>��ݨ����#��|<z=D;͗sh�+��9�dg���!���@g�� ���.�������|>�z�����7�?�/��ۡ[���Z����l��X��	h���|�ײ�6��?��~[�:�~I�KK��l�&׾� �C�e0����k���^m�����.���n�wy��k2?~Av�K�Y`� �#A�����0��w/`ؤ�ˤ���6g�2g�0�������0���[DqYDq:�a�9.�9q5�}|�=�V� E$�?bx��%���C,CJ��� ��X�R�R���ZI�_1�i_��ZjH�����jI4&�/��H-U#�DE� �[�Z��;9�q�Qx�1�kϐoi⚂���mIPْ��3lo9�׺���n���מa��%������\q��0\ɨ=� �Uu*�gbDˈ%�x�Ծd�JX�-���F�뱥��ިqˀື�Ķ�l�m��hJ�����f��hr�����0l���o�ߧ�{�Z��4X��6M�`��6��S�X2��Ҝ�L��;�æ@S��1���~\��/�H�<�Y��� v�Fe��#�?cV{k5��B
��@Ǭ�:��ǀ�K�ĖNR�N!3�t���NR�N!2�C�:�b�')���F�����������=aH1J_��C�2����m!tח�&7\&7�x�����MyFD쏰��6T�6q@p�as*s�8���V�TV�q`���~9��T�q`�*B����lHe�h�(̰5 �
���(�K��{v5�\�DÌ�lUF��`���r9�XF~}�{�ή��}�-&?�����٢/�����-J�-�8����٢��bJۗ�]����;zt���-@a��o�G�ݔ�+�����n�7���-"�ؽ�֍q,���}��$���L�.�@��<���4.��W����y����UNtbG��S�/K��aw�����5lo&K������9�@���������*���RK`��4�k�1�����&'�MQ�]�,��EQb߿h�9G?���,CC�jqS�_���� f*��#��[��W_���5�            x�uR�r� <K�	N�ǿ�B1I���A��/vl��������
Xrg�@gE;��T�b�$98�\�赱^*�,��bOm���K�+�w<�Ja�:��M�cv��A^�r����&T'0��d���T
�Nz^>P5�y������օ:�S}��X_��S\v��kښ�|.����nGv�VݏĜ�z�k ��ws���{�dYJ�FUfBG�[z]��>z[���Q�\�B	�8t�.^���ة�e4�����ܷ         �  x����n9E����{��HIԷ�qk��{\`�~)7�5�n���Ixt)^��|�N���t�l��q>]^  ��q?������Rʘ\H��~�^�"����ń*���a�ͧ�D����b���Re`��=�p�(���YBq��}E,��
A$�#��`��$@c��!��^3�cR����%^ J|��qb������|��7+�_�����E��EB��EE�|Xq���i��r�����Xe}ft�QSӓ����x>�����Lw���B���8�L}�H�$�A�j͸��������~�]�*�7&°�i�L�G�l3P�o<a���[���s<����<η늃`5u�#����%���t���#��b,�ѬW�!����czDǍy�b���̈́�dE�S����)O%��9HkO�''��͗V�ZDo��eo 3Psb|rb��$���ǌb6��!�	q�ļ�W�Lf'���t�IM�!���mИ9��&X��Ji_.��܊*���"�9w6��1� ~�p�����H�J�`5�?slfrp�X/%�5��н�<E���x��BH�&DjB�^E��g�6q��JZ;eA0Y���?N����*�vb%ž��e�Vi�����,�!(<*�ON�5��?�A.Em7�~�b>���r��?o�y�����0�O�Ϗk�m��$b��rڏW�O
=��˾
6�S�)]���`Y1X�$ж�u1j��d��%��١��%��Y�al��$ ,��VA�l����%Gx0���1lc�2�g��~�8��y��n�����t��K�7������Uے��S�B��g곣�5��H��(�����m�~����Q������rpl٦&�7?�3�2�·Ӹ����1R�g�%�^[J�v��F>N���/������c��w����7�>�            x��\Ys�8�~���z�h <1�%��1��L�&c_xH� �:(�~��r�\�3����G��]$$2��� (�ju��}R���PR��²]���L"Ս�LR���w3�D�h�͌)��w�9�Fwx6Z%f��.��i,R�.�i�*���2����[Ӿk���4��g2���l�g��Lyn�>�?l���':ɪ}&�K�,��t�>�>�T�*��U���tS�Dϋ�#�<��s|��a�'�OV�}�2��YZu����7&��ϙ˳ѝl��Ƴ�ֲYbf��-[�3%73�iL�e���ֵ��g��f����D�/���/X�%�-�ɺ�������~�nZY�n���Ų�j[DQ�9�x�*��ZByf{�e�e��݄�݊[�T�/�7z ���o����j�?_�|Z[v�Z�T�F!��9�Inus�]���Zβ��,�n-��g��{�"T�T��*X�ɋjOM�1���#���^��S[��z������P�E��,��x��N}Qmԭѡۗ��ಣH���G���u���B��bz+����HV_T�v<�ȇM��p��n�'�;n�Q�e��F.2�	�����ʭ�$��n�&q�(��s"�/%˙w���-��X2�Ed��t�"Vx�Tz���l͓�(�c\�X�����n,c���[{#��l/�e"?'�r����uV�`&H��b�I8�z%��R�8D�E� _�#�\7�X&���k�m��ZӬ+�� 23�l�{�YY�fv�x�{�$�2�R7�g0&�7��o @����]d4'����m���CH��^Jr�O���Ns^MA~!��Y����e��1ߔ<X�.����a�͏�z���~�o zaQ 6�F1����bPo�<;��bZ�e,��1�ȜZ��)V_��sqօ�"�θ�_-��;���e�i��)�S4')�,�C?��R���u�fyVd���'qT!A�`����I���1?�G�ڦ��S�vE{���l#�7&��&	8��
�s���ĴR3�Rot��F��)h9���WqR�Kٴ=&�s1+;�{��1@������l�x�B�=G<s�~+�[�@��t�^o�ZgL�;V�����洮���Cc��}a}�Kы�L9H]Uee�Q�T�F�T| i^l}�n`��	���θ���d��@�g#�����v�,;�\�`�C}o�����J�1�#�:E� "uk�94.�@xtz��)(��L�$���\�R+ ���G0%IHb�Ĳ]������iD�c6�c%�=１�<��"6w �n)�Oy��@S��򵮲�j��$UR�h[*�C�4	c���EM��Sό�ljȡ�im�9L��!�����eM�o��"��q����&}A�-�dL�J��D�,��"�%�<O��VJOZS�(Du�Gfb=�����(R��"UGM��*Pt,��n�r�5\��cV6�"�,�CaI�.ul��;-�e^ٺ�CY	b%!;N�=?�?E,�����.����P�GaS"��;��҃����j�?E,@T����K�$��*��!�⭦�K)Q���r��7@5^=3��E ��
R���&�T:���J�����t�UK���l�Zoڈ�FO�L�6[&rZJ�ܸ6^�R����Y"s�R�w�anv"��.p%��՚Ƹ}�ʽp���F��~a��4I�i�O�����V=O7юա��3lG���@�U�]*�p��,=m���R����6���T��gV�FI$�@�]G�vAA��ځ6�:��*��Z��	�s�_W\��RY��$+�|��
F�m�'�����ϥ0+#�i�b�������&�[I��R����]��5V�Zj;��K�t8�����N�<�1�=5;SGVq���w��嵛���C&��������h��u>
�՛�o��}���RW/�%�q)�TB��>�!)@Y��ʠ��J����/D���@�$��~�Rɥ�V��&%*�:�xQ�}Ρ�hZta������̥�� 1���:� ǟ���6[s���~�����R�%�>�����Q�M�!�9S��a3sƲ�5P8�NcQ��i��ʷ�:� w��*9�k-��f_J��UY�؁�p+q��T�E}tx�(2�F��FD��_l�T'�6�X!\Q�ꨰ���?���TN��J*�Uz)h�*���+�/X�j��Ap�r+�ȱ;��lH��+��n�{���"S�Q�+An݀�k�����?P�Ou�qֆҢr̄�=��`b�Ô��3�$p�b=�B��k_]�F�����L�y*�[0�{�����쮙=��|B�)�/�ۀkWF�I�G��TA��A�Y�\/B>9�1�l1���U��qi������:� ��$*^�if�a8�2��Y@�kkH�`u`�G�	��{�
y���:����}�^�����u"v�'�� �f`����3��L��W+���pOb���q^��ڐ��b�l�G����ޫ�L{ڙٸ;��E��E����� k����! 8�T�����*��y:�F�Y�!d7��Mh�Z0������:HT�؝������:��*�.���;��1���<is�:VZ�˛����X��O�k����O�j&W�z�L���F`��}2���j��_�����6Bt�wRW`�����n�z����P:��-�H��N׹xܰP�`����p~|�J�������=��3���ʧ�s���<�}H�e����C<wG|zѺϋS�ֱ��ZVyOCS`$ Y���W���Z��}���>y ��`����K���;�Y>��0V:n=�0F���-��XO:�!��3�~ڀ��w&!+<c�C_~.�����4X�:u�d�<'�{=�">̷bb-K�ʢ���x��^;���;���2X�C�=������~��W�gƾ��& #NB~d�q���~�������/�-c["�����;z��'�,�uz��ڭR�1pV����g���=��੷s��*���>�g��`��x$~b�a:�����*=BA�0~|�D64�6��~q��C������@�*��a��f�vb��^�?�	q���C�J��7V s?�azOg��<^+�9�I�����'�a��������'���C�3�������CX��ro	r��%�|�'F��¡�JӾ�A���1�5M��W,$��:��z�"�b��ga�^�	���/����^{!nQ���Q�=�2��}'����	8�ԅ�%�188�}h�s�����l���:춧G)���ы�X����(�`m�g�]�s]�g�����Μ�v�wt�����, �˽����+\7 c����s��c}�A@�	��\
���
��Aݔi[�I�}I}���C�ݘ"�'�����`�nLf�a�B�5AJ5:�W��D��L����
�.fm�W����Kj5{�.���kˠ�����4+��8������)׵�}9�"��@tKhn�"�R�ctHp�&���>ƾ�+j���c�^%V'���=��7��>����2��35�����/s�/c���CfB%��v�V�ρuL�P��u3Äj&�<�l���������`r+�� ��c�]����^G��(Ie�)�SXnw�)Ǭ�T��ԭ|���*�`�0U�����ښ�_���O�S+K$
u��?[=�n)�%ʀJ�\7�K�|��Ja���:8����������X�X����m�%�-�\ �����MLg�x�$s���oM�Wqb��c�=�'G���c|�����RY}��4j��q%내M\ǐ��M�< ��sq�t�hO�9�]c���5��&�@(ujߠ'� ����Y#S���/�)�߯ƫ��=-��8G�s����S��G^���܈���7({��&8�}��x�'���&x�
8_��p-�E�t����|�3k�N[��J9��N��z/D�+p�[��������x�"(3�<h�$���[��UK�ͼ��� �  벾��m�ݐ���7�"@?�z�Y����X��ƚݿ����Ư�`PB��h�Aяq�*���`|qTFP]S��ԡ�<=��Jݡ=]�;�h�V�P��ۂ~2�G뽺�[��*��%��V��A��nJ]�vj��n��g��S�R7�B�-�H�]����'T���O�N��$�O�.*vכ}s���n�g�Y{|�֕!�2�Y�$E�E�:��	f��D��ʡ;>GYϙә��F+�J!�`OŎ1a͞�eP8K�1�}u�]frK![GMF��t�1ͨO���Fb�m0�<���Ou�����',�M���E��r���k�ڮ�I�ʆƩ%�gq���t��d )����P?�urLv�Ӟ�8���X�w�ps�t����;�6��1�^��k�[���l-Ȫ љ57���L�Yٿ����y��2Y[���gz�ܕ�k�,�P�zI���I"EQ.Yʖ��k��~�YS��֫�:���$�O�������� s��� ����w{Z�h!�-U4����j���ׇ�}��')2���u��(�-��|�����M�lx��1����O��'���p˼v�)q��L��D���!j��0חKXR_e��uI�l�C�_��X�(�z]Q�Oq)d�����z��5ԡ�n��������=�(��S��>���(Χ}�>�归���Xt���m�c9HA�2V������S�Q79��oem �4tI�c���9+��D���;ک�&�ڜF�����e��D/�!	c	_~�FaP�Q ����bs�&������|���@��B�Q`L:A�zQi�ѪI��VB�u�����k�Q�A�1�i-�໢�ف i��TL,{�,q�Ҙ"s��^���/~�t���|m�7$BQ��A�*�V�&�B��G.Ɗ��s_��v��s���Y~�s+��\�3o��Ⓜ�A8���'̳':c�V
�h��C�en�G�޾�[�Tv�S�&�9{�d@��]����]˶-	�"g��4��|e������LRk�$3g*��6+[��=m]b1�M>��T��M"~/�%�v���nI���Q#A�1���,"�Y!d-S@9��c���U��W�4���V��'Ў�Il�Qzݯ��ݜ�:��6�F��1mC����]˟|�!�V�`E�`]��]b�!�i+y+�4ř���^37�` P��"�݉����b����#xe	�g����ͫq���������S�0& �^�����+�`�~���&xx�K3���N��M�g���	��L��O	|k �_P�M|�x�!���Kv����D��2Γ���:)W��P%ҍ�͑	�ag�Fs:�]l�% ]D�y#�<��#�0ܷ�d^�=��~�ʑ���T>s��������F]�6��ݳ�K�$1;��qg��s�����w�m�a�;�0��wy`���h�b���s2s� s����-�y��0|�7��������F�O�s�P�X��~o�0_��~�G{�kg�����������#��,����h,���d�z�{{Dy����۽�~�L~��o���c�V*�� {����X}FH��۱po�{��a��Q\�~+���x�ïǒ_��z|�j�r�xL�����3](�H?��)����䓜&���1�S�0�$Wj�RP�k-�����Z�cP*�3ү/d5U�B9�IpRՠ�7��tL�XGz�?�;w�@Ve_6��{��� ��|�         >   x�342615�J�(��,����ļ��LC��������\NKs3Sc#CCNw�=... ���      +      x������ � �      !   �  x�e�Oo�@���ë�^%#�����@ǥ��_kz`*��@d�[_��6�6�~yO>��C��Zv�b�~Љ|�����Fe衪`��-�X�*p��&K�a�����FLd�)�OM�zRCdY`���Ϧ:O��=��#�cV�|�,�=�}��X�{!i�6�^��7��{Uo���G>r��� �U�H�cX������3�������ф�t���z�,�"Q��PX�(�/d$��>�@��O(����t��n'Kޫ᫋~�z�`��7P��4�3)���,c���eMg�k�`$]�ۤģc�RQ.��u��q�,��D4]�4�i�{ը�������h
�L1=..U3(p��1���r&��#�(�5,�HVW��KM�os�E7��t/��i����r      #   �  x��TMr�0^�S�E�?�16N�E@�1N�	$NXȖ�5�%*	Rz��{Ğ����4�L7�,K��{REq�Mi'tE�\P���*��A;���~}����|�5�E乞{�6��a$�R�5���J�i�"A�}UKn���I�9�R-��~�)����+F��l���Z�%Bo�u`YU��4/��X[tri�\�ܮMՊ�T;(�f4��oK�UvB@�s�h�`e�;\P����[u+�X���j!���j�h([���cn�al�����|�Ndk���gP6d��[�A�Ȕ���Xf��O�Ll���2�m���n�sӜ���!Vy	^���ύ�
�;j �f0g�!�{Ż�x�1��s�`l)rE	3�)�Pη�O24���w����Z#XxR���ss4�\�4���4*F��K��Wy8YG�`E����5�"�*cE'����Qa�6�$�bmJ)lG�a�t<�]��a��h�`x:�QoT��W\z�"�.����&����taúX�qP"��+�w�eE	�0A݃���=i?����5��_���z�*�b���~D��G��b|:�;c�q�.���4��ҫ�ga�>��������hE��[��Y�2�F�?܈K.qԏW���W��8�&:�;<g��#�%�Ѹ��E�(�a.�zN���u6�^<��[�V��7�p�      %     x�M�Ao�0��������x� �Xc��j�K����8����=y���^Ukz+�s��d�cp���܍������ܝ9ٛ蔻P���:�FI�	���ef!���a4F����z,ɾD2�״:b�Cb}��qFYFX΃r�J�$��y�����9�H���Γ�HY$ߏ��r6A�$4�8�7y�+X+�]Q��ֽ�H��ЦS���ʴ��Y@�����3R/����`kMⴒI\~`z���Ed�GFuβ�g���O�q�_�9d�      )      x������ � �      '      x������ � �            x������ � �         8   x�34743244400�,�40�� �_~^*�!\�1XY	!e�X�� )�=... J0`         9  x��Tmo�6�L�
~*�֋m�(6[��T��BK'��D����=*��9�0��������s����u]��,#w� mI�����%����9��	H����A0!QD8�\��7��f'��rvE�����n�kQ3^Y��1��hB�y�0�
��/��X�-���q>������>�i�sOD&$ai���j��i�ND��7rBc?t��4x��;'�]	;��i�H&D�TG��_D\���$;u��<d:�
��~4u<Ci��|,��x��D���W�x]�#k�#�!����8И��Wr��Y�T<e�KA��	*ـ��fVs�[���������ry٩�w`JpQ�í��ǐޮ7�[�A	�T�t�nE{5��L�-k�2R|؂�	�;�(i�@�Y��C��\���V�]"�ް��اSQ ��-�"Ԑ���%��ފ\�-�q�\�9OM�k^p�)�L=��&�u?A�iy�K׍�5���@��rM��4<hgT^8`��>���F�SO:�3Q�*��]�zo%3�6�����Em�C���k�Z���w쉝ۯU�V�͹�G���^�B��63�)����f��(�I��okK���7z:���A�Xb�M?c���Q�wl?A�TffK&X�ߐ��ܿ��z�Ժi���~��
)�
���N�_Ҋ�9W�˿F�Q���L��o0��p1h��b��@�
�|��~hA�63�c7J��Me�#<��Xڡ�;��L�;c�v�M&��{��S������4��,��t�9�!���e^ �V��oH�C���Z�LfQ�1��Ο���b�z��z�V            x������ � �         �  x�uR�r�@<�~�EUB�01W@T��9�2H#iiW���e}V$�Nn���VO��0��1�Y�T2%'��?q�6":O�Z*i�!��ݳ6�w��)-�b��d�T������1�U�VʱQ�P�������hO�ߩMa��g�	�G#�&��*Oא��=�aܱ��"�ҕ~�
�(=�H��KUx[-�gƛu�:;���K�9�T�M�;�7�s���#X�B:��5��v�p�2EZ�q�q�d-_O:=N Y�$�]k�$�~K�BB[$�uů���)+�6h��3U+2x��h�a���F!�,����n�=W]�r=Epk��)��ឞ�����h��r�e��jƭх��n�	�Tf���M=A�c��|�Ȗ��F6�����~��� �ڟ�r���i�v��)��\��گ5)*��Y#��m;~��� ;��      ,      x������ � �      -      x������ � �         x   x���t��MMILJL����LI-�8�3R��3�9}Ks�@,#N?� �G�\Rs22��3S�R�K�����9J�R�M8��s�K�M9݁J22����b���� ��$     