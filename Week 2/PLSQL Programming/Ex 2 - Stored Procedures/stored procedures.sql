REM   Script: plsql procedures
REM   week 2

CREATE TABLE Customers ( 
  CustomerID NUMBER PRIMARY KEY, 
  Name VARCHAR2(100), 
  DOB DATE, 
  Balance NUMBER, 
  LastModified DATE, 
  IsVIP VARCHAR2(5) DEFAULT 'FALSE'  
);

CREATE TABLE Accounts ( 
  AccountID NUMBER PRIMARY KEY, 
  CustomerID NUMBER, 
  AccountType VARCHAR2(20), 
  Balance NUMBER, 
  LastModified DATE, 
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) 
);

CREATE TABLE Employees ( 
  EmployeeID NUMBER PRIMARY KEY, 
  Name VARCHAR2(100), 
  Position VARCHAR2(50), 
  Salary NUMBER, 
  Department VARCHAR2(50), 
  HireDate DATE 
);

INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified) 
VALUES (1, 'John Doe', TO_DATE('1985-05-15', 'YYYY-MM-DD'), 1000, SYSDATE);

INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified) 
VALUES (2, 'Jane Smith', TO_DATE('1990-07-20', 'YYYY-MM-DD'), 1500, SYSDATE);

INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, LastModified) 
VALUES (1, 1, 'Savings', 1000, SYSDATE);

INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, LastModified) 
VALUES (2, 2, 'Checking', 1500, SYSDATE);

INSERT INTO Employees (EmployeeID, Name, Position, Salary, Department, HireDate) 
VALUES (1, 'Alice Johnson', 'Manager', 70000, 'HR', TO_DATE('2015-06-15', 'YYYY-MM-DD'));

INSERT INTO Employees (EmployeeID, Name, Position, Salary, Department, HireDate) 
VALUES (2, 'Bob Brown', 'Developer', 60000, 'IT', TO_DATE('2017-03-20', 'YYYY-MM-DD'));

-- Scenario 1: Monthly Interest Calculation for Savings Accounts
CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest IS 
BEGIN 
  UPDATE Accounts 
  SET Balance = Balance + (Balance * 0.01) 
  WHERE AccountType = 'Savings'; 
  DBMS_OUTPUT.PUT_LINE('Monthly interest applied to savings accounts.'); 
END; 
/

-- Scenario 2: Bonus Scheme for Employees by Department
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus ( 
  dept IN VARCHAR2, 
  bonus_pct IN NUMBER 
) IS 
BEGIN 
  UPDATE Employees 
  SET Salary = Salary + (Salary * bonus_pct / 100) 
  WHERE Department = dept; 
 
  DBMS_OUTPUT.PUT_LINE('Bonus applied to department: ' || dept); 
END; 
/

--Scenario 3: Transfer Funds Between Accounts
CREATE OR REPLACE PROCEDURE TransferFunds ( 
  from_acct IN NUMBER, 
  to_acct IN NUMBER, 
  amount IN NUMBER 
) IS 
  v_balance NUMBER; 
BEGIN 
  SELECT Balance INTO v_balance FROM Accounts WHERE AccountID = from_acct; 
 
  IF v_balance < amount THEN 
    RAISE_APPLICATION_ERROR(-20001, 'Insufficient balance'); 
  END IF; 
 
  UPDATE Accounts SET Balance = Balance - amount WHERE AccountID = from_acct; 
  UPDATE Accounts SET Balance = Balance + amount WHERE AccountID = to_acct; 
 
  DBMS_OUTPUT.PUT_LINE('Transfer completed: ' || amount || ' from ' || from_acct || ' to ' || to_acct); 
END; 
/

