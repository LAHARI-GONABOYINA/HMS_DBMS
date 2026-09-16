-- PATIENTS AND APPOINTMENTS
SELECT p.patient_id, p.first_name, p.last_name,a.appointment_date, a.appointment_time, a.status
FROM patients p
JOIN appointments a
ON p.patient_id = a.patient_id;

-- DOCTORS AND DEPARTMENTS
SELECT d.doctor_id, d.first_name, d.last_name,d.specialization, dp.department_name
FROM doctors d
JOIN departments dp
ON d.department_id = dp.department_id;

-- PATIENTS AND MEDICAL RECORDS
SELECT p.patient_id, p.first_name, p.last_name,m.record_date, m.diagnosis, m.treatment
FROM patients p
JOIN medical_records m
ON p.patient_id = m.patient_id;

-- PATIENTS, DOCTORS AND APPOINTMENTS
SELECT p.first_name AS patient_name,d.first_name AS doctor_name,d.specialization,a.appointment_date,a.status
FROM patients p
JOIN appointments a
ON p.patient_id = a.patient_id
JOIN doctors d
ON a.doctor_id = d.doctor_id;

-- DEPARTMENTS AND ROOMS
SELECT dp.department_name,r.room_number,r.room_type,r.status,r.daily_charge
FROM departments dp
JOIN rooms r
ON dp.department_id = r.department_id;

-- PATIENTS, BILLS AND ROOMS
SELECT p.first_name AS patient_name,b.bill_id,b.amount,r.room_number,r.room_type,b.payment_status
FROM patients p
JOIN bills b
ON p.patient_id = b.patient_id
LEFT JOIN rooms r
ON b.room_id = r.room_id;

-- PATIENTS, MEDICAL RECORDS AND PRESCRIPTIONS
SELECT p.first_name AS patient_name,m.diagnosis,pr.medicine_name,pr.dosage,pr.frequency
FROM patients p
JOIN medical_records m
ON p.patient_id = m.patient_id
JOIN prescriptions pr
ON m.record_id = pr.record_id;
