-- =========================================
-- PRIMARY KEY VALIDATION
-- =========================================

INSERT INTO patients (patient_id, first_name, last_name, dob, gender, phone, email, address)
VALUES (101, 'Test', 'Patient', DATE '2000-01-01', 'Other', '9000000099', 'test@gmail.com', 'Hyderabad');


-- =========================================
-- UNIQUE CONSTRAINT VALIDATION
-- =========================================

INSERT INTO patients (patient_id, first_name, last_name, dob, gender, phone, email, address)
VALUES (106, 'Test', 'User', DATE '2001-01-01', 'Other', '9000000001', 'unique@gmail.com', 'Hyderabad');


-- =========================================
-- NOT NULL CONSTRAINT VALIDATION
-- =========================================

INSERT INTO patients (patient_id, first_name, last_name, dob, gender, phone, email, address)
VALUES (107, NULL, 'User', DATE '2001-01-01', 'Other', '9000000007', 'nulltest@gmail.com', 'Hyderabad');


-- =========================================
-- CHECK CONSTRAINT VALIDATION
-- =========================================

INSERT INTO patients (patient_id, first_name, last_name, dob, gender, phone, email, address)
VALUES (108, 'Test', 'User', DATE '2001-01-01', 'Invalid', '9000000008', 'checktest@gmail.com', 'Hyderabad');


-- =========================================
-- FOREIGN KEY CONSTRAINT VALIDATION
-- =========================================

INSERT INTO doctors (doctor_id, first_name, last_name, specialization, phone, email, department_id)
VALUES (205, 'Test', 'Doctor', 'General Physician', '9100000005', 'testdoctor@gmail.com', 99);


-- =========================================
-- ROOM CHECK CONSTRAINT VALIDATION
-- =========================================

INSERT INTO rooms (room_id, room_number, room_type, department_id, status, daily_charge)
VALUES (306, 'E501', 'Invalid', 1, 'Available', 2000);


-- =========================================
-- ROOM CHARGE CHECK CONSTRAINT VALIDATION
-- =========================================

INSERT INTO rooms (room_id, room_number, room_type, department_id, status, daily_charge)
VALUES (307, 'E502', 'General', 1, 'Available', -500);


-- =========================================
-- APPOINTMENT CHECK CONSTRAINT VALIDATION
-- =========================================

INSERT INTO appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status, reason)
VALUES (406, 101, 201, DATE '2026-09-20', '10:00 AM', 'Invalid', 'Test');


-- =========================================
-- BILL AMOUNT CHECK CONSTRAINT VALIDATION
-- =========================================

INSERT INTO bills (bill_id, patient_id, appointment_id, room_id, bill_date, amount, payment_method, payment_status)
VALUES (706, 101, 401, NULL, DATE '2026-09-20', -1000, 'Cash', 'Pending');


-- =========================================
-- BILL PAYMENT METHOD CHECK CONSTRAINT VALIDATION
-- =========================================

INSERT INTO bills (bill_id, patient_id, appointment_id, room_id, bill_date, amount, payment_method, payment_status)
VALUES (707, 101, 401, NULL, DATE '2026-09-20', 1000, 'Cheque', 'Pending');


-- =========================================
-- BILL PAYMENT STATUS CHECK CONSTRAINT VALIDATION
-- =========================================

INSERT INTO bills (bill_id, patient_id, appointment_id, room_id, bill_date, amount, payment_method, payment_status)
VALUES (708, 101, 401, NULL, DATE '2026-09-20', 1000, 'Cash', 'Invalid');