-- =========================================
-- UPDATE PATIENT DATA
-- =========================================

UPDATE patients
SET phone = '9000000011'
WHERE patient_id = 101;


-- =========================================
-- UPDATE DOCTOR DATA
-- =========================================

UPDATE doctors
SET phone = '9100000011'
WHERE doctor_id = 201;


-- =========================================
-- UPDATE APPOINTMENT DATA
-- =========================================

UPDATE appointments
SET status = 'Completed'
WHERE appointment_id = 401;


-- =========================================
-- UPDATE ROOM DATA
-- =========================================

UPDATE rooms
SET status = 'Occupied'
WHERE room_id = 301;


-- =========================================
-- UPDATE BILL PAYMENT STATUS
-- =========================================

UPDATE bills
SET payment_status = 'Paid'
WHERE bill_id = 703;


-- =========================================
-- UPDATE BILL AMOUNT
-- =========================================

UPDATE bills
SET amount = 4800
WHERE bill_id = 705;


COMMIT;