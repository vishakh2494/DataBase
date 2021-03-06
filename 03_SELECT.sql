--1
SELECT EMPID,FNAME,SYSMID FROM EMPLOYEESINFO;

--2
SELECT DID,FNAME FROM DONOR WHERE BLOODGROUP='A+' AND SEX='M';

--3
SELECT RID ,Count(*) FROM RECIPIENT WHERE QUANTITY > 300 GROUP BY RID  ;

--4
SELECT DID,FNAME,COUNT(QUANTITY) FROM DONOR GROUP BY QUANTITY HAVING COUNT(QUANTITY) >=200;

--5
SELECT EMPID, FNAME FROM EMPLOYEESINFO E UNION SELECT DID, FNAME FROM DONOR ORDER BY FNAME;

--6

SELECT MAX(RBC) AS MAX_RBC, MIN(WBC) AS MIN_WBC FROM BLOODINFO;

--8
SELECT SUM(QUANTITY) AS TOTAL_QUANTITY FROM BLOODINFO;

--9
select RID,FNAME FROM RECIPIENT WHERE QUANTITY = (SELECT MAX(QUANTITY)  FROM RECIPIENT) ;

--10
SELECT DONOR.FNAME, BLOODTRANSFERINFO.BLOODPACKETNO
FROM DONOR
INNER JOIN BLOODTRANSFERINFO
ON DONOR.DID = BLOODTRANSFERINFO.DID;



