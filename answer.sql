-- Part 1: Simple SELECT Queries

-- 1.1) Retrieve the first name, last name, and date of birth of all patients
SELECT first_name, last_name, date_of_birth
FROM patients;

-- 1.2) Retrieve the provider_id, first name, and provider specialty from the providers table
SELECT provider_id, first_name, provider_specialty
FROM providers;

-- Part 2: Pattern-Based Filtering

-- 2.1) Retrieve all patients whose first names start with "Ab"
SELECT first_name, last_name, date_of_birth
FROM patients
WHERE first_name LIKE 'Ab%';

-- 2.2) Retrieve all providers whose specialties end with the letter "y"
SELECT provider_id, first_name, provider_specialty
FROM providers
WHERE provider_specialty LIKE '%y';

-- Part 3: Comparison Operators

-- 3.1) Find all patients born after 1st January 1980
SELECT first_name, last_name, date_of_birth
FROM patients
WHERE date_of_birth > '1980-01-01';

-- 3.2) Retrieve visits where the acuity level is 2 or higher
SELECT *
FROM visits
WHERE acuity_level >= 2;

-- Part 4: WHERE Clause with Logical Operators

-- 4.1) Find patients who speak Spanish
SELECT first_name, last_name, date_of_birth
FROM patients
WHERE language = 'Spanish';

-- 4.2) Retrieve visits where the reason is "Migraine" and the disposition is "Admitted"
SELECT *
FROM visits
WHERE reason = 'Migraine' AND disposition = 'Admitted';

-- 4.3) Find patients born between 1975 and 1980
SELECT first_name, last_name, date_of_birth
FROM patients
WHERE date_of_birth BETWEEN '1975-01-01' AND '1980-12-31';

-- Part 5: Sorting Data

-- 5.1) Retrieve patient names and sort them in alphabetical order by last name
SELECT first_name, last_name
FROM patients
ORDER BY last_name ASC;

-- 5.2) List all visits sorted by the date of the visit, starting from the most recent
SELECT *
FROM visits
ORDER BY visit_date DESC;

-- Part 6: Advanced Filtering

-- 6.1) Retrieve all admissions where the primary diagnosis is "Stroke" and the discharge disposition is "Home"
SELECT *
FROM admissions
WHERE primary_diagnosis = 'Stroke' AND discharge_disposition = 'Home';

-- 6.2) Find providers who joined after 1995 and specialize in either Pediatrics or Cardiology
SELECT provider_id, first_name, provider_specialty, joining_date
FROM providers
WHERE joining_date > '1995-01-01'
AND provider_specialty IN ('Pediatrics', 'Cardiology');

-- Bonus Challenge

-- List all discharges where the patient was discharged home and the discharge date is within the first week of March 2018
SELECT *
FROM discharges
WHERE discharge_disposition = 'Home'
AND discharge_date BETWEEN '2018-03-01' AND '2018-03-07';
