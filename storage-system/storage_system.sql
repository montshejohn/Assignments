CREATE TABLE IF NOT EXISTS Business (
    id serial PRIMARY KEY,
    business_name VARCHAR(25)NOT NULL,
    contact_number VARCHAR(20)NOT NULL,
    contact_name VARCHAR(15)NOT NULL,
    contact_email VARCHAR(35)NOT NULL
    updtated_at 

);CREATE TABLE IF NOT EXISTS Customers (
    id serial PRIMARY KEY,
    customer_name VARCHAR(25) NOT NULL,
    customer_surname VARCHAR(20)NOT NULL,
    customer_email VARCHAR(30)NOT NULL,
    customer_phone VARCHAR(20)NOT NULL,
    business INT REFERENCES Business(id)  NOT NULL

);CREATE TABLE IF NOT EXISTS Locations(
    id serial PRIMARY KEY,
    region VARCHAR(40)NOT NULL,
    street_name VARCHAR(50)NOT NULL,
    province VARCHAR(20)NOT NULL,
    city VARCHAR(50)NOT NULL,
    business_id INT REFERENCES Business(id) NOT NULL

);CREATE TABLE IF NOT EXISTS Blocks(
    id serial PRIMARY KEY,
    block_name VARCHAR(5)NOT NULL,
    location_id INT REFERENCES locations (id) NOT NULL


);CREATE TABLE IF NOT EXISTS Units(
    id serial PRIMARY KEY,
    unit_name VARCHAR(20)NOT NULL UNIQUE,
    block_id INT REFERENCES Blocks (id) NOT NULL,
    unit_type VARCHAR(20)NOT NULL

);CREATE TABLE IF NOT EXISTS Unit_types(
    id serial PRIMARY KEY,
    unit_name VARCHAR(20)NOT NULL,
    length_meters DECIMAL NOT NULL, width_meters INT NOT NULL,
       height_meters  DECIMAL NOT NULL,
    unit_id DECIMAL REFERENCES Units(id) NOT NULL
);
INSERT INTO
    Business(
        business_name,
        contact_number,
        contact_name,
        contact_email
    )
VALUES
    (
        'mzansiapps',
        '0715318886',
        'mokgokong_johannes',
        'mokgokongjohannes@gmail.com'
    ),
    (
        'mzansi',
        '0745318886',
        'mokgokong_joseph',
        'mokgokongjohn@gmail.com'
    ),
    (
        'store',
        '0745318986',
        'mokong_seph',
        'mokongn @gmail.com'
    );
INSERT INTO
    Custumer(
        customer_name,
        customer_surname,
        customer_email,
        customer_phone
    )
VALUES
    (
        'montshe',
        'mokgokong',
        'mokgokongjohannes @gmail.com',
        '074531118'
    ),
    (
        'mzansi',
        'mokgokong',
        'mokgokongjohn@gmail.com',
        '0745318886'
    ),
    (
        'store',
        'mokong_seph',
        'mokongn @gmail.com',
        '0745318986'
    );
INSERT INTO
    locations(business_address)
VALUES
    ('riversands incubation drive'),
    ('diepsloot king Senzangakhona dr'),
    ('Solomondale malapa str');

INSERT INTO
    Blocks(block_name)
VALUES
    ('A'),
    ('B'),
    ('C');
INSERT INTO
    Unit(unit_name, unit_type, block_id)
VALUES
    ('garage', 'garage'),
    ('warehouse', 'warehouse'),
    ('depo_box', 'depo_box');
INSERT INTO
    Unit_type (
        unit_name,
        length_in_meters,
        width_in_meters,
        height_in_meters
    )
VALUES
    ('unitA', '23', '23', '43'),
    ('unitb', '13', '13', '23'),
    ('unitc', '43', '43', '73'),
    ('unitd', '3', '3', '6');


    -- get all blocks--! 
    select * from Blocks;
    -- get all units for a business --! 
    SELECT unit_name,business_name
    FROM public.unit_location INNER JOIN blocks ON unit_location.id = blocks.id INNER JOIN unit ON blocks.id = unit.id  INNER JOIN business ON unit_location.id = business.id;
    -- get all units where type is equal garage  --! 
    SELECT unit_name FROM unit WHERE unit_type = 'garage';
    -- get all locations--! 
    select * from locations;
    -- get all units where width > 3m --! 
    SELECT * FROM unit_type WHERE width_in_meters > 3;
  



     