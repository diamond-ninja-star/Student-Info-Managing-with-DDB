create or replace function getclass(id in int)
	return int
	is
	rad int;
begin
	select classid
	into rad
	from studentPanel
	where studentid=id;
	
	return rad;

end ;
/