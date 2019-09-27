select * from studentPanel
join marksPanel
on studentPanel.studentId=marksPanel.studentId
join classPanel
on studentPanel.classId=classPanel.classId
join subjectPanel
on subjectPanel.subjectId=classPanel.subjectId
join teacherPanel
on teacherPanel.teacherId=subjectPanel.teacherId;