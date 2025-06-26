REM   Script: Week2- PL/SQL - EX1
REM   control structures

CREATE TABLE Customers ( 
  CustomerID NUMBER PRIMARY KEY, 
  Name VARCHAR2(100), 
  DOB DATE, 
  Balance NUMBER, 
  LastModified DATE, 
  IsVIP VARCHAR2(5) DEFAULT 'FALSE'  
);

CREATE TABLE Loans ( 
  LoanID NUMBER PRIMARY KEY, 
  CustomerID NUMBER, 
  LoanAmount NUMBER, 
  InterestRate NUMBER, 
  StartDate DATE, 
  EndDate DATE, 
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) 
);


INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified) 
VALUES (1, 'John Doe', TO_DATE('1985-05-15', 'YYYY-MM-DD'), 1000, SYSDATE);

INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified) 
VALUES (2, 'Jane Smith', TO_DATE('1990-07-20', 'YYYY-MM-DD'), 1500, SYSDATE);

INSERT INTO Loans (LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate) 
VALUES (1, 1, 5000, 5, SYSDATE, ADD_MONTHS(SYSDATE, 60));



-- Question 1: Apply a 1% interest rate discount to loans for customers older than 60 years
DECLARE 
  v_cust_id   Customers.CustomerID%TYPE; 
  v_dob       Customers.DOB%TYPE; 
  v_age       NUMBER; 
BEGIN 
  FOR cust IN (SELECT CustomerID, DOB FROM Customers) LOOP 
    v_age := TRUNC(MONTHS_BETWEEN(SYSDATE, cust.DOB)/12); 
 
    IF v_age > 60 THEN 
      UPDATE Loans 
      SET InterestRate = InterestRate - 1 
      WHERE CustomerID = cust.CustomerID; 
 
      DBMS_OUTPUT.PUT_LINE('Discount applied to Customer ID: ' || cust.CustomerID); 
    END IF; 
  END LOOP; 
 
  COMMIT; 
END; 
/

-- Question 2: Grant VIP status to customers with balance over 10,000
DECLARE
  v_balance Customers.Balance%TYPE;
BEGIN
  FOR cust IN (SELECT CustomerID, Balance FROM Customers) LOOP
    IF cust.Balance > 10000 THEN
      UPDATE Customers
      SET IsVIP = 'TRUE'
      WHERE CustomerID = cust.CustomerID;

      DBMS_OUTPUT.PUT_LINE('VIP status granted to Customer ID: ' || cust.CustomerID);
    END IF;
  END LOOP;

  COMMIT;
END;
/

-- Question 3: Display reminders for loans due within the next 30 days
DECLARE 
  v_due_date Loans.EndDate%TYPE; 
BEGIN 
  FOR loan IN ( 
    SELECT LoanID, CustomerID, EndDate 
    FROM Loans 
    WHERE EndDate <= SYSDATE + 30 
  ) LOOP 
    DBMS_OUTPUT.PUT_LINE('Reminder: Customer ID ' || loan.CustomerID ||  
                         ' has loan ID ' || loan.LoanID ||  
                         ' due on ' || TO_CHAR(loan.EndDate, 'DD-MON-YYYY')); 
  END LOOP; 
END; 
/





