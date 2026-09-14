-- Department Table --
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL UNIQUE,
    location VARCHAR2(100) NOT NULL,
    phone VARCHAR2(15) UNIQUE
);

-- Patients Table -- 
CREATE TABLE patients (
    patient_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR2(10) NOT NULL,
    phone VARCHAR2(15) NOT NULL UNIQUE,
    email VARCHAR2(100) UNIQUE,
    address VARCHAR2(200),
    
    CONSTRAINT chk_patient_gender
        CHECK (gender IN ('Male', 'Female', 'Other'))
);

-- Doctors Table -- 
CREATE TABLE doctors (
    doctor_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    specialization VARCHAR2(100) NOT NULL,
    phone VARCHAR2(15) UNIQUE,
    email VARCHAR2(100) UNIQUE,
    department_id NUMBER NOT NULL,

    CONSTRAINT fk_doctor_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- Room Table 
CREATE TABLE rooms (
    room_id NUMBER PRIMARY KEY,
    room_number VARCHAR2(20) NOT NULL UNIQUE,
    room_type VARCHAR2(30) NOT NULL,
    department_id NUMBER NOT NULL,
    status VARCHAR2(20) NOT NULL,
    daily_charge NUMBER(10,2) NOT NULL,

    CONSTRAINT fk_room_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    CONSTRAINT chk_room_type
        CHECK (room_type IN ('General', 'Private', 'ICU')),

    CONSTRAINT chk_room_status
        CHECK (status IN ('Available', 'Occupied', 'Maintenance')),

    CONSTRAINT chk_room_charge
        CHECK (daily_charge >= 0)
);

--Appointments Table 
CREATE TABLE appointments (
    appointment_id NUMBER PRIMARY KEY,
    patient_id NUMBER NOT NULL,
    doctor_id NUMBER NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time VARCHAR2(10) NOT NULL,
    status VARCHAR2(20) NOT NULL,
    reason VARCHAR2(200),

    CONSTRAINT fk_appointment_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),

    CONSTRAINT fk_appointment_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id),

    CONSTRAINT chk_appointment_status
        CHECK (status IN ('Scheduled', 'Completed', 'Cancelled'))
);

-- Medical Records 
CREATE TABLE medical_records (
    record_id NUMBER PRIMARY KEY,
    patient_id NUMBER NOT NULL,
    doctor_id NUMBER NOT NULL,
    record_date DATE NOT NULL,
    diagnosis VARCHAR2(200) NOT NULL,
    treatment VARCHAR2(300),
    notes VARCHAR2(500),

    CONSTRAINT fk_record_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),

    CONSTRAINT fk_record_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id)
);

--Prescriptions Table 
CREATE TABLE prescriptions (
    prescription_id NUMBER PRIMARY KEY,
    patient_id NUMBER NOT NULL,
    doctor_id NUMBER NOT NULL,
    record_id NUMBER NOT NULL,
    prescription_date DATE NOT NULL,
    medicine_name VARCHAR2(100) NOT NULL,
    dosage VARCHAR2(50) NOT NULL,
    frequency VARCHAR2(50) NOT NULL,
    duration VARCHAR2(50) NOT NULL,
    instructions VARCHAR2(300),

    CONSTRAINT fk_prescription_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),

    CONSTRAINT fk_prescription_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id),

    CONSTRAINT fk_prescription_record
        FOREIGN KEY (record_id)
        REFERENCES medical_records(record_id)
);

-- Bills Table 
CREATE TABLE bills (
    bill_id NUMBER PRIMARY KEY,
    patient_id NUMBER NOT NULL,
    appointment_id NUMBER NOT NULL,
    room_id NUMBER,
    bill_date DATE NOT NULL,
    amount NUMBER(10,2) NOT NULL,
    payment_method VARCHAR2(20) NOT NULL,
    payment_status VARCHAR2(20) NOT NULL,

    CONSTRAINT fk_bill_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),

    CONSTRAINT fk_bill_appointment
        FOREIGN KEY (appointment_id)
        REFERENCES appointments(appointment_id),

    CONSTRAINT fk_bill_room
        FOREIGN KEY (room_id)
        REFERENCES rooms(room_id),

    CONSTRAINT chk_bill_amount
        CHECK (amount >= 0),

    CONSTRAINT chk_payment_method
        CHECK (payment_method IN ('Cash', 'Card', 'UPI')),

    CONSTRAINT chk_payment_status
        CHECK (payment_status IN ('Paid', 'Pending'))
);