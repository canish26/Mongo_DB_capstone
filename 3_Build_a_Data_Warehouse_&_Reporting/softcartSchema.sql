BEGIN;


CREATE TABLE public."softcartDimDate"
(
    date_id integer,
    date date,
    day integer,
    weekday integer,
    weekday_name character varying,
    month integer,
    month_name character varying,
    year integer,
    quarter integer,
    quarter_name character varying,
    PRIMARY KEY (date_id)
);

CREATE TABLE public."softcartDimCategory"
(
    category_id integer,
    category_name character varying,
    PRIMARY KEY (category_id)
);

CREATE TABLE public."softcartDimItem"
(
    item_id integer,
    item_name character varying,
    PRIMARY KEY (item_id)
);

CREATE TABLE public."softcartDimCountry"
(
    country_id integer,
    country_name character varying,
    PRIMARY KEY (country_id)
);

CREATE TABLE public."softcartFactSales"
(
    order_id integer,
    item_id integer,
    category_id integer,
    price numeric,
    country_id integer,
    date_id integer,
    PRIMARY KEY (order_id)
);

ALTER TABLE public."softcartFactSales"
    ADD FOREIGN KEY (item_id)
    REFERENCES public."softcartDimItem" (item_id)
    NOT VALID;


ALTER TABLE public."softcartFactSales"
    ADD FOREIGN KEY (category_id)
    REFERENCES public."softcartDimCategory" (category_id)
    NOT VALID;


ALTER TABLE public."softcartFactSales"
    ADD FOREIGN KEY (country_id)
    REFERENCES public."softcartDimCountry" (country_id)
    NOT VALID;


ALTER TABLE public."softcartFactSales"
    ADD FOREIGN KEY (date_id)
    REFERENCES public."softcartDimDate" (date_id)
    NOT VALID;

END;
