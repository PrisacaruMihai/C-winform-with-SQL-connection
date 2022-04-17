GO
IF EXISTS(SELECT'True' FROM SYS.DATABASES WHERE NAME='Endava')
BEGIN
DROP DATABASE Endava
END
GO
--Use Endava
--GO
Create database Endava
drop table EleviIntership
drop table IntershipEndava
drop table Parteneri
drop table Clientiii

GO
Create table EleviIntership
					(
					IdElevi int primary key,
					NumeElevi varchar(25),
					PrenumeElev varchar(25),
					GenElev char,
					TelefonElev varchar(10),
					DataNastereElev date
					)
GO
Create table IntershipEndava
					(
					IdIntership int primary key,
					DataIncepereIntership date,
					DateInchiereIntership date,
					IdElev int foreign key references EleviIntership(IdElevi)
					)

GO
Create table Parteneri
					(
					IdParteneriat int primary key,
					NumeParteneriat varchar(40),
					DataParteneriat date
					)
GO
Create table Clientiii
					(
					IdClient int primary key,
					NumeClient varchar(25),
					TelefonClient varchar(10),
					EmailClient varchar(25),
					IdParteneriat int foreign key references Parteneri(IdParteneriat),
					)		
GO
Create table Angajati
					(
					IdAngajati int primary key,
					NumeAngajat varchar(25),
					PrenumeAngajat varchar(25),
					GenAngajat char,
					TelefonAngajat varchar(10),
					DataNastereAngajat date,
					SalariuAngajat smallmoney,
					IdElev int foreign key references EleviIntership(IdElevi)
					)
GO
Create table PretProiect
					(
					IdPretProiect int primary key,
					PretProiect money,
					DataPlata date
					)

GO
Create table Proiecte
					(
					IdProiect int primary key,
					NumeProiect varchar(40),
					IdClient int foreign key references Clientiii(IdClient),
					IdPretProiect int foreign key references PretProiect(IdPretProiect),
					IdAngajati int foreign key references Angajati(IdAngajati)
					)
GO
Create table Contracte
					(
					IdContract int primary key,
					NumeContract varchar(40),
					DataIncheiereContract date,
					IdClient int foreign key references Clientiii(IdClient),
					IdElevi int foreign key references EleviIntership(IdElevi),
					IdAngajati int foreign key references Angajati(IdAngajati),
					IdProiect int foreign key references Proiecte(IdProiect),
					)
GO
Insert Into EleviIntership(IdElevi,NumeElevi,PrenumeElev,GenElev,TelefonElev,DataNastereElev)
					Values(1,'Prisacaru','Mihail','B','23-23-23','10/15/2003'),
						(2,'Ciocan','Elena','F','12-12-12','12/10/2009'),
						(3,'Marinescu','Ion','B','10-10-10','10/02/1999'),
						(4,'Croitoru','Marina','F','24-24-24','12/30/2000'),
						(5,'Pietraru','Anatol','B','25-25-25','02/05/2013'),
						(6,'Fort','Roman','B','26-26-26','07/08/1950'),
						(7,'Iosob','Adrian','B','27-27-27','10/27/2012'),
						(8,'Grigoras','Dumitru','B','28-28-28','12/31/1999'),
						(9,'Malenchi','Cristian','B','29-29-29','01/23/2020'),
						(10,'Georgita','Eugen','B','30-30-30','02/20/2010'),
						(11,'Rusu','Iulian','B','01-01-01','11/01/2003'),
						(12,'Gheorghita','Eugenia','F','02-02-02','03/11/2003'),
						(13,'Arnaut','Valeria','F','03-03-03','12/04/1990'),
						(14,'Valerian','Cristian','F','04-04-04','10/30/2000'),
						(15,'Crint','Valeriu','B','05-05-05','09/12/1890')
GO
Insert Into IntershipEndava(IdIntership,DataIncepereIntership,DateInchiereIntership,IdElev)
					Values(16,'03-01-2000','05-30-2000',1),
						(17,'06-01-2000','08-31-2000',2),
						(18,'09-01-2000','11-30-2000',3),
						(19,'12-01-2000','02-28-2001',4),
						(20,'03-01-2001','05-30-2001',5),
						(21,'06-01-2001','08-31-2001',6),
						(22,'09-01-2001','11-30-2001',7),
						(23,'12-01-2001','02-28-2002',8),
						(24,'03-01-2002','05-30-2002',9),
						(25,'06-01-2002','08-31-2002',10),
						(26,'09-01-2002','11-30-2002',11),
						(27,'12-01-2002','02-28-2003',12),
						(28,'03-01-2003','05-30-2003',13),
						(29,'06-01-2003','08-31-2003',14),
						(30,'09-01-2003','11-30-2003',15)
GO
Insert into Parteneri(IdParteneriat,NumeParteneriat,DataParteneriat)
				Values(31,'Google','02/28/2003'),
					(32,'Amazon','03/12/2000'),
					(33,'Facebook','10/10/2010'),
					(34,'Airbnb','02/28/2013'),
					(35,'Apple','12/30/2008'),
					(36,'Netflix','09/20/2015'),
					(37,'Microsoft','02/28/2018'),
					(38,'Boing','10/19/2019'),
					(39,'Endava','01/15/2021'),
					(40,'BP','07/16/2022'),
					(41,'Pinterest','10/15/2003'),
					(42,'Samsung','08/31/2024'),
					(43,'Android','12/28/2021'),
					(44,'Dacia','02/20/2020'),
					(45,'Volkswagen','03/28/2020')
GO
Insert into Clientiii(IdClient,NumeClient,TelefonClient,EmailClient)
			values(46,'Prontu','23-54-76','prontu@gmail.com'),
				(47,'Ghetu','34-76-23','ghetu@gmail.com'),
				(48,'Constu','12-90-78','constu@gmail.com'),
				(49,'Crinj','37-90-45','crinj@gmail.com'),
				(50,'Dolb','90-45-75','dolb@gmail.com'),
				(51,'Bim','56-89-12','bim@gmail.com'),
				(52,'Crotu','10-90-23','crotu@gmail.com'),
				(53,'Forn','78-90-23','forn@gmail.com'),
				(54,'Ghetu','23-90-45','ghetu1@gmail.com'),
				(55,'Vals','34-67-23','vals@gmail.com'),
				(56,'Brim','34-56-78','brim@gmail.com'),
				(57,'Cornescu','90-34-34','cornescu@gmail.com'),
				(58,'Vinu','67-56-78','vinu@gmail.com'),
				(59,'Lebada','78-87-56','lebada@gmail.com'),
				(60,'Grav','11-34-65','grav@gmail.com')
GO
Insert into Angajati(IdAngajati,NumeAngajat,PrenumeAngajat,GenAngajat,TelefonAngajat,DataNastereAngajat,SalariuAngajat,IdElev)
			values(61,'Avut','Ion','B','34-45-23','02/28/2003',6000,1),
				(62,'Caprieru','Ioana','F','87-43-65','12/30/2008',2000,2),
				(63,'Vasilescu','Anton','B','32-87-90','03/12/2000',150,3),
				(64,'Pieptanaru','Ana','F','72-47-53','10/10/2010',10000,4),
				(65,'Andronescu','Nicu','B','10-29-74','02/28/2013',3200,5),
				(66,'Chetrosanu','Catalina','F','02-73-62','12/30/2008',100,6),
				(67,'Codreanu','Iura','B','92-73-51','03-01-2000',230,7),
				(68,'Valingean','Grisa','B','26-94-16','03-01-2003',500,8),
				(69,'Mustata','Irina','F','90-45-75','11-30-2002',750,9),
				(70,'Apa','Nastea','F','34-56-78','09-01-2003',1250,10),
				(71,'Parinte','Carolina','F','67-56-78','11-30-2003',3450,11),
				(72,'Drumbun','Sofica','F','78-87-56','09-01-2002',320,12),
				(73,'Varnov','Mihai','B','11-34-65','02-28-2003',65000,13),
				(74,'Harabara','Edic','B','34-76-23','03-01-2003',34350,14),
				(75,'Idor','Cristi','B','34-76-23','05-30-2003',34000,15)
GO
Insert into PretProiect(IdPretProiect,PretProiect,DataPlata)
				values(76,1200,'03/28/2020'),
					(77,1250,'02/20/2020'),
					(78,2000,'12/28/2021'),
					(79,3200,'08/31/2024'),
					(80,10000,'10/15/2003'),
					(81,1250,'07/16/2022'),
					(82,65000,'01/15/2021'),
					(83,10000,'10/19/2019'),
					(84,2000,'02/28/2018'),
					(85,10000,'12/30/2008'),
					(86,3200,'05-30-2003'),
					(87,10000,'03-01-2003'),
					(88,65000,'09-01-2002'),
					(89,10000,'11-30-2003'),
					(90,1250,'11-30-2002')
GO
Insert into Proiecte(IdProiect,NumeProiect,IdClient,IdPretProiect,IdAngajati)
			values(91,'Tools',46,76,61),
				(92,'App',47,77,62),
				(93,'Web-site',48,78,63),
				(94,'Data-base',49,79,64),
				(95,'Servers',50,80,65),
				(96,'Notebooks',51,81,66),
				(97,'Band-tools',52,82,67),
				(98,'Wifi',53,83,68),
				(99,'Mouse',54,84,69),
				(100,'Digital-Format',55,85,70),
				(101,'Headphhones',56,86,71),
				(102,'Cable',57,87,72),
				(103,'Hdmi',58,88,73),
				(104,'Usb',59,89,74),
				(105,'TV',60,90,75)
GO
Insert into Contracte(IdContract,NumeContract,DataIncheiereContract,IdClient,IdElevi,IdAngajati,IdProiect)
			values(106,'Wi-fi','03/28/2020',46,1,61,91),
				(107,'Web-Site','02/20/2020',47,2,62,92),
				(108,'Servers','12/28/2021',48,3,63,93),
				(109,'Notebooks','08/31/2024',49,4,64,94),
				(110,'Mouses','10/15/2003',50,5,65,95),
				(111,'Wi-fi','07/16/2022',51,6,66,96),
				(112,'Web-Site','12/28/2020',52,7,67,97),
				(113,'Servers','01/15/2021',53,8,68,98),
				(114,'Notebooks','10/19/2019',54,9,69,99),
				(115,'Mouses','02/28/2018',55,10,70,100),
				(116,'Wi-fi','12/30/2018',56,11,71,101),
				(117,'Web-Site','03/23/2020',57,12,72,102),
				(118,'Servers','01/1/2019',58,13,73,103),
				(119,'Notebooks','07/17/2019',59,14,74,104),
				(120,'Mouses','12/20/2019',60,15,75,105)
GO
--Am folosit functia count pentru a arata numarul de elevi
Select COUNT(IdElevi) AS NumarulDeElevi
from EleviIntership
--Am folosit functia max pentru a arata cel mai mare salariu
Select MAX(SalariuAngajat) AS CelMaiMareSalariu
From Angajati
--Am folosit operatourl like pentru arata Angajatii carol nume se incepe cu 'v' si cei in care prenumele lor se contine 'i'
Select NumeAngajat,PrenumeAngajat 
From Angajati 
Where NumeAngajat LIke('V%') and PrenumeAngajat Like('%i%')
--Am afisat proiectele platite pina la '12/30/2008'
Select IdPretProiect,DataPlata
From PretProiect
Where DataPlata >= '12/30/2008' 
--am creat indexu parteneriat
create index Parteneriat
ON Parteneri(DataParteneriat)
--Am fisat parteneri companiei de la data de '12/15/2003'
select DataParteneriat
from  Parteneri
Where DataParteneriat >= '12/15/2003'
--am creat indexu salariu
create index Salariu
ON Angajati(SalariuAngajat)
--Am fisat salariu angajatilor daca >750 - să afișeze bun, <750 - satisfacator si daca = 750 e normal
select SalariuAngajat,
Case
When SalariuAngajat >750 then 'Bun!'
When SalariuAngajat < 750 then 'Satisfacator!'
else  'Normal!'
end as Salariu
from  Angajati
group by SalariuAngajat
GO
--Am creat o tranzactie t1 care adauga o noua coloana in tabel
Begin Transaction t1
Alter table IntershipEndava
Add PretClaculatoare money ;
GO
Commit Transaction t1
GO
select * from IntershipEndava
--Am creat o tranzactie t2 care dubleaza salariul anngajatului care il are de 2000
Begin Transaction t2
Update Angajati
Set SalariuAngajat = SalariuAngajat * 2
Where SalariuAngajat = 2000
Commit Transaction t2
Select * from Angajati
--Am creat o vedere care arata toate denumiriile de commpanie care se incep ccu litera a
GO
Create view v1 
AS 
Select IdParteneriat,NumeParteneriat
From Parteneri  
Where NumeParteneriat LIKE('A%')
Select * From v1
GO
--Am creat o vedere care arata toti angajati nascuti in perioada '12/15/2003' si '09/30/2010'
Create view v2
AS
Select NumeAngajat,DataNastereAngajat
From Angajati
Where DataNastereAngajat between '12/15/2003' and '09/30/2010'
Select * from v2
GO
--Am creat sinonim pentru tabelul EleviIntership
Use Endava
GO
Create synonym elevi for Endava.dbo.EleviIntership
GO
Select * from elevi
GO
--Am creat sinonim pentru tabelul IntershipEndava
Use Endava
GO
Create synonym intership for Endava.dbo.IntershipEndava
GO
--Am creat o procedura care arata numele elevului dupa un anumt id introdus in procedura
Create procedure proc1
AS
DECLARE
        @nume_elev varchar(25)
BEGIN
        SELECT @nume_elev = NumeElevi
        FROM EleviIntership
        WHERE IdElevi = 9
        PRINT @nume_elev
END
EXec proc1
drop procedure proc1
Select * from EleviIntership
GO
--Am modificat procedura asa incit id va fi introdus la executia
ALTER PROCEDURE proc1
(@id_elev int)
AS
DECLARE
        @nume_elev varchar(25)
BEGIN
        SELECT @nume_elev = NumeElevi
        FROM EleviIntership
        WHERE IdElevi = @id_elev
        PRINT @nume_elev
END
EXEC proc1 5
GO
--Am creat o procedura care arata salariul angajatului la moment , il apreciaza si daca e mai mic de mediu il mareste
Create procedure proc2
(@id_angajat int)
AS
	Declare @salar int
Begin 
	Select @salar = SalariuAngajat
	From Angajati
	Where @id_angajat =IdAngajati
	Print 'Salariu angajatului la moment este de ' + CAST(@salar as varchar)
	If @salar > 6000
	Print 'Salariul este mai mare de mediu!'
	Else If @salar < 6000
	Print 'Salariu este mai jos de mediu!'
	Else If @salar = 6000
	Begin
	Print 'Salariu este unul mediu!'
	Update Angajati
	Set SalariuAngajat = SalariuAngajat * 1.1 
	Where @id_angajat = IdAngajati
	End
End
GO
Exec proc2 61
GO
--Am creat o functie scalara care
Use Endava
GO
Create function dbo.func1
(@numarul_de_elevi int)
Returns varchar(100)
AS
Begin
Declare @nr_de_grupe varchar(100)
If @numarul_de_elevi > 16
Set @nr_de_grupe = 'Se va imparti in doua grupe de elevi.'
Else 
Set @nr_de_grupe = 'Va fi o singura grupa de elevi'
Return @nr_de_grupe
End
GO
Print dbo.func1(17)
GO
--Am creat o functie inline care afiseaza date despre clientii 
Create function func2(@id_client as int)
Returns Table
As
Return(Select IdClient , 
		RTRIM(NumeClient) + ' '+ RTRIM(EmailClient ) as NumeEmail,
		TelefonClient 
		from Clientiii 
		Where @id_client = IdClient 
		and NumeClient Like'B%')
GO
Select * from func2(51)
GO
--Am creat o functie multi-instructiune care creeaza un tabel si insereaza date in el
Create function func3()
Returns @prestator Table(
		Id_prestatator int,
		Nume_prestator varchar(25),
		prenume_prestator varchar(30),
		gen_prestator char
		)
AS
Begin
	Insert Into @prestator 
	Select IdAngajati,NumeAngajat,PrenumeAngajat,GenAngajat
	From Angajati
	Where IdAngajati > 67
	Group by IdAngajati , NumeAngajat,PrenumeAngajat ,GenAngajat
Return
End
GO
Select * from func3()
GO
--Am creat un declansator care dupa inserarea, update sau delete va afisa la ecran mesaj si va insera date
Create trigger dbo.tgr1
On Contracte
After Insert ,Update , Delete
AS
Print 'A fost efectuata o inserare , un update sau un delete.'
Insert Into Contracte(IdContract)
values(106)
GO
Select * from Contracte
GO
--Am creat un trigger care verifica ca sa nu fie inserate mai mare ca maxim introdus
Create trigger dbo.tgr2
ON Angajati
For Insert
AS
Declare @Id_max int = 73
If Exists (Select IdAngajati From Angajati Where  IdAngajati > @Id_max)
		Begin
			Print 'Id-ul este mai mare ca cel maxim ' + CAST(@Id_max as varchar)
			ROllback
			End
		Else
		Print 'Inserarea sa efectuat.'
		
GO
Select * from Contracte

