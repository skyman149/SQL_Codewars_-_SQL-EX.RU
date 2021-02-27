
/* website ready to use with table shown below TO GO:
    https://www.db-fiddle.com/f/wBCNAotVALpPYAsUcD35kM/1
*/

/*

фиддлы со скриптами:
User-country: https://www.db-fiddle.com/f/wdvqk2iKEhfJAkwvz7fA7R/1
Calls-month: https://www.db-fiddle.com/f/ab5zueoUQZB6MEKSiPaavP/0
Call center database in MySQL: https://www.db-fiddle.com/f/wdvqk2iKEhfJAkwvz7fA7R/1
Схема базы  Call Center: https://www.sqlshack.com/learn-sql-join-multiple-tables/#gallery-1 (edited) 
Pinned by Vlada Pobedrya
12:27
BikeStores database (for SQL Server): https://codebl0g.wordpress.com/2019/03/23/bike-stores-sql-database/ - download scripts, run in your DBMS (Azure or any other that works with SQL Server).
*/

/*
PRESENTATION AND HOMEWORK FROM WHOLE COURSE
https://docs.google.com/presentation/d/1G-HGzCRzJelRy5L-YtOl_ttLJblcOSKhJZIjHYepefo/edit#slide=id.p

Урок 1:
ДЗ - https://www.db-fiddle.com/f/4zELHrMfRHR3YymzetzxaJ/9
Ответы - https://www.db-fiddle.com/f/9z4D2xw2EuGMbRhrPGFvFh/1
Урок 2:
ДЗ - https://www.db-fiddle.com/f/bmkWNriK1fpZvuBy75RWKh/0
Ответы  - https://www.db-fiddle.com/f/rRVVWsCpaZRhnNNL3mcvqV/4
Доп. ДЗ по урокам 1-2: https://www.db-fiddle.com/f/a97HZJrqM2poAyaq8auzEi/1
Ответы: https://www.db-fiddle.com/f/jz3CHtbUEQXppLbyJ8ZBHA/4
Урок 3:
ДЗ - https://www.db-fiddle.com/f/2eXZpDfEzG8eeyf1cEAPA7/3
Ответы  - https://www.db-fiddle.com/f/betw82KCmGA482Q1homCD9/10
Урок 4:
ДЗ - https://www.db-fiddle.com/f/vTEGCb6tg182pUbcWrbeVY/1
Ответы  -  https://www.db-fiddle.com/f/jLKcpamVDSU821Wq6SaDMx/3
Урок 5:
ДЗ - https://www.db-fiddle.com/f/dvq2xkuV5RAuypLve51JEU/1
Ответы - pending
Урок 6 - https://www.db-fiddle.com/f/kv6epcRtDAtyzwcgJK6sLV/1 (edited) 

*/


/*
#This query creates table 'country'
CREATE TABLE IF NOT EXISTS country (
  id int(5) unsigned NOT NULL AUTO_INCREMENT,
  country_name varchar(50) NOT NULL,
  population_2018 int(255),
  population_2019 int(255),
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;
#These queries populate table 'country' with values
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('United States', 327096265, 329064917);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Canada', 37074562, 37411047);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Russia', 145734038, 145872256);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Belarus', 9452617, 9452411);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Ukraine', 44246156, 43993638);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Kazakhstan', 18319618, 18551427);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Armenia', 2951745, 2957731);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Bulgaria', 7051608, 7000119);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('China', 1427647786, 1433783686);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Cyprus', 1170125, 1179551);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Czech Republic', 10665677, 10689209);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Greece', 10522246, 10473455);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Moldova', 4051944, 4043263);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('United Kingdom', 67141684, 67530172);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Uzbekistan', 32476244, 32981716);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Latvia', 1928459, 1906743);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Latvia', 1928459, NULL);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Lithuania', 2801264, 2759627);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Estonia', 1322920, 1325648);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Israel', 8381516, 8519377);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Italy', 60627291, 60550075);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Slovakia', 5453014, 5457013);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Slovenia', 2077837, 2078654);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('India', 1352642280, 1366417754);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Germany', 83124418, 83517045);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Germany', 83124418, NULL);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Brazil', 209469323, 211049527);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Bangladesh', 161376708, 163046161);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Belize', 383071, 390353);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Bahrain', 1569446, 1641172);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Indonesia', 267670543, 270625568);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Iran', 81800188, 82913906);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Iraq', 38433600, 39309783);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Ireland', 4818690, 4882495);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Jamaica', 2934847, 2948279);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Narnia', 0, 5);
INSERT INTO country (country_name, population_2018, population_2019) VALUES ('Lalaland', 2, 3);
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
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Artur', 'Pirozhkov', '3124563782', 'pirozhkov_a@tut.by', '98f475dkw846bfn4850', '337 Cherry Ave apt. 67A',
   'San Diego', 'CA', 1, '98876', 'M', 1, 'student', '2020-01-04', 109
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Christina', 'Aguilera', '8187653274', 'aguilerra23@homtail.com', '127fhf749fmdw634b348f6', '23 Beverly Hills Dr',
   'Los Angeles', 'CA', 1, '97654', 'S', 1, 'student', '2020-05-09', 10
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Will', 'Smith', '2137468923', 'mib7777@homtail.com', '90jh765d834f84nfsg64', '76 Beverly Hills Dr',
   'Los Angeles', 'CA', 1, '97655', 'M', 1, 'student', '2020-08-02', 15
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Jenny', 'Smith', '91678364523', 'janesmith76@yahoo.com', '9581fje7f67g4sdf634', '88 Las Palmas Dr',
   'Sacramento', 'CA', 1, '95825', 'XS', 1, 'student', '2020-08-03', 17
);
INSERT INTO user (
  first_name, last_name, phone_number, email, password_hash,
  street_address, city, state, country_id, zip, shirt_size, verified, role, date_registered, rank
) VALUES (
   'Olga', 'Smirnova', '89587326473', 'smirnovaolga86@yandex.ru', '8iu7shd75ad3h48sds0w', '16 Kamennaya st apt. 135',
   'Moscow', NULL, 3, 1673929, 'M', 1, 'student', '2019-03-11', 56
);
*/