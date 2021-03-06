PGDMP         )                z            congo-management-db    13.2    13.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    41629    congo-management-db    DATABASE     j   CREATE DATABASE "congo-management-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
 %   DROP DATABASE "congo-management-db";
                postgres    false            ?            1259    41637    roles    TABLE     ?   CREATE TABLE public.roles (
    role_id bigint NOT NULL,
    role_name character varying,
    access text,
    status numeric DEFAULT 1
);
    DROP TABLE public.roles;
       public         heap    postgres    false            ?            1259    41635    roles_role_id_seq    SEQUENCE     ?   ALTER TABLE public.roles ALTER COLUMN role_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.roles_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1
);
            public          postgres    false    202            ?            1259    41701    user_to_access    TABLE     ?   CREATE TABLE public.user_to_access (
    user_to_access_id bigint NOT NULL,
    user_id character varying(200),
    role_id bigint,
    status numeric DEFAULT 1,
    date timestamp with time zone
);
 "   DROP TABLE public.user_to_access;
       public         heap    postgres    false            ?            1259    41699 $   user_to_access_user_to_access_id_seq    SEQUENCE     ?   ALTER TABLE public.user_to_access ALTER COLUMN user_to_access_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_to_access_user_to_access_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);
            public          postgres    false    204            ?            1259    41630    users    TABLE     L  CREATE TABLE public.users (
    user_id character varying(200) NOT NULL,
    email character varying(200),
    first_name character varying(200),
    last_name character varying(200),
    middle_name character varying(200),
    password character varying(200),
    status numeric(1,0) DEFAULT 1,
    phone character varying(100)
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?          0    41637    roles 
   TABLE DATA           C   COPY public.roles (role_id, role_name, access, status) FROM stdin;
    public          postgres    false    202          ?          0    41701    user_to_access 
   TABLE DATA           [   COPY public.user_to_access (user_to_access_id, user_id, role_id, status, date) FROM stdin;
    public          postgres    false    204   P       ?          0    41630    users 
   TABLE DATA           l   COPY public.users (user_id, email, first_name, last_name, middle_name, password, status, phone) FROM stdin;
    public          postgres    false    200   ?       ?           0    0    roles_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_role_id_seq', 3, true);
          public          postgres    false    201            ?           0    0 $   user_to_access_user_to_access_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.user_to_access_user_to_access_id_seq', 2, true);
          public          postgres    false    203            >           2606    41645    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    202            @           2606    41705 "   user_to_access user_to_access_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.user_to_access
    ADD CONSTRAINT user_to_access_pkey PRIMARY KEY (user_to_access_id);
 L   ALTER TABLE ONLY public.user_to_access DROP CONSTRAINT user_to_access_pkey;
       public            postgres    false    204            <           2606    41647    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    200            ?   ;   x?3?t?(H-*?truq?v?4?2?t?/-K-?K--B?2?,?/-??)???? q,
      ?   h   x?ʻ?  ?M?>'?~??!2?x??˽?q?p????L	MsbΞ8I?^Kv?,??~ ??^??P????a?0?7??c/?o!$C????????_? x ??      ?   ?   x?M?Mo?0 ??s?^?????֡?KԈ̭٥???)?????a????^???̕m?$X?P掄9*
SIG?Oq?T?T??Kϛ#H?????0aK????/?LL11?d????zi??:B?~Q??Z?W???Y?zk?????.?7?8}??j?)` ?{??ص!v
?%DH?6ZRU????~e??????Y?6Ῡjx????Eo???ͣ?l?S~??ͦ
???i????yI??ʍ?h??>tM?? ?[Z?     