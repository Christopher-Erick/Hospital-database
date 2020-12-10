GO
INSERT INTO Patient
VALUES ('Stephane', 'Kabura', '2222201', 'National id', 'Nairobi airportview41', '0711234566', '1997-01-04', 'F',
        '881076941'),
       ('Ruth', 'Hamilton', '3322332', 'Military id', 'gigil base centre', '072211433', '1992-04-05', 'F', '531711882'),
       ('Robert', 'Lawrence', '22222202', 'passport number', 'Nairobi waterfront 2', '0200236721', '1978-09-20', 'M',
        '118454889'),
       ('Walter', 'Omurale', '33220676', 'National id', 'Nairobi kabiria stage1', '0744556655', '2000-05-09', 'M',
        '171400011'),
       ('Samuel', 'Kabiduka', '11224453', 'passport card', 'southC salt estate', '078886636', '1997-09-11', 'M',
        '792092438'),
       ('Brian', 'Madson', '24555673', 'Military id', 'Nairobi airportview48', '075453639', '1998-09-09', 'M',
        '48525265'),
       ('Mitchel', 'kamonya', '76475383', 'passport number', 'Nairobi kawagware46 rocstar', '0788826332', '2002-08-23',
        'F', '158853851'),
       ('Allan', 'chomski', '56789098', 'police id', 'kabarak police post', '0755545454', '1987-05-09', 'M', '783600'),
       ('Stephen', 'Omukuva', '22908701', 'National id', 'Nairobi airportview41', '0711894566', '1997-01-04', 'M',
        '881076978'),
       ('David', 'Onsoti', '31892332', 'Military id', 'gigil base centre', '072299433', '1985-04-05', 'M', '531711762'),
       ('Lavoga', 'Lwambi', '22211102', 'passport number', 'Nairobi waterfront 2', '0200006721', '1990-09-20', 'F',
        '118689889'),
       ('Walter', 'Louis', '33221756', 'National id', 'Nairobi kabiria stage1', '074499665', '1967-05-09', 'M',
        '171403411'),
       ('Sheila', 'Kabakofi', '112289453', 'passport card', 'southC salt estate', '078776636', '1999-09-11', 'F',
        '7920765438'),
       ('Mark', 'Kamau', '24517853', 'Military id', 'Nairobi airportview48', '7075653639', '1966-09-09', 'M',
        '48525265'),
       ('Michael', 'Olelenku', '763178483', 'passport number', 'Nairobi kawagware46 rocstar', '0790826332',
        '2007-08-23', 'M', '167853851'),
       ('Margaret', 'chomski', '567810098', 'police id', 'kabarak police post', '0755005454', '1989-05-09', 'F',
        '783600'),
       ('Jenipher', 'Adhiambo', '22208901', 'National id', 'Airforce headquater nairobi', '0722234566', '1998-01-04',
        'F', '8889076941'),
       ('Onesmus', 'Kibureti', '3309332', 'Military id', 'kisumu netcentre', '073311433', '1987-04-05', 'M',
        '531711882'),
       ('Beatrice', 'Lyadi', '229752202', 'passport number', 'Nairobi shibangafront 2', '02002936721', '1977-09-30',
        'F', '118954889'),
       ('Hannold', 'Matitsa', '33220676', 'National id', 'Nairobi kabiria Kwamakau', '074466655', '2003-05-09', 'M',
        '171900011'),
       ('Specioza', 'Kamavile', '11278453', 'passport card', 'south B sugar resort', '078346636', '1997-09-11', 'F',
        '792682438'),
       ('Humphrey', 'Kigana', '24567262', 'Military id', 'Kitale airportview48', '0759530639', '1977-09-09', 'M',
        '94850265'),
       ('Evans', 'Owino', '76475374', 'passport number', 'kabarkungu phase2 rocstar', '0789026332', '2010-08-23', 'M',
        '15785851'),
       ('Regnius', 'Owuor', '567890896', 'police id', 'Isiolo police post', '0751235454', '1967-05-09', 'M',
        '783609600'),
       ('Felix', 'Omondi', '222676632', 'National id', 'Mombasa airportview46', '0719734566', '1988-01-04', 'M',
        '8815676981');


GO
INSERT INTO Account(account_no, amount_payable, amount_received, due_date)
VALUES (4, 100000, 300000, '2021-01-02'),
       (22, 50000, 25000, '2020-01-02'),
       (5, 1000000, 250000, '2021-04-06'),
       (23, 100000, 80000, '2021-01-02'),
       (6, 60000, 60000, '2021-04-02'),
       (24, 205000, 205000, '2020-04-02'),
       (7, 10700, 90000, '2021-05-02'),
       (25, 80000, 67000, '2020-04-02'),
       (8, 90280, 30000, '2021-04-02'),
       (21, 87000, 87000, '2020-06-02'),
       (9, 100000, 37000, '2021-07-02'),
       (20, 40000, 25000, '2020-01-02'),
       (10, 18000, 10000, '2021-09-02'),
       (19, 570000, 100000, '2020-08-02'),
       (11, 140000, 60000, '2021-07-06'),
       (18, 10000, 10000, '2021-06-02'),
       (12, 300000, 300000, '2021-01-02'),
       (17, 50000, 25000, '2020-02-02'),
       (13, 1000000, 250000, '2021-03-06'),
       (16, 1000000, 800000, '2021-08-02'),
       (14, 100000, 30000, '2021-10-02'),
       (15, 500000, 250000, '2020-11-02');
GO
INSERT INTO Payment_method
VALUES ('Mpesa'),
       ('Cash'),
       ('Cheque'),
       ('Bank Transfer');

GO
INSERT INTO Payment(method_id, patient_id, amount, date)
VALUES (4, 4, 300000, '2020-10-02'),
       (4, 22, 25000, '2020-10-02'),
       (3, 5, 250000, '2020-10-02'),
       (3, 23, 80000, '2020-10-02'),
       (3, 6, 60000, '2020-10-02'),
       (3, 24, 205000, '2020-10-02'),
       (2, 7, 90000, '2020-10-02'),
       (2, 25, 67000, '2020-10-02'),
       (1, 8, 30000, '2020-10-02'),
       (2, 21, 87000, '2020-10-02'),
       (2, 9, 37000, '2020-10-02'),
       (1, 20, 25000, '2020-10-02'),
       (1, 10, 10000, '2020-10-02'),
       (3, 19, 100000, '2020-10-02'),
       (1, 11, 60000, '2020-10-02'),
       (1, 18, 10000, '2020-10-02'),
       (1, 12, 300000, '2020-10-02'),
       (1, 17, 25000, '2020-10-02'),
       (4, 13, 250000, '2020-10-02'),
       (3, 16, 800000, '2020-10-02'),
       (1, 14, 30000, '2020-10-02'),
       (4, 15, 250000, '2020-10-02');

GO
INSERT INTO Roles(role_description)
VALUES ('Registered nurse'),
       ('Medical-surgical nurse'),
       (' Intensive care unit'),
       ('Emergency room nurse'),
       ('Operating room'),
       ('Post-anesthesia care unit'),
       ('Labor & delivery nurse'),
       ('Immunologists'),
       ('Anesthesiologists'),
       ('Critical Care Medicine Specialists'),
       ('Endocrinologists'),
       ('Gastroenterologists'),
       ('Family Physicians'),
       ('Geriatric Medicine Specialists'),
       ('cook'),
       ('cleaner'),
       ('messengers');

GO
INSERT INTO Unit(unit_name, unit_abbreviation)
VALUES ('Neonatal intensive care unit', 'NICU'),
       ('Pediatric intensive care unit ', 'PICU'),
       ('Coronary care and cardiothoracic unit', 'CCUs/CTUs'),
       ('Surgical intensive care units', 'SICUs'),
       ('Medical intensive care units ', 'MICUs'),
       ('Long term intensive care units ', 'LTAC ICU'),
       ('post-anesthesia unit', 'PACU'),
       ('Trauma intensive care units ', 'TICU');

GO
INSERT INTO Employee(first_name, last_name, identification_no, license, role_id, unit_id, address, phone_number)
VALUES ('James', 'Mahat', 35068670, 'DO42438805', 8, 8, 'Nairobi airportview41', 0714814826),
       ('Mary', 'Barasa', 77581921, 'DO42013672', 9, 1, 'machakos lodge3', 0795061805),
       ('John', 'Murangiri', 12009517, 'DO41588540', 10, 7, 'Nairobi kisian3', 0714567913),
       ('Patricia', 'Musungu', 16260842, 'DO41163407', 13, 2, 'buruburu phase5', 0715679025),
       ('Robert', 'Musumba', 20512167, 'DO40738275', 15, 6, 'tassia karchun estate', 0710617292),
       ('Jennifer', 'Vaati', 24763492, 'NU40313142', 1, 3, 'tassia karchun estate', 0713333344),
       ('Michael', 'Muthama', 29014817, 'NU39888010', 2, 5, 'Nairobi kisianphase4', 0717160507),
       ('Linda', 'Matano', 33266142, 'NU39462877', 3, 4, 'Nairobi airportvillapark phase45', 0714444456),
       ('William', 'Kirui', 37517467, 'NU39037745', 4, 5, 'machakos lodge3 Nairobi', 0714444456),
       ('Elizabeth', 'Kibiwot', 41768792, 'NU38612612', 5, 5, 'riruta OBDCetate 4', 0718395076),
       ('David', 'Karuga', 46020118, 'NU38612612', 6, 3, 'Nairobi levecture3', 0718024705),
       ('Barbara', 'Mutethia', 50271443, 'DO37762347', 17, 6, 'viewport Nairobi', 0711234576),
       ('Richard', 'Ooko', 54522768, 'DO36912082', 16, 2, 'nickdate nairobi', 0718395076),
       ('Susan', 'Musimbi', 58774093, 'NU36486950', 7, 7, 'omegeone Nairobi', 0719012361),
       ('Joseph', 'Okello', 63025418, 'DO36061817', 15, 1, 'parliament avenue Nairobi', 0718148162),
       ('Jessica', 'Francis', 67276743, 'NU35636685', 4, 8, 'Steel Com Nairobi', 0712469145);

GO
INSERT INTO Licenses
VALUES ('DO42438805', 1),
       ('DO42013672', 2),
       ('DO41588540', 3),
       ('DO41163407', 4),
       ('DO40738275', 5),
       ('NU40314142', 6),
       ('NU40313142', 7),
       ('NU39888010', 8),
       ('NU39462877', 9),
       ('NU39037745', 10),
       ('NU38612612', 11),
       ('DO37762347', 12),
       ('DO36912082', 13),
       ('NU36486950', 14),
       ('DO36061817', 15),
       ('NU35636685', 16);
GO
INSERT INTO Treatment
VALUES ('Chemotherapy', '2020-01-01', '2020-03-01'),
       ('Radiation therapy', '2020-04-03', '2020-06-03'),
       ('Immunotherapy', '2020-01-01', '2020-03-01'),
       ('Vaccine therapy', '2020-01-03', '2020-03-01'),
       ('Stem cell transplantation', '2020-04-04', '2020-11-04'),
       ('Blood transfusion', '2020-01-01', '2020-12-01'),
       ('Palliative care', '2020-01-10', '2020-11-01'),
       ('Clinical trials', '2020-01-20', '2020-12-24'),
       ('Blood transfusion', '2020-01-10', '2020-12-20'),
       ('Peritoneal dialysis', '2020-01-01', '2020-12-01'),
       ('Haemodialysis', '2020-01-01', '2020-12-01');

GO
INSERT INTO Task
VALUES ('chemotherapy', '1', '2', '2020-01-04'),
       ('feeding', 2, 7, '2020-01-04'),
       ('dressing', 3, 8, '2020-01-04'),
       ('bed changing', 4, 11, '2020-01-04'),
       ('bathing', 5, 11, '2020-01-04'),
       ('administering medication', 6, 3, '2020-01-04'),
       ('baby seating', 7, 3, '2020-01-04'),
       ('nursing', 8, 8, '2020-01-04'),
       ('assessing', 9, 5, '2020-01-04');

GO
INSERT INTO Scheduled_task
VALUES (1, 13, '09:00', '11:00', '2020-10-04'),
       (2, 12, '11:30', '13:00', '2020-10-04'),
       (3, 16, '13:00', '14:00', '2020-10-04'),
       (4, 19, '14:30', '16:00', '2020-10-04'),
       (5, 15, '16:30', '18:00', '2020-10-04'),
       (12, 25, '18:30', '20:00', '2020-10-04'),
       (13, 9, '09:00', '11:00', '2020-10-04'),
       (15, 23, '11:30', '13:00', '2020-10-05');

GO
INSERT INTO Assessment(employee_id, patient_id, bp_diastole, bp_systole, respiratory_rate, heart_rate, date)
VALUES (10, 13, 80, 120, 15, 75, '2020-10-05'),
       (10, 12, 89, 121, 19, 90, '2020-10-05'),
       (10, 16, 70, 110, 20, 75, '2020-10-05'),
       (10, 19, 76, 130, 21, 101, '2020-10-05'),
       (10, 15, 95, 140, 25, 105, '2020-10-05'),
       (10, 25, 80, 120, 15, 80, '2020-10-05'),
       (10, 9, 76, 110, 17, 96, '2020-10-05'),
       (10, 23, 77, 109, 10, 72, '2020-10-06');

GO
INSERT INTO Ward(unit_id, ward_number)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (1, 5),
       (2, 6),
       (3, 7),
       (2, 8),
       (1, 2);


GO
INSERT INTO Prescription(employee_id, patient_id, start_date, end_date)
VALUES (1, 13, '2020-10-04', '2020-10-18'),
       (2, 12, '2020-10-04', '2020-10-18'),
       (3, 16, '2020-10-04', '2020-10-18'),
       (4, 19, '2020-10-04', '2020-10-18'),
       (5, 15, '2020-10-04', '2020-10-18'),
       (12, 25, '2020-10-04', '2020-10-18'),
       (13, 9, '2020-10-04', '2020-10-18'),
       (15, 23, '2020-10-05', '2020-10-19'),
       (1, 1, '2020-10-04', '2020-10-18'),
       (1, 2, '2020-10-04', '2020-10-18'),
       (1, 6, '2020-10-04', '2020-10-18'),
       (1, 4, '2020-10-04', '2020-10-18'),
       (1, 5, '2020-10-04', '2020-10-18'),
       (1, 6, '2020-10-04', '2020-10-18'),
       (13,7, '2020-10-04', '2020-10-18'),
       (15,8, '2020-10-05', '2020-10-19'),
       (2, 10, '2020-10-04', '2020-10-18'),
       (2, 11, '2020-10-04', '2020-10-18'),
       (2, 12, '2020-10-04', '2020-10-18'),
       (4, 14, '2020-10-04', '2020-10-18'),
       (5, 17, '2020-10-04', '2020-10-18'),
       (5, 18, '2020-10-04', '2020-10-18'),
       (4, 19, '2020-10-04', '2020-10-18'),
       (1, 20, '2020-10-05', '2020-10-19');

GO
INSERT INTO Diagnosis(diagnosis_details, patient_id, employee_id, remarks, date)
VALUES ('migraine', 1, 1, 'use pain killer', '2020-10-04'),
       ('burns', 4, 2, 'rest enough', '2020-01-04'),
       ('mouth disease', 5, 10, ' use mouth wash', '2020-01-04'),
       ('suffering from asthma', 8, 8, 'use rescue inhalant', '2020-01-04'),
       ('skin', 9, 15, 'use antifugal spray', '2020-01-04'),
       ('trauma', 11, 16, 'relaxation of mind', '2020-01-04'),
       ('migraine', 7, 1, 'use pain killer', '2020-10-04'),
       ('burns', 22, 2, 'rest enough', '2020-01-04'),
       ('dental', 14, 10, ' use mouth wash', '2020-01-04'),
       ('suffering from asthma', 13, 8, 'use rescue inhalant', '2020-01-04'),
       ('trauma', 19, 16, 'relaxation of mind', '2020-01-04'),
       ('trauma', 23, 16, 'relaxation of mind', '2020-01-04'),
        ('borne cancer', 6, 2, 'diagnosed with cancer', '2020-10-04'),
       ('breast cancer', 20, 2, 'diagnosed with cancer', '2020-01-04'),
       ('blood cancer', 14, 2, 'diagnosed with cancer', '2020-01-04'),
       ('heart attack', 12, 2, 'ICU', '2020-01-04'),
       ('skin cancer', 3, 2, 'diagnosed with cancer', '2020-01-04'),
       ('colon cancer', 16, 2, 'diagnosed with cancer', '2020-01-04');

GO
INSERT INTO Admission(ward_id, admitted_date, discharged_date)
VALUES (1, '2020-10-04', '2020-10-18'),
       (2, '2020-10-04', '2020-10-18'),
       (3, '2020-10-04', '2020-10-18'),
       (4, '2020-10-04', '2020-10-18'),
       (5, '2020-10-04', '2020-10-18'),
       (6, '2020-10-04', '2020-10-18'),
       (7, '2020-10-04', '2020-10-18'),
       (8, '2020-10-05', '2020-10-18'),
       (1, '2020-10-04', '2020-10-18'),
       (3, '2020-10-04', '2020-10-18'),
       (3, '2020-10-04', '2020-10-18'),
       (4, '2020-10-04', '2020-10-18'),
       (6, '2020-10-04', '2020-10-18'),
       (1, '2020-10-04', '2020-10-18'),
       (7, '2020-10-04', '2020-10-18'),
       (1, '2020-10-04', '2020-10-18'),
       (8, '2020-10-04', '2020-10-18'),
       (8, '2020-10-04', '2020-10-18'),
       (6, '2020-10-04', '2020-10-18'),
       (7, '2020-10-04', '2020-10-18'),
       (1, '2020-10-04', '2020-10-18'),
       (3, '2020-10-04', '2020-10-18');

GO

