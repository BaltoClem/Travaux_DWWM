/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     29/01/2020 16:29:48                          */
/*==============================================================*/


drop table if exists CLASSE;

drop table if exists DEFINIR;

drop table if exists ELEVES;

drop table if exists MATIERE;

drop table if exists PROFESSEUR;

drop table if exists SALLE;

/*==============================================================*/
/* Table: CLASSE                                                */
/*==============================================================*/
create table CLASSE
(
   CLASSE_ID            int not null,
   CLASSE_NOM           varchar(50) not null,
   primary key (CLASSE_ID)
);

/*==============================================================*/
/* Table: DEFINIR                                               */
/*==============================================================*/
create table DEFINIR
(
   MAT_ID               int not null,
   CLASSE_ID            int not null,
   NB_HEURES            decimal(2,0),
   primary key (MAT_ID, CLASSE_ID)
);

/*==============================================================*/
/* Table: ELEVES                                                */
/*==============================================================*/
create table ELEVES
(
   ID_ELEVE             int not null,
   MAT_ID               int not null,
   CLASSE_ID            int not null,
   NOM_ELEVE            char(50) not null,
   PRENOM_ELEVE         char(50) not null,
   NOTE                 decimal(2,2),
   primary key (ID_ELEVE)
);

/*==============================================================*/
/* Table: MATIERE                                               */
/*==============================================================*/
create table MATIERE
(
   MAT_ID               int not null,
   PROF_ID              int not null,
   MAT_NOM              varchar(50) not null,
   primary key (MAT_ID)
);

/*==============================================================*/
/* Table: PROFESSEUR                                            */
/*==============================================================*/
create table PROFESSEUR
(
   PROF_ID              int not null,
   PROF_NOM             char(50) not null,
   primary key (PROF_ID)
);

/*==============================================================*/
/* Table: SALLE                                                 */
/*==============================================================*/
create table SALLE
(
   SALLE_ID             int not null,
   SALLE_NUM            varchar(50) not null,
   primary key (SALLE_ID)
);

alter table DEFINIR add constraint FK_DEFINIR foreign key (MAT_ID)
      references MATIERE (MAT_ID) on delete restrict on update restrict;

alter table DEFINIR add constraint FK_DEFINIR2 foreign key (CLASSE_ID)
      references CLASSE (CLASSE_ID) on delete restrict on update restrict;

alter table ELEVES add constraint FK_AVOIR foreign key (MAT_ID)
      references MATIERE (MAT_ID) on delete restrict on update restrict;

alter table ELEVES add constraint FK_REGROUPER foreign key (CLASSE_ID)
      references CLASSE (CLASSE_ID) on delete restrict on update restrict;

alter table MATIERE add constraint FK_ENSEIGNER foreign key (PROF_ID)
      references PROFESSEUR (PROF_ID) on delete restrict on update restrict;

