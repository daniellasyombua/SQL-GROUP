create table children_vaccination.parent_details(
parent_id SERIAL primary key,
first_name VARCHAR(50) not null,
last_name VARCHAR(50) not null,
phone_number VARCHAR(15),
email VARCHAR(50),
address TEXT
)

insert into children_vaccination.parent_details(parent_id,first_name,last_name,phone_number,email,address)
values 
('John','Doe','0717642334','johndoe@gmail.com','123 Elm Street'),
('Alice','Johnson','0713904954','alicejohnson@gmail.com','456 Oak Avenue'),
('Patric','Smith','0703456214','patricsmith@gmail.com','546 Pine Road'),
('Esther','Hope','0734234567','estherhope@gmail.com','150 Mvuli Lane'),
('James','Bush','0767874542','jamesbush@gmail.com','23 Muindi Bingu'),
('Gift','Mellisa','0758463543','giftmellisa@gmail.com','134 Moi Avenue'),
('Praise','Sarah','0754345634','praisesarah@gmail.com','653 Mushroom Valley'),
('Ian','Stephen','0785968769','ianstephen@gmail.com','654 West Lake'),
('Daniel','Jones','0767746384','danieljones@gmail.com','433 East Valley'),
('Angelina','Marie','0763453236','angelinamarie@gmail.com','576 Green Lock');

select * from children_vaccination.parent_details