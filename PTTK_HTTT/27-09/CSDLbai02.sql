/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     27/09/2019 9:19:51 AM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BAO_CAO') and o.name = 'FK_BAO_CAO_RELATIONS_DON_VI')
alter table BAO_CAO
   drop constraint FK_BAO_CAO_RELATIONS_DON_VI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DON_VI') and o.name = 'FK_DON_VI_THUOC_SO_BN_VS')
alter table DON_VI
   drop constraint FK_DON_VI_THUOC_SO_BN_VS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NGANH_KTQD') and o.name = 'FK_NGANH_KT_RELATIONS_DON_VI')
alter table NGANH_KTQD
   drop constraint FK_NGANH_KT_RELATIONS_DON_VI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BAO_CAO')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index BAO_CAO.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BAO_CAO')
            and   type = 'U')
   drop table BAO_CAO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DON_VI')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index DON_VI.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DON_VI')
            and   type = 'U')
   drop table DON_VI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NGANH_KTQD')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index NGANH_KTQD.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NGANH_KTQD')
            and   type = 'U')
   drop table NGANH_KTQD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SO_BN_VS_BO_CQ')
            and   type = 'U')
   drop table SO_BN_VS_BO_CQ
go

/*==============================================================*/
/* Table: BAO_CAO                                               */
/*==============================================================*/
create table BAO_CAO (
   QUY                  int                  not null,
   NAM_BC               int                  not null,
   MA__V                varchar(10)          not null,
   TONG_LAO__ONG        int                  null,
   SO_LUONG_NU          int                  null,
   SO_L_BQ              int                  null,
   TONG_THU_NHAP        float                null,
   LUONG                float                null,
   THU_NHAP_KHAC        float                null,
   THU_NHAP_BQ          float                null,
   constraint PK_BAO_CAO primary key nonclustered (QUY, NAM_BC)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on BAO_CAO (
MA__V ASC
)
go

/*==============================================================*/
/* Table: DON_VI                                                */
/*==============================================================*/
create table DON_VI (
   MA__V                varchar(10)          not null,
   MA_CQ                varchar(10)          not null,
   TEN__V               varchar(100)         null,
   _IA_CHI              varchar(200)         null,
   constraint PK_DON_VI primary key nonclustered (MA__V)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on DON_VI (
MA_CQ ASC
)
go

/*==============================================================*/
/* Table: NGANH_KTQD                                            */
/*==============================================================*/
create table NGANH_KTQD (
   MA_NGANH             varchar(10)          not null,
   MA__V                varchar(10)          not null,
   TEN_NGANH            varchar(100)         null,
   constraint PK_NGANH_KTQD primary key nonclustered (MA_NGANH)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on NGANH_KTQD (
MA__V ASC
)
go

/*==============================================================*/
/* Table: SO_BN_VS_BO_CQ                                        */
/*==============================================================*/
create table SO_BN_VS_BO_CQ (
   MA_CQ                varchar(10)          not null,
   TEN__VCQ             varchar(200)         null,
   CAP_QL               varchar(50)          null,
   constraint PK_SO_BN_VS_BO_CQ primary key nonclustered (MA_CQ)
)
go

alter table BAO_CAO
   add constraint FK_BAO_CAO_RELATIONS_DON_VI foreign key (MA__V)
      references DON_VI (MA__V)
go

alter table DON_VI
   add constraint FK_DON_VI_THUOC_SO_BN_VS foreign key (MA_CQ)
      references SO_BN_VS_BO_CQ (MA_CQ)
go

alter table NGANH_KTQD
   add constraint FK_NGANH_KT_RELATIONS_DON_VI foreign key (MA__V)
      references DON_VI (MA__V)
go

