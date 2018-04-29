/* TRANSACTION QUERIES*/


/* Specifies the Begin of the TRANSACTION*/
BEGIN
/*This query updates the address of employee to Boston and Fname of employee to Pandy in employeesinfo table where the SYSMID in employeesinfo table is 103*/
UPDATE EMPLOYEESINFO SET ADDRESS = 'Boston' , FNAME = 'Pandy' WHERE SYSMID = 103;

/* This query inserts new tuple/row into RECIPIENT table*/
INSERT INTO RECIPIENT VALUES (13, 'Vishakh', 696, 24, 'M', 1013, 33, 'SPANDANA', 'Shobha', 'Home', 4016464062, 'Healthy');

/*This query deletes the tuples from the DOnor table where the address of the donor is madison and bloodgroup of the donor is A+*/
DELETE FROM DONOR WHERE ADDRESS='MADISON' AND BLOODGROUP='A+';
/* This commits or saves the transaction updates*/
COMMIT;
/*Specifies the End of the transaction*/
END;

