CREATE TABLE food_des (
  NDB_No      varchar(5) NOT NULL PRIMARY KEY,
  FdGrp_Cd    varchar(4) NOT NULL,
  Long_Desc   varchar(200) NOT NULL,
  Shrt_Desc   varchar(60) NOT NULL,
  ComName     varchar(100),
  ManufacName varchar(65),
  Survey      varchar(1),
  Ref_desc    varchar(135),
  Refuse      smallint,
  SciName     varchar(65),
  N_Factor    NUMERIC(4,2),
  Pro_Factor  NUMERIC(4,2),
  Fat_Factor  NUMERIC(4,2),
  CHO_Factor  NUMERIC(4,2)
);

CREATE TABLE nut_data (
  NDB_No          varchar(5) NOT NULL, 
  Nutr_No         varchar(3) NOT NULL,
  Nutr_Val        NUMERIC(10,3) NOT NULL,
  Num_Data_Pts    NUMERIC(5,0) NOT NULL,
  Std_Error       NUMERIC(8,3),
  Src_Cd          varchar(2) NOT NULL,
  Deriv_Cd        varchar(4),
  Ref_NDB_No      varchar(5),
  Add_Nutr_Mark   varchar(1),
  Num_Studies     NUMERIC(2),
  Min             NUMERIC(10,3),
  Max             NUMERIC(10,3),
  DF              NUMERIC(4),
  Low_EB          NUMERIC(10,3),
  Up_EB           NUMERIC(10,3),
  Stat_cmt        varchar(10), 
  AddMod_Date     varchar(10),
  CC              varchar(1)
);

CREATE TABLE data_src_link (
  NDB_No      varchar(5) NOT NULL, 
  Nutr_No     varchar(3) NOT NULL, 
  DataSrc_ID  varchar(6) NOT NULL  
);

CREATE TABLE data_src (
  DataSrc_ID   varchar(6) NOT NULL PRIMARY KEY,
  Authors      varchar(255),                   
  Title        varchar(255) NOT NULL,          
  Year         varchar(4),                     
  Journal      varchar(135),                   
  Vol_City     varchar(16),                    
  Issue_State  varchar(5),                     
  Start_Page   varchar(5),                     
  End_Page     varchar(5)
);

CREATE TABLE deriv_cd (
  Deriv_Cd        varchar(4) NOT NULL PRIMARY KEY,
  Deriv_Desc      varchar(120) NOT NULL
);

CREATE TABLE fd_group (
  FdGrp_Cd varchar(4) NOT NULL PRIMARY KEY,
  FdGrp_Desc varchar(60)
);

CREATE TABLE langual (
  NDB_No      varchar(5) NOT NULL,
  Factor_Code varchar(5) NOT NULL
);

CREATE TABLE langdesc (
  Factor_Code varchar(5) NOT NULL PRIMARY KEY,
  Description varchar(140) NOT NULL
);

CREATE TABLE nutr_def (
  Nutr_No     varchar(3) NOT NULL PRIMARY KEY, 
  Units       varchar(7) NOT NULL,
  Tagname     varchar(20),
  NutrDesc    varchar(60) NOT NULL,
  Num_Dec     varchar(1) NOT NULL,
  SR_Order    NUMERIC(6)
);

CREATE TABLE src_cd (
  Src_Cd      varchar(2) NOT NULL PRIMARY KEY,
  SrcCd_Desc  varchar(60) NOT NULL
);

CREATE TABLE weight (
  NDB_No        varchar(5) NOT NULL,
  Seq           varchar(2) NOT NULL,
  Amount        NUMERIC(5,0) NOT NULL,
  Msre_Desc     varchar(84) NOT NULL,
  Gm_Wgt        NUMERIC(7,1) NOT NULL,
  Num_Data_Pts  NUMERIC(5,0),
  Std_Dev       NUMERIC(7,3)
);

CREATE TABLE footnote (
  NDB_No        varchar(5) NOT NULL,
  Footnt_No     varchar(4) NOT NULL,
  Footnt_Typ    varchar(1) NOT NULL,
  Nutr_No       varchar(3),
  Footnt_Txt    varchar(200)
);