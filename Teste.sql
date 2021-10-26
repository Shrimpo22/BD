drop table if exists Pub ;
drop table if exists Livro ;
drop table if exists Edicao ;
drop table if exists Piso ;
drop table if exists Armario ;
drop table if exists Prateleira ;
 
create table Pub
(
   AID   Integer   not null,
 
   constraint PK_Pub primary key (AID)
);
 
create table Livro
(
   Pub_AID   Integer   not null,
 
   constraint PK_Livro primary key (Pub_AID)
);
 
create table Edicao
(
   Livro_Pub_AID   Integer   not null,
   Prateleira_Armario_Piso_PisoID   Integer   not null,
   Prateleira_Armario_ArmarioId   Integer   not null,
   Prateleira_Prateleira_ID   integer   not null,
   Edicao_ID   integer   not null,
 
   constraint PK_Edicao primary key (Livro_Pub_AID, Edicao_ID)
);
 
create table Piso
(
   PisoID   Integer   not null,
 
   constraint PK_Piso primary key (PisoID)
);
 
create table Armario
(
   Piso_PisoID   Integer   not null,
   ArmarioId   Integer   not null,
 
   constraint PK_Armario primary key (Piso_PisoID, ArmarioId)
);
 
create table Prateleira
(
   Armario_Piso_PisoID   Integer   not null,
   Armario_ArmarioId   Integer   not null,
   Prateleira_ID   integer   not null,
 
   constraint PK_Prateleira primary key (Armario_Piso_PisoID, Armario_ArmarioId, Prateleira_ID)
);
 
 
alter table Livro
   add constraint FK_Livro_Pub foreign key (Pub_AID)
   references Pub(AID)
   on delete cascade
   on update cascade
;
 
alter table Edicao
   add constraint FK_Edicao_noname_Livro foreign key (Livro_Pub_AID)
   references Livro(Pub_AID)
   on delete cascade
   on update cascade
; 
alter table Edicao
   add constraint FK_Edicao_noname_Prateleira foreign key (Prateleira_Armario_Piso_PisoID, Prateleira_Armario_ArmarioId, Prateleira_Prateleira_ID)
   references Prateleira(Armario_Piso_PisoID, Armario_ArmarioId, Prateleira_ID)
   on delete restrict
   on update cascade
;
 
 
alter table Armario
   add constraint FK_Armario_noname_Piso foreign key (Piso_PisoID)
   references Piso(PisoID)
   on delete cascade
   on update cascade
;
 
alter table Prateleira
   add constraint FK_Prateleira_noname_Armario foreign key (Armario_Piso_PisoID, Armario_ArmarioId)
   references Armario(Piso_PisoID, ArmarioId)
   on delete cascade
   on update cascade
;
 
