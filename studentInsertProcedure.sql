
create or replace procedure rre(i in studentPanel.studentid%type,p in studentPanel.studentpass%type,n in studentPanel.studentname%type,m in studentPanel.studentmob%type,c in studentPanel.classid%type)
	is

begin


insert into studentPanel values (i,p,n,m,c);




	
end rre;
/
