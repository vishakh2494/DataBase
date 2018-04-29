INSERT INTO EMPLOYEE VALUES (1,'VISHAKH');
INSERT INTO EMPLOYEE VALUES (2,'MANISH');
INSERT INTO EMPLOYEE VALUES (3,'VIRAJ');
INSERT INTO EMPLOYEE VALUES (4,'KARTHIK');
INSERT INTO EMPLOYEE VALUES (5,'DePaul');

BEGIN

INSERT INTO EMPLOYEE VALUES (6, 'AKSHIT');

END;

COMMIT;



DROP PROCEDURE sp_Insert;


SELECT * FROM EMPLOYEE;

/*
CREATE PROCEDURE GET_TWOSETS_CUSTOMERINFO
(
   P_CREDITLINEAMOUNT IN INTEGER,
   CURSOR1_ IN OUT TYPES.REF_CURSOR,
   CURSOR2_ IN OUT TYPES.REF_CURSOR 
)
AS
BEGIN
   OPEN CURSOR1_ FOR
      SELECT * FROM CROSSSELLCUSTOMERS 
      WHERE CREDITLINEAMOUNT >= P_CREDITLINEAMOUNT;
    
  OPEN CURSOR2_ FOR
      SELECT * FROM CROSSSELLCUSTOMERS 
       WHERE CARDTYPE = 'Platinum' AND CREDITLINEAMOUNT >= P_CREDITLINEAMOUNT;    
END;
*/

CREATE OR REPLACE PROCEDURE sp_two
(
ID IN NUMBER,
NAME IN CHAR,
CURSOR1_ IN OUT TYPES.REF_CURSOR,
CURSOR2_ IN OUT TYPES.REF_CURSOR 
)
AS
VarID NUMBER(10) := ID;
VarNAME CHAR(20) := NAME;

BEGIN
  OPEN CURSOR1_FOR
  INSERT INTO EMPLOYEE (ID, NAME) VALUES (VarID, VarNAME);
  
  OPEN CURSOR2_FOR
    DELETE FROM EMPLOYEE WHERE ID = VarID;
    
END;
/
------------------------------------------------------------------------------


CREATE OR REPLACE PROCEDURE sp_Insert (
ID IN NUMBER
/*NAME IN CHAR*/
)
AS
VarID NUMBER(10) := ID;
/*VarNAME CHAR(20) := NAME;*/

BEGIN

/*DELETE FROM EMPLOYEE WHERE ID = VarID;*/
/*INSERT INTO EMPLOYEE (ID, NAME)
VALUES
(VarID, VarNAME);*/

SELECT ID /*,NAME*/ INTO VarID /*, VarNAME */ FROM EMPLOYEE where ID = VarID;

END;
/
SELECT * FROM sp_Insert WHERE VarID = 2;
EXEC  sp_Insert(1); 
SELECT * FROM EMPLOYEE;
DELETE FROM EMPLOYEE WHERE ID = 10;

SELECT * FROM (EXEC sp_Insert) AS TEMP;

sp_Select
----------
CREATE OR REPLACE PROCEDURE selectappointments(
     a_patient IN appointments.patient_id%TYPE,
	   a_dat OUT appointments.appointment_dates%TYPE,
	   a_timeslot OUT appointments.timeslot%TYPE,
	   a_empid OUT appointments.empid%TYPE
	   )
IS
BEGIN
 
  select APPOINTMENT_DATES, TIMESLOT, EMPID into a_dat, a_timeslot, a_empid from appointments  where PATIENT_ID = a_patient;
  COMMIT;

END;
/


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*INSERT INTO EMPLOYEE VALUES (1,'VISHAKH');
INSERT INTO EMPLOYEE VALUES (2,'MANISH');
INSERT INTO EMPLOYEE VALUES (3,'VIRAJ');
INSERT INTO EMPLOYEE VALUES (4,'KARTHIK');
INSERT INTO EMPLOYEE VALUES (5,'DePaul');

BEGIN

INSERT INTO EMPLOYEE VALUES (6, 'AKSHIT');

END;

COMMIT;
*/

CREATE OR REPLACE PROCEDURE sp_Insert (
ID NUMBER,
NAME CHAR
)
AS
VarID NUMBER(10) := ID;
VarNAME CHAR(20) := NAME;

BEGIN

/*DELETE FROM EMPLOYEE WHERE ID = VarID;*/
INSERT INTO EMPLOYEE (ID, NAME)
VALUES
(VarID, VarNAME);

END;
/

/*DROP PROCEDURE sp_Insert;*/

EXEC  sp_Insert(10, 'SHOBHA'); 

SELECT * FROM EMPLOYEE;
DELETE FROM EMPLOYEE WHERE ID = 10;

/*
CREATE PROCEDURE GET_TWOSETS_CUSTOMERINFO
(
   P_CREDITLINEAMOUNT IN INTEGER,
   CURSOR1_ IN OUT TYPES.REF_CURSOR,
   CURSOR2_ IN OUT TYPES.REF_CURSOR 
)
AS
BEGIN
   OPEN CURSOR1_ FOR
      SELECT * FROM CROSSSELLCUSTOMERS 
      WHERE CREDITLINEAMOUNT >= P_CREDITLINEAMOUNT;
    
  OPEN CURSOR2_ FOR
      SELECT * FROM CROSSSELLCUSTOMERS 
       WHERE CARDTYPE = 'Platinum' AND CREDITLINEAMOUNT >= P_CREDITLINEAMOUNT;    
END;
*/

CREATE PROCEDURE sp_two
(
ID IN NUMBER,
NAME IN CHAR,
CURSOR1_ IN OUT TYPES.REF_CURSOR,
CURSOR2_ IN OUT TYPES.REF_CURSOR 
)
AS
VarID NUMBER(10) := ID;
VarNAME CHAR(20) := NAME;

BEGIN
  OPEN CURSOR1_FOR
  INSERT INTO EMPLOYEE (ID, NAME) VALUES (VarID, VarNAME);
  
  OPEN CURSOR2_FOR
    DELETE FROM EMPLOYEE WHERE ID = VarID;
END;
/

-----------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
/*From Professor database
create or replace PROCEDURE sp_Update_OrderStatus(in_OrderId NUMBER, 
                                                  in_OrderStatusId NUMBER) AS

BEGIN

  UPDATE Orders
  SET StatusID = in_OrderStatusId
  WHERE OrderID = in_OrderId;

END;
*/
SELECT * FROM EMPLOYEE;
sp_Update

CREATE PROCEDURE sp_Update (in_ID NUMBER, in_NAME CHAR) AS
 
 BEGIN

 UPDATE EMPLOYEE
 SET ID = in_ID
 WHERE NAME = in_NAME;

 END;
 /
 DROP PROCEDURE sp_Update;
EXEC sp_Update(10, 'VISHAKH');

