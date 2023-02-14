--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO food_delivery_admin;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO food_delivery_admin;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO food_delivery_admin;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_links_id_seq OWNER TO food_delivery_admin;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO food_delivery_admin;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO food_delivery_admin;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO food_delivery_admin;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO food_delivery_admin;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO food_delivery_admin;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_links_id_seq OWNER TO food_delivery_admin;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: components_page_banners; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.components_page_banners (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_banners OWNER TO food_delivery_admin;

--
-- Name: components_page_banners_components; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.components_page_banners_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_banners_components OWNER TO food_delivery_admin;

--
-- Name: components_page_banners_components_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.components_page_banners_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_banners_components_id_seq OWNER TO food_delivery_admin;

--
-- Name: components_page_banners_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.components_page_banners_components_id_seq OWNED BY public.components_page_banners_components.id;


--
-- Name: components_page_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.components_page_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_banners_id_seq OWNER TO food_delivery_admin;

--
-- Name: components_page_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.components_page_banners_id_seq OWNED BY public.components_page_banners.id;


--
-- Name: components_page_buttons; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.components_page_buttons (
    id integer NOT NULL,
    title character varying(255),
    style character varying(255),
    link character varying(255)
);


ALTER TABLE public.components_page_buttons OWNER TO food_delivery_admin;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.components_page_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_buttons_id_seq OWNER TO food_delivery_admin;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.components_page_buttons_id_seq OWNED BY public.components_page_buttons.id;


--
-- Name: components_page_logos; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.components_page_logos (
    id integer NOT NULL,
    title character varying(255),
    caption text
);


ALTER TABLE public.components_page_logos OWNER TO food_delivery_admin;

--
-- Name: components_page_logos_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.components_page_logos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_logos_id_seq OWNER TO food_delivery_admin;

--
-- Name: components_page_logos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.components_page_logos_id_seq OWNED BY public.components_page_logos.id;


--
-- Name: components_page_partners; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.components_page_partners (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_partners OWNER TO food_delivery_admin;

--
-- Name: components_page_partners_components; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.components_page_partners_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_partners_components OWNER TO food_delivery_admin;

--
-- Name: components_page_partners_components_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.components_page_partners_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_partners_components_id_seq OWNER TO food_delivery_admin;

--
-- Name: components_page_partners_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.components_page_partners_components_id_seq OWNED BY public.components_page_partners_components.id;


--
-- Name: components_page_partners_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.components_page_partners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_partners_id_seq OWNER TO food_delivery_admin;

--
-- Name: components_page_partners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.components_page_partners_id_seq OWNED BY public.components_page_partners.id;


--
-- Name: components_page_text_blocks; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.components_page_text_blocks (
    id integer NOT NULL,
    title character varying(255),
    content text
);


ALTER TABLE public.components_page_text_blocks OWNER TO food_delivery_admin;

--
-- Name: components_page_text_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.components_page_text_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_text_blocks_id_seq OWNER TO food_delivery_admin;

--
-- Name: components_page_text_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.components_page_text_blocks_id_seq OWNED BY public.components_page_text_blocks.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO food_delivery_admin;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO food_delivery_admin;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_links_id_seq OWNER TO food_delivery_admin;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO food_delivery_admin;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO food_delivery_admin;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_morphs_id_seq OWNER TO food_delivery_admin;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: homes; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.homes (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.homes OWNER TO food_delivery_admin;

--
-- Name: homes_components; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.homes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.homes_components OWNER TO food_delivery_admin;

--
-- Name: homes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.homes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homes_components_id_seq OWNER TO food_delivery_admin;

--
-- Name: homes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.homes_components_id_seq OWNED BY public.homes_components.id;


--
-- Name: homes_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.homes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homes_id_seq OWNER TO food_delivery_admin;

--
-- Name: homes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.homes_id_seq OWNED BY public.homes.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO food_delivery_admin;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO food_delivery_admin;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO food_delivery_admin;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO food_delivery_admin;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO food_delivery_admin;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_links_id_seq OWNER TO food_delivery_admin;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO food_delivery_admin;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO food_delivery_admin;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO food_delivery_admin;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO food_delivery_admin;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO food_delivery_admin;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO food_delivery_admin;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_ee_store_settings; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.strapi_ee_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text
);


ALTER TABLE public.strapi_ee_store_settings OWNER TO food_delivery_admin;

--
-- Name: strapi_ee_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.strapi_ee_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_ee_store_settings_id_seq OWNER TO food_delivery_admin;

--
-- Name: strapi_ee_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.strapi_ee_store_settings_id_seq OWNED BY public.strapi_ee_store_settings.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO food_delivery_admin;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO food_delivery_admin;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO food_delivery_admin;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO food_delivery_admin;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO food_delivery_admin;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO food_delivery_admin;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO food_delivery_admin;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_links_id_seq OWNER TO food_delivery_admin;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO food_delivery_admin;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO food_delivery_admin;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO food_delivery_admin;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO food_delivery_admin;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO food_delivery_admin;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_links_id_seq OWNER TO food_delivery_admin;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO food_delivery_admin;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO food_delivery_admin;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: food_delivery_admin
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO food_delivery_admin;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: food_delivery_admin
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_links_id_seq OWNER TO food_delivery_admin;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: food_delivery_admin
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: components_page_banners id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_banners ALTER COLUMN id SET DEFAULT nextval('public.components_page_banners_id_seq'::regclass);


--
-- Name: components_page_banners_components id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_banners_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_banners_components_id_seq'::regclass);


--
-- Name: components_page_buttons id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_buttons_id_seq'::regclass);


--
-- Name: components_page_logos id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_logos ALTER COLUMN id SET DEFAULT nextval('public.components_page_logos_id_seq'::regclass);


--
-- Name: components_page_partners id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_partners ALTER COLUMN id SET DEFAULT nextval('public.components_page_partners_id_seq'::regclass);


--
-- Name: components_page_partners_components id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_partners_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_partners_components_id_seq'::regclass);


--
-- Name: components_page_text_blocks id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_text_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_page_text_blocks_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: homes id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.homes ALTER COLUMN id SET DEFAULT nextval('public.homes_id_seq'::regclass);


--
-- Name: homes_components id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.homes_components ALTER COLUMN id SET DEFAULT nextval('public.homes_components_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_ee_store_settings id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_ee_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_ee_store_settings_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
197	plugin::content-manager.explorer.delete	api::home.home	{}	[]	2023-02-10 10:44:27.577	2023-02-10 10:44:27.577	\N	\N
198	plugin::content-manager.explorer.publish	api::home.home	{}	[]	2023-02-10 10:44:27.581	2023-02-10 10:44:27.581	\N	\N
36	plugin::upload.read	\N	{}	[]	2023-02-09 10:52:37.023	2023-02-09 10:52:37.023	\N	\N
37	plugin::upload.configure-view	\N	{}	[]	2023-02-09 10:52:37.027	2023-02-09 10:52:37.027	\N	\N
38	plugin::upload.assets.create	\N	{}	[]	2023-02-09 10:52:37.032	2023-02-09 10:52:37.032	\N	\N
39	plugin::upload.assets.update	\N	{}	[]	2023-02-09 10:52:37.036	2023-02-09 10:52:37.036	\N	\N
40	plugin::upload.assets.download	\N	{}	[]	2023-02-09 10:52:37.041	2023-02-09 10:52:37.041	\N	\N
41	plugin::upload.assets.copy-link	\N	{}	[]	2023-02-09 10:52:37.045	2023-02-09 10:52:37.045	\N	\N
153	admin::roles.read	\N	{}	[]	2023-02-09 10:52:37.836	2023-02-09 10:52:37.836	\N	\N
214	plugin::content-manager.explorer.create	api::home.home	{"fields": ["banner.title", "banner.description", "banner.buttons.title", "banner.buttons.icon", "banner.buttons.link", "banner.buttons.style", "quote.title", "quote.content", "partner.title", "partner.description", "partner.logoItems.title", "partner.logoItems.caption", "partner.logoItems.image"]}	[]	2023-02-10 11:19:20.178	2023-02-10 11:19:20.178	\N	\N
215	plugin::content-manager.explorer.read	api::home.home	{"fields": ["banner.title", "banner.description", "banner.buttons.title", "banner.buttons.icon", "banner.buttons.link", "banner.buttons.style", "quote.title", "quote.content", "partner.title", "partner.description", "partner.logoItems.title", "partner.logoItems.caption", "partner.logoItems.image"]}	[]	2023-02-10 11:19:20.186	2023-02-10 11:19:20.186	\N	\N
216	plugin::content-manager.explorer.update	api::home.home	{"fields": ["banner.title", "banner.description", "banner.buttons.title", "banner.buttons.icon", "banner.buttons.link", "banner.buttons.style", "quote.title", "quote.content", "partner.title", "partner.description", "partner.logoItems.title", "partner.logoItems.caption", "partner.logoItems.image"]}	[]	2023-02-10 11:19:20.19	2023-02-10 11:19:20.19	\N	\N
70	plugin::upload.read	\N	{}	["admin::is-creator"]	2023-02-09 10:52:37.329	2023-02-09 10:52:37.329	\N	\N
71	plugin::upload.configure-view	\N	{}	[]	2023-02-09 10:52:37.332	2023-02-09 10:52:37.332	\N	\N
72	plugin::upload.assets.create	\N	{}	[]	2023-02-09 10:52:37.336	2023-02-09 10:52:37.336	\N	\N
73	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2023-02-09 10:52:37.34	2023-02-09 10:52:37.34	\N	\N
74	plugin::upload.assets.download	\N	{}	[]	2023-02-09 10:52:37.343	2023-02-09 10:52:37.343	\N	\N
75	plugin::upload.assets.copy-link	\N	{}	[]	2023-02-09 10:52:37.346	2023-02-09 10:52:37.346	\N	\N
76	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-02-09 10:52:37.42	2023-02-09 10:52:37.42	\N	\N
84	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-02-09 10:52:37.537	2023-02-09 10:52:37.537	\N	\N
92	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-02-09 10:52:37.571	2023-02-09 10:52:37.571	\N	\N
100	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2023-02-09 10:52:37.607	2023-02-09 10:52:37.607	\N	\N
115	plugin::content-manager.single-types.configure-view	\N	{}	[]	2023-02-09 10:52:37.674	2023-02-09 10:52:37.674	\N	\N
116	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2023-02-09 10:52:37.677	2023-02-09 10:52:37.677	\N	\N
117	plugin::content-manager.components.configure-layout	\N	{}	[]	2023-02-09 10:52:37.681	2023-02-09 10:52:37.681	\N	\N
118	plugin::content-type-builder.read	\N	{}	[]	2023-02-09 10:52:37.686	2023-02-09 10:52:37.686	\N	\N
119	plugin::email.settings.read	\N	{}	[]	2023-02-09 10:52:37.69	2023-02-09 10:52:37.69	\N	\N
120	plugin::upload.read	\N	{}	[]	2023-02-09 10:52:37.694	2023-02-09 10:52:37.694	\N	\N
121	plugin::upload.assets.create	\N	{}	[]	2023-02-09 10:52:37.697	2023-02-09 10:52:37.697	\N	\N
122	plugin::upload.assets.update	\N	{}	[]	2023-02-09 10:52:37.701	2023-02-09 10:52:37.701	\N	\N
123	plugin::upload.assets.download	\N	{}	[]	2023-02-09 10:52:37.705	2023-02-09 10:52:37.705	\N	\N
124	plugin::upload.assets.copy-link	\N	{}	[]	2023-02-09 10:52:37.709	2023-02-09 10:52:37.709	\N	\N
125	plugin::upload.configure-view	\N	{}	[]	2023-02-09 10:52:37.714	2023-02-09 10:52:37.714	\N	\N
126	plugin::upload.settings.read	\N	{}	[]	2023-02-09 10:52:37.719	2023-02-09 10:52:37.719	\N	\N
127	plugin::i18n.locale.create	\N	{}	[]	2023-02-09 10:52:37.723	2023-02-09 10:52:37.723	\N	\N
128	plugin::i18n.locale.read	\N	{}	[]	2023-02-09 10:52:37.727	2023-02-09 10:52:37.727	\N	\N
129	plugin::i18n.locale.update	\N	{}	[]	2023-02-09 10:52:37.731	2023-02-09 10:52:37.731	\N	\N
130	plugin::i18n.locale.delete	\N	{}	[]	2023-02-09 10:52:37.735	2023-02-09 10:52:37.735	\N	\N
131	plugin::users-permissions.roles.create	\N	{}	[]	2023-02-09 10:52:37.739	2023-02-09 10:52:37.739	\N	\N
132	plugin::users-permissions.roles.read	\N	{}	[]	2023-02-09 10:52:37.743	2023-02-09 10:52:37.743	\N	\N
133	plugin::users-permissions.roles.update	\N	{}	[]	2023-02-09 10:52:37.747	2023-02-09 10:52:37.747	\N	\N
134	plugin::users-permissions.roles.delete	\N	{}	[]	2023-02-09 10:52:37.752	2023-02-09 10:52:37.752	\N	\N
135	plugin::users-permissions.providers.read	\N	{}	[]	2023-02-09 10:52:37.757	2023-02-09 10:52:37.757	\N	\N
136	plugin::users-permissions.providers.update	\N	{}	[]	2023-02-09 10:52:37.763	2023-02-09 10:52:37.763	\N	\N
137	plugin::users-permissions.email-templates.read	\N	{}	[]	2023-02-09 10:52:37.769	2023-02-09 10:52:37.769	\N	\N
138	plugin::users-permissions.email-templates.update	\N	{}	[]	2023-02-09 10:52:37.773	2023-02-09 10:52:37.773	\N	\N
139	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2023-02-09 10:52:37.777	2023-02-09 10:52:37.777	\N	\N
140	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2023-02-09 10:52:37.78	2023-02-09 10:52:37.78	\N	\N
141	admin::marketplace.read	\N	{}	[]	2023-02-09 10:52:37.784	2023-02-09 10:52:37.784	\N	\N
142	admin::marketplace.plugins.install	\N	{}	[]	2023-02-09 10:52:37.788	2023-02-09 10:52:37.788	\N	\N
143	admin::marketplace.plugins.uninstall	\N	{}	[]	2023-02-09 10:52:37.793	2023-02-09 10:52:37.793	\N	\N
144	admin::webhooks.create	\N	{}	[]	2023-02-09 10:52:37.797	2023-02-09 10:52:37.797	\N	\N
145	admin::webhooks.read	\N	{}	[]	2023-02-09 10:52:37.8	2023-02-09 10:52:37.8	\N	\N
146	admin::webhooks.update	\N	{}	[]	2023-02-09 10:52:37.804	2023-02-09 10:52:37.804	\N	\N
147	admin::webhooks.delete	\N	{}	[]	2023-02-09 10:52:37.809	2023-02-09 10:52:37.809	\N	\N
148	admin::users.create	\N	{}	[]	2023-02-09 10:52:37.814	2023-02-09 10:52:37.814	\N	\N
149	admin::users.read	\N	{}	[]	2023-02-09 10:52:37.818	2023-02-09 10:52:37.818	\N	\N
150	admin::users.update	\N	{}	[]	2023-02-09 10:52:37.822	2023-02-09 10:52:37.822	\N	\N
151	admin::users.delete	\N	{}	[]	2023-02-09 10:52:37.827	2023-02-09 10:52:37.827	\N	\N
152	admin::roles.create	\N	{}	[]	2023-02-09 10:52:37.831	2023-02-09 10:52:37.831	\N	\N
154	admin::roles.update	\N	{}	[]	2023-02-09 10:52:37.84	2023-02-09 10:52:37.84	\N	\N
155	admin::roles.delete	\N	{}	[]	2023-02-09 10:52:37.845	2023-02-09 10:52:37.845	\N	\N
156	admin::api-tokens.access	\N	{}	[]	2023-02-09 10:52:37.849	2023-02-09 10:52:37.849	\N	\N
157	admin::api-tokens.create	\N	{}	[]	2023-02-09 10:52:37.853	2023-02-09 10:52:37.853	\N	\N
158	admin::api-tokens.read	\N	{}	[]	2023-02-09 10:52:37.857	2023-02-09 10:52:37.857	\N	\N
159	admin::api-tokens.update	\N	{}	[]	2023-02-09 10:52:37.863	2023-02-09 10:52:37.863	\N	\N
160	admin::api-tokens.regenerate	\N	{}	[]	2023-02-09 10:52:37.867	2023-02-09 10:52:37.867	\N	\N
161	admin::api-tokens.delete	\N	{}	[]	2023-02-09 10:52:37.871	2023-02-09 10:52:37.871	\N	\N
162	admin::project-settings.update	\N	{}	[]	2023-02-09 10:52:37.874	2023-02-09 10:52:37.874	\N	\N
163	admin::project-settings.read	\N	{}	[]	2023-02-09 10:52:37.878	2023-02-09 10:52:37.878	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
197	197	1	92
198	198	1	93
214	214	1	94
215	215	1	95
216	216	1	96
36	36	2	36
37	37	2	37
38	38	2	38
39	39	2	39
40	40	2	40
41	41	2	41
70	70	3	29
71	71	3	30
72	72	3	31
73	73	3	32
74	74	3	33
75	75	3	34
76	76	1	1
84	84	1	9
92	92	1	17
100	100	1	25
115	115	1	40
116	116	1	41
117	117	1	42
118	118	1	43
119	119	1	44
120	120	1	45
121	121	1	46
122	122	1	47
123	123	1	48
124	124	1	49
125	125	1	50
126	126	1	51
127	127	1	52
128	128	1	53
129	129	1	54
130	130	1	55
131	131	1	56
132	132	1	57
133	133	1	58
134	134	1	59
135	135	1	60
136	136	1	61
137	137	1	62
138	138	1	63
139	139	1	64
140	140	1	65
141	141	1	66
142	142	1	67
143	143	1	68
144	144	1	69
145	145	1	70
146	146	1	71
147	147	1	72
148	148	1	73
149	149	1	74
150	150	1	75
151	151	1	76
152	152	1	77
153	153	1	78
154	154	1	79
155	155	1	80
156	156	1	81
157	157	1	82
158	158	1	83
159	159	1	84
160	160	1	85
161	161	1	86
162	162	1	87
163	163	1	88
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2023-02-09 10:52:36.803	2023-02-09 10:52:36.803	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2023-02-09 10:52:36.814	2023-02-09 10:52:36.814	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2023-02-09 10:52:36.817	2023-02-09 10:52:36.817	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Thanh	Danh	thanhdanh@icd-vn.com	thanhdanh@icd-vn.com	$2a$10$i2XKB4NyMA2twBSDafKiC.GgnfQj0fGgJ8kWydaMu57.8yY96HVQG	\N	\N	t	f	\N	2023-02-09 10:53:08.077	2023-02-09 15:05:14.845	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: components_page_banners; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.components_page_banners (id, title, description) FROM stdin;
1	Banner	Đây là mô tả
\.


--
-- Data for Name: components_page_banners_components; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.components_page_banners_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	page.button	buttons	1
\.


--
-- Data for Name: components_page_buttons; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.components_page_buttons (id, title, style, link) FROM stdin;
1	Chi tiết	default	\N
\.


--
-- Data for Name: components_page_logos; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.components_page_logos (id, title, caption) FROM stdin;
1	\N	\N
\.


--
-- Data for Name: components_page_partners; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.components_page_partners (id, title, description) FROM stdin;
1	Đối tác	Mô tả đối tác
\.


--
-- Data for Name: components_page_partners_components; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.components_page_partners_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	page.logo	logoItems	1
\.


--
-- Data for Name: components_page_text_blocks; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.components_page_text_blocks (id, title, content) FROM stdin;
1	Quote	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	about-us_bg.webp	\N	\N	492	495	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_about_us_bg_20e5e5774d.webp", "hash": "thumbnail_about_us_bg_20e5e5774d", "mime": "image/webp", "name": "thumbnail_about-us_bg.webp", "path": null, "size": 1.5, "width": 155, "height": 156}}	about_us_bg_20e5e5774d	.webp	image/webp	4.70	/uploads/about_us_bg_20e5e5774d.webp	\N	local	\N	/2	2023-02-10 11:21:45.115	2023-02-10 11:21:45.115	1	1
3	7.webp	\N	\N	400	400	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_7_470cbe14d7.webp", "hash": "thumbnail_7_470cbe14d7", "mime": "image/webp", "name": "thumbnail_7.webp", "path": null, "size": 2.43, "width": 156, "height": 156}}	7_470cbe14d7	.webp	image/webp	6.12	/uploads/7_470cbe14d7.webp	\N	local	\N	/2	2023-02-10 11:21:45.109	2023-02-10 11:21:45.109	1	1
2	about-us-2_bg.webp	\N	\N	447	336	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_about_us_2_bg_1486a1b61c.webp", "hash": "thumbnail_about_us_2_bg_1486a1b61c", "mime": "image/webp", "name": "thumbnail_about-us-2_bg.webp", "path": null, "size": 5.81, "width": 208, "height": 156}}	about_us_2_bg_1486a1b61c	.webp	image/webp	8.74	/uploads/about_us_2_bg_1486a1b61c.webp	\N	local	\N	/2	2023-02-10 11:21:45.116	2023-02-10 11:21:45.116	1	1
4	6.webp	\N	\N	400	400	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_6_5d78419a7f.webp", "hash": "thumbnail_6_5d78419a7f", "mime": "image/webp", "name": "thumbnail_6.webp", "path": null, "size": 6.68, "width": 156, "height": 156}}	6_5d78419a7f	.webp	image/webp	46.52	/uploads/6_5d78419a7f.webp	\N	local	\N	/2	2023-02-10 11:21:45.176	2023-02-10 11:21:45.176	1	1
5	5.webp	\N	\N	400	400	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_5_bdacc273fc.webp", "hash": "thumbnail_5_bdacc273fc", "mime": "image/webp", "name": "thumbnail_5.webp", "path": null, "size": 5, "width": 156, "height": 156}}	5_bdacc273fc	.webp	image/webp	27.74	/uploads/5_bdacc273fc.webp	\N	local	\N	/2	2023-02-10 11:21:45.19	2023-02-10 11:21:45.19	1	1
6	circle_03.webp	\N	\N	48	45	\N	circle_03_4468135900	.webp	image/webp	0.39	/uploads/circle_03_4468135900.webp	\N	local	\N	/2	2023-02-10 11:21:45.611	2023-02-10 11:21:45.611	1	1
7	circle_02.webp	\N	\N	56	53	\N	circle_02_3946477fb5	.webp	image/webp	0.50	/uploads/circle_02_3946477fb5.webp	\N	local	\N	/2	2023-02-10 11:21:45.613	2023-02-10 11:21:45.613	1	1
8	circle_01.webp	\N	\N	470	443	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_circle_01_9664dc79de.webp", "hash": "thumbnail_circle_01_9664dc79de", "mime": "image/webp", "name": "thumbnail_circle_01.webp", "path": null, "size": 2.31, "width": 166, "height": 156}}	circle_01_9664dc79de	.webp	image/webp	4.61	/uploads/circle_01_9664dc79de.webp	\N	local	\N	/2	2023-02-10 11:21:45.691	2023-02-10 11:21:45.691	1	1
9	cake.webp	\N	\N	813	776	{"small": {"ext": ".webp", "url": "/uploads/small_cake_ae79745d7a.webp", "hash": "small_cake_ae79745d7a", "mime": "image/webp", "name": "small_cake.webp", "path": null, "size": 7.95, "width": 500, "height": 477}, "medium": {"ext": ".webp", "url": "/uploads/medium_cake_ae79745d7a.webp", "hash": "medium_cake_ae79745d7a", "mime": "image/webp", "name": "medium_cake.webp", "path": null, "size": 13.34, "width": 750, "height": 716}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_cake_ae79745d7a.webp", "hash": "thumbnail_cake_ae79745d7a", "mime": "image/webp", "name": "thumbnail_cake.webp", "path": null, "size": 2.43, "width": 163, "height": 156}}	cake_ae79745d7a	.webp	image/webp	12.30	/uploads/cake_ae79745d7a.webp	\N	local	\N	/2	2023-02-10 11:21:46.15	2023-02-10 11:21:46.15	1	1
10	logo.webp	\N	\N	256	232	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_logo_e866c42c14.webp", "hash": "thumbnail_logo_e866c42c14", "mime": "image/webp", "name": "thumbnail_logo.webp", "path": null, "size": 4.77, "width": 172, "height": 156}}	logo_e866c42c14	.webp	image/webp	4.88	/uploads/logo_e866c42c14.webp	\N	local	\N	/2	2023-02-10 11:21:46.473	2023-02-10 11:21:46.473	1	1
11	fast.webp	\N	\N	512	512	{"small": {"ext": ".webp", "url": "/uploads/small_fast_7bda36cdbf.webp", "hash": "small_fast_7bda36cdbf", "mime": "image/webp", "name": "small_fast.webp", "path": null, "size": 10.78, "width": 500, "height": 500}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_fast_7bda36cdbf.webp", "hash": "thumbnail_fast_7bda36cdbf", "mime": "image/webp", "name": "thumbnail_fast.webp", "path": null, "size": 3.07, "width": 156, "height": 156}}	fast_7bda36cdbf	.webp	image/webp	8.90	/uploads/fast_7bda36cdbf.webp	\N	local	\N	/2	2023-02-10 11:21:46.474	2023-02-10 11:21:46.474	1	1
12	easy.webp	\N	\N	1280	1280	{"large": {"ext": ".webp", "url": "/uploads/large_easy_2070b558a5.webp", "hash": "large_easy_2070b558a5", "mime": "image/webp", "name": "large_easy.webp", "path": null, "size": 26.01, "width": 1000, "height": 1000}, "small": {"ext": ".webp", "url": "/uploads/small_easy_2070b558a5.webp", "hash": "small_easy_2070b558a5", "mime": "image/webp", "name": "small_easy.webp", "path": null, "size": 10.55, "width": 500, "height": 500}, "medium": {"ext": ".webp", "url": "/uploads/medium_easy_2070b558a5.webp", "hash": "medium_easy_2070b558a5", "mime": "image/webp", "name": "medium_easy.webp", "path": null, "size": 17.68, "width": 750, "height": 750}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_easy_2070b558a5.webp", "hash": "thumbnail_easy_2070b558a5", "mime": "image/webp", "name": "thumbnail_easy.webp", "path": null, "size": 2.86, "width": 156, "height": 156}}	easy_2070b558a5	.webp	image/webp	32.00	/uploads/easy_2070b558a5.webp	\N	local	\N	/2	2023-02-10 11:21:46.489	2023-02-10 11:21:46.489	1	1
13	spagettie.webp	\N	\N	389	319	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_spagettie_79f2f65bf6.webp", "hash": "thumbnail_spagettie_79f2f65bf6", "mime": "image/webp", "name": "thumbnail_spagettie.webp", "path": null, "size": 7.02, "width": 190, "height": 156}}	spagettie_79f2f65bf6	.webp	image/webp	14.38	/uploads/spagettie_79f2f65bf6.webp	\N	local	\N	/2	2023-02-10 11:21:46.981	2023-02-10 11:21:46.981	1	1
14	safety.webp	\N	\N	512	512	{"small": {"ext": ".webp", "url": "/uploads/small_safety_7031833d8b.webp", "hash": "small_safety_7031833d8b", "mime": "image/webp", "name": "small_safety.webp", "path": null, "size": 8.61, "width": 500, "height": 500}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_safety_7031833d8b.webp", "hash": "thumbnail_safety_7031833d8b", "mime": "image/webp", "name": "thumbnail_safety.webp", "path": null, "size": 2.52, "width": 156, "height": 156}}	safety_7031833d8b	.webp	image/webp	6.99	/uploads/safety_7031833d8b.webp	\N	local	\N	/2	2023-02-10 11:21:47.073	2023-02-10 11:21:47.073	1	1
16	pasta.webp	\N	\N	389	319	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_pasta_e06cf7acff.webp", "hash": "thumbnail_pasta_e06cf7acff", "mime": "image/webp", "name": "thumbnail_pasta.webp", "path": null, "size": 5.69, "width": 190, "height": 156}}	pasta_e06cf7acff	.webp	image/webp	14.12	/uploads/pasta_e06cf7acff.webp	\N	local	\N	/2	2023-02-10 11:21:47.081	2023-02-10 11:21:47.081	1	1
15	1.webp	\N	\N	2260	2396	{"large": {"ext": ".webp", "url": "/uploads/large_1_19a5b80e7a.webp", "hash": "large_1_19a5b80e7a", "mime": "image/webp", "name": "large_1.webp", "path": null, "size": 31.55, "width": 943, "height": 1000}, "small": {"ext": ".webp", "url": "/uploads/small_1_19a5b80e7a.webp", "hash": "small_1_19a5b80e7a", "mime": "image/webp", "name": "small_1.webp", "path": null, "size": 14.18, "width": 472, "height": 500}, "medium": {"ext": ".webp", "url": "/uploads/medium_1_19a5b80e7a.webp", "hash": "medium_1_19a5b80e7a", "mime": "image/webp", "name": "medium_1.webp", "path": null, "size": 22.36, "width": 707, "height": 750}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_1_19a5b80e7a.webp", "hash": "thumbnail_1_19a5b80e7a", "mime": "image/webp", "name": "thumbnail_1.webp", "path": null, "size": 4.36, "width": 147, "height": 156}}	1_19a5b80e7a	.webp	image/webp	71.87	/uploads/1_19a5b80e7a.webp	\N	local	\N	/2	2023-02-10 11:21:47.079	2023-02-10 11:21:47.079	1	1
17	service_bg.webp	\N	\N	1554	1094	{"large": {"ext": ".webp", "url": "/uploads/large_service_bg_0886c91988.webp", "hash": "large_service_bg_0886c91988", "mime": "image/webp", "name": "large_service_bg.webp", "path": null, "size": 15.06, "width": 1000, "height": 704}, "small": {"ext": ".webp", "url": "/uploads/small_service_bg_0886c91988.webp", "hash": "small_service_bg_0886c91988", "mime": "image/webp", "name": "small_service_bg.webp", "path": null, "size": 7.25, "width": 500, "height": 352}, "medium": {"ext": ".webp", "url": "/uploads/medium_service_bg_0886c91988.webp", "hash": "medium_service_bg_0886c91988", "mime": "image/webp", "name": "medium_service_bg.webp", "path": null, "size": 11.31, "width": 750, "height": 528}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_service_bg_0886c91988.webp", "hash": "thumbnail_service_bg_0886c91988", "mime": "image/webp", "name": "thumbnail_service_bg.webp", "path": null, "size": 2.62, "width": 222, "height": 156}}	service_bg_0886c91988	.webp	image/webp	22.19	/uploads/service_bg_0886c91988.webp	\N	local	\N	/2	2023-02-10 11:21:47.555	2023-02-10 11:21:47.555	1	1
18	steak.webp	\N	\N	389	319	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_steak_82a633c965.webp", "hash": "thumbnail_steak_82a633c965", "mime": "image/webp", "name": "thumbnail_steak.webp", "path": null, "size": 6.39, "width": 190, "height": 156}}	steak_82a633c965	.webp	image/webp	16.05	/uploads/steak_82a633c965.webp	\N	local	\N	/2	2023-02-10 11:21:47.656	2023-02-10 11:21:47.656	1	1
19	lotus.webp	\N	\N	1280	880	{"large": {"ext": ".webp", "url": "/uploads/large_lotus_063cb7cee5.webp", "hash": "large_lotus_063cb7cee5", "mime": "image/webp", "name": "large_lotus.webp", "path": null, "size": 42.32, "width": 1000, "height": 688}, "small": {"ext": ".webp", "url": "/uploads/small_lotus_063cb7cee5.webp", "hash": "small_lotus_063cb7cee5", "mime": "image/webp", "name": "small_lotus.webp", "path": null, "size": 14.19, "width": 500, "height": 344}, "medium": {"ext": ".webp", "url": "/uploads/medium_lotus_063cb7cee5.webp", "hash": "medium_lotus_063cb7cee5", "mime": "image/webp", "name": "medium_lotus.webp", "path": null, "size": 26.68, "width": 750, "height": 516}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_lotus_063cb7cee5.webp", "hash": "thumbnail_lotus_063cb7cee5", "mime": "image/webp", "name": "thumbnail_lotus.webp", "path": null, "size": 4.92, "width": 227, "height": 156}}	lotus_063cb7cee5	.webp	image/webp	57.20	/uploads/lotus_063cb7cee5.webp	\N	local	\N	/2	2023-02-10 11:21:48.298	2023-02-10 11:21:48.298	1	1
20	footer_bg.webp	\N	\N	5760	2416	{"large": {"ext": ".webp", "url": "/uploads/large_footer_bg_fa26dc34f4.webp", "hash": "large_footer_bg_fa26dc34f4", "mime": "image/webp", "name": "large_footer_bg.webp", "path": null, "size": 5.8, "width": 1000, "height": 419}, "small": {"ext": ".webp", "url": "/uploads/small_footer_bg_fa26dc34f4.webp", "hash": "small_footer_bg_fa26dc34f4", "mime": "image/webp", "name": "small_footer_bg.webp", "path": null, "size": 2.7, "width": 500, "height": 210}, "medium": {"ext": ".webp", "url": "/uploads/medium_footer_bg_fa26dc34f4.webp", "hash": "medium_footer_bg_fa26dc34f4", "mime": "image/webp", "name": "medium_footer_bg.webp", "path": null, "size": 4.18, "width": 750, "height": 315}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_footer_bg_fa26dc34f4.webp", "hash": "thumbnail_footer_bg_fa26dc34f4", "mime": "image/webp", "name": "thumbnail_footer_bg.webp", "path": null, "size": 1.23, "width": 245, "height": 103}}	footer_bg_fa26dc34f4	.webp	image/webp	57.09	/uploads/footer_bg_fa26dc34f4.webp	\N	local	\N	/2	2023-02-10 11:21:49.298	2023-02-10 11:21:49.298	1	1
63	arrow.svg	\N	\N	20	32	\N	arrow_55d7ba855c	.svg	image/svg+xml	0.19	/uploads/arrow_55d7ba855c.svg	\N	local	\N	/1	2023-02-10 15:31:07.927	2023-02-10 15:31:07.927	1	1
64	chevron-left.svg	\N	\N	24	24	\N	chevron_left_4c84ee8bee	.svg	image/svg+xml	0.23	/uploads/chevron_left_4c84ee8bee.svg	\N	local	\N	/1	2023-02-10 15:31:07.976	2023-02-10 15:31:07.976	1	1
65	chevron-right.svg	\N	\N	24	24	\N	chevron_right_770a9216f9	.svg	image/svg+xml	0.23	/uploads/chevron_right_770a9216f9.svg	\N	local	\N	/1	2023-02-10 15:31:08.056	2023-02-10 15:31:08.056	1	1
66	delivery.svg	\N	\N	69	69	\N	delivery_66ad19c3a9	.svg	image/svg+xml	3.01	/uploads/delivery_66ad19c3a9.svg	\N	local	\N	/1	2023-02-10 15:31:08.139	2023-02-10 15:31:08.139	1	1
67	exclamation-circle.svg	\N	\N	24	24	\N	exclamation_circle_ca7e90686e	.svg	image/svg+xml	0.29	/uploads/exclamation_circle_ca7e90686e.svg	\N	local	\N	/1	2023-02-10 15:31:08.173	2023-02-10 15:31:08.173	1	1
68	exclamation-triangle.svg	\N	\N	24	24	\N	exclamation_triangle_ea4b611e47	.svg	image/svg+xml	0.39	/uploads/exclamation_triangle_ea4b611e47.svg	\N	local	\N	/1	2023-02-10 15:31:08.315	2023-02-10 15:31:08.315	1	1
69	identification.svg	\N	\N	24	24	\N	identification_49169edb67	.svg	image/svg+xml	0.52	/uploads/identification_49169edb67.svg	\N	local	\N	/1	2023-02-10 15:31:08.364	2023-02-10 15:31:08.364	1	1
70	heart.svg	\N	\N	24	24	\N	heart_ce6fb7013e	.svg	image/svg+xml	0.37	/uploads/heart_ce6fb7013e.svg	\N	local	\N	/1	2023-02-10 15:31:08.375	2023-02-10 15:31:08.375	1	1
71	language.svg	\N	\N	24	24	\N	language_2517299686	.svg	image/svg+xml	0.45	/uploads/language_2517299686.svg	\N	local	\N	/1	2023-02-10 15:31:08.376	2023-02-10 15:31:08.376	1	1
72	maps.svg	\N	\N	13	17	\N	maps_3a56ee9d9b	.svg	image/svg+xml	0.37	/uploads/maps_3a56ee9d9b.svg	\N	local	\N	/1	2023-02-10 15:31:08.378	2023-02-10 15:31:08.378	1	1
73	fast.svg	\N	\N	512	512	\N	fast_d25a6da69b	.svg	image/svg+xml	18.77	/uploads/fast_d25a6da69b.svg	\N	local	\N	/1	2023-02-10 15:31:08.381	2023-02-10 15:31:08.381	1	1
74	plus.svg	\N	\N	24	24	\N	plus_96031d73d1	.svg	image/svg+xml	0.23	/uploads/plus_96031d73d1.svg	\N	local	\N	/1	2023-02-10 15:31:08.517	2023-02-10 15:31:08.517	1	1
75	shield-exclamation.svg	\N	\N	24	24	\N	shield_exclamation_e48162594c	.svg	image/svg+xml	0.43	/uploads/shield_exclamation_e48162594c.svg	\N	local	\N	/1	2023-02-10 15:31:08.608	2023-02-10 15:31:08.608	1	1
76	shopping-bag.svg	\N	\N	24	24	\N	shopping_bag_023195b077	.svg	image/svg+xml	0.51	/uploads/shopping_bag_023195b077.svg	\N	local	\N	/1	2023-02-10 15:31:08.61	2023-02-10 15:31:08.61	1	1
77	setting.svg	\N	\N	24	24	\N	setting_27b76f754c	.svg	image/svg+xml	1.29	/uploads/setting_27b76f754c.svg	\N	local	\N	/1	2023-02-10 15:31:08.612	2023-02-10 15:31:08.612	1	1
78	safety.svg	\N	\N	512	512	\N	safety_616d90f627	.svg	image/svg+xml	6.29	/uploads/safety_616d90f627.svg	\N	local	\N	/1	2023-02-10 15:31:08.619	2023-02-10 15:31:08.619	1	1
79	price-tag.svg	\N	\N	69	69	\N	price_tag_40a0b8c583	.svg	image/svg+xml	3.19	/uploads/price_tag_40a0b8c583.svg	\N	local	\N	/1	2023-02-10 15:31:08.642	2023-02-10 15:31:08.642	1	1
80	shopping-cart.svg	\N	\N	24	24	\N	shopping_cart_5d458459d2	.svg	image/svg+xml	0.48	/uploads/shopping_cart_5d458459d2.svg	\N	local	\N	/1	2023-02-10 15:31:08.676	2023-02-10 15:31:08.676	1	1
81	trash.svg	\N	\N	24	24	\N	trash_e8cf0a9ef9	.svg	image/svg+xml	0.62	/uploads/trash_e8cf0a9ef9.svg	\N	local	\N	/1	2023-02-10 15:31:08.801	2023-02-10 15:31:08.801	1	1
82	user-circle.svg	\N	\N	24	24	\N	user_circle_855e1feb14	.svg	image/svg+xml	0.40	/uploads/user_circle_855e1feb14.svg	\N	local	\N	/1	2023-02-10 15:31:08.803	2023-02-10 15:31:08.803	1	1
83	tray.svg	\N	\N	69	69	\N	tray_04b0e847d5	.svg	image/svg+xml	3.77	/uploads/tray_04b0e847d5.svg	\N	local	\N	/1	2023-02-10 15:31:08.811	2023-02-10 15:31:08.811	1	1
84	winner.svg	\N	\N	69	69	\N	winner_cfffa3fdc5	.svg	image/svg+xml	8.16	/uploads/winner_cfffa3fdc5.svg	\N	local	\N	/1	2023-02-10 15:31:08.812	2023-02-10 15:31:08.812	1	1
85	facebook.svg	\N	\N	800	800	\N	facebook_ed946d4bfc	.svg	image/svg+xml	0.57	/uploads/facebook_ed946d4bfc.svg	\N	local	\N	/1	2023-02-10 15:31:30.238	2023-02-10 15:31:30.238	1	1
86	mastercard.svg	\N	\N	800	800	\N	mastercard_c668b4e163	.svg	image/svg+xml	1.41	/uploads/mastercard_c668b4e163.svg	\N	local	\N	/1	2023-02-10 15:31:30.241	2023-02-10 15:31:30.241	1	1
87	google.svg	\N	\N	800	800	\N	google_e844abaca4	.svg	image/svg+xml	1.14	/uploads/google_e844abaca4.svg	\N	local	\N	/1	2023-02-10 15:31:30.243	2023-02-10 15:31:30.243	1	1
88	messenger.svg	\N	\N	800	800	\N	messenger_d18cb38e05	.svg	image/svg+xml	1.15	/uploads/messenger_d18cb38e05.svg	\N	local	\N	/1	2023-02-10 15:31:30.253	2023-02-10 15:31:30.253	1	1
89	instagram.svg	\N	\N	800	800	\N	instagram_8ac5bcd2ee	.svg	image/svg+xml	4.37	/uploads/instagram_8ac5bcd2ee.svg	\N	local	\N	/1	2023-02-10 15:31:30.318	2023-02-10 15:31:30.318	1	1
90	app-store.svg	\N	\N	2500	2500	\N	app_store_255efe51f0	.svg	image/svg+xml	1.49	/uploads/app_store_255efe51f0.svg	\N	local	\N	/1	2023-02-10 15:31:30.377	2023-02-10 15:31:30.377	1	1
91	tiktok.svg	\N	\N	2000	2261	\N	tiktok_715a57f008	.svg	image/svg+xml	1.61	/uploads/tiktok_715a57f008.svg	\N	local	\N	/1	2023-02-10 15:31:30.544	2023-02-10 15:31:30.544	1	1
92	twitter.svg	\N	\N	800	800	\N	twitter_c719c9954d	.svg	image/svg+xml	1.09	/uploads/twitter_c719c9954d.svg	\N	local	\N	/1	2023-02-10 15:31:30.551	2023-02-10 15:31:30.551	1	1
93	tiktok-2.svg	\N	\N	1825	2500	\N	tiktok_2_792ac19aa6	.svg	image/svg+xml	4.45	/uploads/tiktok_2_792ac19aa6.svg	\N	local	\N	/1	2023-02-10 15:31:30.554	2023-02-10 15:31:30.554	1	1
94	tiktok-1.svg	\N	\N	2179	2500	\N	tiktok_1_1429121754	.svg	image/svg+xml	1.74	/uploads/tiktok_1_1429121754.svg	\N	local	\N	/1	2023-02-10 15:31:30.557	2023-02-10 15:31:30.557	1	1
95	visa.svg	\N	\N	750	471	\N	visa_3928124608	.svg	image/svg+xml	4.04	/uploads/visa_3928124608.svg	\N	local	\N	/1	2023-02-10 15:31:30.678	2023-02-10 15:31:30.678	1	1
96	youtube.svg	\N	\N	2500	1756	\N	youtube_3660ad2072	.svg	image/svg+xml	1.02	/uploads/youtube_3660ad2072.svg	\N	local	\N	/1	2023-02-10 15:31:30.687	2023-02-10 15:31:30.687	1	1
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
1	1	2	1
2	5	2	1
3	4	2	2
4	3	2	2
5	2	2	2
6	6	2	3
7	7	2	3
8	8	2	4
9	9	2	5
10	10	2	6
11	11	2	6
12	12	2	7
13	13	2	8
14	14	2	9
15	16	2	9
16	15	2	10
17	17	2	11
18	18	2	12
19	19	2	13
20	20	2	14
63	63	1	1
64	64	1	2
65	65	1	3
66	66	1	4
67	67	1	5
68	68	1	6
69	69	1	7
70	72	1	7
71	71	1	7
72	70	1	7
73	73	1	7
74	74	1	8
75	75	1	9
76	76	1	9
77	77	1	9
78	78	1	10
79	79	1	11
80	80	1	12
81	81	1	13
82	82	1	13
83	83	1	14
84	84	1	14
85	85	1	15
86	86	1	15
87	87	1	15
88	88	1	16
89	89	1	17
90	90	1	18
91	91	1	19
92	92	1	20
93	93	1	20
94	94	1	20
95	95	1	21
96	96	1	22
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: homes; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.homes (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2023-02-10 11:17:51.999	2023-02-10 15:19:54.045	\N	1	1
\.


--
-- Data for Name: homes_components; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.homes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	page.banner	banner	\N
4	1	1	page.text-block	quote	\N
5	1	1	page.partner	partner	\N
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2023-02-09 10:52:36.5	2023-02-09 10:52:36.5	\N	\N
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Admin	Admin credential	full-access	a9048c7457dc9896bad74b4c70342e5a856b9c0cfb23829a79d1bcee13a0a5d41a223bb340e40cf3f5fcee29ac4042d5f5c00ecf953768542eb3045808db7d9e	2023-02-09 13:50:10.351	2023-03-11 11:10:52.886	2592000000	2023-02-09 11:10:52.886	2023-02-09 13:50:10.351	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
6	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"api::home.home":{"kind":"singleType","collectionName":"homes","info":{"singularName":"home","pluralName":"homes","displayName":"Home","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"banner":{"displayName":"Banner","type":"component","repeatable":false,"component":"page.banner"},"quote":{"type":"component","repeatable":false,"component":"page.text-block"},"partner":{"type":"component","repeatable":false,"component":"page.partner"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"homes","info":{"singularName":"home","pluralName":"homes","displayName":"Home","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"banner":{"displayName":"Banner","type":"component","repeatable":false,"component":"page.banner"},"quote":{"type":"component","repeatable":false,"component":"page.text-block"},"partner":{"type":"component","repeatable":false,"component":"page.partner"}},"kind":"singleType"},"modelType":"contentType","modelName":"home","connection":"default","uid":"api::home.home","apiName":"home","globalId":"Home","actions":{},"lifecycles":{}},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]}}	object	\N	\N
31	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
39	plugin_content_manager_configuration_components::page.banner	{"uid":"page.banner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"buttons":{"edit":{"label":"buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","buttons"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"buttons","size":12}]]},"isComponent":true}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}	object	\N	\N
40	plugin_content_manager_configuration_components::page.button	{"uid":"page.button","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"style":{"edit":{"label":"style","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"style","searchable":true,"sortable":true}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","icon","style"],"edit":[[{"name":"title","size":6},{"name":"icon","size":6}],[{"name":"style","size":6},{"name":"link","size":6}]]},"isComponent":true}	object	\N	\N
41	plugin_content_manager_configuration_content_types::api::home.home	{"uid":"api::home.home","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"banner":{"edit":{"label":"banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banner","searchable":false,"sortable":false}},"quote":{"edit":{"label":"quote","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"quote","searchable":false,"sortable":false}},"partner":{"edit":{"label":"partner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"partner","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","updatedAt","banner"],"edit":[[{"name":"banner","size":12}],[{"name":"quote","size":12}],[{"name":"partner","size":12}]]}}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}	object	\N	\N
42	plugin_content_manager_configuration_components::page.text-block	{"uid":"page.text-block","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"content","size":12}]]},"isComponent":true}	object	\N	\N
24	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
25	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
26	plugin_upload_metrics	{"weeklySchedule":"36 57 10 * * 4","lastWeeklyUpdate":1675915056062}	object	\N	\N
44	plugin_content_manager_configuration_components::page.partner	{"uid":"page.partner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"logoItems":{"edit":{"label":"logoItems","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logoItems","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","logoItems"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"logoItems","size":12}]]},"isComponent":true}	object	\N	\N
27	plugin_i18n_default_locale	"en"	string	\N	\N
29	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
30	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
28	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object	\N	\N
45	plugin_content_manager_configuration_components::page.logo	{"uid":"page.logo","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","caption","image"],"edit":[[{"name":"title","size":6},{"name":"caption","size":6}],[{"name":"image","size":6}]]},"isComponent":true}	object	\N	\N
32	core_admin_project-settings	{"menuLogo":{},"authLogo":{}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
31	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_ee_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"homes","indexes":[{"name":"homes_created_by_id_fk","columns":["created_by_id"]},{"name":"homes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"homes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"homes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_banners","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_buttons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"style","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_logos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_partners","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_text_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"homes_components","indexes":[{"name":"homes_field_index","columns":["field"],"type":null},{"name":"homes_component_type_index","columns":["component_type"],"type":null},{"name":"homes_entity_fk","columns":["entity_id"]},{"name":"homes_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"homes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"homes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_banners_components","indexes":[{"name":"components_page_banners_field_index","columns":["field"],"type":null},{"name":"components_page_banners_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_banners_entity_fk","columns":["entity_id"]},{"name":"components_page_banners_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_banners_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_banners","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_partners_components","indexes":[{"name":"components_page_partners_field_index","columns":["field"],"type":null},{"name":"components_page_partners_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_partners_entity_fk","columns":["entity_id"]},{"name":"components_page_partners_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_partners_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_partners","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2023-02-10 11:19:19.814	7aa4663ed0ed05ca6605232c80e27621
\.


--
-- Data for Name: strapi_ee_store_settings; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.strapi_ee_store_settings (id, key, value) FROM stdin;
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2023-02-09 10:52:36.588	2023-02-09 10:52:36.588	\N	\N
2	plugin::users-permissions.auth.changePassword	2023-02-09 10:52:36.588	2023-02-09 10:52:36.588	\N	\N
3	plugin::users-permissions.auth.callback	2023-02-09 10:52:36.712	2023-02-09 10:52:36.712	\N	\N
4	plugin::users-permissions.auth.connect	2023-02-09 10:52:36.712	2023-02-09 10:52:36.712	\N	\N
6	plugin::users-permissions.auth.resetPassword	2023-02-09 10:52:36.712	2023-02-09 10:52:36.712	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2023-02-09 10:52:36.712	2023-02-09 10:52:36.712	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2023-02-09 10:52:36.712	2023-02-09 10:52:36.712	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2023-02-09 10:52:36.712	2023-02-09 10:52:36.712	\N	\N
7	plugin::users-permissions.auth.register	2023-02-09 10:52:36.712	2023-02-09 10:52:36.712	\N	\N
10	plugin::upload.content-api.find	2023-02-10 15:34:24.12	2023-02-10 15:34:24.12	\N	\N
11	plugin::upload.content-api.findOne	2023-02-10 15:34:24.12	2023-02-10 15:34:24.12	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	1	1
4	4	2	1
5	6	2	2
6	5	2	2
7	9	2	2
8	8	2	2
9	7	2	2
10	10	2	3
11	11	2	3
2	2	1	1
3	3	2	1
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2023-02-09 10:52:36.577	2023-02-09 10:52:36.577	\N	\N
2	Public	Default role given to unauthenticated user.	public	2023-02-09 10:52:36.58	2023-02-10 15:34:24.116	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	icons	1	/1	2023-02-10 11:21:00.77	2023-02-10 11:21:00.77	1	1
2	images	2	/2	2023-02-10 11:21:09.622	2023-02-10 11:21:09.622	1	1
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: food_delivery_admin
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 216, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 216, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 2, true);


--
-- Name: components_page_banners_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.components_page_banners_components_id_seq', 3, true);


--
-- Name: components_page_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.components_page_banners_id_seq', 1, true);


--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.components_page_buttons_id_seq', 1, true);


--
-- Name: components_page_logos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.components_page_logos_id_seq', 1, true);


--
-- Name: components_page_partners_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.components_page_partners_components_id_seq', 1, true);


--
-- Name: components_page_partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.components_page_partners_id_seq', 1, true);


--
-- Name: components_page_text_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.components_page_text_blocks_id_seq', 1, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 96, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.files_id_seq', 96, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);


--
-- Name: homes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.homes_components_id_seq', 5, true);


--
-- Name: homes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.homes_id_seq', 1, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 45, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 31, true);


--
-- Name: strapi_ee_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.strapi_ee_store_settings_id_seq', 1, false);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 11, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 11, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 2, true);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: food_delivery_admin
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: components_page_banners_components components_page_banners_components_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_banners_components
    ADD CONSTRAINT components_page_banners_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_banners components_page_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_banners
    ADD CONSTRAINT components_page_banners_pkey PRIMARY KEY (id);


--
-- Name: components_page_banners_components components_page_banners_unique; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_banners_components
    ADD CONSTRAINT components_page_banners_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_buttons components_page_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_buttons
    ADD CONSTRAINT components_page_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_page_logos components_page_logos_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_logos
    ADD CONSTRAINT components_page_logos_pkey PRIMARY KEY (id);


--
-- Name: components_page_partners_components components_page_partners_components_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_partners_components
    ADD CONSTRAINT components_page_partners_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_partners components_page_partners_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_partners
    ADD CONSTRAINT components_page_partners_pkey PRIMARY KEY (id);


--
-- Name: components_page_partners_components components_page_partners_unique; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_partners_components
    ADD CONSTRAINT components_page_partners_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_text_blocks components_page_text_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_text_blocks
    ADD CONSTRAINT components_page_text_blocks_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: homes_components homes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.homes_components
    ADD CONSTRAINT homes_components_pkey PRIMARY KEY (id);


--
-- Name: homes homes_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.homes
    ADD CONSTRAINT homes_pkey PRIMARY KEY (id);


--
-- Name: homes_components homes_unique; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.homes_components
    ADD CONSTRAINT homes_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_ee_store_settings strapi_ee_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_ee_store_settings
    ADD CONSTRAINT strapi_ee_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: components_page_banners_component_type_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX components_page_banners_component_type_index ON public.components_page_banners_components USING btree (component_type);


--
-- Name: components_page_banners_entity_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX components_page_banners_entity_fk ON public.components_page_banners_components USING btree (entity_id);


--
-- Name: components_page_banners_field_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX components_page_banners_field_index ON public.components_page_banners_components USING btree (field);


--
-- Name: components_page_partners_component_type_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX components_page_partners_component_type_index ON public.components_page_partners_components USING btree (component_type);


--
-- Name: components_page_partners_entity_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX components_page_partners_entity_fk ON public.components_page_partners_components USING btree (entity_id);


--
-- Name: components_page_partners_field_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX components_page_partners_field_index ON public.components_page_partners_components USING btree (field);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: homes_component_type_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX homes_component_type_index ON public.homes_components USING btree (component_type);


--
-- Name: homes_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX homes_created_by_id_fk ON public.homes USING btree (created_by_id);


--
-- Name: homes_entity_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX homes_entity_fk ON public.homes_components USING btree (entity_id);


--
-- Name: homes_field_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX homes_field_index ON public.homes_components USING btree (field);


--
-- Name: homes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX homes_updated_by_id_fk ON public.homes USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: food_delivery_admin
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_page_banners_components components_page_banners_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_banners_components
    ADD CONSTRAINT components_page_banners_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_banners(id) ON DELETE CASCADE;


--
-- Name: components_page_partners_components components_page_partners_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.components_page_partners_components
    ADD CONSTRAINT components_page_partners_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_partners(id) ON DELETE CASCADE;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: homes homes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.homes
    ADD CONSTRAINT homes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: homes_components homes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.homes_components
    ADD CONSTRAINT homes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.homes(id) ON DELETE CASCADE;


--
-- Name: homes homes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.homes
    ADD CONSTRAINT homes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: food_delivery_admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

