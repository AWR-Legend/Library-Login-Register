PGDMP  8                    |            PRG381_Project    16.4    16.4 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32768    PRG381_Project    DATABASE     �   CREATE DATABASE "PRG381_Project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_South Africa.1252';
     DROP DATABASE "PRG381_Project";
                postgres    false            �            1259    40960 
   LoginTable    TABLE     }   CREATE TABLE public."LoginTable" (
    "UserID" text NOT NULL,
    "Username" text NOT NULL,
    "Password" text NOT NULL
);
     DROP TABLE public."LoginTable";
       public         heap    postgres    false            �            1259    32769    RegistrationTable    TABLE     �   CREATE TABLE public."RegistrationTable" (
    "UserID" text NOT NULL,
    "Username" text NOT NULL,
    "Name" text NOT NULL,
    "Surname" text NOT NULL,
    "Password" text NOT NULL,
    "Phone" text,
    "Email" text
);
 '   DROP TABLE public."RegistrationTable";
       public         heap    postgres    false            �          0    40960 
   LoginTable 
   TABLE DATA           H   COPY public."LoginTable" ("UserID", "Username", "Password") FROM stdin;
    public          postgres    false    216   �
       �          0    32769    RegistrationTable 
   TABLE DATA           t   COPY public."RegistrationTable" ("UserID", "Username", "Name", "Surname", "Password", "Phone", "Email") FROM stdin;
    public          postgres    false    215   �
       V           2606    40966    LoginTable LoginTable_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."LoginTable"
    ADD CONSTRAINT "LoginTable_pkey" PRIMARY KEY ("UserID");
 H   ALTER TABLE ONLY public."LoginTable" DROP CONSTRAINT "LoginTable_pkey";
       public            postgres    false    216            T           2606    32775 (   RegistrationTable RegistrationTable_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."RegistrationTable"
    ADD CONSTRAINT "RegistrationTable_pkey" PRIMARY KEY ("UserID");
 V   ALTER TABLE ONLY public."RegistrationTable" DROP CONSTRAINT "RegistrationTable_pkey";
       public            postgres    false    215            �      x�3�L�L�4�#�=... #V      �   �   x�}α�0����0��;D6]\Lqqa!
�)��ۋ�&b��u���b��ak����t��֥��w��|�Gyw�ꬋ���FT�>�Ǻ5>��=U�G�s�=�p��L��L����yD(�����
g��?TP���*ř�R	�+I2�RNZf���	��f�     