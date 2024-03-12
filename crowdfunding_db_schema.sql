CREATE DATABASE crowdfunding_db

CREATE TABLE category(
	category_id varchar(4) PRIMARY KEY,
	category varchar(20)
);

CREATE TABLE subcategory(
	subcategory_id varchar(10) PRIMARY KEY,
	subcategory varchar(20)
);

CREATE TABLE contacts(
	contact_id int PRIMARY KEY,
	first_name varchar(20),
	last_name varchar(20),
	email varchar(50)
);

CREATE TABLE campaign(
	cf_id int PRIMARY KEY,
	contact_id int,
	company varchar(50),
	description varchar(100),
	goal numeric,
	pledged numeric,
	outcome varchar(12),
	backers int,
	country varchar(2),
	currency varchar(3),
	launched date,
	end_date date,
	category varchar(4),
	subcategory varchar(10),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category) REFERENCES category(category_id),
	FOREIGN KEY (subcategory) REFERENCES subcategory(subcategory_id)
);

Select * from campaign
Select * from category
Select * from contacts
Select * from subcategory

show data_directory;