-- Homework 1/6

select * from student
where FirstName = 'Antonio'

select * from student
where DateOfBirth > '19990101'

select * from student
where Gender = 'M'

select * from student
where LastName like 'T%'

select * from student
where EnrolledDate >= '19980101' and EnrolledDate < '19980201'

select * from student
where EnrolledDate >= '19980101' and EnrolledDate < '19980201'
and LastName like 'J%'

-- Homework 2/6

select * from student
where FirstName = 'Antonio'
order by LastName 

select * from student
order by FirstName

select * from student
where Gender = 'M'
order by EnrolledDate desc

--Homework 3/6

select FirstName from Teacher
union all
select FirstName from Student

select LastName from Teacher
union
select LastName from Student

select FirstName from Teacher
intersect
select FirstName from Student

-- Homework 4/6
select * from GradeDetails

alter table GradeDetails
add constraint DF_GradeDetails_AchievementMaxPoints
default 100 for [AchievementMaxPoints]

alter table GradeDetails with check
add constraint CHK_GradeDetails_AchievementPoints
check (AchievementPoints <=AchievementMaxPoints)

alter table AchievementType with check
add constraint UC_AchievementType_Name unique ([Name])


