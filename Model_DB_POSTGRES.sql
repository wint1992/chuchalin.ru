CREATE DATABASE "NovaDB"
    WITH 
    OWNER = "a.chuchalin"
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

CREATE SCHEMA oltp
    AUTHORIZATION "a.chuchalin";

CREATE SEQUENCE oltp."ACTION_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."ACTION_ID_seq"
    OWNER TO "a.chuchalin";

CREATE SEQUENCE oltp."APPLICATION_APPLICATION_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."APPLICATION_APPLICATION_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."CALL_RESULT_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."CALL_RESULT_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."DICT_LEGAL_FORM_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."DICT_LEGAL_FORM_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."DICT_ORG_STATUS_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."DICT_ORG_STATUS_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."DOCUMENT_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."DOCUMENT_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."EMPLOYMENT_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."EMPLOYMENT_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."INTEREST_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."INTEREST_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."IS_ORGANIZATION_ORGANIZATION_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."IS_ORGANIZATION_ORGANIZATION_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."NEXT_STEP_ID_seq"
    INCREMENT 1
    START 2
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."NEXT_STEP_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."ORDER_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."ORDER_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."ORGANIZATION_ORGANIZATION_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."ORGANIZATION_ORGANIZATION_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."PERSON_PERSON_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."PERSON_PERSON_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."PRODUCT_PRODUCT_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."PRODUCT_PRODUCT_ID_seq"
    OWNER TO "a.chuchalin";
    CREATE SEQUENCE oltp."REASON_CODE_ID_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE oltp."REASON_CODE_ID_seq"
    OWNER TO "a.chuchalin";

CREATE TABLE oltp.dict_legal_form
(
    id integer NOT NULL DEFAULT nextval('oltp."DICT_LEGAL_FORM_ID_seq"'::regclass),
    name text COLLATE pg_catalog."default",
    abbreviation text COLLATE pg_catalog."default",
    CONSTRAINT "DICT_LEGAL_FORM_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.dict_legal_form
    OWNER to "a.chuchalin";
    CREATE TABLE oltp.dict_org_status
(
    id integer NOT NULL DEFAULT nextval('oltp."DICT_ORG_STATUS_ID_seq"'::regclass),
    status text COLLATE pg_catalog."default",
    CONSTRAINT "DICT_ORG_STATUS_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.dict_org_status
    OWNER to "a.chuchalin";    

CREATE TABLE oltp.is_organization
(
    organization_id integer NOT NULL DEFAULT nextval('oltp."IS_ORGANIZATION_ORGANIZATION_ID_seq"'::regclass),
    status integer,
    registration_date date,
    close_date date,
    inn text COLLATE pg_catalog."default",
    ogrn text COLLATE pg_catalog."default",
    okved text COLLATE pg_catalog."default",
    full_name text COLLATE pg_catalog."default",
    okpo text COLLATE pg_catalog."default",
    a_country text COLLATE pg_catalog."default",
    a_region_type text COLLATE pg_catalog."default",
    a_region_name text COLLATE pg_catalog."default",
    a_district_type text COLLATE pg_catalog."default",
    a_district_name text COLLATE pg_catalog."default",
    a_microdistrict text COLLATE pg_catalog."default",
    a_location_type text COLLATE pg_catalog."default",
    a_city_type text COLLATE pg_catalog."default",
    a_city text COLLATE pg_catalog."default",
    a_street_type text COLLATE pg_catalog."default",
    a_street text COLLATE pg_catalog."default",
    a_house text COLLATE pg_catalog."default",
    a_construction text COLLATE pg_catalog."default",
    a_building text COLLATE pg_catalog."default",
    a_apartment text COLLATE pg_catalog."default",
    a_postindex text COLLATE pg_catalog."default",
    a_gps text COLLATE pg_catalog."default",
    a_full_address text COLLATE pg_catalog."default",
    a_code_kladr text COLLATE pg_catalog."default",
    a_time_zone integer,
    a_code_klade text COLLATE pg_catalog."default",
    a_autonomy_type text COLLATE pg_catalog."default",
    a_autonomy_name text COLLATE pg_catalog."default",
    a_location text COLLATE pg_catalog."default",
    a_intracity_district text COLLATE pg_catalog."default",
    ph_phone_number text COLLATE pg_catalog."default",
    ph_phone_number_add1 text COLLATE pg_catalog."default",
    ph_phone_number_add2 text COLLATE pg_catalog."default",
    employee_number integer,
    web_site text COLLATE pg_catalog."default",
    okopf text COLLATE pg_catalog."default",
    CONSTRAINT "IS_ORGANIZATION_pkey" PRIMARY KEY (organization_id),
    CONSTRAINT "FK_STATUS_DICT_ORG_STATUS_ID" FOREIGN KEY (status)
        REFERENCES oltp.dict_org_status (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.is_organization
    OWNER to postgres;    

CREATE TABLE oltp.application
(
    application_id integer NOT NULL DEFAULT nextval('oltp."APPLICATION_APPLICATION_ID_seq"'::regclass),
    app_timestamp timestamp without time zone,
    manager_id integer,
    ri_request_timestamp timestamp without time zone,
    ri_step_code integer,
    ri_step_parameter integer,
    ri_current_date timestamp without time zone,
    ad_app_date_time timestamp without time zone,
    ad_app_close_date_time timestamp without time zone,
    ad_application_status integer,
    ad_app_type integer,
    ad_app_channel integer,
    ad_o_total_cost numeric,
    person_fk integer,
    organization_fk integer,
    addr_del_country text COLLATE pg_catalog."default",
    addr_del_region_type text COLLATE pg_catalog."default",
    addr_del_region_name text COLLATE pg_catalog."default",
    addr_del_district_type text COLLATE pg_catalog."default",
    addr_del_district_name text COLLATE pg_catalog."default",
    addr_del_microdistrict text COLLATE pg_catalog."default",
    addr_del_location_type text COLLATE pg_catalog."default",
    addr_del_location text COLLATE pg_catalog."default",
    addr_del_city_type text COLLATE pg_catalog."default",
    addr_del_city text COLLATE pg_catalog."default",
    addr_del_street_type text COLLATE pg_catalog."default",
    addr_del_street text COLLATE pg_catalog."default",
    addr_del_house text COLLATE pg_catalog."default",
    addr_del_construction text COLLATE pg_catalog."default",
    addr_del_building text COLLATE pg_catalog."default",
    addr_del_apartment text COLLATE pg_catalog."default",
    addr_del_postindex text COLLATE pg_catalog."default",
    addr_del_gps text COLLATE pg_catalog."default",
    addr_del_full_address text COLLATE pg_catalog."default",
    addr_del_code_kladr text COLLATE pg_catalog."default",
    addr_del_code_klade text COLLATE pg_catalog."default",
    addr_del_time_zone integer,
    ad_del_date_time timestamp without time zone,
    ad_del_fact_date_time timestamp without time zone,
    is_organization_fk integer,
    CONSTRAINT "APPLICATION_pkey" PRIMARY KEY (application_id),
    CONSTRAINT "    FK_APPLICATION_IS_ORGANIZATION" FOREIGN KEY (is_organization_fk)
        REFERENCES oltp.is_organization (organization_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.application
    OWNER to "a.chuchalin";

CREATE TABLE oltp.person
(
    person_id integer NOT NULL DEFAULT nextval('oltp."PERSON_PERSON_ID_seq"'::regclass),
    person_type integer,
    first_name text COLLATE pg_catalog."default",
    last_name text COLLATE pg_catalog."default",
    patronymic_name text COLLATE pg_catalog."default",
    is_no_patronymic integer,
    previous_last_name text COLLATE pg_catalog."default",
    age integer,
    sex integer,
    birth_place text COLLATE pg_catalog."default",
    birth_date date,
    death_date date,
    citizenship integer,
    marital_status integer,
    education integer,
    p_issue_date date,
    p_serial text COLLATE pg_catalog."default",
    p_number text COLLATE pg_catalog."default",
    p_issuer text COLLATE pg_catalog."default",
    p_sub_division_code text COLLATE pg_catalog."default",
    email text COLLATE pg_catalog."default",
    work_email text COLLATE pg_catalog."default",
    ph_mobile_number text COLLATE pg_catalog."default",
    ph_mobile_calls_count integer,
    ph_mobile_contacts_count integer,
    ph_mobile_is_actual integer,
    ph_mobile_contact_date timestamp without time zone,
    ph_mobile_operator text COLLATE pg_catalog."default",
    ph_reg_number text COLLATE pg_catalog."default",
    ph_reg_calls_count integer,
    ph_reg_contacts_count integer,
    ph_reg_is_actual integer,
    ph_reg_contact_date timestamp without time zone,
    ph_fact_number text COLLATE pg_catalog."default",
    ph_fact_calls_count integer,
    ph_fact_contacts_count integer,
    ph_fact_is_actual integer,
    ph_fact_contact_date timestamp without time zone,
    sn_vk_account text COLLATE pg_catalog."default",
    sn_vk_friends_num integer,
    sn_fb_account text COLLATE pg_catalog."default",
    sn_fb_friends_num integer,
    sn_inst_account text COLLATE pg_catalog."default",
    sn_inst_friends_num integer,
    m_wa_account text COLLATE pg_catalog."default",
    m_teleg_account text COLLATE pg_catalog."default",
    m_viber_account text COLLATE pg_catalog."default",
    au_make text COLLATE pg_catalog."default",
    au_model text COLLATE pg_catalog."default",
    au_year integer,
    au_is_credit integer,
    au_cost numeric,
    au_car_number text COLLATE pg_catalog."default",
    au_reg_serial_number text COLLATE pg_catalog."default",
    au_vin text COLLATE pg_catalog."default",
    pc_segment integer,
    pc_total_income numeric,
    addr_reg_country text COLLATE pg_catalog."default",
    addr_reg_region_type text COLLATE pg_catalog."default",
    addr_reg_region_name text COLLATE pg_catalog."default",
    addr_reg_district_type text COLLATE pg_catalog."default",
    addr_reg_district_name text COLLATE pg_catalog."default",
    addr_reg_microdistrict text COLLATE pg_catalog."default",
    addr_reg_location_type text COLLATE pg_catalog."default",
    addr_reg_location text COLLATE pg_catalog."default",
    addr_reg_city_type text COLLATE pg_catalog."default",
    addr_reg_city text COLLATE pg_catalog."default",
    addr_reg_street_type text COLLATE pg_catalog."default",
    addr_reg_street text COLLATE pg_catalog."default",
    addr_reg_house text COLLATE pg_catalog."default",
    addr_reg_construction text COLLATE pg_catalog."default",
    addr_reg_building text COLLATE pg_catalog."default",
    addr_reg_apartment text COLLATE pg_catalog."default",
    addr_reg_postindex text COLLATE pg_catalog."default",
    addr_reg_registration_date date,
    addr_reg_start_living_date date,
    addr_reg_gps text COLLATE pg_catalog."default",
    addr_reg_full_address text COLLATE pg_catalog."default",
    addr_reg_code_kladr text COLLATE pg_catalog."default",
    addr_reg_code_klade text COLLATE pg_catalog."default",
    addr_reg_time_zone integer,
    addr_fact_country text COLLATE pg_catalog."default",
    addr_fact_region_type text COLLATE pg_catalog."default",
    addr_fact_region_name text COLLATE pg_catalog."default",
    addr_fact_district_type text COLLATE pg_catalog."default",
    addr_fact_district_name text COLLATE pg_catalog."default",
    addr_fact_microdistrict text COLLATE pg_catalog."default",
    addr_fact_location_type text COLLATE pg_catalog."default",
    addr_fact_location text COLLATE pg_catalog."default",
    addr_fact_city_type text COLLATE pg_catalog."default",
    addr_fact_city text COLLATE pg_catalog."default",
    addr_fact_street_type text COLLATE pg_catalog."default",
    addr_fact_street text COLLATE pg_catalog."default",
    addr_fact_house text COLLATE pg_catalog."default",
    addr_fact_construction text COLLATE pg_catalog."default",
    addr_fact_building text COLLATE pg_catalog."default",
    addr_fact_apartment text COLLATE pg_catalog."default",
    addr_fact_postindex text COLLATE pg_catalog."default",
    addr_fact_start_living_date date,
    addr_fact_gps text COLLATE pg_catalog."default",
    addr_fact_full_address text COLLATE pg_catalog."default",
    addr_fact_code_kladr text COLLATE pg_catalog."default",
    addr_fact_code_klade text COLLATE pg_catalog."default",
    addr_fact_time_zone integer,
    application_fk integer,
    is_organization_fk integer,
    person_fk integer,
    CONSTRAINT "PERSON_pkey" PRIMARY KEY (person_id),
    CONSTRAINT "FK_PERSON_APPLICATION" FOREIGN KEY (application_fk)
        REFERENCES oltp.application (application_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_PERSON_IS_ORGANIZATION" FOREIGN KEY (is_organization_fk)
        REFERENCES oltp.is_organization (organization_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_PERSON_THIRD_PERSON" FOREIGN KEY (person_fk)
        REFERENCES oltp.person (person_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.person
    OWNER to "a.chuchalin";

     CREATE TABLE oltp.organization
(
    organization_id integer NOT NULL DEFAULT nextval('oltp."ORGANIZATION_ORGANIZATION_ID_seq"'::regclass),
    status integer,
    registration_date date,
    close_date date,
    inn text COLLATE pg_catalog."default",
    ogrn text COLLATE pg_catalog."default",
    okopf integer,
    okved text COLLATE pg_catalog."default",
    full_name text COLLATE pg_catalog."default",
    okpo text COLLATE pg_catalog."default",
    a_country text COLLATE pg_catalog."default",
    a_region_type text COLLATE pg_catalog."default",
    a_region_name text COLLATE pg_catalog."default",
    a_district_type text COLLATE pg_catalog."default",
    a_district_name text COLLATE pg_catalog."default",
    a_microdistrict text COLLATE pg_catalog."default",
    a_location_type text COLLATE pg_catalog."default",
    a_city_type text COLLATE pg_catalog."default",
    a_city text COLLATE pg_catalog."default",
    a_street_type text COLLATE pg_catalog."default",
    a_street text COLLATE pg_catalog."default",
    a_house text COLLATE pg_catalog."default",
    a_construction text COLLATE pg_catalog."default",
    a_building text COLLATE pg_catalog."default",
    a_apartment text COLLATE pg_catalog."default",
    a_postindex text COLLATE pg_catalog."default",
    a_gps text COLLATE pg_catalog."default",
    a_full_address text COLLATE pg_catalog."default",
    a_code_kladr text COLLATE pg_catalog."default",
    a_time_zone integer,
    a_code_klade text COLLATE pg_catalog."default",
    a_autonomy_type text COLLATE pg_catalog."default",
    a_autonomy_name text COLLATE pg_catalog."default",
    a_location text COLLATE pg_catalog."default",
    a_intracity_district text COLLATE pg_catalog."default",
    ph_phone_number text COLLATE pg_catalog."default",
    ph_phone_number_add1 text COLLATE pg_catalog."default",
    ph_phone_number_add2 text COLLATE pg_catalog."default",
    employee_number integer,
    application_fk integer,
    is_organization_fk integer,
    web_site text COLLATE pg_catalog."default",
    CONSTRAINT "ORGANIZATION_pkey" PRIMARY KEY (organization_id),
    CONSTRAINT "FK_OKOPF_DICT_LEGAL_FORM_ID" FOREIGN KEY (okopf)
        REFERENCES oltp.dict_legal_form (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_ORGANIZATION_APPLICATION" FOREIGN KEY (application_fk)
        REFERENCES oltp.application (application_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_ORGANIZATION_IS_ORGANIZATION" FOREIGN KEY (is_organization_fk)
        REFERENCES oltp.is_organization (organization_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_STATUS_DICT_ORG_STATUS_ID" FOREIGN KEY (status)
        REFERENCES oltp.dict_org_status (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.organization
    OWNER to "a.chuchalin";

      CREATE TABLE oltp.product
(
    product_id integer NOT NULL DEFAULT nextval('oltp."PRODUCT_PRODUCT_ID_seq"'::regclass),
    product_name text COLLATE pg_catalog."default",
    product_cost numeric,
    product_type integer,
    product_group integer,
    product_subgroup integer,
    product_species integer,
    product_variety integer,
    product_brand text COLLATE pg_catalog."default",
    product_count integer,
    product_weight numeric,
    product_length numeric,
    product_volume numeric,
    is_organization_fk integer,
    CONSTRAINT "PRODUCT_pkey" PRIMARY KEY (product_id),
    CONSTRAINT "FK_PRODUCT_IS_ORGANIZATION" FOREIGN KEY (is_organization_fk)
        REFERENCES oltp.is_organization (organization_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.product
    OWNER to "a.chuchalin";

    CREATE TABLE oltp.action
(
    id integer NOT NULL DEFAULT nextval('oltp."ACTION_ID_seq"'::regclass),
    action_type integer,
    action_result integer,
    action_manager_id integer,
    action_new_manager_id integer,
    action_date_time timestamp without time zone,
    action_comment text COLLATE pg_catalog."default",
    application_fk integer,
    CONSTRAINT "ACTION_pkey" PRIMARY KEY (id),
    CONSTRAINT "FK_ACATION_APPLICATION" FOREIGN KEY (application_fk)
        REFERENCES oltp.application (application_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.action
    OWNER to "a.chuchalin";
    
    CREATE TABLE oltp.call_result
(
    id integer NOT NULL DEFAULT nextval('oltp."CALL_RESULT_ID_seq"'::regclass),
    call_type integer,
    is_active integer,
    call_decision integer,
    call_date_time timestamp without time zone,
    application_fk integer,
    CONSTRAINT "CALL_RESULT_pkey" PRIMARY KEY (id),
    CONSTRAINT "FK_CALL_RESULT_APPLICATION" FOREIGN KEY (application_fk)
        REFERENCES oltp.application (application_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.call_result
    OWNER to "a.chuchalin";
    

CREATE TABLE oltp.document
(
    id integer NOT NULL DEFAULT nextval('oltp."DOCUMENT_ID_seq"'::regclass),
    type integer,
    issue_date date,
    serial text COLLATE pg_catalog."default",
    "number" text COLLATE pg_catalog."default",
    issuer text COLLATE pg_catalog."default",
    is_original integer,
    amount_pages integer,
    person_fk integer,
    application_fk integer,
    CONSTRAINT "DOCUMENT_pkey" PRIMARY KEY (id),
    CONSTRAINT "FK_DOCUMENT_APPLICATION" FOREIGN KEY (application_fk)
        REFERENCES oltp.application (application_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_DOCUMENT_PERSON" FOREIGN KEY (person_fk)
        REFERENCES oltp.person (person_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.document
    OWNER to "a.chuchalin";

    CREATE TABLE oltp.employment
(
    id integer NOT NULL DEFAULT nextval('oltp."EMPLOYMENT_ID_seq"'::regclass),
    organization_fk integer,
    "position" integer,
    income_amount numeric,
    start_working_date date,
    end_working_date date,
    person_fk integer,
    CONSTRAINT "EMPLOYMENT_pkey" PRIMARY KEY (id),
    CONSTRAINT "FK_EMPLOYMENT_ORGANIZATION" FOREIGN KEY (organization_fk)
        REFERENCES oltp.organization (organization_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_EMPLOYMENT_PERSON" FOREIGN KEY (person_fk)
        REFERENCES oltp.person (person_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.employment
    OWNER to "a.chuchalin";

    CREATE TABLE oltp.interest
(
    id integer NOT NULL DEFAULT nextval('oltp."INTEREST_ID_seq"'::regclass),
    type integer,
    value text COLLATE pg_catalog."default",
    person_fk integer,
    CONSTRAINT "INTEREST_pkey" PRIMARY KEY (id),
    CONSTRAINT "FK_INTEREST_PERSON" FOREIGN KEY (person_fk)
        REFERENCES oltp.person (person_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.interest
    OWNER to "a.chuchalin";

    

    CREATE TABLE oltp.next_step
(
    id integer NOT NULL DEFAULT nextval('oltp."NEXT_STEP_ID_seq"'::regclass),
    step_code integer,
    step_parameter integer,
    step_priority integer,
    step_plane_date timestamp without time zone,
    application_fk integer,
    call_result_fk integer,
    CONSTRAINT "NEXT_STEP_pkey" PRIMARY KEY (id),
    CONSTRAINT "FK_NEXT_STEP_APPLICATION" FOREIGN KEY (application_fk)
        REFERENCES oltp.application (application_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_NEXT_STEP_CALL_RESULT" FOREIGN KEY (call_result_fk)
        REFERENCES oltp.call_result (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.next_step
    OWNER to "a.chuchalin";

    CREATE TABLE oltp."order"
(
    id integer NOT NULL DEFAULT nextval('oltp."ORDER_ID_seq"'::regclass),
    product_fk integer,
    product_count integer,
    order_cost numeric,
    order_comment text COLLATE pg_catalog."default",
    application_fk integer,
    CONSTRAINT "ORDER_pkey" PRIMARY KEY (id),
    CONSTRAINT "FK_ORDER_APPLICATION" FOREIGN KEY (application_fk)
        REFERENCES oltp.application (application_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_ORDER_PRODUCT" FOREIGN KEY (product_fk)
        REFERENCES oltp.product (product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp."order"
    OWNER to "a.chuchalin";

    CREATE TABLE oltp.reason_code
(
    id integer NOT NULL DEFAULT nextval('oltp."REASON_CODE_ID_seq"'::regclass),
    decision_reason_code text COLLATE pg_catalog."default",
    fired_timestamp timestamp without time zone,
    application_fk integer,
    call_result_fk integer,
    CONSTRAINT "REASON_CODE_pkey" PRIMARY KEY (id),
    CONSTRAINT "FK_REASON_CODE_APPLICATION" FOREIGN KEY (application_fk)
        REFERENCES oltp.application (application_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_REASON_CODE_CALL_RESULT" FOREIGN KEY (call_result_fk)
        REFERENCES oltp.call_result (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE oltp.reason_code
    OWNER to "a.chuchalin";


-- /////////////   AUTH   /////////////////////


CREATE SCHEMA auth
  AUTHORIZATION "a.chuchalin";

CREATE TABLE auth.auth_data
(
  id serial NOT NULL,
  login text,
  email text,
  registration_datetime timestamp without time zone,
  passhash text,
  salt text,
  role integer,
  confirm boolean,
  CONSTRAINT auth_data_pk PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE auth.auth_data
  OWNER TO "a.chuchalin";