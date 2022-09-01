-- Table: public.application_record
-- DROP TABLE IF EXISTS public.application_record;
CREATE TABLE IF NOT EXISTS public.application_record
(
    id integer NOT NULL,
    code_gender text COLLATE pg_catalog."default",
    flag_own_car text COLLATE pg_catalog."default",
    flag_own_realty text COLLATE pg_catalog."default",
    cnt_children integer,
    amt_income_total double precision,
    name_income_type text COLLATE pg_catalog."default",
    name_education_type text COLLATE pg_catalog."default",
    name_family_status text COLLATE pg_catalog."default",
    name_housing_type text COLLATE pg_catalog."default",
    days_birth integer,
    days_employed integer,
    flag_mobil integer,
    flag_work_phone integer,
    flag_phone integer,
    flag_email integer,
    occupation_type text COLLATE pg_catalog."default",
    cnt_fam_members double precision,
    CONSTRAINT application_record_pkey PRIMARY KEY (id)
)
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public.application_record
    OWNER to postgres;
Added to your saved items
7:29
-- Table: public.credit_record
-- DROP TABLE IF EXISTS public.credit_record;
CREATE TABLE IF NOT EXISTS public.credit_record
(
    id integer NOT NULL,
    months_balance integer,
    status text COLLATE pg_catalog."default"
)
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public.credit_record
    OWNER to postgres;

---Delete not-required records
DELETE FROM credit_record
where months_balance < 0;
DELETE FROM  application_record
where id in (SELECT application_record.id
    FROM application_record
	group by application_record.id
	having count(*) >1);