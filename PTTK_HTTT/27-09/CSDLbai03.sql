/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     27/09/2019 9:28:48 AM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BAN') and o.name = 'FK_BAN_BAN_HOA_DON')
alter table BAN
   drop constraint FK_BAN_BAN_HOA_DON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BAN') and o.name = 'FK_BAN_BAN2_SACH')
alter table BAN
   drop constraint FK_BAN_BAN2_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOA_DON') and o.name = 'FK_HOA_DON_RELATIONS_NHAN_VIE')
alter table HOA_DON
   drop constraint FK_HOA_DON_RELATIONS_NHAN_VIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KE_SACH') and o.name = 'FK_KE_SACH_RELATIONS_NHAN_VIE')
alter table KE_SACH
   drop constraint FK_KE_SACH_RELATIONS_NHAN_VIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHAP') and o.name = 'FK_NHAP_NHAP_PHIEU_NH')
alter table NHAP
   drop constraint FK_NHAP_NHAP_PHIEU_NH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHAP') and o.name = 'FK_NHAP_NHAP2_SACH')
alter table NHAP
   drop constraint FK_NHAP_NHAP2_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEU_NHAP') and o.name = 'FK_PHIEU_NH_RELATIONS_NHA_CUNG')
alter table PHIEU_NHAP
   drop constraint FK_PHIEU_NH_RELATIONS_NHA_CUNG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SACH') and o.name = 'FK_SACH_RELATIONS_THE_LOAI')
alter table SACH
   drop constraint FK_SACH_RELATIONS_THE_LOAI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THE_LOAI') and o.name = 'FK_THE_LOAI_RELATIONS_KE_SACH')
alter table THE_LOAI
   drop constraint FK_THE_LOAI_RELATIONS_KE_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TRUC') and o.name = 'FK_TRUC_TRUC_CA_TRUC')
alter table TRUC
   drop constraint FK_TRUC_TRUC_CA_TRUC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TRUC') and o.name = 'FK_TRUC_TRUC2_NHAN_VIE')
alter table TRUC
   drop constraint FK_TRUC_TRUC2_NHAN_VIE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BAN')
            and   name  = 'BAN2_FK'
            and   indid > 0
            and   indid < 255)
   drop index BAN.BAN2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BAN')
            and   name  = 'BAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index BAN.BAN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BAN')
            and   type = 'U')
   drop table BAN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CA_TRUC')
            and   type = 'U')
   drop table CA_TRUC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOA_DON')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOA_DON.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOA_DON')
            and   type = 'U')
   drop table HOA_DON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KE_SACH')
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index KE_SACH.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KE_SACH')
            and   type = 'U')
   drop table KE_SACH
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHAN_VIEN')
            and   type = 'U')
   drop table NHAN_VIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHAP')
            and   name  = 'NHAP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHAP.NHAP2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHAP')
            and   name  = 'NHAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHAP.NHAP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHAP')
            and   type = 'U')
   drop table NHAP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHA_CUNG_CAP')
            and   type = 'U')
   drop table NHA_CUNG_CAP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEU_NHAP')
            and   name  = 'RELATIONSHIP_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEU_NHAP.RELATIONSHIP_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEU_NHAP')
            and   type = 'U')
   drop table PHIEU_NHAP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SACH')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index SACH.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SACH')
            and   type = 'U')
   drop table SACH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THE_LOAI')
            and   name  = 'RELATIONSHIP_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index THE_LOAI.RELATIONSHIP_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THE_LOAI')
            and   type = 'U')
   drop table THE_LOAI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TRUC')
            and   name  = 'TRUC2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TRUC.TRUC2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TRUC')
            and   name  = 'TRUC_FK'
            and   indid > 0
            and   indid < 255)
   drop index TRUC.TRUC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRUC')
            and   type = 'U')
   drop table TRUC
go

/*==============================================================*/
/* Table: BAN                                                   */
/*==============================================================*/
create table BAN (
   SO_THU_TU_H_         int                  not null,
   MA_SACH              varchar(10)          not null,
   SO_LUONG_BAN         int                  null,
   constraint PK_BAN primary key (SO_THU_TU_H_, MA_SACH)
)
go

/*==============================================================*/
/* Index: BAN_FK                                                */
/*==============================================================*/
create index BAN_FK on BAN (
SO_THU_TU_H_ ASC
)
go

/*==============================================================*/
/* Index: BAN2_FK                                               */
/*==============================================================*/
create index BAN2_FK on BAN (
MA_SACH ASC
)
go

/*==============================================================*/
/* Table: CA_TRUC                                               */
/*==============================================================*/
create table CA_TRUC (
   STT_CA_TRUC          int                  not null,
   GIO_BD               datetime             null,
   GIO_KT               datetime             null,
   constraint PK_CA_TRUC primary key nonclustered (STT_CA_TRUC)
)
go

/*==============================================================*/
/* Table: HOA_DON                                               */
/*==============================================================*/
create table HOA_DON (
   SO_THU_TU_H_         int                  not null,
   MA_NV                varchar(10)          null,
   NGAY_MUA             datetime             null,
   constraint PK_HOA_DON primary key nonclustered (SO_THU_TU_H_)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on HOA_DON (
MA_NV ASC
)
go

/*==============================================================*/
/* Table: KE_SACH                                               */
/*==============================================================*/
create table KE_SACH (
   MA_KE                varchar(10)          not null,
   MA_NV                varchar(10)          not null,
   TEN_KE               varchar(100)         null,
   constraint PK_KE_SACH primary key nonclustered (MA_KE)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on KE_SACH (
MA_NV ASC
)
go

/*==============================================================*/
/* Table: NHAN_VIEN                                             */
/*==============================================================*/
create table NHAN_VIEN (
   MA_NV                varchar(10)          not null,
   TEN_NV               varchar(100)         null,
   DIEN_THOAI           varchar(10)          null,
   DIA_CHI              varchar(100)         null,
   GIOI_TINH            varchar(5)           null,
   constraint PK_NHAN_VIEN primary key nonclustered (MA_NV)
)
go

/*==============================================================*/
/* Table: NHAP                                                  */
/*==============================================================*/
create table NHAP (
   SO_THU_TU_PHIEU      int                  not null,
   MA_SACH              varchar(10)          not null,
   SO_LUONG_NHAP        int                  null,
   GIA_NHAP             float                null,
   constraint PK_NHAP primary key (SO_THU_TU_PHIEU, MA_SACH)
)
go

/*==============================================================*/
/* Index: NHAP_FK                                               */
/*==============================================================*/
create index NHAP_FK on NHAP (
SO_THU_TU_PHIEU ASC
)
go

/*==============================================================*/
/* Index: NHAP2_FK                                              */
/*==============================================================*/
create index NHAP2_FK on NHAP (
MA_SACH ASC
)
go

/*==============================================================*/
/* Table: NHA_CUNG_CAP                                          */
/*==============================================================*/
create table NHA_CUNG_CAP (
   MA_NCC               varchar(10)          not null,
   TEN_NCC              varchar(100)         null,
   DIEN_THOAI           varchar(10)          null,
   DIA_CHI              varchar(100)         null,
   constraint PK_NHA_CUNG_CAP primary key nonclustered (MA_NCC)
)
go

/*==============================================================*/
/* Table: PHIEU_NHAP                                            */
/*==============================================================*/
create table PHIEU_NHAP (
   SO_THU_TU_PHIEU      int                  not null,
   MA_NCC               varchar(10)          null,
   NGAY_NHAP            datetime             null,
   DOT_NHAP             int                  null,
   constraint PK_PHIEU_NHAP primary key nonclustered (SO_THU_TU_PHIEU)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on PHIEU_NHAP (
MA_NCC ASC
)
go

/*==============================================================*/
/* Table: SACH                                                  */
/*==============================================================*/
create table SACH (
   MA_SACH              varchar(10)          not null,
   MA_THE_LOAI          varchar(10)          not null,
   TEN_SACH             varchar(100)         null,
   NHA_XUAT_BAN         varchar(100)         null,
   TAC_GIA              varchar(100)         null,
   constraint PK_SACH primary key nonclustered (MA_SACH)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on SACH (
MA_THE_LOAI ASC
)
go

/*==============================================================*/
/* Table: THE_LOAI                                              */
/*==============================================================*/
create table THE_LOAI (
   MA_THE_LOAI          varchar(10)          not null,
   MA_KE                varchar(10)          not null,
   TEN_THE_LOAI         varchar(100)         null,
   constraint PK_THE_LOAI primary key nonclustered (MA_THE_LOAI)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on THE_LOAI (
MA_KE ASC
)
go

/*==============================================================*/
/* Table: TRUC                                                  */
/*==============================================================*/
create table TRUC (
   STT_CA_TRUC          int                  not null,
   MA_NV                varchar(10)          not null,
   NGAY_TRUC            datetime             null,
   constraint PK_TRUC primary key (STT_CA_TRUC, MA_NV)
)
go

/*==============================================================*/
/* Index: TRUC_FK                                               */
/*==============================================================*/
create index TRUC_FK on TRUC (
STT_CA_TRUC ASC
)
go

/*==============================================================*/
/* Index: TRUC2_FK                                              */
/*==============================================================*/
create index TRUC2_FK on TRUC (
MA_NV ASC
)
go

alter table BAN
   add constraint FK_BAN_BAN_HOA_DON foreign key (SO_THU_TU_H_)
      references HOA_DON (SO_THU_TU_H_)
go

alter table BAN
   add constraint FK_BAN_BAN2_SACH foreign key (MA_SACH)
      references SACH (MA_SACH)
go

alter table HOA_DON
   add constraint FK_HOA_DON_RELATIONS_NHAN_VIE foreign key (MA_NV)
      references NHAN_VIEN (MA_NV)
go

alter table KE_SACH
   add constraint FK_KE_SACH_RELATIONS_NHAN_VIE foreign key (MA_NV)
      references NHAN_VIEN (MA_NV)
go

alter table NHAP
   add constraint FK_NHAP_NHAP_PHIEU_NH foreign key (SO_THU_TU_PHIEU)
      references PHIEU_NHAP (SO_THU_TU_PHIEU)
go

alter table NHAP
   add constraint FK_NHAP_NHAP2_SACH foreign key (MA_SACH)
      references SACH (MA_SACH)
go

alter table PHIEU_NHAP
   add constraint FK_PHIEU_NH_RELATIONS_NHA_CUNG foreign key (MA_NCC)
      references NHA_CUNG_CAP (MA_NCC)
go

alter table SACH
   add constraint FK_SACH_RELATIONS_THE_LOAI foreign key (MA_THE_LOAI)
      references THE_LOAI (MA_THE_LOAI)
go

alter table THE_LOAI
   add constraint FK_THE_LOAI_RELATIONS_KE_SACH foreign key (MA_KE)
      references KE_SACH (MA_KE)
go

alter table TRUC
   add constraint FK_TRUC_TRUC_CA_TRUC foreign key (STT_CA_TRUC)
      references CA_TRUC (STT_CA_TRUC)
go

alter table TRUC
   add constraint FK_TRUC_TRUC2_NHAN_VIE foreign key (MA_NV)
      references NHAN_VIEN (MA_NV)
go

