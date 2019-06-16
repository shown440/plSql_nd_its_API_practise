--delete usermaster
--where rowid not in(select max(rowid) from usermaster group by username)

--select max(rowid) from SHIFULLAH.STUDENT_INFO group by ID

--delete SHIFULLAH.STUDENT_INFO
--where rowid not in(select max(rowid) from SHIFULLAH.STUDENT_INFO group by ID)