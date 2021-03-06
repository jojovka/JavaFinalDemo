PGDMP                         x            resume    9.5.21    9.5.21 B    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16535    resume    DATABASE     �   CREATE DATABASE resume WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE resume;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12355    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16551    certificate    TABLE     �   CREATE TABLE public.certificate (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(50) NOT NULL,
    large_url character varying(255) NOT NULL,
    small_url character varying(255) NOT NULL
);
    DROP TABLE public.certificate;
       public         resume    false    6            �            1259    16617    certificate_seq    SEQUENCE     x   CREATE SEQUENCE public.certificate_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.certificate_seq;
       public       resume    false    6            �            1259    16567    course    TABLE     �   CREATE TABLE public.course (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(60) NOT NULL,
    school character varying(60) NOT NULL,
    finish_date date
);
    DROP TABLE public.course;
       public         resume    false    6            �            1259    16628 
   course_seq    SEQUENCE     s   CREATE SEQUENCE public.course_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.course_seq;
       public       resume    false    6            �            1259    16559 	   education    TABLE       CREATE TABLE public.education (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    summary character varying(100) NOT NULL,
    begin_year integer NOT NULL,
    finish_year integer,
    university text NOT NULL,
    faculty character varying(255) NOT NULL
);
    DROP TABLE public.education;
       public         resume    false    6            �            1259    16619    education_seq    SEQUENCE     v   CREATE SEQUENCE public.education_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.education_seq;
       public       resume    false    6            �            1259    16572    hobby    TABLE        CREATE TABLE public.hobby (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(30) NOT NULL
);
    DROP TABLE public.hobby;
       public         resume    false    6            �            1259    16615 	   hobby_seq    SEQUENCE     r   CREATE SEQUENCE public.hobby_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.hobby_seq;
       public       resume    false    6            �            1259    16577    language    TABLE     �   CREATE TABLE public.language (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(30) NOT NULL,
    level character varying(18) NOT NULL,
    type character varying(7) NOT NULL
);
    DROP TABLE public.language;
       public         resume    false    6            �            1259    16621    language_seq    SEQUENCE     u   CREATE SEQUENCE public.language_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.language_seq;
       public       resume    false    6            �            1259    16582    practic    TABLE     N  CREATE TABLE public.practic (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    "position" character varying(100) NOT NULL,
    company character varying(100) NOT NULL,
    begin_date date NOT NULL,
    finish_date date,
    responsibilities text NOT NULL,
    demo character varying(255),
    src character varying(255)
);
    DROP TABLE public.practic;
       public         resume    false    6            �            1259    16623    practic_seq    SEQUENCE     t   CREATE SEQUENCE public.practic_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.practic_seq;
       public       resume    false    6            �            1259    16536    profile    TABLE     L  CREATE TABLE public.profile (
    id bigint NOT NULL,
    uid character varying(100) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    birth_day date,
    phone character varying(20),
    email character varying(100),
    country character varying(50),
    city character varying(50),
    objective text,
    summary text,
    large_photo character varying(255),
    small_photo character varying(250),
    info text,
    password character varying(250) NOT NULL,
    completed boolean NOT NULL,
    created timestamp(0) without time zone DEFAULT now() NOT NULL,
    skype character varying(80),
    vkontakte character varying(255),
    facebook character varying(255),
    linkedin character varying(255),
    github character varying(255),
    stackoverflow character varying(255)
);
    DROP TABLE public.profile;
       public         resume    false    6            �            1259    16603    profile_restore    TABLE     k   CREATE TABLE public.profile_restore (
    id bigint NOT NULL,
    token character varying(255) NOT NULL
);
 #   DROP TABLE public.profile_restore;
       public         resume    false    6            �            1259    16613    profile_seq    SEQUENCE     t   CREATE SEQUENCE public.profile_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.profile_seq;
       public       resume    false    6            �            1259    16590    skill    TABLE     �   CREATE TABLE public.skill (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    category character varying(50) NOT NULL,
    value text NOT NULL
);
    DROP TABLE public.skill;
       public         resume    false    6            �            1259    16598    skill_category    TABLE     l   CREATE TABLE public.skill_category (
    id bigint NOT NULL,
    category character varying(50) NOT NULL
);
 "   DROP TABLE public.skill_category;
       public         resume    false    6            �            1259    16626 	   skill_seq    SEQUENCE     r   CREATE SEQUENCE public.skill_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.skill_seq;
       public       resume    false    6            �          0    16551    certificate 
   TABLE DATA               Q   COPY public.certificate (id, id_profile, name, large_url, small_url) FROM stdin;
    public       resume    false    182   BJ       �           0    0    certificate_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.certificate_seq', 25, true);
            public       resume    false    193            �          0    16567    course 
   TABLE DATA               K   COPY public.course (id, id_profile, name, school, finish_date) FROM stdin;
    public       resume    false    184   �M       �           0    0 
   course_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.course_seq', 13, true);
            public       resume    false    198            �          0    16559 	   education 
   TABLE DATA               j   COPY public.education (id, id_profile, summary, begin_year, finish_year, university, faculty) FROM stdin;
    public       resume    false    183   CN       �           0    0    education_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.education_seq', 24, true);
            public       resume    false    194            �          0    16572    hobby 
   TABLE DATA               5   COPY public.hobby (id, id_profile, name) FROM stdin;
    public       resume    false    185   �O       �           0    0 	   hobby_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.hobby_seq', 120, true);
            public       resume    false    192            �          0    16577    language 
   TABLE DATA               E   COPY public.language (id, id_profile, name, level, type) FROM stdin;
    public       resume    false    186   �R       �           0    0    language_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.language_seq', 57, true);
            public       resume    false    195            �          0    16582    practic 
   TABLE DATA               |   COPY public.practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src) FROM stdin;
    public       resume    false    187   `T       �           0    0    practic_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.practic_seq', 45, true);
            public       resume    false    196            �          0    16536    profile 
   TABLE DATA               �   COPY public.profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow) FROM stdin;
    public       resume    false    181   �W       �          0    16603    profile_restore 
   TABLE DATA               4   COPY public.profile_restore (id, token) FROM stdin;
    public       resume    false    190   �b       �           0    0    profile_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.profile_seq', 24, true);
            public       resume    false    191            �          0    16590    skill 
   TABLE DATA               @   COPY public.skill (id, id_profile, category, value) FROM stdin;
    public       resume    false    188   �b       �          0    16598    skill_category 
   TABLE DATA               6   COPY public.skill_category (id, category) FROM stdin;
    public       resume    false    189   }h       �           0    0 	   skill_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.skill_seq', 210, true);
            public       resume    false    197            �           2606    16558    certificate_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.certificate
    ADD CONSTRAINT certificate_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.certificate DROP CONSTRAINT certificate_pkey;
       public         resume    false    182    182                       2606    16571    course_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT course_pkey;
       public         resume    false    184    184                        2606    16566    education_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.education
    ADD CONSTRAINT education_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.education DROP CONSTRAINT education_pkey;
       public         resume    false    183    183                       2606    16576 
   hobby_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.hobby
    ADD CONSTRAINT hobby_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hobby DROP CONSTRAINT hobby_pkey;
       public         resume    false    185    185                       2606    16581    language_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.language DROP CONSTRAINT language_pkey;
       public         resume    false    186    186                       2606    16589    practic_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.practic
    ADD CONSTRAINT practic_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.practic DROP CONSTRAINT practic_pkey;
       public         resume    false    187    187            �           2606    16550    profile_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_email_key;
       public         resume    false    181    181            �           2606    16548    profile_phone_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_phone_key UNIQUE (phone);
 C   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_phone_key;
       public         resume    false    181    181            �           2606    16544    profile_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_pkey;
       public         resume    false    181    181                       2606    16607    profile_restore_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.profile_restore
    ADD CONSTRAINT profile_restore_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.profile_restore DROP CONSTRAINT profile_restore_pkey;
       public         resume    false    190    190            �           2606    16546    profile_uid_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_uid_key UNIQUE (uid);
 A   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_uid_key;
       public         resume    false    181    181                       2606    16602    skill_category_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.skill_category
    ADD CONSTRAINT skill_category_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.skill_category DROP CONSTRAINT skill_category_pkey;
       public         resume    false    189    189            
           2606    16597 
   skill_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.skill DROP CONSTRAINT skill_pkey;
       public         resume    false    188    188                       2606    16630    certificate_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificate
    ADD CONSTRAINT certificate_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.certificate DROP CONSTRAINT certificate_fk;
       public       resume    false    182    2042    181                       2606    16635 	   course_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.course DROP CONSTRAINT course_fk;
       public       resume    false    181    2042    184                       2606    16640    education_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.education
    ADD CONSTRAINT education_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.education DROP CONSTRAINT education_fk;
       public       resume    false    2042    183    181                       2606    16608    hobby_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.hobby
    ADD CONSTRAINT hobby_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.hobby DROP CONSTRAINT hobby_fk;
       public       resume    false    185    181    2042                       2606    16645    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.language DROP CONSTRAINT language_fk;
       public       resume    false    181    2042    186                       2606    16650 
   practic_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.practic
    ADD CONSTRAINT practic_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.practic DROP CONSTRAINT practic_fk;
       public       resume    false    2042    181    187                       2606    16655    profile_restore_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile_restore
    ADD CONSTRAINT profile_restore_fk FOREIGN KEY (id) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.profile_restore DROP CONSTRAINT profile_restore_fk;
       public       resume    false    2042    181    190                       2606    16660    skill_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.skill DROP CONSTRAINT skill_fk;
       public       resume    false    2042    181    188            �   P  x���A��6���O�0%�"�P�7膢� �M�ҋgt�B^��ȟ��x�������~}]_�~�O��r|�6�W����?�uXc���4$ #�:e�����۩��Gy�.�ī�����<@�3pή	�ֺ�����Q��"u�Z�-��� �;����P���_X5�~�sJZV@Pj����Xr���E�s�9�1zO^���@�0�Cr��}�v�/,��ZULU
P�a�T�J2�o5*��?����ި���L]�ǖ��˜�{�Y�y��H�C��*y�O���d�#��9 �,Ξ�?��4����e�,�h��}X�Uu�p|4=��0�F���J-I}Z�COj�ξ�N�"�H|q�h��3L�����@QZ��x�'����G��b�-6��[���Α@M"���{Z-e|$���d�X�c�
���@����J��(��ªG��b%�N�5�"yD�j�HiL�R!��H|aсo��S�� �14jL}�hftV3M���@�_`|�m�k����Z·�c1i)	}X$�����_X툒��x�3�PlL�9Ύ	[�Z��ʋ��v���`��*���sW?GH̸k �9L���>$v��Q�],Z#��09'ۈ|��ܓS�6�}7�4�X��(�%EO�Z+:��;�Ca5:���w�Xd��h3��
k�l5��b@�Q�j��}��/�|b��k����f��Lq��v�)��sYd��X��;C;YNHaִ(iPx��~I��=_`�����Y5KGp���I&D�89��3��kG|aщ�F~�e���/[%�j�&�Κƕ����#���O�%y�\      �   �   x�����0���)��b�I8u`d�$jC7i?}��R��L>��;3<ny��e��s)kw}�ޟ�G=K��Ǿw�����:< *�|���'�-1��N�F�`�g����&�a.n�Ֆ��UW�Ҏ��� {��^�'"�˧�      �   >  x�͖�j�0���S�ƈ�'��C���֋I��4s��mlO?�^v�NF|��g! /��M�.n��Ls RΫ�BS�w����y����F�������n�vQ��z�������z�?�z٢���>�Uu�����guX���7w�3x�!�4<4s/����rx���
�t�q�s�xz�9<m� �S�{0�3�X���t�"B@���:	"ȱt�ӋOȱ���Ҩ ���K��,��))�\-���c�#�� ��b<# ��rېνP��t�����W��%���P��e�Z�ݏ�j�);=VU����e      �     x�e�MO�0�����/X�3��P��{ً[���(	���}��hҕz��3ό��I�+�u���u������k�ױ+�<R����M��G_���ؔ/�bO��?�`/z�m�h)���Ҿ'��>;�$��1}e[�~:���L����}]���ml�uK�'73l�V�c�s� W}jҮ����@e ,�.�݇�"�w�$���KS��t�J��gUr��J�3�/����eM��ޥ����sh���+���s��}���d�(eZ���W>Gk��GW��60��.7}y:U�ʔx]0�nS�$�6u$�A��꺊�v{�#��tc�:@�Ri�|E#Y`W���uǍ<���a_���6�O�K4^�տ8�8g��h�.&��s�� aʆ�=��n�c3YMpS}f0�����%Z��"0u�u$.
n=	�;��hL@!��"�I��P�׭\h�&W�!�8��$N. :<���%GDV�*�5Oڪ�@�t�y�\L�(��)7m��iH��Ds%�!��ټ8��^1'�9����K����7U�O����x�tu�S�=Bs����Ml��{���K���1xK�*�GX�=D<����=�rf."������
j 
$h���h�U�D�705�����ty�'qU�Hz���f�"�ЁRH�ٵr,�"m��Bݢ���R�y�
K8L{)�bLG8^]
OtGqn��f��}	9�|���Q���)��0@>v�+�'o�rТ}
e}t�ҋ�,�4����PfN
j�.�PHCE%���~p������      �   �  x���MN�0���aP�״ Ě-�(�DCE	U���=���[�����4
ܦ�4^^�9�ǔ�_˸���h^��ט�X8}�t�'*����y��1�qy��1���-Q5�`��z��� ���0M�j3}X�4�t5�RD_��㍱�H���I�����_�x�:�	�s\��Ys��t�%=b�j� �L�iu�>�V2��������-�qI�l܎;P��ĥ}����Y�s�������-�_emG�~���4�1�J��Jj����wWf���9�ϩ��MFݰ��?RN����X�)�]m��_/_9�5��f�m-��9��˩ڜ�w����+�~G�C�����r-h���rJ�k���A���a��� @����8�R4�i��Joi0      �     x���n�0���)����	zki�m�h��JU\�*�Ql���׆�i�ն�J(��8�ç���x�F7�6���S�M�)�?�=�v�'���$����u�2�	�%<а�i�M"�aL�4e9-q��q���)�s=�V b
�4� ��$
D�28S�:��
�J����]�i h��5KY��K9�֐d�fT��=�7���2A�^?�%��bwa���\=��Q�{�� �`��l'�b�h̸�	�B��������b�4��͞�׋�n�ˑU"�Mx�uw1�Z�=���6�"��o~C��r�NA�fMK�!c��"ȿ����&#"��B���n��J��=�Z)�b�di�XE�}��#E<�`��qb��!��K�%�p:{���p��4%�+�a<���k���/_���8K�;��qŐ�u
����mn�i�5�H(o���\!��M�_���8mQ�n����Է0M��%L@��R� �FPӢtK�fC�3<�P�!{h`�iZ����Q���&x�C��]��}4�V3m�A	�Z�(��L�kK��A��A�$��j+����1��Vt�dI4M[�U���������mw���4��+���pM-����Y����TR�O喧.ρi�*��⩩*&��c�]8������˕���vP�5�;��gWӴr�$GO4-����(�ʤ��>M]��4��*��� O�U2���%�DW5M�J�:�����jr����̾�O� b?�?�e."���.�C��Sʆ�.��iZWUq��y���]�l      �     x��Z�r�6}�|�[+�č���$�Ǜ�S�&��jh�2�E*��19��2�ȶ�U�k uSC����@3��}�yRܐ��O,I"�8�!�G�a�t"�d{�^���i]���w�\�T���tUG^�U^7�{���k ��Vu�wy]�U.x��j�̵-�A�uߴ.�λe`ݕ+�U^]���Zy
�90E}��u^]]��e��Un��;yT:��#||ͣ$I�I��Jk�2��BsjC!�T&䎝�_]�n�-מ��!_q���_}�c��������.�翼{����߬�����<����W%˟�|��W���t��<���\,y�ǌ���ϲ�V��G�2H���K�ޏ��m�~{�����ׅkȓ�|���8r���|���ed`��ܢ�=�?^�'�l����� ���Q�lи�/���]h�Ixc�Z+�qd� �B�TY����ő��w�۽û��j����YA�k*���m�s�e}�^����<y;�G���i��s�3I�O=�A �E�B�j����[!b�*	����h� s�vx�WiP9��C�΃�к��۠p��n΂Ε+����,�>�p�\w,]e��]��۳����<x�7`�o�"��ZX�=��Js�W��A}��Wy�̯y�p-���>~�����)�p��ـ�B�+_�i�3�@��f�)�4���\���]��cPI/�"�o
緎� ��&6:�?�v�h�U��#�������u�,w:�o��d��.�(����o$%�G�D��&�&S�BY�IPF�Si���*����yȿ#�;	5�^(�BS ���C<���y3@�5�v��U%q<r�8����iȈ9�S,�4L-P-CT�W=�Q΍A)''�u��gK�F���329M���""�/�.i��/:�����<��z�w₴�����A��ؤ�����Q�`F��4�\��d�':�ʳ�}�D� �I&���́�&���kpŗ�@�,�����1y�#[���%wl��#f���a�%T�xiE���Tf���&��EY,�T��������i�9�Zh���.,��+��y�� ��NlX1АHi�ٱ�_6A1kr)e�r�k�8�T�DX�©Ro��}RFL(�ܧ���ҡ�"!��K��HA�~'/�c��n��R4T��ܞ�(����A���
�	�Y�9Il��!�,��,q*2"�`��{g�����h-XH��X��dE^���y_m�T��B���������|^��X��E1��(&�� u�6_ei2���z �����4�v�F޻
�M��y�*�3�w�
Ov�K�E���A��T���aF�	1S00���7T���4�}�=?M�=��|���&��WU�����<ݎ7几,�A-�ƒ����JK��\3����B��FR�픢�q�_t�:�K�a7�%���7
�K��`Yg���+�7S�o�6	���|�
�&r��AAb�pJa�3���.���N��gRO] �p�Q�W���л�!�y�C����UޞO\����o�1q�l��b�m���"��,���3��<S�{��zʟ�m���]���M�#�dF�����o��Tx*����X�l��]0ϸ���FL�\�#��f���H��j�fJ����>��_r�cEfU2����t�����x�r��HfS+s��W�ƨ�ӎOg6#�S�*�º�!����ێ6
���I���Ӄ7`:3NF4� F%�MB`TY'�ԪLکc�9n;rlU����<��ˡ�cO��[�;� �q#X�ۭ�(�L��/���^�iL�C����(�MN���c&�:�[������;Z�mK����~�I��mԮׂ�^5r�]�}�f��_�gZ��E���ۆ���Y�v�����kG|9���w�d���1W��T�2�\_�"O�o.X�4����$�a>�7����qg&��J�^rI�C�E�j�`0u�8�m����\�� �����*7H���
J�+\��ٗHf���'�{��R��>��z�4�.]A�
y��L~��75*ǯ�;��\
)�ٓmΤN9jg�R���(���X�N�k�۞^��8OA?M�0��$æF�)r�K�W����e]w���"GB�9��p����K"�\�j�'Z���|�d��(Ԃa}��ܵ��:a�
ib�$�B3�g��(�����|
e��~To�G�=mr��ӆ,>m8H>��|�gHp���������eK�nfȋۙ�Ʋ���H(v�<��G����;�`zam��(&���^\"v�p���C�++"�����s���vP��N�M/�o�k0�[w��g�o�>�����0 ��T >G����"G�2��Е�;4�� ������m�6��w�>�aK�δ� 軠t���&���k�O��G��qu��Ȱ��v�?�,�Ho����h����U��W@c�t8���j�M"ŨT�P�R�q$�4����Ω9n���aZ�F Nk��dۖ�I�Q��Mk	"��g���L�!ۗ2b,Jāۃ�~cJf8��ABej54U>j�œ-P3ܾ�k�1(�0u=4ŅBhޭ��z��i��ۦ�(��/%Ф2Mb'9�T���$����fa�$JL��p�w���f�����An�/@�������&�����mX�rS�w�b�J;:�׾5����ݼ��{:�A~1F�;u0qh�uB������
��G��׃�F�p�$�b�5���A�r�(�u���(1P�P��,bN`N=u�9�폝�}��b�)��2:V������b�vF      �      x������ � �      �   �  x�՚Mo�F���нD���{�Wr�@F�C/���BdQՇQ���Plj,�d	){�e����}��iH ���1_�d������,��<��'w�����?֩�ؗ�!y;�.��l:�ޕ��c~X��l��X�^S�YT&���uq�g�r��/�a���ϲ���Ev��O��|~.7��,���ɼ\������&5X���*�Z�W�}1�Z�&ӫ��e�R��m�K-f\|�'׫C�OǇԝ��Я�}r_>/�C�1|~\�'����xNn�b�*�.����m��?��R�d,��fd ��3 1[s^���a�okg�x���'����f9��|����.�C>�ޝŖ��Xw��k�~�P�6�������,��q4���"�X����D��=]�z�a�����C�1<U��?�2���j' �1	B@J\0BRa_��Ɣ��4���	H�*C@:���>������zF��pP���!����>���M�~;Ϯ�?�Jb��p���'Sx8ʠ��Q�*1p�KL;�Qm<����Z`�Og�j���vUKL�\��tM��Z�ʸ�U���T�Ķ{�����cp���o��F`_ݾ���w#O���n���FS%f7��vƢ0�C��H `_=G�)���	X�*C�*���:���A��[�����q���c�=p��Pq2��� U��T���T��8�j|{8��!X���Ò:�}upSb�t�</Pex�J���hG��1�):�7�b���ƺ1xG9�kZ@���LT����E�$�(���Aӊ���F,�D(��=�QO2�"TŸM ��9Y �IYH
�EA(����Q�~�g���)X���Z�`�H�&a�zߏ� ��������������ۂ�Y@SRLL�C	��s$�U���c*��G%���Ad$В��K %�ۃK*J�qI]�ӂK�9\�V�8\Iv�� =��Wy���^�	Z2>P�Pg=L�����R�-L�&�c�LU�c�7o��Hi�P���o�AJ�1/�A*�c�J�mӲn8~Z���uU)~��ǎ��%��y�������d|۸�y�����ZPR�@mN��6�t�QU=no��1G�1���2��A���%�\�S�}�%5�.�ڜ\H�pYY��pY$�1Y�դ7H�Px(ki��@ag�:�ab=%5��ڇ�o>�t�������Dƣ6FE+���4E*G���%�\���_�se���>��;�
�O<(�?�x���1�+J��򺾶�]���?[��g���;7O��Ii�(�/�AP�:�b=fII�YA�7�A��ل��ͣ�21�(��F��^��|���G}�����*�/�>�l/��5�}��9\�qD��,u�g���������c��s�ӿ.���￦i�l%      �   \   x�3��I�K/MLO-�2�tq��2�OM�2��J,K�2��tq�2�t�2I(���sYp:�f�(W���rYr:�䗦p��qqq �      