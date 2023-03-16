CREATE TABLE Category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR,
    category_id VARCHAR REFERENCES Category(category_id)
);

CREATE TABLE Contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR
);

CREATE TABLE Campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT REFERENCES Contacts(contact_id),
    company_name VARCHAR,
    description VARCHAR,
    goal float,
    pledged float,
    outcome VARCHAR,
    backers_count INT,
    country VARCHAR,
    currency VARCHAR,
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR REFERENCES Category(category_id),
    subcategory_id VARCHAR REFERENCES Subcategory(subcategory_id)
);

ALTER TABLE Subcategory DROP column category_id;

Select * from category;
Select * from subcategory;
Select * from contacts;
Select * from campaign;
