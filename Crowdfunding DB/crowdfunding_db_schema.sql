--Drop table if exists
--Drop TABLE IF EXISTS campaign;
--Drop TABLE IF EXISTS category;
--Drop TABLE IF EXISTS subcategory;
--Drop TABLE IF EXISTS contacts;

-- Create the category table
CREATE TABLE "category" (
    "category_id" VARCHAR(4) PRIMARY KEY,
    "category" VARCHAR(20) NOT NULL
);

-- Check data import and view the table
SELECT * FROM category;


-- Create the subcategory table
CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(8) PRIMARY KEY,
    "subcategory" VARCHAR(20) NOT NULL
);

-- Check data import and view the table
SELECT * FROM subcategory;


-- Create the contacts table
CREATE TABLE "contacts" (
    "contact_id" FLOAT PRIMARY KEY,
    "first_name" VARCHAR(20) NOT NULL,
    "last_name" VARCHAR(20) NOT NULL,
    "email" VARCHAR(40) NOT NULL
);

-- Check data import and view the table
SELECT * FROM contacts;


-- Create the campaign table
CREATE TABLE "campaign" (
    "cf_id" int PRIMARY KEY,
    "contact_id" int NOT NULL,
    "company_name" VARCHAR(30) NOT NULL,
    "description" VARCHAR(50) NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outome" VARCHAR(10) NOT NULL,
    "backers_count" FLOAT NOT NULL,
    "country" VARCHAR(2) NOT NULL,
    "currency" VARCHAR(3) NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(4) NOT NULL,
    "subcategory_id" VARCHAR(8) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

-- Check data import and view the table
SELECT * FROM campaign;