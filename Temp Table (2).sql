CREATE GLOBAL TEMPORARY TABLE TempTab
        (Name CHAR(10),
         AGE NUMBER(10))
      ON COMMIT DELETE ROWS;
      
      
      DROP PROCEDURE sp_Insert;

CREATE OR REPLACE PROCEDURE sp_Insert_TempTab (
NAME CHAR,
AGE NUMBER

)
AS
VarNAME VARCHAR(20) := NAME;
VarAGE VARCHAR(20) := AGE;


BEGIN

/*DELETE FROM EMPLOYEE WHERE ID = VarID;*/
INSERT INTO TempTab (NAME,AGE)
VALUES
(VarNAME,VarAGE);

END;
/
EXEC sp_Insert_TempTab('vishakh',24);
SELECT * FROM TempTab;
