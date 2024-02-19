
-- Drop table if exists
DROP TABLE category;

CREATE TABLE category (
	category_id VARCHAR(5) NOT NULL,
	PRIMARY KEY (category_id),
	category VARCHAR(15) NOT NULL
);
SELECT * FROM category;

-- Drop table if exists
DROP TABLE subcategory;

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL,
	PRIMARY KEY (subcategory_id),
	subcategory VARCHAR(20) NOT NULL
);
SELECT * FROM subcategory;

-- Drop table if exists
DROP TABLE contacts;

CREATE TABLE contacts (
	contact_id INT NOT NULL,
	PRIMARY KEY (contact_id),
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(90) NOT NULL
);
SELECT * FROM contacts;

-- Drop table if exists
DROP TABLE campaign;

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	PRIMARY KEY (cf_id),
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,	
	pledged FLOAT NOT NULL,
	outcome VARCHAR(20) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
SELECT * FROM campaign;
