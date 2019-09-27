set serveroutput on;		

declare

studentidscan int := &student_id; 
i int;
p varchar(30);
n varchar(30);
m varchar(30);
c int;

cursor studentRedOneCursor(id int) is
	select studentid,studentPass,studentName,studentMob,classId 
	from studentPanel
	where studentid=id;

begin
	open studentRedOneCursor(studentidscan);
		loop
			fetch studentRedOneCursor into i,p,n,m,c;
			exit when studentRedOneCursor%notfound;
			DBMS_OUTPUT.PUT_LINE(TO_CHAR(i)||' '||TO_CHAR(p)||' '||TO_CHAR(n)||' '||TO_CHAR(m)||' '||TO_CHAR(c)||' ');
		end loop;
	close studentRedOneCursor;
end;
/