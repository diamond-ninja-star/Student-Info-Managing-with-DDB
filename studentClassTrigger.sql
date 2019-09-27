SET serveroutput ON;

CREATE OR REPLACE TRIGGER display_student_changes 
BEFORE DELETE OR INSERT OR UPDATE ON studentPanel
FOR EACH ROW 
WHEN (NEW.classId>0)
BEGIN 
   dbms_output.put_line('Old class: ' || :OLD.classId); 
   dbms_output.put_line('New class: ' || :NEW.classId); 
END; 
/
commit; 