/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     31/01/2020 10:39:53                          */
/*==============================================================*/


drop table if exists AFFECTER;

drop table if exists CONCURRENTS;

drop table if exists DEPENDRE_DE;

drop table if exists DISCIPLINES;

drop table if exists EPREUVES;

drop table if exists PARTICIPER;

drop table if exists PAYS;

drop table if exists PRATIQUER;

drop table if exists RESPONSABLES;

drop table if exists ROLES;

drop table if exists STATIONS;

/*==============================================================*/
/* Table: AFFECTER                                              */
/*==============================================================*/
create table AFFECTER
(
   EPR_ID               int not null,
   RESP_ID              int not null,
   primary key (EPR_ID, RESP_ID)
);

/*==============================================================*/
/* Table: CONCURRENTS                                           */
/*==============================================================*/
create table CONCURRENTS
(
   CONCU_ID             int not null,
   PAYS_ID              int not null,
   CONCU_PAYS           varchar(50) not null,
   CONCU_PLACE          int not null,
   CONCU_MED            varchar(20) not null,
   CONCU_SEXE           char(1) not null,
   CONCU_NUM_INSC       varchar(50) not null,
   CONCU_NOM            varchar(50) not null,
   CONCU_PRENOM         varchar(50) not null,
   CONCU_DATENAISS      date not null,
   CONCU_ADRESSE        varchar(100) not null,
   primary key (CONCU_ID)
);

/*==============================================================*/
/* Table: DEPENDRE_DE                                           */
/*==============================================================*/
create table DEPENDRE_DE
(
   DISC_ID              int not null,
   RESP_ID              int not null,
   primary key (DISC_ID, RESP_ID)
);

/*==============================================================*/
/* Table: DISCIPLINES                                           */
/*==============================================================*/
create table DISCIPLINES
(
   DISC_ID              int not null,
   DISC_NOM             varchar(50) not null,
   primary key (DISC_ID)
);

/*==============================================================*/
/* Table: EPREUVES                                              */
/*==============================================================*/
create table EPREUVES
(
   EPR_ID               int not null,
   STATION_ID           int not null,
   DISC_ID              int not null,
   EPR_RESP             varchar(50) not null,
   EPR_CODE             varchar(50) not null,
   EPR_MANCHE           int,
   EPR_TEMPS            time,
   EPR_POINTS           decimal(6,3),
   EPR_DATES            date,
   EPR_TYPE             varchar(50),
   primary key (EPR_ID)
);

/*==============================================================*/
/* Table: PARTICIPER                                            */
/*==============================================================*/
create table PARTICIPER
(
   CONCU_ID             int not null,
   EPR_ID               int not null,
   CONCU_DOSS           varchar(50),
   CONCU_POINTS         decimal(6,3),
   CONCU_TEMPS          time,
   primary key (CONCU_ID, EPR_ID)
);

/*==============================================================*/
/* Table: PAYS                                                  */
/*==============================================================*/
create table PAYS
(
   PAYS_ID              int not null,
   PAYS_NOM             varchar(3) not null,
   primary key (PAYS_ID)
);

/*==============================================================*/
/* Table: PRATIQUER                                             */
/*==============================================================*/
create table PRATIQUER
(
   CONCU_ID             int not null,
   DISC_ID              int not null,
   primary key (CONCU_ID, DISC_ID)
);

/*==============================================================*/
/* Table: RESPONSABLES                                          */
/*==============================================================*/
create table RESPONSABLES
(
   RESP_ID              int not null,
   RESP_NUM_MAT         varchar(50) not null,
   RESP_NOM             varchar(50) not null,
   RESP_PRENOM          varchar(50) not null,
   RESP_ADR             varchar(100) not null,
   RESP_TITRE           varchar(50),
   RESP_SUP_ID          int,
   primary key (RESP_ID)
);

/*==============================================================*/
/* Table: ROLES                                                 */
/*==============================================================*/
create table ROLES
(
   ROLE_ID              int not null,
   RESP_ID              int not null,
   ROLE_NOM             varchar(50) not null,
   primary key (ROLE_ID)
);

/*==============================================================*/
/* Table: STATIONS                                              */
/*==============================================================*/
create table STATIONS
(
   STATION_ID           int not null,
   STATION_NOM          varchar(50) not null,
   STATION_REGION       varchar(50) not null,
   STATION_ALT          decimal(6,3) not null,
   primary key (STATION_ID)
);

alter table AFFECTER add constraint FK_AFFECTER foreign key (EPR_ID)
      references EPREUVES (EPR_ID) on delete restrict on update restrict;

alter table AFFECTER add constraint FK_AFFECTER2 foreign key (RESP_ID)
      references RESPONSABLES (RESP_ID) on delete restrict on update restrict;

alter table CONCURRENTS add constraint FK_REPRESENTER foreign key (PAYS_ID)
      references PAYS (PAYS_ID) on delete restrict on update restrict;

alter table DEPENDRE_DE add constraint FK_DEPENDRE_DE foreign key (DISC_ID)
      references DISCIPLINES (DISC_ID) on delete restrict on update restrict;

alter table DEPENDRE_DE add constraint FK_DEPENDRE_DE2 foreign key (RESP_ID)
      references RESPONSABLES (RESP_ID) on delete restrict on update restrict;

alter table EPREUVES add constraint FK_FAIRE_PARTIE foreign key (DISC_ID)
      references DISCIPLINES (DISC_ID) on delete restrict on update restrict;

alter table EPREUVES add constraint FK_SE_DEROULER foreign key (STATION_ID)
      references STATIONS (STATION_ID) on delete restrict on update restrict;

alter table PARTICIPER add constraint FK_PARTICIPER foreign key (CONCU_ID)
      references CONCURRENTS (CONCU_ID) on delete restrict on update restrict;

alter table PARTICIPER add constraint FK_PARTICIPER2 foreign key (EPR_ID)
      references EPREUVES (EPR_ID) on delete restrict on update restrict;

alter table PRATIQUER add constraint FK_PRATIQUER foreign key (CONCU_ID)
      references CONCURRENTS (CONCU_ID) on delete restrict on update restrict;

alter table PRATIQUER add constraint FK_PRATIQUER2 foreign key (DISC_ID)
      references DISCIPLINES (DISC_ID) on delete restrict on update restrict;

alter table RESPONSABLES add constraint FK_EST_RESPONSABLE_DE foreign key (RESP_SUP_ID)
      references RESPONSABLES (RESP_ID) on delete restrict on update restrict;

alter table ROLES add constraint FK_ATTRIBUER foreign key (RESP_ID)
      references RESPONSABLES (RESP_ID) on delete restrict on update restrict;

