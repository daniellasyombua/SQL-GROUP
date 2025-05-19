CREATE SCHEMA children_vaccination;
CREATE TABLE children_vaccination.supplier_details(
supplier_id SERIAL PRIMARY KEY,
supplier_name VARCHAR NOT NULL,
CONSTRAINT FK_vaccine_details FOREIGN KEY(vaccine_id) REFERENCES children_vaccination.vaccine_details(vaccine_id)
);

drop table children_vaccination.supplier_details
INSERT into children_vaccination.supplier_details(supplier_name)
	values
('John Pal')



SELECT * FROM children_vaccination.supplier_details;



CREATE TABLE children_vaccination.vaccine_details(
vaccine_id SERIAL PRIMARY KEY,
vaccine_name VARCHAR(100) NOT NULL,
date_of_expiry DATE not NULL,
batch_entry DATE not NULL,
batch_number INT not null,
CONSTRAINT FK_supplier_details
	FOREIGN KEY(supplier_id) REFERENCES children_vaccination.supplier_details(supplier_id)

);

INSERT into children_vaccination.vaccine_details (vaccine_name,supplier_id,date_of_expiry,batch_entry,batch_number)
	values
('Abel Mutua','04/10/2026','08/03/2025',0168)

SELECT * FROM children_vaccination.vaccine_details;
