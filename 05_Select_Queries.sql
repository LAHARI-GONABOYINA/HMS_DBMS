-- SELECT ALL PATIENTS
SELECT * FROM patients;

-- SELECT ALL DOCTORS
SELECT * FROM doctors;

-- SELECT SPECIFIC PATIENT DETAILS
SELECT patient_id, first_name, last_name, phone FROM patients;

-- SELECT DOCTORS BY SPECIALIZATION
SELECT doctor_id, first_name, last_name, specialization FROM doctors
WHERE specialization = 'Cardiologist';

-- SELECT FEMALE PATIENTS
SELECT patient_id, first_name, last_name, gender FROM patients
WHERE gender = 'Female';

-- SELECT AVAILABLE ROOMS
SELECT room_id, room_number, room_type, daily_charge
FROM rooms
WHERE status = 'Available';

-- SELECT COMPLETED APPOINTMENTS
SELECT appointment_id, patient_id, doctor_id, appointment_date, status
FROM appointments
WHERE status = 'Completed';

-- SORT PATIENTS BY DATE OF BIRTH
SELECT patient_id, first_name, last_name, dob
FROM patients
ORDER BY dob;

-- SORT ROOMS BY DAILY CHARGE
SELECT room_id, room_number, room_type, daily_charge
FROM rooms
ORDER BY daily_charge DESC;

-- SELECT PENDING BILLS
SELECT bill_id, patient_id, amount, payment_status
FROM bills
WHERE payment_status = 'Pending';
