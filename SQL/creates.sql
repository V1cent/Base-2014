create table CONTENIDO(
CONT_Id 	bigint		auto_increment not null,
CONT_Nombre	varchar(60)	not null,
CONT_Tipo	varchar(10) not null,
CONT_Costo	int,
CONT_Num_Desc	int,
CONT_Num_Val	int,
PEL_Fecha_Est	date,
PEL_Descripcion	varchar(1000),
PEL_Duracion	int,
DISC_MU_Fecha_Pro	date,
DISC_MU_Num_Can		int,
DISC_MU_Formato		varchar(15),
DISC_MU_DISQ_Id		bigint,
LIB_Fecha_Pub 	date,
LIB_Num_Pg		int,
LIB_Cod_ISB		varchar(20),
LIB_EDIT_Id		bigint,
constraint cont_pk primary key(CONT_Id)
);

create table PROMOCION(
PRO_Id				bigint		auto_increment	not null,
PRO_Nombre			varchar(100)	not null,
PRO_Porcentaje		int    					,
PRO_Descripcion		varchar(12)	,
PRO_Condiciones		varchar(100),
constraint pro_pk primary key (PRO_Id));

create table CANTANTE (
CANT_Id			bigint  auto_increment  not null,
CANT_Nombre     varchar(50) not null,
constraint cant_pk primary key (CANT_Id)
);

create table DISQUERA (
DISQ_Id			bigint   auto_increment not null,
DISQ_Nombre     varchar(25) not null,
constraint disq_pk primary key (DISQ_Id)
);

create table GENERO_MUSICA (
GE_MU_Id			bigint   auto_increment not null,
GE_MU_Nombre     varchar(12) not null,
constraint ge_mu_pk primary key (GE_MU_Id)
);

create table AUTOR (
AUT_Id			bigint  auto_increment  not null,
AUT_Nombre     varchar(50) not null,
AUT_Resena     varchar(220)        ,
constraint ge_mu_pk primary key (AUT_Id)
);

create table EDITORIAL (
EDIT_Id			bigint  auto_increment  not null,
EDIT_Nombre     varchar(12) not null,
constraint edit_pk primary key (EDIT_Id)
);

create table GENERO_LIBRO (
GEN_LIB_Id			bigint  auto_increment  not null,
GEN_LIB_Nombre     varchar(12) not null,
constraint gen_lib_pk primary key (GEN_LIB_Id)
);

create table APLICACION (
APL_Id       	bigint 		auto_increment NOT null,
APL_Nombre 		varchar(256) not null,
APL_Descripcion text 				 ,
APL_Fecha_Act 	date 		 not null,
APL_Tamano      int          not null,
APL_Version_Min_Oper text    		 ,
APL_Costo		int					 ,
APL_Version_Act	text				 ,
APL_Calificacion int         not null,
constraint apl_pk primary key (APL_Id)
);

create table EMPRESA(
EMP_Id     bigint		auto_increment	not null,
EMP_Sitio_Web text					,
EMP_Correo    varchar(256) 			,
EMP_LUG_Id		bigint				,
EMP_Nombre varchar(100) not null,
constraint emp_pk primary key (EMP_Id)
);

create table LUGAR(
LUG_ID				bigint		auto_increment	not nulL,
LUG_Nombre			varchar(100)	not null,
LUG_Tipo			varchar(100)	not null,
LUG_Descripcion		varchar(500),
LUG_LUG_Id			bigint,
constraint	lug_pk primary key (LUG_ID));

create table CARGO_EMP (
CAR_EMP_Id		bigint		auto_increment	not null,
CAR_EMP_Nombre	varchar(100)	not null,
CAR_EMP_Salario bigint			not null,
CAR_EMP_EMP_Id	bigint					,
constraint car_emp_pk primary key (CAR_EMP_Id)
);

create table TIPO_SO(
TI_Id           bigint			auto_increment not null,
TI_Nombre		varchar(100)	not null,
constraint ti_pk primary key (TI_Id)
);


create table SISTEMA_OPERATIVO (
SO_Id		bigint		auto_increment	not null,
SO_Nombre	varchar(100)	not null,
SO_Fecha_Lanz date			not null,
SO_EMP_Id		bigint				,
SO_TI_Id			bigint				,
constraint so_pk primary key (SO_Id)
);


create table VERSION(
VER_Id             	bigint    auto_increment   	not null,
VER_Nombre		   	varchar(100)	not null,
VER_Fecha_Dis	   	date         	not null,
VER_Caracteristicas text                    ,
VER_SO_Id			bigint			not null,
constraint ver_pk primary key (VER_Id, VER_SO_Id));

create table CARACTERISTICA(
CARAC_Id		    bigint		auto_increment    not null,
CARAC_Nombre		varchar(100)	not null,
CARAC_Descripcion   text                ,
constraint carac_pk primary key (CARAC_Id)
);

create table VIDEO(
VID_Id              bigint     auto_increment     not null,
VID_Url             varchar(200)	not null, 
VID_APL_Id			bigint          ,    
VID_CONT_Id			bigint         ,    
constraint vid_pk primary key (VID_Id)
);

create table IMAGEN(
IMG_Id              bigint      auto_increment    not null,
IMG_Url             varchar(200)	not null, 
IMG_APL_Id			bigint          ,    
IMG_CONT_Id			bigint          ,    
constraint img_pk primary key (IMG_Id)
);

create table CALIFICACION (
CAL_Id 				bigint   auto_increment  not null,
CAL_Valor			varchar(1) not null,
CAL_Fechahora		DATETIME   not null,
CAL_F_C_P_Id        bigint		not null,
constraint cal_pk primary key(CAL_Id));

create table GEN_MU_DISC_MU(
GEN_MU_DISC_MU_CONT_Id		bigint     not null,
GEN_MU_DISC_MU_GE_MU_Id		bigint		not null,
constraint gen_mu_disc_mu_pk primary key(GEN_MU_DISC_MU_CONT_Id, GEN_MU_DISC_MU_GE_MU_Id)
);

create table GEN_LIB_LIB(
GEN_LIB_LIB_CONT_Id    bigint   not null,
GEN_LIB_LIB_GEN_LIB_Id bigint   not null,
constraint gen_lib_lib_pk primary key (GEN_LIB_LIB_CONT_Id, GEN_LIB_LIB_GEN_LIB_Id)
);

create table CARAC_SO(
CARAC_SO_CARAC_Id  bigint   not null,
CARAC_SO_SO_Id		bigint   not null,
constraint carac_so_pk primary key(CARAC_SO_CARAC_Id, CARAC_SO_SO_Id)
);

create table CARAC_VER(
CARAC_VER_CARAC_Id  bigint   not null,
CARAC_VER_VER_Id		bigint   not null,
constraint carac_ver_pk primary key(CARAC_VER_CARAC_Id, CARAC_VER_VER_Id)
);

create table SO_APL(
SO_APL_VER_Id		bigint   not null,
SO_APL_VER_SO_Id		bigint   not null,
SO_APL_APL_Id		bigint   not null,
constraint so_apl_pk primary key(SO_APL_VER_Id, SO_APL_VER_SO_Id, SO_APL_APL_Id)
);

create table PRO_CONT(
PRO_CONT_Id			bigint  auto_increment  not null,
PRO_CONT_Fecha_Ini 	DATETIME not null,
PRO_CONT_Fecha_Fin 	DATETIME not null,
PRO_CONT_PRO_Id     bigint	 not nulL,
PRO_CONT_CONT_Id	bigint			 ,
PRO_CONT_SO_APL_VER_Id		bigint   ,
PRO_CONT_SO_APL_VER_SO_Id	bigint   ,
PRO_CONT_SO_APL_APL_Id      bigint   ,
constraint pro_cont primary key( PRO_CONT_Id, PRO_CONT_PRO_Id)
);

create table F_C_P (
F_C_P_Id				bigint	auto_increment	not null,
F_C_P_CONT_Id			bigint 				,
F_C_P_FACT_Id			bigint 		not null,
F_C_P_PRO_CONT_Id		bigint				,
F_C_P_PRO_CONT_PRO_Id	bigint				,
F_C_P_PRO_CONT_SO_APL_APL_Id		bigint				,
F_C_P_PRO_CONT_SO_APL_VER_Id		bigint				,
F_C_P_PRO_CONT_SO_APL_VER_SO_Id  bigint				,
constraint f_c_p primary key(F_C_P_Id, F_C_P_FACT_Id)
);


create table ACCION (
ACC_Id				bigint		auto_increment	not null,
ACC_Nombre			varchar(30)		not null,
ACC_Descripcion		varchar(50)		not null,
constraint acc_pk	primary key (ACC_id)
);

create table ROL (
ROL_Id				bigint		auto_increment	not null,
ROL_Nombre			varchar(20)		not null,
ROL_Descripcion		varchar(50)		not null,
constraint rol_pk	primary key (ROL_Id)
);

create table PERSONA (
PER_Ci				bigint		not null,
PER_Primer_nom		varchar(10)		not null,
PER_Segundo_nom		varchar(10),
PER_Primer_ape		varchar(10)		not null,
PER_Segundo_ape		varchar(10)		not null,
PER_Correo_ele		varchar(50)		not null,
PER_Fecha_nac		date			not null,
PER_Telefono_cont	varchar(14)		not null,
PER_Tipo			varchar(10)		not null,
EMPL_Fecha_ing		date,
EMPL_Fecha_cul		date,
EMPL_Grupo_san		varchar(3),
EMPL_CAR_EMP_Id		bigint,
CLI_Estado_civ		varchar(20),
CLI_Fecha_reg		date		,
constraint	Per_pk	primary key (PER_Ci)
);

create table USUARIO (
USU_Id				bigint		auto_increment	not null,
USU_Nick			varchar(10)		not null,
USU_Password		varchar(10)		not null,
USU_Activo			boolean			not null,
USU_ROL_Id			bigint			not null,
USU_PER_Ci			bigint			not null,
constraint usu_pk	primary key(USU_Id)
);

create table TIPO_TC (
TTC_Id				bigint		auto_increment	not null,
TCC_Nombre			varchar(20)	not null,
constraint	Ttc_pk	primary key(TTC_Id)
);

create table BANCO(
BAN_Id				bigint		auto_increment	not null,
BAN_Nombre			varchar(50)		not null,
constraint Ban_pk	primary key(BAN_Id)
);

create table TARJETA_CREDITO(
TC_Id				bigint		auto_increment	not null,
TC_Nombre_imp		varchar(20)		not null,
TC_Fecha_ven		date			not null,
TC_Digitos			bigint			not null,
TC_TTC_Id			bigint 			not null,
TC_PER_Ci			bigint			not null,
TC_BAN_Id			bigint			not null,
constraint 	Tc_pk	primary key(TC_id)
);

create table COMENTARIO(
COM_Id				bigint		auto_increment	not null,
COM_Fechahora		DATETIME		not null,
COM_Comentario		varchar(200)	not null,
COM_PER_Ci			bigint			not null,
COM_APL_Id			bigint,
COM_CONT_Id			bigint,
constraint	Com_pk	primary key(COM_Id)
);

create table HISTORIAL(
HIST_Id				bigint		auto_increment	not null,
HIST_Fecha_ini		DATETIME		not null,
HIST_Fecha_fin		DATETIME,
HIST_Dir_IP			varchar(15),
HIST_USU_Id			bigint			not null,
HIST_ACC_Id			bigint			not null,
HIST_MOD_USU_Id		bigint,
HIST_MOD_PRO_Id		bigint,
HIST_MOD_APL_Id		bigint,
HIST_MOD_CONT_Id	bigint,
constraint	Hist_pk	primary key(HIST_Id)
);

create table SUBTITULO(
SUB_Id				bigint		auto_increment	not null,
SUB_Nombre			varchar(20)		not null,
constraint	Sub_pk	primary key(SUB_Id)
);

create table LENGUAJE(
LENG_Id				bigint		auto_increment	not null,
LENG_Nombre			varchar(20)		not null,
constraint	Leng_pk	primary key(LENG_Id)
);

create table DIRECTOR(
DIR_Id				bigint		auto_increment	not null,
DIR_Nombre			varchar(30)		not null,
constraint	Dir_pk  primary key(DIR_Id)
);

create table ACTOR(
ACT_Id				bigint		auto_increment	not null,
ACT_Nombre			varchar(30)		not null,
constraint	Act_pk	primary key(ACT_Id)
);

create table CATEGORIA_PEL(
CAT_PEL_Id			bigint		auto_increment	not null,
CAT_PEL_Nombre		varchar(20)		not null,
CAT_PEL_Descripcion	varchar(255)	not null,
constraint Catp_pk	primary key(CAT_PEL_Id)
);

create table PEL_SUB(
PS_PEL_Id			bigint			not null,
PS_SUB_Id			bigint			not null,
constraint PS_pk	primary key(PS_PEL_Id,PS_SUB_Id)
);

create table PEL_LEN(
PL_PEL_Id			bigint			not null,
PL_LENG_Id			bigint			not null,
constraint	PL_pk	primary key(PL_PEL_Id,PL_LENG_Id)
);

create table PEL_ACT(
PA_PEL_Id			bigint			not null,
PA_ACT_Id			bigint			not null,
constraint	PA_pk	primary key(PA_PEL_Id,PA_ACT_Id)
);

create table PEL_DIR(
PD_PEL_Id			bigint			not null,
PD_DIR_Id			bigint			not null,
constraint PD_pk	primary key(PD_PEL_Id,PD_DIR_Id)
);

create table CANT_DISC_MUS(
CANT_DISC_MUS_CANT_Id     bigint	not null,
CANT_DISC_MUS_CONT_Id     bigint	not null,
CONSTRAINT cant_disc_mus primary key(CANT_DISC_MUS_CANT_Id, CANT_DISC_MUS_CONT_Id )
);

create table AUT_LIB(
AUT_LIB_AUT_Id     bigint	not null,
AUT_LIB_CONT_Id     bigint	not null,
CONSTRAINT aut_lib primary key(AUT_LIB_AUT_Id, AUT_LIB_CONT_Id )
);

create table PEL_CAT_PEL(
PEL_CAT_PEL_CAT_PEL_Id     bigint	not null,
PEL_CAT_PEL_CONT_Id     bigint	not null,
CONSTRAINT pel_cat_pel primary key(PEL_CAT_PEL_CAT_PEL_Id, PEL_CAT_PEL_CONT_Id  )
);


create table FACTURA (
FACT_Id		bigint			auto_increment not null,
FACT_Fecha_Emi date     		not null,
FACT_TC_Id		bigint		not null,
constraint fac_pk primary key (FACT_Id, FACT_TC_Id)
);