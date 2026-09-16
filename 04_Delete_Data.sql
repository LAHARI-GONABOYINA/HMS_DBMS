-- INSERT TEMPORARY PATIENT
INSERT INTO patients (patient_id, first_name, last_name, dob, gender, phone, email, address)
VALUES (106, 'Test', 'Patient', DATE '2000-01-01', 'Other', '9000000006', 'testpatient@gmail.com', 'Hyderabad');

-- DELETE TEMPORARY PATIENT
DELETE FROM patients
WHERE patient_id = 106;

COMMIT;