
DECLARE 
   D_DID DONOR.DID%type; 
   D_FNAME DONOR.FNAME%type; 
   D_BLOODGROUP DONOR.BLOODGROUP%type; 
   CURSOR D_DONOR is 
      SELECT DID, FNAME, BLOODGROUP FROM DONOR; 
BEGIN 
   OPEN D_DONOR; 
   LOOP 
   FETCH D_DONOR into D_DID, D_FNAME, D_BLOODGROUP; 
      EXIT WHEN D_DONOR%notfound; 
      dbms_output.put_line(D_DID || ' ' || D_FNAME || ' ' || D_BLOODGROUP); 
   END LOOP; 
   CLOSE D_DONOR; 
END; 
/