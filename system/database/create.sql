CREATE DATABASE Hospital_Management_System
GO

CREATE TABLE  Town(
     id INT IDENTITY(1,1),
     name VARCHAR(255) NOT NULL,

     CONSTRAINT PK_Town PRIMARY KEY (id),
);
GO

CREATE TABLE  Address(
     id INT IDENTITY(1,1),
     establishment TEXT NOT NULL,
     landmark TEXT NOT NULL,
     town INT NOT NULL,

     CONSTRAINT PK_Address PRIMARY KEY (id),
     CONSTRAINT FK_Address_Town FOREIGN KEY (town) REFERENCES Town (id),
);
GO

CREATE TABLE InsuranceCompany {
    id INT IDENTITY(1,1),
    name VARCHAR(180) NOT NULL,
    phone VARCHAR(24) NOT NULL,
    email VARCHAR(32) NOT NULL,
    address INT NOT NULL,
    
    CONSTRAINT PK_InsuranceCompany PRIMARY KEY (id),
    CONSTRAINT FK_InsuranceCompany_Address FOREIGN KEY (address) REFERENCES Address (id)
}
GO

CREATE TABLE Patient(
    patient_id INT IDENTITY(1,1),
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    id_number VARCHAR(40) NOT NULL,
    id_document TEXT(40) NOT NULL,
    address INT NOT NULL ,
    phone_number VARCHAR(20) NOT NULL ,
    d_o_b DATE NOT NULL ,
    gender CHAR NOT NULL ,
    insurance_no VARCHAR (50) NOT NULL,
    insurance_company INT NOT NULL,

    CONSTRAINT PK_Patient PRIMARY KEY (patient_id),
    CONSTRAINT FK_Patient_Address FOREIGN KEY (address) REFERENCES Address (id),
    CONSTRAINT FK_Patient_InsuranceCompany FOREIGN KEY (insurance_company) REFERENCES InsuranceCompany (id)
);
CREATE INDEX IX_Patient_Insurance_No ON Patient(insurance_no);
GO

CREATE TABLE Account(
    account_no INT NOT NULL,
    amount_payable DECIMAL(19,5) NOT NULL,
    amount_received DECIMAL(19,5) NOT NULL,
    due_date DATE NOT NULL ,

    CONSTRAINT  PK_Account PRIMARY KEY (account_no),
    CONSTRAINT FK_Account_Patient_Id FOREIGN KEY (account_no) REFERENCES Patient(patient_id),
);
GO

CREATE TABLE Payment_method(
    method_id INT IDENTITY (1,1),
    method_description VARCHAR(25) NOT NULL,

    CONSTRAINT PK_payment_id PRIMARY KEY (method_id),
);

GO

CREATE TABLE  Payment(
     entry_number INT IDENTITY(1,1),
     method_id INT NOT NULL ,
     patient_id INT NOT NULL,
     amount DECIMAL(19,5) NOT NULL,
     date DATE NOT NULL,

     CONSTRAINT PK_Payments PRIMARY KEY (entry_number),
     CONSTRAINT FK_Payments_Patient_Id FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
     CONSTRAINT FK_Payments_Payment_method FOREIGN KEY (method_id) REFERENCES Payment_method(method_id)

);
GO

CREATE TABLE Roles(
    role_id INT IDENTITY (1,1),
    role_description CHAR(50) NOT NULL ,

    CONSTRAINT PK_Roles PRIMARY KEY (role_id),
);

GO

CREATE TABLE Unit(
    unit_id INT IDENTITY (1,1),
    unit_name VARCHAR(50) NOT NULL ,
    unit_abbreviation VARCHAR(15) NOT NULL ,

    CONSTRAINT PK_Unit PRIMARY KEY (unit_id),
);


GO

CREATE TABLE Employee(
    employee_id INT IDENTITY(1,1),
    first_name VARCHAR(25)NOT NULL ,
    last_name VARCHAR(25) NOT NULL ,
    identification_no VARCHAR(25) NOT NULL ,
    license VARCHAR(25) NOT NULL ,
    role_id INT NOT NULL,
    unit_id INT NOT NULL,
    address VARCHAR(50),
    phone_number INT NOT NULL ,

    CONSTRAINT PK_Employee PRIMARY KEY (employee_id),
    CONSTRAINT FK_Employee_Role_Id FOREIGN KEY (role_id) REFERENCES  Roles (role_id),
    CONSTRAINT FK_Employee_Unit_Id FOREIGN KEY (unit_id) REFERENCES  Unit (unit_id),
);

GO

CREATE TABLE Licenses(
    license VARCHAR(25) NOT NULL ,
    employee_id INT NOT NULL ,

    CONSTRAINT PK_License PRIMARY KEY (license),
    CONSTRAINT FK_Licenses_Employee_id FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
);
GO

CREATE TABLE Treatment(
    treatment_id INT IDENTITY(1,1),
    treatment_name CHAR(25) NOT NULL ,
    start_date DATE NOT NULL ,
    end_date Date NOT NULL ,

    CONSTRAINT PK_Treatment PRIMARY KEY (treatment_id),
);

GO
CREATE TABLE Task(
    task_id INT IDENTITY(1,1),
    task_description VARCHAR(25),
    task_number VARCHAR(25),
    treatment_id INT NOT NULL ,
    date DATE,

    CONSTRAINT PK_Task PRIMARY KEY (task_id),
    CONSTRAINT FK_Task_Treatment_id FOREIGN KEY (Treatment_id) REFERENCES Treatment(treatment_id),
)

GO
CREATE TABLE Scheduled_task(
    task_id INT IDENTITY(1,1),
    employee_id INT NOT NULL ,
    patient_id INT NOT NULL ,
    start_time TIME NOT NULL ,
    end_time   TIME NOT NULL ,
    date Date NOT NULL ,

    CONSTRAINT PK_Scheduled_Task PRIMARY KEY (task_id,patient_id),
    CONSTRAINT FK_Scheduled_Task_Task_id FOREIGN KEY (task_id) REFERENCES Task(task_id),
    CONSTRAINT FK_Scheduled_Task_Patient_id FOREIGN KEY(patient_id) REFERENCES Patient(patient_id),
    CONSTRAINT FK_Scheduled_Task_employee_id FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
);

GO
CREATE TABLE Assessment(
    assessment_id INT IDENTITY (1,1),
    employee_id INT NOT NULL ,
    patient_id INT NOT NULL ,
    bp_diastole INT NOT NULL ,
    bp_systole INT NOT NULL ,
    respiratory_rate INT NOT NULL ,
    heart_rate INT NOT NULL ,
    date DATE NOT NULL ,

    CONSTRAINT PK_Assessment PRIMARY KEY (assessment_id),
    CONSTRAINT FK_Assessment_Patient_id FOREIGN KEY(patient_id) REFERENCES Patient(patient_id),
    CONSTRAINT FK_Assessment_employee_id FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
);

GO
CREATE TABLE Ward(
    ward_id INT IDENTITY(1,1),
    unit_id INT NOT NULL ,
    ward_number VARCHAR(15) NOT NULL ,

    CONSTRAINT PK_Ward PRIMARY KEY (ward_id),
    CONSTRAINT FK_Ward_Unit_Id FOREIGN KEY (unit_id) REFERENCES  Unit (unit_id),
);

GO
CREATE TABLE Prescription(
    prescription_id INT IDENTITY (1,1),
    employee_id INT NOT NULL ,
    patient_id INT NOT NULL ,
    start_date Date NOT NULL ,
    end_date DATE NOT NULL ,

    CONSTRAINT PK_Prescription PRIMARY KEY (prescription_id),
    CONSTRAINT FK_Prescription_Patient_id FOREIGN KEY(patient_id) REFERENCES Patient(patient_id),
    CONSTRAINT FK_Prescription_employee_id FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
);

GO
CREATE TABLE Diagnosis(
    diagnosis_id INT IDENTITY (1,1),
    diagnosis_details VARCHAR(25) NOT NULL ,
    patient_id INT NOT NULL ,
    employee_id INT NOT NULL ,
    remarks VARCHAR(25) NOT NULL ,
    date DATE NOT NULL ,
    
    CONSTRAINT  PK_Diagnosis PRIMARY KEY (diagnosis_id),
    CONSTRAINT FK_Diagnosis_Patient_id FOREIGN KEY(patient_id) REFERENCES Patient(patient_id),
    CONSTRAINT FK_Diagnosis_employee_id FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),

);

GO
CREATE TABLE Admission(
    patient_id INT IDENTITY(1,1),
    ward_id INT NOT NULL ,
    admitted_date DATE NOT NULL ,
    discharged_date DATE NOT NULL ,

    CONSTRAINT  PK_Admission PRIMARY KEY (patient_id),
    CONSTRAINT FK_Admission_Patient_id FOREIGN KEY(patient_id) REFERENCES Patient(patient_id),
    CONSTRAINT FK_Admission_ward_id FOREIGN KEY (ward_id) REFERENCES Ward(ward_id),
);
 GO
