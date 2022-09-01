CREATE TABLE CUSTOMER_PERSONAL_INFO
(
 CUSTOMER_ID VARCHAR(5),
 CUSTOMER_NAME VARCHAR(30),
 DATE_OF_BIRTH  DATE,
 GUARDIAN_NAME VARCHAR(30),
 ADDRESS VARCHAR(50),
 CONTACT_NO NUMBER(10),
 MAIL_ID  VARCHAR(30),
 GENDER CHAR(1),
 MARITAL_STATUS VARCHAR(10),
 IDENTIFICATION_DOC_TYPE VARCHAR(20),
 ID_DOC_NO VARCHAR(20),
 CITIZENSHIP VARCHAR(10),
 CONSTRAINT CUST_PERS_INFO_PK PRIMARY KEY(CUSTOMER_ID)
);

SELECT * FROM customer_personal_info;
CREATE TABLE CUSTOMER_REFERENCE_INFO
(
  CUSTOMER_ID VARCHAR(5),
  REFERENCE_ACC_NAME  VARCHAR(20),
  REFERENCE_ACC_NO NUMBER(16),
  REFERENCE_ACC_ADDRESS VARCHAR(50),
  RELATION VARCHAR(25),
  CONSTRAINT CUST_REF_INFO_PK PRIMARY KEY(CUSTOMER_ID),
  CONSTRAINT CUST_REF_INFO_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES   CUSTOMER_PERSONAL_INFO(CUSTOMER_ID)
);
SELECT * FROM customer_reference_info;
CREATE TABLE BANK_INFO
(
  IFSC_CODE   VARCHAR(15),
  BANK_NAME   VARCHAR(25),
  BRANCH_NAME VARCHAR(25),
  CONSTRAINT BANK_INFO_PK PRIMARY KEY(IFSC_CODE)
);
select * from bank_info;
CREATE TABLE ACCOUNT_INFO
(
 ACCOUNT_NO NUMBER(16),
 CUSTOMER_ID VARCHAR(5),
 ACCOUNT_TYPE VARCHAR(10),
 REGISTRATION_DATE DATE,
 ACTIVATION_DATE DATE,
 IFSC_CODE VARCHAR(10),
 INTEREST DECIMAL(7,2),
 INITIAL_DEPOSIT NUMBER(10),   
 CONSTRAINT ACC_INFO_PK PRIMARY KEY(ACCOUNT_NO),
 CONSTRAINT ACC_INFO_PERS_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_PERSONAL_INFO(CUSTOMER_ID),
 CONSTRAINT ACC_INFO_BANK_FK FOREIGN KEY(IFSC_CODE) REFERENCES BANK_INFO(IFSC_CODE)
);
select * from account_info;
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)
VALUES('HDVL0012','HDFC','VALASARAVAKKAM');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME) 
VALUES('SBITN0123','SBI','TNAGAR');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME) 
VALUES('ICITN0232','ICICI','TNAGAR');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME) 
VALUES('ICIPG0242','ICICI','PERUNGUDI');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME) 
VALUES('SBISD0113','SBI','SAIDAPET');

INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP) 
VALUES('C-001','JOHN','03-MAY-1984','PETER','NO.14, ST.MARKS ROAD,BANGALORE',9734526719,'JOHN_123@gmail.com','M','SINGLE','PASSPORT','PASS123','INDIAN');

INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP) 
VALUES('C-002','JAMES','06-AUG-1984','GEORGE','NO.18, MG ROAD,BANGALORE',9237893481,'JAMES_123@gmail.com','M','MARRIED','PASSPORT','PASS124','INDIAN');

INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
VALUES('C-003','SUNITHA','06-NOV-1984','VINOD','NO.21, GM ROAD,CHENNAI',9438978389,'SUNITHA_123@gmail.com','F','SINGLE','VOTER-ID','GMV1234','INDIAN');
INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP) 
VALUES('C-004','RAMESH','11-DEC-1985','KRISHNAN','NO.14,LB ROAD,CHENNAI',9235234534,'RAMESH_123@gmail.com','M','MARRIED','PASSPORT','PASS125','INDIAN');
INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP) 
VALUES('C-005','KUMAR','26-APR-1983','KIRAN','NO.18,MM ROAD,BANGALORE',9242342312,'KUMAR_123@gmail.com','M','SINGLE','PASSPORT','PASS126','INDIAN');


-- CUSTOMER_REFERENCE_INFO

INSERT INTO CUSTOMER_REFERENCE_INFO(CUSTOMER_ID,REFERENCE_ACC_NAME,REFERENCE_ACC_NO,REFERENCE_ACC_ADDRESS,RELATION) VALUES('C-001','RAM',0987654321122345,'NO.11,BRIGRADE ROAD,BANGALORE','FRIEND');
INSERT INTO CUSTOMER_REFERENCE_INFO(CUSTOMER_ID,REFERENCE_ACC_NAME,REFERENCE_ACC_NO,REFERENCE_ACC_ADDRESS,RELATION) VALUES('C-002','RAGHUL',0987654321122346,'NO.21,CUNNGHAM ROAD,BANGALORE','FRIEND');
INSERT INTO CUSTOMER_REFERENCE_INFO(CUSTOMER_ID,REFERENCE_ACC_NAME,REFERENCE_ACC_NO,REFERENCE_ACC_ADDRESS,RELATION) VALUES('C-003','GOKUL',0987654321122357,'NO.12,OMR,CHENNAI','NEIGHBOUR');
INSERT INTO CUSTOMER_REFERENCE_INFO(CUSTOMER_ID,REFERENCE_ACC_NAME,REFERENCE_ACC_NO,REFERENCE_ACC_ADDRESS,RELATION) VALUES('C-004','RAHMAN',0987654321122348,'NO.35,ECR,CHENNAI','FRIEND');
INSERT INTO CUSTOMER_REFERENCE_INFO(CUSTOMER_ID,REFERENCE_ACC_NAME,REFERENCE_ACC_NO,REFERENCE_ACC_ADDRESS,RELATION) VALUES('C-005','VIVEK',0987654321122359,'NO.78,JAYA NAGAR,BANGALORE','NEIGHBOUR');


-- ACCOUNT_INFO


INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST, INITIAL_DEPOSIT) VALUES(1234567898765432,'C-001','SAVINGS','23-FEB-2012','28-FEB-2012','HDVL0012',5,10000); 
INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST, INITIAL_DEPOSIT) VALUES(1234567898765433,'C-002','SALARY','12-MAR-2012','17-MAR-2012','SBITN0123',6,0 ); 
INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST, INITIAL_DEPOSIT) VALUES(1234567898765434,'C-003','SAVINGS','15-MAR-2012','20-MAR-2012','ICITN0232',4,16000 ); 
INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST, INITIAL_DEPOSIT) VALUES(1234567898765435,'C-004','SALARY','05-APR-2012','10-APR-2012','HDVL0012',7,0);
INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST, INITIAL_DEPOSIT) VALUES(1234567898765436,'C-005','SAVINGS','12-APR-2012','17-APR-2012','SBISD0113',8,20000);

-----------------------------------------------------------------
-- 1) Write a query which will display the customer id, account type they hold, their account number and bank name.

select account_info.customer_id, account_info.account_type, account_info.account_no , bank_info.bank_name from account_info inner join bank_info on account_info.ifsc_code = bank_info.ifsc_code;

-- 2) Write a query which will display the customer id, account type and the account number of HDFC customers who registered after 12-JAN-2012 and before 04-APR-2012.

SELECT A.CUSTOMER_ID, A.ACCOUNT_TYPE, A.ACCOUNT_NO
FROM ACCOUNT_INFO A
INNER JOIN BANK_INFO B
ON A.IFSC_CODE=B.IFSC_CODE
WHERE A.REGISTRATION_DATE BETWEEN '12-jan-2012' AND  '04-apr-2012' AND B.BANK_NAME='HDFC';

-- 3) Write a query which will display the customer id, customer name, account no, account type and bank name where the customers hold the account.

SELECT CP.CUSTOMER_ID, CP.CUSTOMER_NAME, A.ACCOUNT_NO, A.ACCOUNT_TYPE, B.BANK_NAME
FROM BANK_INFO B
INNER JOIN ACCOUNT_INFO A
ON B.IFSC_CODE=A.IFSC_CODE
INNER JOIN CUSTOMER_PERSONAL_INFO CP
ON CP.CUSTOMER_ID=A.CUSTOMER_ID;

-- 4)Write a query which will display the customer id, customer name, gender, marital status along with the unique reference string and sort the records based on customer id in descending order.
-- Hint:Generate unique reference string as mentioned below.CustomerName_Gender_MaritalStatus. Use ""UNIQUE_REF_STRING"" as alias name for displaying the unique reference string."

SELECT CUSTOMER_ID, CUSTOMER_NAME, GENDER, MARITAL_STATUS, CONCAT(CUSTOMER_NAME,CONCAT('_',CONCAT(GENDER,CONCAT('_',MARITAL_STATUS)))) AS UNIQUE_REF_STRING
FROM CUSTOMER_PERSONAL_INFO  order by customer_id desc;

-- 5.Write a query which will display the account number, customer id, registration date, initial deposit amount of the customer whose initial deposit amount is within the range of Rs.15000 to Rs.25000. 

SELECT ACCOUNT_NO, CUSTOMER_ID, REGISTRATION_DATE, INITIAL_DEPOSIT
FROM ACCOUNT_INFO
WHERE INITIAL_DEPOSIT BETWEEN 15000 AND 25000;

-- 6. Write a query which will display customer id, customer name, date of birth, guardian name of the customers whose name starts with 'J'.

select customer_id , customer_name, date_of_birth, guardian_name from customer_personal_info where customer_name like 'J%';

-- 7) Write a query which will display customer id, account number and passcode. Hint:  To generate passcode, join the last three digits of customer id and last four digit of account number.

SELECT CUSTOMER_ID, ACCOUNT_NO, CONCAT(SUBSTR(CUSTOMER_ID,-3),SUBSTR(ACCOUNT_NO,-4))AS PASSCODE
FROM ACCOUNT_INFO;

-- 8) Write a query which will display the customer id, customer name, date of birth, Marital Status, Gender, Guardian name,
--contact no and email id of the customers whose gender is male 'M' and marital status is MARRIED.

SELECT CUSTOMER_ID, CUSTOMER_NAME, DATE_OF_BIRTH, MARITAL_STATUS, GENDER,GUARDIAN_NAME, CONTACT_NO, MAIL_ID FROM CUSTOMER_PERSONAL_INFO  WHERE GENDER='M' AND MARITAL_STATUS='MARRIED';


-- 9) Write a query which will display the customer id, customer name, guardian name, reference account holders name of the customers who are referenced / referred by their 'FRIEND'

 SELECT CP.CUSTOMER_ID , CP.CUSTOMER_NAME, CP.GUARDIAN_NAME, CR.REFERENCE_ACC_NAME FROM customer_personal_info CP INNER JOIN customer_reference_info CR ON CP.CUSTOMER_ID = CR.CUSTOMER_ID WHERE RELATION='FRIEND';
 
 -- 10) Write a query to display the customer id, account number and interest amount in the below format with INTEREST_AMT as alias name.Sort the result based on the INTEREST_AMT in ascending order.
 
SELECT CUSTOMER_ID, ACCOUNT_NO, CONCAT('$',ROUND(INTEREST,0)) AS INTEREST_AMT FROM ACCOUNT_INFO ORDER BY INTEREST_AMT ASC;

-- 11) Write a query which will display the customer id, customer name, account no, account type, activation date,bank name whose account will be activated on '10-APR-2012'

SELECT CP.CUSTOMER_ID, CP.CUSTOMER_NAME, A.ACCOUNT_NO, A.ACCOUNT_TYPE, A.ACTIVATION_DATE, B.BANK_NAME FROM 
ACCOUNT_INFO A INNER JOIN BANK_INFO B ON A.IFSC_CODE= B.IFSC_CODE INNER JOIN CUSTOMER_PERSONAL_INFO CP ON CP.CUSTOMER_ID = A.CUSTOMER_ID
WHERE ACTIVATION_DATE='10-APR-2012';

-- 12) Write a query which will display account number, customer id, customer name, bank name, branch name, ifsc code,citizenship, interest and initial deposit amount of all the customers.

SELECT A.ACCOUNT_NO , CP.CUSTOMER_ID ,CP.CUSTOMER_NAME ,B.BANK_NAME , B.BRANCH_NAME,B.IFSC_CODE , CP.CITIZENSHIP ,A.INTEREST ,A.INITIAL_DEPOSIT FROM customer_personal_info CP INNER JOIN account_info A ON CP.customer_id = A.customer_id
INNER JOIN bank_info B ON A.IFSC_CODE = B.IFSC_CODE;

-- 13) Write a query which will display customer id, customer name, date of birth, guardian name, contact number,mail id and reference account holder's name of the customers who has submitted the passport as an identification document.
SELECT CP.CUSTOMER_ID ,CP.CUSTOMER_NAME ,CP.DATE_OF_BIRTH ,CP.GUARDIAN_NAME , CP.CONTACT_NO ,CP.MAIL_ID, CR.REFERENCE_ACC_NAME FROM customer_personal_info CP INNER JOIN customer_reference_info CR ON CP.customer_id = CR.customer_id WHERE cp.identification_doc_type = 'PASSPORT';

-- 14) Write a query to display the customer id, customer name, account number, account type, initial deposit,interest who have deposited the maximum amount in the bank.

SELECT * FROM (SELECT CP.CUSTOMER_ID, CP.CUSTOMER_NAME, A.ACCOUNT_NO, A.ACCOUNT_TYPE, A.INITIAL_DEPOSIT, A.INTEREST FROM customer_personal_info CP INNER JOIN ACCOUNT_INFO A
ON CP.CUSTOMER_ID = A.CUSTOMER_ID  ORDER BY A.INITIAL_DEPOSIT DESC) WHERE ROWNUM=1;

-- 15) Write a query to display the customer id, customer name, account number, account type, interest, bank name and initial deposit amount of the customers who are getting maximum interest rate.

SELECT CP.CUSTOMER_ID ,CP.CUSTOMER_NAME , A.ACCOUNT_NO , A.ACCOUNT_TYPE, A.INTEREST , B.BANK_NAME , A.INITIAL_DEPOSIT FROM ACCOUNT_INFO A INNER JOIN CUSTOMER_PERSONAL_INFO CP ON A.CUSTOMER_ID = CP.CUSTOMER_ID INNER JOIN BANK_INFO B ON B.IFSC_CODE = A.IFSC_CODE
WHERE A.INTEREST =  (SELECT MAX(INTEREST) FROM account_info );
 
-- 16) Write a query to display the customer id, customer name, account no, bank name, contact no and mail id of the customers who are from BANGALORE.

SELECT CP.CUSTOMER_ID ,CP.CUSTOMER_NAME , A.ACCOUNT_NO ,  B.BANK_NAME ,CP.CONTACT_NO , CP.MAIL_ID FROM ACCOUNT_INFO A INNER JOIN CUSTOMER_PERSONAL_INFO CP ON A.CUSTOMER_ID = CP.CUSTOMER_ID INNER JOIN BANK_INFO B ON B.IFSC_CODE = A.IFSC_CODE
WHERE CP.ADDRESS LIKE '%BANGALORE';

-- 17) Write a query which will display customer id, bank name, branch name, ifsc code, registration date,activation date of the customers whose activation date is in the month of march (March 1'st to March 31'st).

SELECT CP.CUSTOMER_ID , B.BANK_NAME , B.BRANCH_NAME ,A.IFSC_CODE ,A.REGISTRATION_DATE , A.ACTIVATION_DATE FROM ACCOUNT_INFO A INNER JOIN CUSTOMER_PERSONAL_INFO CP ON A.CUSTOMER_ID = CP.CUSTOMER_ID INNER JOIN BANK_INFO B ON B.IFSC_CODE = A.IFSC_CODE
WHERE A.ACTIVATION_DATE BETWEEN '01-mar -2012' and '31-mar-2012';

-- 18) Write a query which will calculate the interest amount and display it along with customer id, customer name, account number, account type, interest, and initial deposit amount.
-- calculate: ((interest/100) * initial deposit amt) with column name 'interest_amt' (alias)

SELECT ((A.INTEREST/100)* INITIAL_DEPOSIT) AS INTEREST_AMT ,CP.CUSTOMER_ID , CP.CUSTOMER_NAME ,A.ACCOUNT_NO , A.ACCOUNT_TYPE, A.INTEREST ,A.INITIAL_DEPOSIT  FROM ACCOUNT_INFO A INNER JOIN CUSTOMER_PERSONAL_INFO CP ON A.CUSTOMER_ID = CP.CUSTOMER_ID ;

-- 19) Write a query to display the customer id, customer name, date of birth, guardian name, contact number, mail id, reference name who has been referenced by 'RAGHUL'.
SELECT CP.CUSTOMER_ID ,CP.CUSTOMER_NAME ,CP.DATE_OF_BIRTH ,CP.GUARDIAN_NAME , CP.CONTACT_NO ,CP.MAIL_ID, CR.REFERENCE_ACC_NAME FROM customer_personal_info CP INNER JOIN customer_reference_info CR ON CP.customer_id = CR.customer_id WHERE cp.identification_doc_type = 'PASSPORT';

-- 20) Write a query which will display the customer id, customer name and contact number with ISD code of all customers in below mentioned format.  Sort the result based on the customer id in descending order. 
-- Format for contact number is :  ""+91-3digits-3digits-4digits""Example: +91-924-234-2312Use ""CONTACT_ISD"" as alias name."

SELECT CUSTOMER_ID, CUSTOMER_NAME,CONCAT(CONCAT(CONCAT(CONCAT(CONCAT('+91-',SUBSTR(CONTACT_NO,1,3)),'-'),SUBSTR(CONTACT_NO,4,3)),'-'),SUBSTR(CONTACT_NO,-4))AS CONTACT_ISD
FROM CUSTOMER_PERSONAL_INFO
ORDER BY CUSTOMER_ID DESC;    

-- 21) Write a query which will display account number, account type, customer id, customer name, date of birth, guardian name,contact no, mail id , gender, reference account holders name, reference account holders account number, registration date, 
-- activation date, number of days between the registration date and activation date with alias name "NoofdaysforActivation", bank name, branch name and initial deposit for all the customers.

SELECT A.ACCOUNT_NO, A.ACCOUNT_TYPE, CP.CUSTOMER_ID ,CP.CUSTOMER_NAME ,CP.DATE_OF_BIRTH ,CP.GUARDIAN_NAME , CP.CONTACT_NO ,CP.MAIL_ID, CP.GENDER ,CR.REFERENCE_ACC_NAME , CR.REFERENCE_ACC_NO,
A.REGISTRATION_DATE , A.ACTIVATION_DATE, DATEDIFF(REGISTRATION_DATE,ACTIVATION_DATE) AS "NoofdaysforActivation" ,B.BANK_NAME, B.BRANCH_NAME , A.INITIAL_DEPOSIT FROM customer_personal_info CP INNER JOIN customer_reference_info CR ON CP.customer_id = CR.customer_id
INNER JOIN ACCOUNT_INFO A ON CP.CUSTOMER_ID = A.CUSTOMER_ID INNER JOIN BANK_INFO B ON A.IFSC_CODE = B.IFSC_CODE;

-- 22) Write a query which will display customer id, customer name,  guardian name, identification doc type,reference account holders name, account type, ifsc code, bank name and current balance for the customers who has only the savings account. 
-- Hint:  Formula for calculating current balance is add the intital deposit amount and interest and display without any decimals. Use ""CURRENT_BALANCE"" as alias name."

SELECT CP.CUSTOMER_ID ,CP.CUSTOMER_NAME ,CP.GUARDIAN_NAME ,CP.IDENTIFICATION_DOC_TYPE,CR.REFERENCE_ACC_NAME , A.ACCOUNT_TYPE, A.IFSC_CODE , B.BANK_NAME ,(A.INITIAL_DEPOSIT +A.INTEREST) AS "CURRENT_BALANCE"
 FROM customer_personal_info CP INNER JOIN customer_reference_info CR ON CP.customer_id = CR.customer_id
INNER JOIN ACCOUNT_INFO A ON CP.CUSTOMER_ID = A.CUSTOMER_ID INNER JOIN BANK_INFO B ON A.IFSC_CODE = B.IFSC_CODE WHERE A.ACCOUNT_TYPE ='SAVINGS';

-- 23) Write a query which will display the customer id, customer name, account number, account type, interest, initial deposit;check the initial deposit, if initial deposit is 20000 then display ""high"",if initial deposit is 16000 display 'moderate', if initial deposit is 10000 display 'average', if initial deposit is 5000 display 'low', if initial deposit is 0 display
-- 'very low' otherwise display 'invalid' and sort by interest in descending order.Hint: Name the column as ""Deposit_Status"" (alias). 
-- Strictly follow the lower case for strings in this query."

SELECT CP.CUSTOMER_ID, CP.CUSTOMER_NAME , A.ACCOUNT_NO , A.ACCOUNT_TYPE, A.INTEREST ,A.INITIAL_DEPOSIT ,CASE WHEN INITIAL_DEPOSIT = 20000 THEN 'high' WHEN INITIAL_DEPOSIT = 16000 THEN 'moderate' WHEN INITIAL_DEPOSIT = 10000 THEN 'average' WHEN INITIAL_DEPOSIT = 5000 THEN 'low' WHEN INITIAL_DEPOSIT = 0 THEN 'very low' ELSE 'invalid' END DEPOSIT_STATUS 
FROM CUSTOMER_PERSONAL_INFO CP INNER JOIN ACCOUNT_INFO A  ON CP.CUSTOMER_ID = A.CUSTOMER_ID;

-- 24)Write a query which will display customer id, customer name,  account number, account type, bank name, ifsc code, initial deposit amountand new interest amount for the customers whose name starts with ""J"". Hint:  Formula for calculating ""new interest amount"" is 
-- if customers account type is savings then add 10 % on current interest amount to interest amount else display the current interest amount.Round the new interest amount to 2 decimals.<br/> Use ""NEW_INTEREST"" as alias name for displaying the new interest amount.

SELECT CP.CUSTOMER_ID ,CP.CUSTOMER_NAME ,A.ACCOUNT_NO , A.ACCOUNT_TYPE, B.BANK_NAME, A.IFSC_CODE , A.INITIAL_DEPOSIT, CASE WHEN A.ACCOUNT_TYPE = 'SAVINGS' THEN ROUND((INTEREST+(INTEREST*10/100)),2) ELSE INTEREST END "NEW_INTEREST" 
FROM customer_personal_info CP INNER JOIN customer_reference_info CR ON CP.customer_id = CR.customer_id
INNER JOIN ACCOUNT_INFO A ON CP.CUSTOMER_ID = A.CUSTOMER_ID INNER JOIN BANK_INFO B ON A.IFSC_CODE = B.IFSC_CODE WHERE CP.CUSTOMER_NAME LIKE 'J%';


-- 25) Write query to display the customer id, customer name, account no, initial deposit, tax percentage as calculated below.
-- Hint:If initial deposit = 0 then tax is '0%'.If initial deposit <= 10000 then tax is '3%' 
-- If initial deposit > 10000 and initial deposit < 20000 then tax is '5%'.If initial deposit >= 20000 andinitial deposit <=30000 then tax is '7%'.If initial deposit > 30000 then tax is '10%'.Use the alias name 'taxPercentage'


SELECT CP.CUSTOMER_ID, CP.CUSTOMER_NAME , A.ACCOUNT_NO , A.INITIAL_DEPOSIT ,CASE WHEN INITIAL_DEPOSIT = 0 THEN '0%' WHEN INITIAL_DEPOSIT <= 10000 THEN '3%' WHEN INITIAL_DEPOSIT > 10000 AND INITIAL_DEPOSIT <20000 THEN '5%' WHEN initial_deposit >= 20000 and initial_deposit <=30000 then '7%'WHEN initial_deposit > 30000 then  '10%' END "textPercentage"
FROM CUSTOMER_PERSONAL_INFO CP INNER JOIN ACCOUNT_INFO A  ON CP.CUSTOMER_ID = A.CUSTOMER_ID;
