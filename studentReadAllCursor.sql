        /*
		public DataSet GetStudent()
        {
            string sqlQuery = "SELECT studentId as ID, studentPass AS PASSWORD, studentName AS NAME, studentMob as MOBILE, classId as CLASS FROM studentPanel";
        }

        public DataSet GetStudent(int studentId)
        {
            string sqlQuery = "SELECT * FROM studentPanel WHERE studentId ="+studentId;
        }

        public void CreateStudent(StudentDTO studentDTO)
        {
            string sqlQuery = "INSERT INTO studentPanel VALUES('" + studentDTO.STUDENTID + "','" + studentDTO.PASSWORD + "','" + studentDTO.NAME + "','" + studentDTO.MOBILE + "','"+studentDTO.CLASSID+"')";
        }
		
        public void DeleteStudent(int id)
        {
            string sqlQuery = "DELETE FROM studentPanel WHERE studentId = "+id;
        }

        public void UpdateStudent(int studentId, string password, string name, string mobile, int classId)
        {
            string sqlQuery = "UPDATE studentPanel SET  studentPass = '" + password + "', studentName = '" + name + "', studentMob = '" + mobile + "', classId = '"+classId+"' WHERE studentId = '" + studentId + "' ";
        }
		*/
		
set serveroutput on;		

declare

i int;
p varchar(30);
n varchar(30);
m varchar(30);
c int;

cursor studentAllCursor is
	select studentid,studentPass,studentName,studentMob,classId 
	from studentPanel;

begin
	open studentAllCursor;
		loop
			fetch studentAllCursor into i,p,n,m,c;
			exit when studentAllCursor%notfound;
			DBMS_OUTPUT.PUT_LINE(TO_CHAR(i)||' '||TO_CHAR(p)||' '||TO_CHAR(n)||' '||TO_CHAR(m)||' '||TO_CHAR(c)||' ');
		end loop;
	close studentAllCursor;
end;
/