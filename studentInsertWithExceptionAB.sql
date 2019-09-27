clear screen;

set serveroutput on;

set verify off;

declare
	
	i studentPanel.studentid%type := &sid;
	p studentPanel.studentpass%type := '&spass';
	n studentPanel.studentname%type := '&sname';
	m studentPanel.studentmob%type := '&smob';
	c studentPanel.classid%type := &sclass;
	

	trigger_exception exception;

begin



     if i <= 0 then

		raise trigger_exception;

	 else      
		insert into studentPanel values (i,p,n,m,c);
	
	end if;
			   
			 
	exception

	when trigger_exception then
	
	dbms_output.put_line('negative values are not allowed for this field!!');
end;
/