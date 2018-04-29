DROP TRIGGER Final_Project;


CREATE OR REPLACE TRIGGER Final_Project
BEFORE INSERT OR DELETE ON DONOR
FOR EACH ROW
BEGIN
 if inserting then
            DBMS_OUTPUT.PUT_LINE('You have Inserted a Record in Donor Table and Triggered an Insertion Event in BloodBagInfo Table ');
            INSERT INTO BLOODBAGINFO VALUES (50, 'a' , 1);

 else if deleting then
              DBMS_OUTPUT.PUT_LINE('You have Deleted a record in Donor Table and Triggered a Deletion Event in BloodBagInfo Table ');
              DELETE FROM BLOODBAGINFO WHERE BLOODBAGNO=50;
END IF;
        END IF;
END;
/




