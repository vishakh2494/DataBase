--1
ALTER TABLE BLOODBAGINFO ADD COLUMN PACKETCOUNT; /* Enables to add new column called packetcount into bloodbaginfo table*/

--2
DELETE FROM BLOODBAGINFO; /* Enables us to delete all the previously entered rows in the bloodbaginfo table*/

--3
ALTER TABLE RECIPIENT DROP COLUMN DID; /* Enables to drop the previously existed column called DID from Recipient table*/

--4
ALTER TABLE EMPLOYEESINFO  /* enables in creation of foreign key*/
ADD CONSTRAINT fk_employeesinfo FOREIGN KEY(SysmId) REFERENCES SCANNINGSYSTEM(SysmId);

--5
ALTER TABLE SCANNINGSYSTEM /* enables in creation of foreign key*/
ADD CONSTRAINT fk_scanningsystem FOREIGN KEY(EmpId) REFERENCES EMPLOYEESINFO(EmpId);

SELECT * FROM EMPLOYEESINFO;

UPDATE EMPLOYEESINFO SET ADDRESS='BANGALORE' WHERE EMPID=14;

