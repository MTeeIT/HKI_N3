/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     27/09/2019 9:11:09 AM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHAN_KHAU') and o.name = 'FK_NHAN_KHA_RELATIONS_SO_HO_KH')
alter table NHAN_KHAU
   drop constraint FK_NHAN_KHA_RELATIONS_SO_HO_KH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHUONG_XA') and o.name = 'FK_PHUONG_X_RELATIONS_QUAN_HUY')
alter table PHUONG_XA
   drop constraint FK_PHUONG_X_RELATIONS_QUAN_HUY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SO_HO_KHAU') and o.name = 'FK_SO_HO_KH_RELATIONS_PHUONG_X')
alter table SO_HO_KHAU
   drop constraint FK_SO_HO_KH_RELATIONS_PHUONG_X
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHAN_KHAU')
            and   name  = 'RELATIONSHIP_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHAN_KHAU.RELATIONSHIP_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHAN_KHAU')
            and   type = 'U')
   drop table NHAN_KHAU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHUONG_XA')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHUONG_XA.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHUONG_XA')
            and   type = 'U')
   drop table PHUONG_XA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('QUAN_HUYEN')
            and   type = 'U')
   drop table QUAN_HUYEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SO_HO_KHAU')
            and   name  = 'RELATIONSHIP_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index SO_HO_KHAU.RELATIONSHIP_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SO_HO_KHAU')
            and   type = 'U')
   drop table SO_HO_KHAU
go

/*==============================================================*/
/* Table: NHAN_KHAU                                             */
/*==============================================================*/
create table NHAN_KHAU (
   SO_THU_TU_NK         int                  not null,
   SO_SO                varchar(10)          not null,
   HO_TEN_NK            varchar(200)         null,
   GIOI_TINH_NK         varchar(5)           null,
   NGAY_SINH_NK         datetime             null,
   constraint PK_NHAN_KHAU primary key nonclustered (SO_THU_TU_NK)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on NHAN_KHAU (
SO_SO ASC
)
go

/*==============================================================*/
/* Table: PHUONG_XA                                             */
/*==============================================================*/
create table PHUONG_XA (
   MA_PHUONG_XA         varchar(10)          not null,
   MA_QUAN_HUYEN        varchar(10)          not null,
   TEN_PHUONG_XA        varchar(100)         null,
   constraint PK_PHUONG_XA primary key nonclustered (MA_PHUONG_XA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on PHUONG_XA (
MA_QUAN_HUYEN ASC
)
go

/*==============================================================*/
/* Table: QUAN_HUYEN                                            */
/*==============================================================*/
create table QUAN_HUYEN (
   MA_QUAN_HUYEN        varchar(10)          not null,
   TEN_QUAN_HUYEN       varchar(100)         null,
   constraint PK_QUAN_HUYEN primary key nonclustered (MA_QUAN_HUYEN)
)
go

/*==============================================================*/
/* Table: SO_HO_KHAU                                            */
/*==============================================================*/
create table SO_HO_KHAU (
   SO_SO                varchar(10)          not null,
   MA_PHUONG_XA         varchar(10)          not null,
   HO_TEN_CHU_HO        varchar(200)         null,
   SO_NHA               varchar(10)          null,
   TEN__UONG_PHO        varchar(200)         null,
   KHU_PHO              varchar(50)          null,
   constraint PK_SO_HO_KHAU primary key nonclustered (SO_SO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on SO_HO_KHAU (
MA_PHUONG_XA ASC
)
go

alter table NHAN_KHAU
   add constraint FK_NHAN_KHA_RELATIONS_SO_HO_KH foreign key (SO_SO)
      references SO_HO_KHAU (SO_SO)
go

alter table PHUONG_XA
   add constraint FK_PHUONG_X_RELATIONS_QUAN_HUY foreign key (MA_QUAN_HUYEN)
      references QUAN_HUYEN (MA_QUAN_HUYEN)
go

alter table SO_HO_KHAU
   add constraint FK_SO_HO_KH_RELATIONS_PHUONG_X foreign key (MA_PHUONG_XA)
      references PHUONG_XA (MA_PHUONG_XA)
go



insert into QUAN_HUYEN values(1, 'Cau Ke')
insert into QUAN_HUYEN values(2, 'Tieu Can')
insert into QUAN_HUYEN values(3, 'Chau Thanh')
insert into QUAN_HUYEN values(4, 'Duyen Hai')

insert into PHUONG_XA values(1, 1, 'Phong Thanh')
insert into PHUONG_XA values(2, 1, 'Phong Phu')
insert into PHUONG_XA values(3, 2, 'Hieu Trung')
insert into PHUONG_XA values(4, 2, 'Hieu Tu')
insert into PHUONG_XA values(5, 3, 'Phuoc Hao')
insert into PHUONG_XA values(6, 3, 'Luong Hoa')
insert into PHUONG_XA values(7, 4, 'Long Toan')
insert into PHUONG_XA values(8, 4, 'Long Khanh')

insert into SO_HO_KHAU values(1, 1, 'Vo Le Khanh Duy', '257/12', 'Phong Thanh', 'Ca Chuong')
insert into SO_HO_KHAU values(2, 2, 'Nguyen Huynh Cong Minh', '256/12', 'Phong Phu', 'Chau Dien')
insert into SO_HO_KHAU values(3, 3, 'Nguyen Minh Thu', '255/12', 'Hieu Trung', 'Cay Gon')
insert into SO_HO_KHAU values(4, 4, 'Duong Quoc Tuan', '254/12', 'Hieu Tu', 'Ap Cho')
insert into SO_HO_KHAU values(5, 5, 'Do Trong Hao', '253/12', 'Phuoc Hao', 'Hoa Hao')
insert into SO_HO_KHAU values(6, 6, 'Pham Huynh Viet Tu', '252/12', 'Luong Hoa', 'O Chich')
insert into SO_HO_KHAU values(7, 7, 'Doan Thi Yen Nhi', '251/12', 'Long Toan', 'Long Dien')
insert into SO_HO_KHAU values(8, 8, 'Thach Visal', '250/12', 'Long Khanh', 'Long Vinh')

insert into NHAN_KHAU values(1, 1, 'Vo Le Khanh Duy', 'Nam', '05/25/1999')
insert into NHAN_KHAU values(2, 2, 'Nguyen Huynh Cong Minh', 'Nam', '03/30/1999')

select * from QUAN_HUYEN 
select * from PHUONG_XA
select * from SO_HO_KHAU
select * from NHAN_KHAU
