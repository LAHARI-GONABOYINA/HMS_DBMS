-- PATIENTS WHO HAVE AT LEAST ONE APPOINTMENT
SELECT patient_id, first_name, last_name FROM patients
WHERE patient_id IN (SELECT patient_id FROM appointments);

-- DOCTORS WHO HAVE AT LEAST ONE APPOINTMENT
SELECT doctor_id, first_name, last_name, specialization FROM doctors
WHERE doctor_id IN (SELECT doctor_id FROM appointments);

-- PATIENTS WITH BILLS ABOVE AVERAGE BILL AMOUNT
SELECT patient_id, bill_id, amount FROM bills
WHERE amount > (SELECT AVG(amount) FROM bills);

-- HIGHEST BILL
SELECT patient_id, bill_id, amount FROM bills
WHERE amount = (SELECT MAX(amount) FROM bills);

-- DOCTORS WHO BELONG TO THE CARDIOLOGY DEPARTMENT
SELECT doctor_id, first_name, last_name, specialization FROM doctors
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Cardiology');

-- PATIENTS WHO HAVE MEDICAL RECORDS
SELECT patient_id, first_name, last_name FROM patients
WHERE patient_id IN (SELECT patient_id FROM medical_records);

-- ROOMS WITH CHARGE ABOVE AVERAGE ROOM CHARGE
SELECT room_id, room_number, room_type, daily_charge FROM rooms
WHERE daily_charge > (SELECT AVG(daily_charge) FROM rooms);

-- PATIENTS WHO HAVE PENDING BILLS
SELECT patient_id, first_name, last_name FROM patients
WHERE patient_id IN (SELECT patient_id FROM bills WHERE payment_status = 'Pending');
