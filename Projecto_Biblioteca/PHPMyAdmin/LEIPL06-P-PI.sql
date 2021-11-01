drop table if exists PublicacaoArea ;
drop table if exists PeriodoSuspensao ;
drop table if exists Pedido ;
drop table if exists PubAutor ;
drop table if exists PalavraChaveCap ;
drop table if exists PalavraChaveArtigo ;
drop table if exists PalavraChavePub ;
drop table if exists ListaLivroEd ;
drop table if exists Publicacao ;
drop table if exists Periodico ;
drop table if exists Revista ;
drop table if exists Jornal ;
drop table if exists Livro ;
drop table if exists Editora ;
drop table if exists PeriodicoEdicao ;
drop table if exists Autor ;
drop table if exists Capitulo ;
drop table if exists Artigo ;
drop table if exists Capa ;
drop table if exists AreaTematica ;
drop table if exists PalavraChave ;
drop table if exists Monografia ;
drop table if exists Dissertacao ;
drop table if exists RelatoriosTecnicos ;
drop table if exists TextosPedagocicos ;
drop table if exists Tema ;
drop table if exists LivroEdicao ;
drop table if exists Relevancia ;
drop table if exists Tipo ;
drop table if exists Periodicidade ;
drop table if exists Feeds ;
drop table if exists Utente ;
drop table if exists Emprestimo ;
drop table if exists Reserva ;
drop table if exists Periodo ;
drop table if exists Piso ;
drop table if exists Armario ;
drop table if exists Prateleira ;
drop table if exists EstadoDeConservacao ;
drop table if exists ListaDeLeitura ;
drop table if exists Configuracoes ;
drop table if exists PublicacaoEmprestavel ;
drop table if exists RFID ;
drop table if exists Especialista ;
drop table if exists TipoPublicacao ;
 
create table PublicacaoArea
(
   Publicacao_PubID_   Integer   not null,
   AreaTematica_AreaTemID_   Integer   not null,
   Relevancia_RelID   Integer   not null,
 
   constraint PK_PublicacaoArea primary key (Publicacao_PubID_, AreaTematica_AreaTemID_)
);
 
create table PeriodoSuspensao
(
   Utente_NumUtente_   Integer   not null,
   Periodo_PeriodoID_   Integer   not null,
   NumSuspensao   Integer   not null,
 
   constraint PK_PeriodoSuspensao primary key (Utente_NumUtente_, Periodo_PeriodoID_, NumSuspensao)
);
 
create table Pedido
(
   Utente_NumUtente_   Integer   not null,
   PublicacaoEmprestavel_Publicacao_PubID_   Integer   not null,
 
   constraint PK_Pedido primary key (Utente_NumUtente_, PublicacaoEmprestavel_Publicacao_PubID_)
);
 
create table PubAutor
(
   Publicacao_PubID_   Integer   not null,
   Autor_AutorID_   Integer   not null,
 
   constraint PK_PubAutor primary key (Publicacao_PubID_, Autor_AutorID_)
);
 
create table PalavraChaveCap
(
   Capitulo_Livro_Publicacao_PubID_   Integer   not null,
   Capitulo_NumCap_   Integer   not null,
   PalavraChave_PalavraChaveID_   Integer   not null,
 
   constraint PK_PalavraChaveCap primary key (Capitulo_Livro_Publicacao_PubID_, Capitulo_NumCap_, PalavraChave_PalavraChaveID_)
);
 
create table PalavraChaveArtigo
(
   Artigo_Periodico_Publicacao_PubID_   Integer   not null,
   Artigo_ArtigoID_   Integer   not null,
   PalavraChave_PalavraChaveID_   Integer   not null,
 
   constraint PK_PalavraChaveArtigo primary key (Artigo_Periodico_Publicacao_PubID_, Artigo_ArtigoID_, PalavraChave_PalavraChaveID_)
);
 
create table PalavraChavePub
(
   Publicacao_PubID_   Integer   not null,
   PalavraChave_PalavraChaveID_   Integer   not null,
 
   constraint PK_PalavraChavePub primary key (Publicacao_PubID_, PalavraChave_PalavraChaveID_)
);
 
create table ListaLivroEd
(
   LivroEdicao_Livro_Publicacao_PubID_   Integer   not null,
   LivroEdicao_NumEdicao_   Integer   not null,
   ListaDeLeitura_ListaDeLeitura_ID_   integer   not null,
 
   constraint PK_ListaLivroEd primary key (LivroEdicao_Livro_Publicacao_PubID_, LivroEdicao_NumEdicao_, ListaDeLeitura_ListaDeLeitura_ID_)
);
 
create table Publicacao
(
   Editora_EditID   Integer   not null,
   Capa_CapaID   Integer   not null,
   Prateleira_Armario_Piso_PisoID   Integer   not null,
   Prateleira_Armario_ArmarioID   Integer   not null,
   Prateleira_PrateleiraID   Integer   not null,
   TipoPublicacao_TipoPubID   Integer   not null,
   PubID   Integer   not null,
   Titulo   varchar(100)   null,
   Subtitulo   varchar(100)   null,
   Titulo_Abreviado   varchar(50)   null,
   Descricao   text   null,
   NumPaginas   Integer   null,
   DataPub   date   null,
   NumEmp   Integer   null,
   DataAqui   date   null,
   Emprestavel   bit   null,
 
   constraint PK_Publicacao primary key (PubID)
);
 
create table Periodico
(
   Publicacao_PubID   Integer   not null,
   Periodicidade_PeriodicidadeID   Integer   not null,
   ISSN   Integer   null,
 
   constraint PK_Periodico primary key (Publicacao_PubID)
);
 
create table Revista
(
   Periodico_Publicacao_PubID   Integer   not null,
   NumBloqueadas   Integer   null,
 
   constraint PK_Revista primary key (Periodico_Publicacao_PubID)
);
 
create table Jornal
(
   Periodico_Publicacao_PubID   Integer   not null,
 
   constraint PK_Jornal primary key (Periodico_Publicacao_PubID)
);
 
create table Livro
(
   Publicacao_PubID   Integer   not null,
 
   constraint PK_Livro primary key (Publicacao_PubID)
);
 
create table Editora
(
   EditID   Integer   not null,
   Nome   varchar(100)   null,
 
   constraint PK_Editora primary key (EditID)
);
 
create table PeriodicoEdicao
(
   Periodico_Publicacao_PubID   Integer   not null,
   EstadoDeConservacao_EstadoID   Integer   not null,
   RFID_NumRFID   Integer   not null,
   NumEdicao   Integer   not null,
 
   constraint PK_PeriodicoEdicao primary key (Periodico_Publicacao_PubID, NumEdicao)
);
 
create table Autor
(
   AutorID   Integer   not null,
   Nome   varchar(100)   null,
 
   constraint PK_Autor primary key (AutorID)
);
 
create table Capitulo
(
   Livro_Publicacao_PubID   Integer   not null,
   AreaTematica_AreaTemID   Integer   not null,
   NumCap   Integer   not null,
 
   constraint PK_Capitulo primary key (Livro_Publicacao_PubID, NumCap)
);
 
create table Artigo
(
   Periodico_Publicacao_PubID   Integer   not null,
   AreaTematica_AreaTemID   Integer   not null,
   ArtigoID   Integer   not null,
 
   constraint PK_Artigo primary key (Periodico_Publicacao_PubID, ArtigoID)
);
 
create table Capa
(
   Miniatura   varchar(255)   null,
   Ampliada   varchar(255)   null,
   CapaID   Integer   not null,
 
   constraint PK_Capa primary key (CapaID)
);
 
create table AreaTematica
(
   AreaTematica_AreaTemID   Integer   null,
   AreaTemID   Integer   not null,
   Nome   varchar(50)   null,
 
   constraint PK_AreaTematica primary key (AreaTemID)
);
 
create table PalavraChave
(
   PalavraChaveID   Integer   not null,
   PalavraChave   text   null,
 
   constraint PK_PalavraChave primary key (PalavraChaveID)
);
 
create table Monografia
(
   Publicacao_PubID   Integer   not null,
   EstadoDeConservacao_EstadoID   Integer   not null,
   RFID_NumRFID   Integer   not null,
 
   constraint PK_Monografia primary key (Publicacao_PubID)
);
 
create table Dissertacao
(
   Monografia_Publicacao_PubID   Integer   not null,
   Tema_TemaID   Integer   not null,
   Tipo_TipoID   Integer   not null,
 
   constraint PK_Dissertacao primary key (Monografia_Publicacao_PubID)
);
 
create table RelatoriosTecnicos
(
   Monografia_Publicacao_PubID   Integer   not null,
   Tema_TemaID   Integer   not null,
 
   constraint PK_RelatoriosTecnicos primary key (Monografia_Publicacao_PubID)
);
 
create table TextosPedagocicos
(
   Monografia_Publicacao_PubID   Integer   not null,
   Tema_TemaID   Integer   not null,
 
   constraint PK_TextosPedagocicos primary key (Monografia_Publicacao_PubID)
);
 
create table Tema
(
   TemaID   Integer   not null,
   Tema   text   null,
 
   constraint PK_Tema primary key (TemaID)
);
 
create table LivroEdicao
(
   Livro_Publicacao_PubID   Integer   not null,
   EstadoDeConservacao_EstadoID   Integer   not null,
   RFID_NumRFID   Integer   not null,
   ISBN   Integer   null,
   NumEdicao   Integer   not null,
 
   constraint PK_LivroEdicao primary key (Livro_Publicacao_PubID, NumEdicao)
);
 
create table Relevancia
(
   RelID   Integer   not null,
 
   constraint PK_Relevancia primary key (RelID)
);
 
create table Tipo
(
   TipoID   Integer   not null,
   Tipo   text   null,
 
   constraint PK_Tipo primary key (TipoID)
);
 
create table Periodicidade
(
   PeriodicidadeID   Integer   not null,
 
   constraint PK_Periodicidade primary key (PeriodicidadeID)
);
 
create table Feeds
(
   Editora_EditID   Integer   not null,
   FeedID   Integer   not null,
 
   constraint PK_Feeds primary key (FeedID)
);
 
create table Utente
(
   NumUtente   Integer   not null,
   Nome   varchar(100)   null,
   NumId   Integer   null,
   Morada   text   null,
   Telefone   Integer   null,
   Email   varchar(100)   null,
 
   constraint PK_Utente primary key (NumUtente)
);
 
create table Emprestimo
(
   Pedido_Utente_NumUtente_   Integer   not null,
   Pedido_PublicacaoEmprestavel_Publicacao_PubID_   Integer   not null,
   DataAquisicao   date   null,
   DataLimite   date   null,
   MultaAPagar   float   null,
   NumProlongamentos   Integer   null,
   Extravio   bit   null,
 
   constraint PK_Emprestimo primary key (Pedido_Utente_NumUtente_, Pedido_PublicacaoEmprestavel_Publicacao_PubID_)
);
 
create table Reserva
(
   Pedido_Utente_NumUtente_   Integer   not null,
   Pedido_PublicacaoEmprestavel_Publicacao_PubID_   Integer   not null,
   ReservaNum   Integer   null,
 
   constraint PK_Reserva primary key (Pedido_Utente_NumUtente_, Pedido_PublicacaoEmprestavel_Publicacao_PubID_)
);
 
create table Periodo
(
   DataInicio   date   null,
   DataFim   date   null,
   PeriodoID   Integer   not null,
 
   constraint PK_Periodo primary key (PeriodoID)
);
 
create table Piso
(
   PisoID   Integer   not null,
 
   constraint PK_Piso primary key (PisoID)
);
 
create table Armario
(
   Piso_PisoID   Integer   not null,
   Capacidade   Integer   null,
   ArmarioID   Integer   not null,
 
   constraint PK_Armario primary key (Piso_PisoID, ArmarioID)
);
 
create table Prateleira
(
   AreaTematica_AreaTemID   Integer   not null,
   Armario_Piso_PisoID   Integer   not null,
   Armario_ArmarioID   Integer   not null,
   Capacidade   Integer   null,
   PrateleiraID   Integer   not null,
 
   constraint PK_Prateleira primary key (Armario_Piso_PisoID, Armario_ArmarioID, PrateleiraID)
);
 
create table EstadoDeConservacao
(
   EstadoID   Integer   not null,
 
   constraint PK_EstadoDeConservacao primary key (EstadoID)
);
 
create table ListaDeLeitura
(
   AreaTematica_AreaTemID   Integer   null,
   Utente_NumUtente   Integer   not null,
   ListaDeLeitura_ID   integer   not null,
   Nome   varchar(100)   null,
   Criterio   varchar(100)   null,
 
   constraint PK_ListaDeLeitura primary key (ListaDeLeitura_ID)
);
 
create table Configuracoes
(
   Configuracoes_ID   integer   not null,
   ValorMulta   float   null,
   NumProlongamentosMax   Integer   null,
 
   constraint PK_Configuracoes primary key (Configuracoes_ID)
);
 
create table PublicacaoEmprestavel
(
   Publicacao_PubID   Integer   not null,
   ValorExtravio   Integer   null,
   Requisitado   bit   null,
 
   constraint PK_PublicacaoEmprestavel primary key (Publicacao_PubID)
);
 
create table RFID
(
   PeriodicoEdicao_Periodico_Publicacao_PubID   Integer   not null,
   PeriodicoEdicao_NumEdicao   Integer   not null,
   Monografia_Publicacao_PubID   Integer   not null,
   LivroEdicao_Livro_Publicacao_PubID   Integer   not null,
   LivroEdicao_NumEdicao   Integer   not null,
   NumRFID   Integer   not null,
   Usado   bit   null,
 
   constraint PK_RFID primary key (NumRFID)
);
 
create table Especialista
(
   Utente_NumUtente   Integer   not null,
 
   constraint PK_Especialista primary key (Utente_NumUtente)
);
 
create table TipoPublicacao
(
   TipoPubID   Integer   not null,
   Tipo   varchar(100)   null,
 
   constraint PK_TipoPublicacao primary key (TipoPubID)
);
 
alter table PublicacaoArea
   add constraint FK_Publicacao_PublicacaoArea_AreaTematica_ foreign key (Publicacao_PubID_)
   references Publicacao(PubID)
   on delete cascade
   on update cascade
; 
alter table PublicacaoArea
   add constraint FK_AreaTematica_PublicacaoArea_Publicacao_ foreign key (AreaTematica_AreaTemID_)
   references AreaTematica(AreaTemID)
   on delete cascade
   on update cascade
; 
alter table PublicacaoArea
   add constraint FK_PublicacaoArea_noname_Relevancia foreign key (Relevancia_RelID)
   references Relevancia(RelID)
   on delete restrict
   on update cascade
;
 
alter table PeriodoSuspensao
   add constraint FK_Utente_PeriodoSuspensao_Periodo_ foreign key (Utente_NumUtente_)
   references Utente(NumUtente)
   on delete cascade
   on update cascade
; 
alter table PeriodoSuspensao
   add constraint FK_Periodo_PeriodoSuspensao_Utente_ foreign key (Periodo_PeriodoID_)
   references Periodo(PeriodoID)
   on delete cascade
   on update cascade
;
 
alter table Pedido
   add constraint FK_Utente_Pedido_PublicacaoEmprestavel_ foreign key (Utente_NumUtente_)
   references Utente(NumUtente)
   on delete cascade
   on update cascade
; 
alter table Pedido
   add constraint FK_PublicacaoEmprestavel_Pedido_Utente_ foreign key (PublicacaoEmprestavel_Publicacao_PubID_)
   references PublicacaoEmprestavel(Publicacao_PubID)
   on delete cascade
   on update cascade
;
 
alter table PubAutor
   add constraint FK_Publicacao_PubAutor_Autor_ foreign key (Publicacao_PubID_)
   references Publicacao(PubID)
   on delete cascade
   on update cascade
; 
alter table PubAutor
   add constraint FK_Autor_PubAutor_Publicacao_ foreign key (Autor_AutorID_)
   references Autor(AutorID)
   on delete cascade
   on update cascade
;
 
alter table PalavraChaveCap
   add constraint FK_Capitulo_PalavraChaveCap_PalavraChave_ foreign key (Capitulo_Livro_Publicacao_PubID_, Capitulo_NumCap_)
   references Capitulo(Livro_Publicacao_PubID, NumCap)
   on delete cascade
   on update cascade
; 
alter table PalavraChaveCap
   add constraint FK_PalavraChave_PalavraChaveCap_Capitulo_ foreign key (PalavraChave_PalavraChaveID_)
   references PalavraChave(PalavraChaveID)
   on delete cascade
   on update cascade
;
 
alter table PalavraChaveArtigo
   add constraint FK_Artigo_PalavraChaveArtigo_PalavraChave_ foreign key (Artigo_Periodico_Publicacao_PubID_, Artigo_ArtigoID_)
   references Artigo(Periodico_Publicacao_PubID, ArtigoID)
   on delete cascade
   on update cascade
; 
alter table PalavraChaveArtigo
   add constraint FK_PalavraChave_PalavraChaveArtigo_Artigo_ foreign key (PalavraChave_PalavraChaveID_)
   references PalavraChave(PalavraChaveID)
   on delete cascade
   on update cascade
;
 
alter table PalavraChavePub
   add constraint FK_Publicacao_PalavraChavePub_PalavraChave_ foreign key (Publicacao_PubID_)
   references Publicacao(PubID)
   on delete cascade
   on update cascade
; 
alter table PalavraChavePub
   add constraint FK_PalavraChave_PalavraChavePub_Publicacao_ foreign key (PalavraChave_PalavraChaveID_)
   references PalavraChave(PalavraChaveID)
   on delete cascade
   on update cascade
;
 
alter table ListaLivroEd
   add constraint FK_LivroEdicao_ListaLivroEd_ListaDeLeitura_ foreign key (LivroEdicao_Livro_Publicacao_PubID_, LivroEdicao_NumEdicao_)
   references LivroEdicao(Livro_Publicacao_PubID, NumEdicao)
   on delete cascade
   on update cascade
; 
alter table ListaLivroEd
   add constraint FK_ListaDeLeitura_ListaLivroEd_LivroEdicao_ foreign key (ListaDeLeitura_ListaDeLeitura_ID_)
   references ListaDeLeitura(ListaDeLeitura_ID)
   on delete cascade
   on update cascade
;
 
alter table Publicacao
   add constraint FK_Publicacao_noname_Editora foreign key (Editora_EditID)
   references Editora(EditID)
   on delete restrict
   on update cascade
; 
alter table Publicacao
   add constraint FK_Publicacao_noname_Capa foreign key (Capa_CapaID)
   references Capa(CapaID)
   on delete restrict
   on update cascade
; 
alter table Publicacao
   add constraint FK_Publicacao_noname_Prateleira foreign key (Prateleira_Armario_Piso_PisoID, Prateleira_Armario_ArmarioID, Prateleira_PrateleiraID)
   references Prateleira(Armario_Piso_PisoID, Armario_ArmarioID, PrateleiraID)
   on delete restrict
   on update cascade
; 
alter table Publicacao
   add constraint FK_Publicacao_noname_TipoPublicacao foreign key (TipoPublicacao_TipoPubID)
   references TipoPublicacao(TipoPubID)
   on delete restrict
   on update cascade
;
 
alter table Periodico
   add constraint FK_Periodico_Publicacao foreign key (Publicacao_PubID)
   references Publicacao(PubID)
   on delete cascade
   on update cascade
; 
alter table Periodico
   add constraint FK_Periodico_PeriodicidadePeriodico_Periodicidade foreign key (Periodicidade_PeriodicidadeID)
   references Periodicidade(PeriodicidadeID)
   on delete restrict
   on update cascade
;
 
alter table Revista
   add constraint FK_Revista_Periodico foreign key (Periodico_Publicacao_PubID)
   references Periodico(Publicacao_PubID)
   on delete cascade
   on update cascade
;
 
alter table Jornal
   add constraint FK_Jornal_Periodico foreign key (Periodico_Publicacao_PubID)
   references Periodico(Publicacao_PubID)
   on delete cascade
   on update cascade
;
 
alter table Livro
   add constraint FK_Livro_Publicacao foreign key (Publicacao_PubID)
   references Publicacao(PubID)
   on delete cascade
   on update cascade
;
 
 
alter table PeriodicoEdicao
   add constraint FK_PeriodicoEdicao_noname_Periodico foreign key (Periodico_Publicacao_PubID)
   references Periodico(Publicacao_PubID)
   on delete cascade
   on update cascade
; 
alter table PeriodicoEdicao
   add constraint FK_PeriodicoEdicao_noname_EstadoDeConservacao foreign key (EstadoDeConservacao_EstadoID)
   references EstadoDeConservacao(EstadoID)
   on delete restrict
   on update cascade
; 
alter table PeriodicoEdicao
   add constraint FK_PeriodicoEdicao_noname_RFID foreign key (RFID_NumRFID)
   references RFID(NumRFID)
   on delete restrict
   on update cascade
;
 
 
alter table Capitulo
   add constraint FK_Capitulo_noname_Livro foreign key (Livro_Publicacao_PubID)
   references Livro(Publicacao_PubID)
   on delete cascade
   on update cascade
; 
alter table Capitulo
   add constraint FK_Capitulo_noname_AreaTematica foreign key (AreaTematica_AreaTemID)
   references AreaTematica(AreaTemID)
   on delete restrict
   on update cascade
;
 
alter table Artigo
   add constraint FK_Artigo_noname_Periodico foreign key (Periodico_Publicacao_PubID)
   references Periodico(Publicacao_PubID)
   on delete cascade
   on update cascade
; 
alter table Artigo
   add constraint FK_Artigo_noname_AreaTematica foreign key (AreaTematica_AreaTemID)
   references AreaTematica(AreaTemID)
   on delete restrict
   on update cascade
;
 
 
alter table AreaTematica
   add constraint FK_AreaTematica_Contem_AreaTematica foreign key (AreaTematica_AreaTemID)
   references AreaTematica(AreaTemID)
   on delete set null
   on update cascade
;
 
 
alter table Monografia
   add constraint FK_Monografia_Publicacao foreign key (Publicacao_PubID)
   references Publicacao(PubID)
   on delete cascade
   on update cascade
; 
alter table Monografia
   add constraint FK_Monografia_noname_EstadoDeConservacao foreign key (EstadoDeConservacao_EstadoID)
   references EstadoDeConservacao(EstadoID)
   on delete restrict
   on update cascade
; 
alter table Monografia
   add constraint FK_Monografia_noname_RFID foreign key (RFID_NumRFID)
   references RFID(NumRFID)
   on delete restrict
   on update cascade
;
 
alter table Dissertacao
   add constraint FK_Dissertacao_Monografia foreign key (Monografia_Publicacao_PubID)
   references Monografia(Publicacao_PubID)
   on delete cascade
   on update cascade
; 
alter table Dissertacao
   add constraint FK_Dissertacao_noname_Tema foreign key (Tema_TemaID)
   references Tema(TemaID)
   on delete restrict
   on update cascade
; 
alter table Dissertacao
   add constraint FK_Dissertacao_noname_Tipo foreign key (Tipo_TipoID)
   references Tipo(TipoID)
   on delete restrict
   on update cascade
;
 
alter table RelatoriosTecnicos
   add constraint FK_RelatoriosTecnicos_Monografia foreign key (Monografia_Publicacao_PubID)
   references Monografia(Publicacao_PubID)
   on delete cascade
   on update cascade
; 
alter table RelatoriosTecnicos
   add constraint FK_RelatoriosTecnicos_noname_Tema foreign key (Tema_TemaID)
   references Tema(TemaID)
   on delete restrict
   on update cascade
;
 
alter table TextosPedagocicos
   add constraint FK_TextosPedagocicos_Monografia foreign key (Monografia_Publicacao_PubID)
   references Monografia(Publicacao_PubID)
   on delete cascade
   on update cascade
; 
alter table TextosPedagocicos
   add constraint FK_TextosPedagocicos_noname_Tema foreign key (Tema_TemaID)
   references Tema(TemaID)
   on delete restrict
   on update cascade
;
 
 
alter table LivroEdicao
   add constraint FK_LivroEdicao_noname_Livro foreign key (Livro_Publicacao_PubID)
   references Livro(Publicacao_PubID)
   on delete cascade
   on update cascade
; 
alter table LivroEdicao
   add constraint FK_LivroEdicao_noname_EstadoDeConservacao foreign key (EstadoDeConservacao_EstadoID)
   references EstadoDeConservacao(EstadoID)
   on delete restrict
   on update cascade
; 
alter table LivroEdicao
   add constraint FK_LivroEdicao_noname_RFID foreign key (RFID_NumRFID)
   references RFID(NumRFID)
   on delete restrict
   on update cascade
;
 
 
 
 
alter table Feeds
   add constraint FK_Feeds_noname_Editora foreign key (Editora_EditID)
   references Editora(EditID)
   on delete restrict
   on update cascade
;
 
 
alter table Emprestimo
   add constraint FK_Emprestimo_Pedido foreign key (Pedido_Utente_NumUtente_, Pedido_PublicacaoEmprestavel_Publicacao_PubID_)
   references Pedido(Utente_NumUtente_, PublicacaoEmprestavel_Publicacao_PubID_)
   on delete cascade
   on update cascade
;
 
alter table Reserva
   add constraint FK_Reserva_Pedido foreign key (Pedido_Utente_NumUtente_, Pedido_PublicacaoEmprestavel_Publicacao_PubID_)
   references Pedido(Utente_NumUtente_, PublicacaoEmprestavel_Publicacao_PubID_)
   on delete cascade
   on update cascade
;
 
 
 
alter table Armario
   add constraint FK_Armario_noname_Piso foreign key (Piso_PisoID)
   references Piso(PisoID)
   on delete cascade
   on update cascade
;
 
alter table Prateleira
   add constraint FK_Prateleira_noname_AreaTematica foreign key (AreaTematica_AreaTemID)
   references AreaTematica(AreaTemID)
   on delete restrict
   on update cascade
; 
alter table Prateleira
   add constraint FK_Prateleira_noname_Armario foreign key (Armario_Piso_PisoID, Armario_ArmarioID)
   references Armario(Piso_PisoID, ArmarioID)
   on delete cascade
   on update cascade
;
 
 
alter table ListaDeLeitura
   add constraint FK_ListaDeLeitura_noname_AreaTematica foreign key (AreaTematica_AreaTemID)
   references AreaTematica(AreaTemID)
   on delete set null
   on update cascade
; 
alter table ListaDeLeitura
   add constraint FK_ListaDeLeitura_noname_Utente foreign key (Utente_NumUtente)
   references Utente(NumUtente)
   on delete restrict
   on update cascade
;
 
 
alter table PublicacaoEmprestavel
   add constraint FK_PublicacaoEmprestavel_Publicacao foreign key (Publicacao_PubID)
   references Publicacao(PubID)
   on delete cascade
   on update cascade
;
 
alter table RFID
   add constraint FK_RFID_noname_PeriodicoEdicao foreign key (PeriodicoEdicao_Periodico_Publicacao_PubID, PeriodicoEdicao_NumEdicao)
   references PeriodicoEdicao(Periodico_Publicacao_PubID, NumEdicao)
   on delete restrict
   on update cascade
; 
alter table RFID
   add constraint FK_RFID_noname_Monografia foreign key (Monografia_Publicacao_PubID)
   references Monografia(Publicacao_PubID)
   on delete restrict
   on update cascade
; 
alter table RFID
   add constraint FK_RFID_noname_LivroEdicao foreign key (LivroEdicao_Livro_Publicacao_PubID, LivroEdicao_NumEdicao)
   references LivroEdicao(Livro_Publicacao_PubID, NumEdicao)
   on delete restrict
   on update cascade
;
 
alter table Especialista
   add constraint FK_Especialista_Utente foreign key (Utente_NumUtente)
   references Utente(NumUtente)
   on delete cascade
   on update cascade
;
 
 
