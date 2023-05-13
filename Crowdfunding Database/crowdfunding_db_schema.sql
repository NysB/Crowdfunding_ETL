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
    "subcategory_id" VARCHAR(10) PRIMARY KEY,
    "subcategory" VARCHAR(20) NOT NULL
);

-- Check data import and view the table
SELECT * FROM subcategory;


-- Create the contacts table
CREATE TABLE "contacts" (
    "contact_id" int PRIMARY KEY,
    "first_name" VARCHAR(30) NOT NULL,
    "last_name" VARCHAR(30) NOT NULL,
    "email" VARCHAR(50) NOT NULL
);

-- Check data import and view the table
SELECT * FROM contacts;


-- Create the campaign table
CREATE TABLE "campaign" (
    "cf_id" int PRIMARY KEY,
    "contact_id" int NOT NULL,
    "company_name" VARCHAR(50) NOT NULL,
    "description" VARCHAR(100) NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outome" VARCHAR(10) NOT NULL,
    "backers_count" int NOT NULL,
    "country" CHAR(2) NOT NULL,
    "currency" CHAR(3) NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(4) NOT NULL,
    "subcategory_id" VARCHAR(10) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

-- Check data import and view the table
SELECT * FROM campaign;



--ALTER TABLE "category" ADD CONSTRAINT "fk_category_category_id" FOREIGN KEY("category_id")
--REFERENCES "campaign" ("category_id");

--ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
--REFERENCES "campaign" ("subcategory_id");

--ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
--REFERENCES "contacts" ("contact_id");