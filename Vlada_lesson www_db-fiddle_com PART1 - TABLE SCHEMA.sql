#This query creates table 'country'
CREATE TABLE IF NOT EXISTS `country` (
  id int(5) unsigned NOT NULL AUTO_INCREMENT,
  country_name varchar(50) NOT NULL,
  population int(255),
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;
#These queries populate table 'country' with values
INSERT INTO country (country_name, population) VALUES ('United States', 329064917);
INSERT INTO country (country_name, population) VALUES ('Canada', 37411047);
INSERT INTO country (country_name, population) VALUES ('Russia', 145872256);
INSERT INTO country (country_name, population) VALUES ('Belarus', 9452411);
INSERT INTO country (country_name, population) VALUES ('Ukraine', 43993638);
INSERT INTO country (country_name, population) VALUES ('Kazakhstan', 18551427);
INSERT INTO country (country_name, population) VALUES ('Armenia', 2957731);
INSERT INTO country (country_name, population) VALUES ('Bulgaria', 7000119);
INSERT INTO country (country_name, population) VALUES ('China', 1433783686);
INSERT INTO country (country_name, population) VALUES ('Cyprus', 1179551);
INSERT INTO country (country_name, population) VALUES ('Czech Republic', 10689209);
INSERT INTO country (country_name, population) VALUES ('Greece', 10473455);
INSERT INTO country (country_name, population) VALUES ('Moldova', 4043263);
INSERT INTO country (country_name, population) VALUES ('United Kingdom', 67530172);
INSERT INTO country (country_name, population) VALUES ('Uzbekistan', 32981716);
INSERT INTO country (country_name, population) VALUES ('Latvia', 1906743);
INSERT INTO country (country_name, population) VALUES ('Latvia', 1906743);
INSERT INTO country (country_name, population) VALUES ('Lithuania', 2759627);
INSERT INTO country (country_name, population) VALUES ('Estonia', 1325648);
INSERT INTO country (country_name, population) VALUES ('Israel', 8519377);
INSERT INTO country (country_name, population) VALUES ('Italy', 60550075);
INSERT INTO country (country_name, population) VALUES ('Slovakia', 5457013);
INSERT INTO country (country_name, population) VALUES ('Slovenia', 2078654);
INSERT INTO country (country_name, population) VALUES ('India', 1366417754);
INSERT INTO country (country_name, population) VALUES ('Germany', 83517045);
INSERT INTO country (country_name, population) VALUES ('Germany', 83124418);
INSERT INTO country (country_name, population) VALUES ('Brazil', 211049527);
INSERT INTO country (country_name, population) VALUES ('Bangladesh', 163046161);
INSERT INTO country (country_name, population) VALUES ('Belize', 390353);
INSERT INTO country (country_name, population) VALUES ('Bahrain', 1641172);
#This query creates table 'users'
CREATE TABLE IF NOT EXISTS `user` (
  id int(5) unsigned NOT NULL AUTO_INCREMENT,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  phone_number varchar(20) NOT NULL,
  email varchar(50) NOT NULL,
  password_hash char(32) NOT NULL,
  street_address varchar(50),
  city varchar(50),
  state varchar(50),
  country_id int unsigned,
  zip varchar(10),
  about text(255),
  shirt_size enum('xxl', 'xl', 'l', 'm', 's', 'xs'),
  verified int(1),
  role enum('student', 'teacher', 'admin'),
  date_registered datetime default current_timestamp,
  rank int(5) unsigned,
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;
#These queries populate table 'users' with values
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Oleg', 'Gazmanov', '9168753345', 'gazmanov77@gmail.com', '0f60c17a9c7df029682066d188', '77 Cheryl Pl',
   'Sacramento', 'CA', 1, 95825, 'L', 1, 'student', '2020-06-01', 8
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Natalya', 'Koroleva', '6503289834', 'koroleva_natasha@gmail.com', '10j38055kf09d7409jdh37206d983', '12 Union Ave',
   'San Jose', 'CA', 1, 95044, 'M', 1, 'student', '2019-01-07', 15
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Alla', 'Pugacheva', '7073357892', 'allochka@mail.ru', '9uh78029ngg387shd34lkj98d', '89 Main Blvd',
   'Las Vegas', 'NV', 1, 76483, 'M', 1, 'student', '2017-03-02', 138
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Maksim', 'Galkin', '650987283', 'galkinmax@list.ru', '7ok792849ngk3o97sge3lk0k9', '5478 Mission Ave',
   'San Francisco', 'CA', 1, 94056, 'S', 1, 'teacher', '2018-05-06', 297
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Egor', 'Novikov', '795093876', 'novikove87@mail.ru', '09dh76dnjhfd654uy8347ks220f', '5 Yablonevaya st apt. 46',
   'Moscow', NULL, 3, 210093, 'L', 1, 'student', '2020-07-01', 0
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Aleksandr', 'Volkov', '9876543273', 'anovikov@luxfurniture.ca', '90djf76fh34kf765snd97fneg', '18 Summer Blvd apt. 23',
   'Vancouver', NULL, 2, '98XZ87', 'M', 0, 'student', '2020-10-12', 7
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Irina', 'Dudina', '4578329403', 'idudina86@gmail.com', '87jdh273bfm7462bg4k9', '13 Blossom Hill Rd',
   'San Jose', 'CA', 1, '95045', 'XS', 1, 'student', '2020-03-04', 45
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Svetlana', 'Smith', '40878293874', 'ssmith00786@yahoo.com', '08hy67394jgy31h7djs622n73', '44 Samaritan Dr apt. 87B',
   'Chicago', 'IL', 1, '56876', 'S', 1, 'student', '2019-08-02', 113
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Mark', 'Risard', '7013247645', 'risard_mark32@gmail.com', '76hfy374ghd6kc097sn73', '5 Corner Ct',
   'Las Vegas', 'NV', 1, '87963', 'L', 1, 'student', '2019-07-05', 97
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Tatyana', 'Kovalenko', '4308349500', 'kovalenko_t@yandex.ru', '12lo8z8fsud7364bs72kd3', '102 Odoevskogo apt. 189',
   'Kiev', NULL, 5, '298769', 'M', 1, 'student', '2020-06-12', 48
);