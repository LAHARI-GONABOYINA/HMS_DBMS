-- PATIENT APPOINTMENT DETAILS
SELECT p.patient_id,
       p.first_name || ' ' || p.last_name AS patient_name,
       d.first_name || ' ' || d.last_name AS doctor_name,
       d.specialization,
       a.appointment_date,
       a.appointment_time,
       a.status
FROM patients p
JOIN appointments a
ON p.patient_id = a.patient_id
JOIN doctors d
ON a.doctor_id = d.doctor_id;

-- PATIENT MEDICAL RECORD DETAILS
SELECT p.patient_id,
       p.first_name || ' ' || p.last_name AS patient_name,
       m.record_date,
       m.diagnosis,
       m.treatment,
       m.notes
FROM patients p
JOIN medical_records m
ON p.patient_id = m.patient_id
ORDER BY m.record_date;

-- DOCTOR AND DEPARTMENT DETAILS
SELECT d.doctor_id,
       d.first_name || ' ' || d.last_name AS doctor_name,
       d.specialization,
       dp.department_name,
       dp.location
FROM doctors d
JOIN departments dp
ON d.department_id = dp.department_id;

-- AVAILABLE ROOM DETAILS
SELECT r.room_id,
       r.room_number,
       r.room_type,
       dp.department_name,
       r.daily_charge
FROM rooms r
JOIN departments dp
ON r.department_id = dp.department_id
WHERE r.status = 'Available';

-- PATIENT BILL DETAILS
SELECT p.patient_id,
       p.first_name || ' ' || p.last_name AS patient_name,
       b.bill_id,
       b.bill_date,
       b.amount,
       b.payment_method,
       b.payment_status
FROM patients p
JOIN bills b
ON p.patient_id = b.patient_id
ORDER BY b.bill_date;

-- PENDING BILLS
SELECT p.first_name || ' ' || p.last_name AS patient_name,
       b.bill_id,
       b.amount,
       b.payment_status
FROM patients p
JOIN bills b
ON p.patient_id = b.patient_id
WHERE b.payment_status = 'Pending';

-- PATIENT PRESCRIPTION DETAILS
SELECT p.first_name || ' ' || p.last_name AS patient_name,
       pr.medicine_name,
       pr.dosage,
       pr.frequency,
       pr.duration,
       pr.instructions
FROM patients p
JOIN prescriptions pr
ON p.patient_id = pr.patient_id;

-- TOTAL BILL AMOUNT BY PAYMENT STATUS
SELECT payment_status,
       COUNT(*) AS bill_count,
       SUM(amount) AS total_amount
FROM bills
GROUP BY payment_status;

-- DOCTORS WITH NUMBER OF APPOINTMENTS
SELECT d.doctor_id,
       d.first_name || ' ' || d.last_name AS doctor_name,
       COUNT(a.appointment_id) AS appointment_count
FROM doctors d
LEFT JOIN appointments a
ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.first_name, d.last_name
ORDER BY appointment_count DESC;

-- PATIENTS WITH PENDING BILLS
SELECT p.patient_id,
       p.first_name || ' ' || p.last_name AS patient_name,
       b.amount
FROM patients p
JOIN bills b
ON p.patient_id = b.patient_id
WHERE b.payment_status = 'Pending'
AND b.amount > (
    SELECT AVG(amount)
    FROM bills
);