create table Jury
(
    ID number(5) primary key ,
    PresidentName varchar(20)
);
create table Case
(
    CaseID number(5) primary key ,
    CaseDate date default SYSDATE,
    Casetype varchar(50),
    JudgeID  number(5) REFERENCES Jury(ID)
);
create table Prison
(
    ID number(5) primary key ,
    PrisonName varchar(20),
    Location varchar(50)
);
create table Accused
(
    AccusedID number(5) primary key,
    hasRecord varchar(3),
    AccusedName varchar(20),
    BirthDay number(2),
    BirthMonth number(2),
    BirthYear number(4),
    PrisonID number(5) REFERENCES Prison(ID)
);
create table AccusedLawyer
(
    Accusedid number(5) REFERENCES Accused(AccusedID),
    LawyerName varchar(20)
);
create table DecideRelation
(
    Caseid number(5) REFEReNCES Case(CaseID),
    AccusedID number(5) REFERENCES Accused(AccusedID),
    fate varchar(100)
);
create table Victim
(

    VictimID number(5) primary key,
    VictimName varchar(20),
    VictimAge number(3)
);
create table VictimLawyer
(
    Victimid number(5)  REFERENCES Victim(VictimID),
    VictimLawyerName varchar(20)

);
create table filing
(

    caseid number(5) REFERENCES Case(CaseID),
    victimid number(5) REFERENCES Victim(VictimID)

);
create table Witness
(
    WitnessName varchar(20) primary key,
    caseid number(5) REFERENCES Case(CaseID),
    WitnessAge number(3),
    Relation varchar(50)
);


--jury insertion--

insert into Jury (ID ,PresidentName)
values (20221,'hamdy elkady');

insert into Jury ( ID ,PresidentName)
values (20222,'fawzy salah');

insert into Jury ( ID ,PresidentName)
values (20223,'moneer ahmed');

insert into Jury ( ID ,PresidentName)
values (20224,'ahmed refaat');

insert into Jury ( ID ,PresidentName)
values (20225,'ahmed fathy');

insert into Jury ( ID ,PresidentName)
values (20226,'atreby abo elez');

insert into Jury ( ID ,PresidentName)
values (20227,'Ashraf elbarody');

insert into Jury ( ID ,PresidentName)
values (20228,'hanafy nasef');

insert into Jury ( ID ,PresidentName)
values (20229,'maher elbehery');

insert into Jury ( ID ,PresidentName)
values (20210,'mahfooz azam');


--case insertion--
insert into Case (CaseID,CaseDate,Casetype,JudgeID)
values(54171,to_date('1990-12-12', 'yyyy-mm-dd'),'Arson',20221);

insert into Case (CaseID,CaseDate,Casetype,JudgeID)
values(54177,to_date('2020-10-01', 'yyyy-mm-dd'),'Burglary',20222);

insert into Case (CaseID,CaseDate,Casetype,JudgeID)
values(54172,to_date('2019-09-15', 'yyyy-mm-dd'),'Childhood abuse',20223);

insert into Case (CaseID,CaseDate,Casetype,JudgeID)
values(54173,to_date('2002-07-01', 'yyyy-mm-dd'),'Crime abroad',20224);

insert into Case (CaseID,CaseDate,Casetype,JudgeID)
values(54174,to_date('2015-06-01', 'yyyy-mm-dd'),'Fraud',20225);

insert into Case (CaseID,CaseDate,Casetype,JudgeID)
values(54175,to_date('2022-12-01', 'yyyy-mm-dd'),'Murder',20226);


--Prison insertion--
insert into Prison ( ID,PrisonName,Location)
values(2002,'bir alsabe','naser city');

insert into Prison ( ID,PrisonName,Location)
values(2003,'easqalan','elkorba');

insert into Prison ( ID,PrisonName,Location)
values(2004,'elramla','ain shams');

insert into Prison ( ID,PrisonName,Location)
values(2005,'almaskubia','elabasya');

insert into Prison ( ID,PrisonName,Location)
values(2006,'aietiqal ansar','eltagamo3');



--Accused insertion--
insert into Accused(AccusedID,hasRecord,AccusedName,BirthDay,BirthMonth,BirthYear,PrisonID)
values(51478,'yes','alaa',3,7,2000,2003);

insert into Accused(AccusedID,hasRecord,AccusedName,BirthDay,BirthMonth,BirthYear,PrisonID)
values(51479,'No','fama',1,9,1990,2005);

insert into Accused(AccusedID,hasRecord,AccusedName,BirthDay,BirthMonth,BirthYear,PrisonID)
values(51480,'yes','farah',1,7,2002,2002);

insert into Accused(AccusedID,hasRecord,AccusedName,BirthDay,BirthMonth,BirthYear,PrisonID)
values(51481,'No','maya',4,7,2003,2003);

insert into Accused(AccusedID,hasRecord,AccusedName,BirthDay,BirthMonth,BirthYear,PrisonID)
values(51482,'yes','shetaya',3,8,1900,2006);

insert into Accused(AccusedID,hasRecord,AccusedName,BirthDay,BirthMonth,BirthYear,PrisonID)
values(51483,'yes','shawa7a',19,5,2000,2005);



--Accused lawyer--
insert into AccusedLawyer (Accusedid,LawyerName)
values(51478,'salah');

insert into AccusedLawyer (Accusedid,LawyerName)
values(51480,'Marina nashaat');

insert into AccusedLawyer (Accusedid,LawyerName)
values(51483,'hassam');

insert into AccusedLawyer (Accusedid,LawyerName)
values(51482,'Hassan');

insert into AccusedLawyer (Accusedid,LawyerName)
values(51480,'Marina nashaat');

insert into AccusedLawyer (Accusedid,LawyerName)
values(51481,'Abdelrahman');





--Decide Relation--
insert into DecideRelation (Caseid,AccusedID,fate)
values(54171,51478,'Life imprisonment');


insert into DecideRelation (Caseid,AccusedID,fate)
values(54177,51479,'Imprisonment for 5 years');


insert into DecideRelation (Caseid,AccusedID,fate)
values(54172,51480,'Imprisonment for 2 years');


insert into DecideRelation (Caseid,AccusedID,fate)
values(54173,51478,'Imprisonment for a year');


insert into DecideRelation (Caseid,AccusedID,fate)
values(54174,51482,'Execution');


insert into DecideRelation (Caseid,AccusedID,fate)
values(54175,51483,'Execution');


--victim relation--

insert into Victim(VictimID,VictimName,VictimAge)
values(7,'somaya',20);

insert into Victim(VictimID,VictimName,VictimAge)
values(2,'marwa',50);

insert into Victim(VictimID,VictimName,VictimAge)
values(3,'hoda',45);

insert into Victim(VictimID,VictimName,VictimAge)
values(4,'ahmed',35);

insert into Victim(VictimID,VictimName,VictimAge)
values(5,'Hesham',40);

insert into Victim(VictimID,VictimName,VictimAge)
values(6,'fouad',23);



--Victim lawyer--

insert into VictimLawyer(Victimid,VictimLawyerName)
values(7,'ashraf');

insert into VictimLawyer(Victimid,VictimLawyerName)
values(2,'arwa');

insert into VictimLawyer(Victimid,VictimLawyerName)
values(3,'magdy');

insert into VictimLawyer(Victimid,VictimLawyerName)
values(4,'hesen');

insert into VictimLawyer(Victimid,VictimLawyerName)
values(5,'bassant');

insert into VictimLawyer(Victimid,VictimLawyerName)
values(6,'moaaz');




--filing--
insert into filing(caseid,victimid)
values(54171,7);

insert into filing(caseid,victimid)
values(54177,2);

insert into filing(caseid,victimid)
values(54172,3);

insert into filing(caseid,victimid)
values(54173,4);

insert into filing(caseid,victimid)
values(54174,5);

insert into filing(caseid,victimid)
values(54175,6);


--witnesss--

insert into Witness(WitnessName,caseid,WitnessAge,Relation)
values('maged',54171,21,'uncle');

insert into Witness(WitnessName,caseid,WitnessAge,Relation)
values('ayman',54177,45,'father');

insert into Witness(WitnessName,caseid,WitnessAge,Relation)
values('maha',54172,27,'sister');

insert into Witness(WitnessName,caseid,WitnessAge,Relation)
values('mona',54173,26,'sister');

insert into Witness(WitnessName,caseid,WitnessAge,Relation)
values('mahmoud',54174,37,'Cousin');

insert into Witness(WitnessName,caseid,WitnessAge,Relation)
values('Islam',54175,36,'Cousin');
