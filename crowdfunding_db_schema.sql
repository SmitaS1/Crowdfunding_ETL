drop table campaign;
drop table subcategory;
drop table category;
drop table contacts;


create table contacts (
contact_id int not null primary key,
first_name varchar(12) not null,
last_name  varchar(13) not null,
email      varchar(42)
	);
	
create table category (
category_id varchar(4) not null primary key,
category	varchar(12) not null
);

	
create table subcategory (
subcategory_id varchar(8) not null primary key,
subcategory	varchar(17) not null
);


create table campaign (
cf_id  int not null primary key,
contact_id  int not null,
company_name varchar(33) not null,
description varchar(53) not null,
goal float, 
pledged float,
outcome varchar(10),
backers_count int,
country varchar(2),
currency varchar(3),
launch_date date ,
end_date date,
category_id varchar(4),
subcategory_id varchar(8),
foreign key (contact_id) references contacts(contact_id),
foreign key (category_id) references category(category_id),
foreign key (subcategory_id) references subcategory(subcategory_id)
);

##################################################################################################
### Excute the query to check the data
##################################################################################################

SELECT * FROM contacts;

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM campaign;
