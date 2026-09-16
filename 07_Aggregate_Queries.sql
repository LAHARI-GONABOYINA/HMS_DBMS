-- COUNT TOTAL PATIENTS
SELECT COUNT(*) AS total_patients FROM patients;

-- COUNT TOTAL DOCTORS
SELECT COUNT(*) AS total_doctors FROM doctors;

-- COUNT DOCTORS IN EACH DEPARTMENT
SELECT department_id, COUNT(*) AS doctor_count FROM doctors
GROUP BY department_id;

-- TOTAL BILL AMOUNT
SELECT SUM(amount) AS total_bill_amount FROM bills;

-- AVERAGE BILL AMOUNT
SELECT AVG(amount) AS average_bill_amount FROM bills;

-- HIGHEST BILL AMOUNT
SELECT MAX(amount) AS highest_bill FROM bills;

-- LOWEST BILL AMOUNT
SELECT MIN(amount) AS lowest_bill FROM bills;

-- TOTAL BILL AMOUNT BY PAYMENT STATUS
SELECT payment_status, SUM(amount) AS total_amount FROM bills
GROUP BY payment_status;

-- NUMBER OF APPOINTMENTS BY STATUS
SELECT status, COUNT(*) AS appointment_count FROM appointments
GROUP BY status;

-- AVERAGE ROOM CHARGE BY ROOM TYPE
SELECT room_type, AVG(daily_charge) AS average_charge FROM rooms
GROUP BY room_type;
