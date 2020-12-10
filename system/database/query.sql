--- what is the diagnosis distributions
BEGIN
   SELECT
        d.diagnosis_details as Diagnosis,
        COUNT(d.patient_id) as [Patients Diagnosed]
    FROM Diagnosis d
    GROUP BY d.diagnosis_details
    ORDER BY [Patients Diagnosed];
END

--- what is the mode of payment distribution
BEGIN
   SELECT
        pm.method_description as [Payment Method],
        COUNT(p.patient_id) as [Frequency]
    FROM Payment_method pm
    Inner Join Payment P on pm.method_id = P.method_id
    GROUP BY pm.method_description;
END

--- How many Prescriptions did each doctor make in October
BEGIN
    DECLARE @MIN_DATE DATE;
    DECLARE @MAX_DATE DATE;
    SET @MAX_DATE = '2020-10-31';
    SET @MIN_DATE = '2020-10-01';
   SELECT
        concat_ws(' ',e.first_name, e.last_name) AS [Doctor's Name],
        COUNT(p.patient_id) as [Prescriptions Written]
    FROM Employee e
    INNER JOIN Prescription P on e.employee_id = P.employee_id
    WHERE p.start_date >= @MIN_DATE AND p.start_date <= @MAX_DATE
    GROUP BY e.first_name, e.last_name
END

--- How many patients are in each unit
BEGIN
    SELECT
        u.unit_name as Unit,
        COUNT(a.patient_id) as Patients
    FROM Unit u
    INNER JOIN Ward W on u.unit_id = W.unit_id
    Inner Join Admission A on W.ward_id = A.ward_id
    GROUP BY u.unit_name
END

--- How many patients were admitted in 2020
BEGIN
    DECLARE @MIN_DATE DATE;
    DECLARE @MAX_DATE DATE;
    SET @MAX_DATE = '2020-12-31';
    SET @MIN_DATE = '2020-01-01';
   SELECT
        COUNT(p.patient_id) as [Number of Patients Admitted in 2020]
    FROM Patient p
    INNER JOIN Admission A on p.patient_id = A.patient_id
    WHERE a.admitted_date >= @MIN_DATE AND a.discharged_date <= @MAX_DATE
END

--- how many patients are currently admitted in the hospital?
BEGIN
    SELECT
        COUNT(p.patient_id) as [Number of Admitted Patients]
    FROM Patient p
             INNER JOIN Admission A on p.patient_id = A.patient_id
    WHERE a.discharged_date > GETDATE() OR a.discharged_date IS NULL
END

--- which patients haven't cleared their balances?
BEGIN
    SELECT
        concat_ws(' ',p.first_name, p.last_name) AS [Patients's Name],
        a.amount_payable as [Billed Total],
        a.amount_received as [Amount Recieved],
        (a.amount_payable - a.amount_received) as [Current Balance],
        a.due_date as [Due Date]
    FROM Patient p
    INNER JOIN Account A on p.patient_id = A.account_no
    WHERE a.amount_payable > a.amount_received
END

--- which patients have cleared their balances?
BEGIN
    SELECT
        concat_ws(' ',p.first_name, p.last_name) AS [Patients's Name],
        a.amount_payable as [Billed Total],
        a.amount_received as [Amount Recieved],
        (a.amount_payable - a.amount_received) as [Current Balance],
        a.due_date as [Due Date]
    FROM Patient p
             INNER JOIN Account A on p.patient_id = A.account_no
    WHERE a.amount_payable = a.amount_received
END

--- Which patients Bills are more than Average
BEGIN
    DECLARE  @AVERAGE_BILL DECIMAL(19, 6);
    SELECT @AVERAGE_BILL = AVG(a.amount_payable) FROM Account A
    SELECT
        concat_ws(' ',p.first_name, p.last_name) AS [Patients's Name],
        a.amount_payable as [Billed Total],
        a.amount_received as [Amount Recieved],
        (a.amount_payable - a.amount_received) as [Current Balance],
        a.due_date as [Due Date]
    FROM Patient p
             INNER JOIN Account A on p.patient_id = A.account_no
    WHERE a.amount_payable > @AVERAGE_BILL
END

--- Which patients Bills are less than Average
BEGIN
    DECLARE  @AVERAGE_BILL DECIMAL(19, 6);
    SELECT @AVERAGE_BILL = AVG(a.amount_payable) FROM Account A
    SELECT
        concat_ws(' ',p.first_name, p.last_name) AS [Patients's Name],
        a.amount_payable as [Billed Total],
        a.amount_received as [Amount Recieved],
        (a.amount_payable - a.amount_received) as [Current Balance],
        a.due_date as [Due Date]
    FROM Patient p
             INNER JOIN Account A on p.patient_id = A.account_no
    WHERE a.amount_payable < @AVERAGE_BILL
END

--- what is the schedule ?
BEGIN
    SELECT
        s.date as Date,
        t.task_description as [Activity],
        concat_ws(' ',p.first_name, p.last_name) AS [Patients's Name],
        concat_ws(' ',e.first_name, e.last_name) AS [Practitioner],
        s.start_time as [From],
        s.end_time as [To]

    FROM Scheduled_task s
    INNER JOIN Employee E on E.employee_id = s.employee_id
    INNER JOIN Task T on T.task_id = s.task_id
    INNER JOIN Patient P on P.patient_id = s.patient_id
END

--- List the diagnosis for every patient
BEGIN
    SELECT
        concat_ws(' ',p.first_name, p.last_name) AS [Patients's Name],
        d.diagnosis_details As Diagnosis,
        d.remarks as Remarks,
        concat_ws(' ',e.first_name, e.last_name) AS [Doctor],
        d.date as Date
    FROM Patient p
    INNER JOIN Diagnosis D on p.patient_id = D.patient_id
    INNER JOIN Employee E on E.employee_id = D.employee_id
END

--- How many patients are in each ward
BEGIN
    SELECT
        w.ward_number as [Ward Number],
        u.unit_name as [Unit],
        COUNT(a.patient_id) as Patients
    FROM Unit u
    INNER JOIN Ward W on u.unit_id = W.unit_id
    Inner Join Admission A on W.ward_id = A.ward_id
    GROUP BY w.ward_number, u.unit_name
    ORDER BY w.ward_number
END

--- For How Long Was Each Patient Admitted
BEGIN
    SELECT
        concat_ws(' ',p.first_name, p.last_name) AS [Patients's Name],
        a.admitted_date as [Date Admitted],
        a.discharged_date as [Date Discharged],
        DATEDIFF(day, a.admitted_date, a.discharged_date) as [Days Spent In Hospital]
    FROM Patient p
             INNER JOIN Admission A on p.patient_id = A.patient_id
END
