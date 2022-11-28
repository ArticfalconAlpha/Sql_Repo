use [AdventureWorks2019]
create table #Emp_Salary (
	Name VARCHAR(50),
	Age INT,
	Experience INT,
	Salary INT
);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Yè', 29, 7, 5917932);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Adélie', 27, 5, 7691023);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Mårten', 30, null, 7437201);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Angélique', 27, 6, 4596760);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Ráo', 27, 6, 6690449);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Chloé', 26, 5, 1484313);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Angélique', 29, null, 6652500);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Géraldine', 29, 7, 8950922);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Estève', 30, 6, 7554124);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Eloïse', 28, 7, 1656366);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Hélèna', 28, 5, 1084162);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Maïly', 26, 7, 6318265);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Kallisté', 27, 7, 1595997);
insert into #Emp_Salary (Name, Age, Experience, Salary) values ('Lóng', 27, 5, 3987027);
insert into #Emp_Salary ( Age, Experience, Salary) values ( 29, null, 4520140);


--Try_convert
select TRY_CONVERT(int, 'IT')

select 
		CASE When TRY_CONVERT(int, 'IT') is Null
		Then 'Failure'
		Else 'Success'
		END

-- using the above table in try_convert
select 
	  CASE when TRY_CONVERT(decimal,Experience) is Null
	  Then 0
	  Else Experience
	  END
	  from #Emp_Salary


Select 
		CASE When TRY_CONVERT(Varchar(100), Name) is Null
		Then 'Failed'
		ELSE  Name
		END
from #Emp_Salary


-- try_Cast Explicit conversion error will be thrown is converion is not allowed in both try_Cast and try_convert
select TRY_CAST('IT' as int)
select Try_cast(1 as text)


select 
		CASE when TRY_CAST(Name AS Varchar(100)) is Null
		Then 'Failed'
		ELSE  Name
		END
from #Emp_Salary