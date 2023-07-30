DROP DATABASE DAY6;
CREATE DATABASE DAY6;
create table DAY6.Standard_A(Name_ varchar(30), Math int, Chemestery int, 
Physics int,Geography int, History_ int, Computer_Science int);
Insert into DAY6.Standard_A Values
("Arun",90,50,90,60,70,80),
("Bilil",100,80,80,40,80,70),
("Chandra",90,60,70,70,90,70),
("Danish",80,65,80,80,60,67),
("Vaibhav",80,65,80,90,50,98),
("Siddhesh",70,75,65,85,40,65),
("Ganim",80,98,66,78,98,77);
Create table DAY6.Standard_B(Name_ varchar(30), Math int, Chemestery int, 
Physics int,Geography int, History_ int, Computer_Science int,Grade varchar(2));
Insert into DAY6.Standard_B Values
("Arun",99,50,90,60,70,80,"B"),
("Bilil",98,88,86,76,80,70,"C"),
("Chandra",90,69,76,73,98,72,"B"),
("Danish",82,69,86,89,64,69,"B"),
("Vaibhav",89,68,85,95,87,67,"B"),
("Siddhesh",70,75,65,85,40,65,"C"),
("Ganim",80,98,66,78,98,77,"C");
select * from DAY6.Standard_A;
select * from DAY6.Standard_B;

SELECT Std_A.Name_,Std_A.Math,Std_A.Chemestery,Std_A.Physics,Std_A.Geography,Std_A.History_,Std_A.Computer_Science,
Std_B.Name_,Std_B.Math,Std_B.Chemestery,Std_B.Physics,Std_B.Geography,Std_B.History_,Std_B.Computer_Science,Std_B.Grade
FROM DAY6.Standard_A AS Std_A, DAY6.Standard_B AS Std_B;

## Right Join
SELECT Std_A.Name_,Std_A.Math,Std_A.Chemestery,Std_A.Physics,Std_A.Geography,Std_A.History_,Std_A.Computer_Science,
Std_B.Name_,Std_B.Math,Std_B.Chemestery,Std_B.Physics,Std_B.Geography,Std_B.History_,Std_B.Computer_Science,Std_B.Grade
FROM DAY6.Standard_A AS Std_A 
Right JOIN DAY6.Standard_B AS Std_B
ON Std_A.Name_ = Std_B.Name_;

## Left Join
SELECT Std_A.Name_,Std_A.Math,Std_A.Chemestery,Std_A.Physics,Std_A.Geography,Std_A.History_,Std_A.Computer_Science,
Std_B.Name_,Std_B.Math,Std_B.Chemestery,Std_B.Physics,Std_B.Geography,Std_B.History_,Std_B.Computer_Science,Std_B.Grade
FROM DAY6.Standard_A AS Std_A 
Left JOIN DAY6.Standard_B AS Std_B
ON Std_A.Name_ = Std_B.Name_;

## Inner Join
SELECT Std_A.Name_,Std_A.Math,Std_A.Chemestery,Std_A.Physics,Std_A.Geography,Std_A.History_,Std_A.Computer_Science,
Std_B.Name_,Std_B.Math,Std_B.Chemestery,Std_B.Physics,Std_B.Geography,Std_B.History_,Std_B.Computer_Science,Std_B.Grade
FROM DAY6.Standard_A AS Std_A 
INNER JOIN DAY6.Standard_B AS Std_B
ON Std_A.Name_ = Std_B.Name_;

## Left Join
SELECT Std_A.Name_,Std_A.Math,Std_A.Chemestery,Std_A.Physics,Std_A.Geography,Std_A.History_,Std_A.Computer_Science,
Std_B.Name_,Std_B.Math,Std_B.Chemestery,Std_B.Physics,Std_B.Geography,Std_B.History_,Std_B.Computer_Science,Std_B.Grade
FROM DAY6.Standard_A AS Std_A 
Left JOIN DAY6.Standard_B AS Std_B
ON Std_A.Physics = Std_B.Name_;

### Intersect
select * from DAY6.Standard_A
where DAY6.Standard_A.Name_ in (Select DAY6.Standard_B.Name_ from DAY6.Standard_B);

### Union
select Name_,Math,Chemestery from DAY6.Standard_A 
UNION 
select Name_,Math,Chemestery from DAY6.Standard_B;

### Union All
select Name_,Math,Chemestery from DAY6.Standard_A UNION ALL 
select Name_,Math,Chemestery from DAY6.Standard_B;