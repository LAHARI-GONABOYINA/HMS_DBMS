-- INSERT DATA INTO DEPARTMENTS

INSERT INTO departments (department_id, department_name, location, phone)
VALUES (1, 'Cardiology', 'Block A', '9876500011');

INSERT INTO departments (department_id, department_name, location, phone)
VALUES (2, 'Neurology', 'Block B', '9876500012');

INSERT INTO departments (department_id, department_name, location, phone)
VALUES (3, 'Orthopedics', 'Block C', '9876500013');

INSERT INTO departments (department_id, department_name, location, phone)
VALUES (4, 'Pediatrics', 'Block D', '9876500014');

-- INSERT DATA INTO PATIENTS

INSERT INTO patients (patient_id, first_name, last_name, dob, gender, phone, email, address)
VALUES (101, 'Rahul', 'Sharma', DATE '2000-05-15', 'Male','9000000001', 'rahul@gmail.com', 'Hyderabad');

INSERT INTO patients (patient_id, first_name, last_name, dob, gender, phone, email, address)
VALUES (102, 'Ananya', 'Reddy', DATE '1998-08-20', 'Female','9000000002', 'ananya@gmail.com', 'Vijayawada');

INSERT INTO patients (patient_id, first_name, last_name, dob, gender, phone, email, address)
VALUES (103, 'Arjun', 'Kumar', DATE '2002-02-10', 'Male','9000000003', 'arjun@gmail.com', 'Rajahmundry');

INSERT INTO patients (patient_id, first_name, last_name, dob, gender, phone, email, address)
VALUES (104, 'Sneha', 'Patel', DATE '1995-11-25', 'Female','9000000004', 'sneha@gmail.com', 'Visakhapatnam');

INSERT INTO patients (patient_id, first_name, last_name, dob, gender, phone, email, address)
VALUES (105, 'Kiran', 'Rao', DATE '2001-07-12', 'Male','9000000005', 'kiran@gmail.com', 'Hyderabad');

-- INSERT DATA INTO DOCTORS

INSERT INTO doctors (doctor_id, first_name, last_name, specialization, phone, email, department_id)
VALUES (201, 'Amit', 'Verma', 'Cardiologist','9100000001', 'amit.doctor@gmail.com', 1);

INSERT INTO doctors (doctor_id, first_name, last_name, specialization, phone, email, department_id)
VALUES (202, 'Priya', 'Singh', 'Neurologist','9100000002', 'priya.doctor@gmail.com', 2);

INSERT INTO doctors (doctor_id, first_name, last_name, specialization, phone, email, department_id)
VALUES (203, 'Ravi', 'Krishna', 'Orthopedic Surgeon','9100000003', 'ravi.doctor@gmail.com', 3);

INSERT INTO doctors (doctor_id, first_name, last_name, specialization, phone, email, department_id)
VALUES (204, 'Meena', 'Das', 'Pediatrician','9100000004', 'meena.doctor@gmail.com', 4);

-- INSERT DATA INTO ROOMS

INSERT INTO rooms (room_id, room_number, room_type, department_id, status, daily_charge)
VALUES (301, 'A101', 'General', 1, 'Available', 1500);

INSERT INTO rooms (room_id, room_number, room_type, department_id, status, daily_charge)
VALUES (302, 'A102', 'Private', 1, 'Occupied', 3000);

INSERT INTO rooms (room_id, room_number, room_type, department_id, status, daily_charge)
VALUES (303, 'B201', 'ICU', 2, 'Occupied', 5000);

INSERT INTO rooms (room_id, room_number, room_type, department_id, status, daily_charge)
VALUES (304, 'C301', 'General', 3, 'Available', 1500);

INSERT INTO rooms (room_id, room_number, room_type, department_id, status, daily_charge)
VALUES (305, 'D401', 'Private', 4, 'Maintenance', 3000);

-- INSERT DATA INTO APPOINTMENTS

INSERT INTO appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status, reason)
VALUES (401, 101, 201, DATE '2026-09-15','09:00 AM', 'Scheduled', 'Chest pain');

INSERT INTO appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status, reason)
VALUES (402, 102, 202, DATE '2026-09-16','10:30 AM', 'Completed', 'Headache');

INSERT INTO appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status, reason)
VALUES (403, 103, 203, DATE '2026-09-17','11:00 AM', 'Scheduled', 'Knee pain');

INSERT INTO appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status, reason)
VALUES (404, 104, 204, DATE '2026-09-18','02:00 PM', 'Cancelled', 'Child fever');

INSERT INTO appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status, reason)
VALUES (405, 105, 201, DATE '2026-09-19','03:30 PM', 'Completed', 'Heart checkup');

-- INSERT DATA INTO MEDICAL RECORDS

INSERT INTO medical_records (record_id, patient_id, doctor_id, record_date, diagnosis, treatment, notes)
VALUES (501, 101, 201, DATE '2026-09-15','Mild hypertension','Medication and regular monitoring','Follow-up after one month');

INSERT INTO medical_records (record_id, patient_id, doctor_id, record_date, diagnosis, treatment, notes)
VALUES (502, 102, 202, DATE '2026-09-16','Migraine','Prescribed medication and rest','Avoid excessive screen time');

INSERT INTO medical_records (record_id, patient_id, doctor_id, record_date, diagnosis, treatment, notes)
VALUES (503, 103, 203, DATE '2026-09-17','Knee inflammation','Physiotherapy and medication','Review after two weeks');

INSERT INTO medical_records (record_id, patient_id, doctor_id, record_date, diagnosis, treatment, notes)
VALUES (504, 104, 204, DATE '2026-09-18','Viral fever','Medication and fluids','Monitor temperature');

INSERT INTO medical_records (record_id, patient_id, doctor_id, record_date, diagnosis, treatment, notes)
VALUES (505, 105, 201, DATE '2026-09-19','High cholesterol','Diet control and medication','Follow-up after three months');

-- INSERT DATA INTO PRESCRIPTIONS

INSERT INTO prescriptions (prescription_id, patient_id, doctor_id, record_id,prescription_date, medicine_name, dosage, frequency,duration, instructions)
VALUES (601, 101, 201, 501, DATE '2026-09-15','Amlodipine', '5 mg', 'Once daily', '30 days','Take after breakfast');

INSERT INTO prescriptions (prescription_id, patient_id, doctor_id, record_id,prescription_date, medicine_name, dosage, frequency,duration, instructions)
VALUES (602, 102, 202, 502, DATE '2026-09-16','Sumatriptan', '50 mg', 'As needed', '10 days','Take during migraine');

INSERT INTO prescriptions (prescription_id, patient_id, doctor_id, record_id,prescription_date, medicine_name, dosage, frequency,duration, instructions)
VALUES (603, 103, 203, 503, DATE '2026-09-17','Ibuprofen', '400 mg', 'Twice daily', '7 days','Take after meals');

INSERT INTO prescriptions (prescription_id, patient_id, doctor_id, record_id,prescription_date, medicine_name, dosage, frequency,duration, instructions)
VALUES (604, 104, 204, 504, DATE '2026-09-18','Paracetamol', '500 mg', 'Twice daily', '5 days','Take after meals');

INSERT INTO prescriptions (prescription_id, patient_id, doctor_id, record_id,prescription_date, medicine_name, dosage, frequency,duration, instructions)
VALUES (605, 105, 201, 505, DATE '2026-09-19','Atorvastatin', '10 mg', 'Once daily', '30 days','Take at night');

-- INSERT DATA INTO BILLS

INSERT INTO bills (bill_id, patient_id, appointment_id, room_id,bill_date, amount, payment_method, payment_status)
VALUES (701, 101, 401, 301, DATE '2026-09-15',2500, 'UPI', 'Paid');

INSERT INTO bills (bill_id, patient_id, appointment_id, room_id,bill_date, amount, payment_method, payment_status)
VALUES (702, 102, 402, NULL, DATE '2026-09-16',1800, 'Card', 'Paid');

INSERT INTO bills (bill_id, patient_id, appointment_id, room_id,bill_date, amount, payment_method, payment_status)
VALUES (703, 103, 403, 304, DATE '2026-09-17',3200, 'Cash', 'Pending');

INSERT INTO bills (bill_id, patient_id, appointment_id, room_id,bill_date, amount, payment_method, payment_status)
VALUES (704, 104, 404, NULL, DATE '2026-09-18',1000, 'UPI', 'Paid');

INSERT INTO bills (bill_id, patient_id, appointment_id, room_id,bill_date, amount, payment_method, payment_status)
VALUES (705, 105, 405, 302, DATE '2026-09-19',4500, 'Card', 'Pending');



COMMIT;

