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

