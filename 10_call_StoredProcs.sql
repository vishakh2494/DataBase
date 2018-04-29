/* To call "INSERT" Stored Procedure*/

EXEC  sp_Insert(22, 'SHOBHA',11, 22, 'F', 'A', date '2016-04-04', 2, null, null, 123); 


====================================================================================
/* To Call "UPDATE" Stored Procedure*/

EXEC sp_Update(1, 'Mark', 28, 'M');

===================================================
/* To Call "DELETE" Stored Procedure*/

EXEC sp_Delete(3 , 4);

=====================================================
/* To Call "SELECT" Stored Procedure*/



DECLARE

DID1 NUMBER;
FNAME VARCHAR(20);
AGE VARCHAR(10);
SEX VARCHAR(10);
BLOODGROUP VARCHAR(10);
BEGIN
SP_SELECT(2, DID1,FNAME,AGE,SEX,BLOODGROUP);
dbms_output.put_line(DID1 || ' ' || FNAME || ' ' || AGE || ' ' || SEX || ' ' || BLOODGROUP  ); 
END;

