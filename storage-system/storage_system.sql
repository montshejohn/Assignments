CREATE TABLE IF NOT EXISTS Business (
    id serial PRIMARY KEY,
    business_name VARCHAR(255),
    contact_number INT,
    contact_name VARCHAR(255),
    contact_email VARCHAR(255)

);CREATE TABLE IF NOT EXISTS Custumer (
    id serial PRIMARY KEY,
    customer_name VARCHAR(30),
    customer_surname VARCHAR(40),
    customer_email VARCHAR(50),
    customer_phone INT,
    business INT REFERENCES Business(id)

);CREATE TABLE IF NOT EXISTS Business_location(
    id serial PRIMARY KEY,
    business_address VARCHAR(221),
    business_id INT REFERENCES Business(id)

);CREATE TABLE IF NOT EXISTS Blocks(
    id serial PRIMARY KEY,
    block_name VARCHAR(255),
    location_id INT REFERENCES Business_location (id)


);CREATE TABLE IF NOT EXISTS Unit(
    id serial PRIMARY KEY,
    unit_name VARCHAR(255),
    block_id INT REFERENCES Blocks (id),
    unit_type VARCHAR(255)

);CREATE TABLE IF NOT EXISTS Unit_type(
    id serial PRIMARY KEY,
    unit_name VARCHAR(255),
    length_in_meters INT,
    width_in_meters INT,
    height_in_meters INT,
    unit_id INT REFERENCES Unit(id)
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
        'mokgokongjohannes @gmail.com'
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
    Business_location(business_address)
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
    Unit(unit_name, unit_type)
VALUES
    ('garage', 'garagae'),
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