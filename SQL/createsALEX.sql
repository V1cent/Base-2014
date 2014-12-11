//ALEXANDER
create table CONTENIDO(
CONT_Id 	bigint		not null,
CONT_Nombre	varchar(30)	not null,
CONT_Tipo	varchar(10) not null,
CONT_Costo	int,
CONT_Num_Desc	int,
CONT_Num_Val	int,
PEL_Fecha_Est	date,
PEL_Descripcion	varchar(100),
PEL_Duracion	int,
PEL_CATP_Id		int,
DISC_MU_Fecha_Pro	date,
DISC_MU_Num_Can		int,
DISC_MU_Formao		varchar(5),
DISC_MU_CANT_Id		int,
DISC_MU_DISC_Id		int,
LIB_Fecha_Pub 	int,
LIB_Num_Pg		int,
LIB_Cod_ISB		int,
LIB_EDIT_Id		int,
LIB_AUT_Id		int,
constraint cont_pk primary key(CONT_Id)
);

create table PROMOCION(
PRO_Id				bigint			not null,
PRO_Nombre			varchar(100)	not null,
PRO_Porcentaje		int    					,
PRO_Descripcion		varchar(12)	,
PRO_Condiciones		varchar(100),
constraint pro_pk primary key (PRO_Id));

create table CANTANTE (
CANT_Id			bigint    not null,
CANT_Nombre     varchar(12) not null,
constraint cant_pk primary key (CANT_Id)
);

create table DISQUERA (
DISQ_Id			bigint    not null,
DISQ_Nombre     varchar(12) not null,
constraint disq_pk primary key (DISQ_Id)
);

create table GENERO_MUSICA (
GE_MU_Id			bigint    not null,
GE_MU_Nombre     varchar(12) not null,
constraint ge_mu_pk primary key (GE_MU_Id)
);

create table AUTOR (
AUT_Id			bigint    not null,
AUT_Nombre     varchar(12) not null,
AUT_Resena     varchar(120)        ,
constraint ge_mu_pk primary key (GE_MU_Id)
);

create table EDITORIAL (
EDIT_Id			bigint    not null,
EDIT_Nombre     varchar(12) not null,
constraint edit_pk primary key (EDIT_Id)
);

create table GENERO_MUSICA (
GE_MU_Id			bigint    not null,
GE_MU_Nombre     varchar(12) not null,
constraint ge_mu_pk primary key (GE_MU_Id)
);

create table GENERO_LIBRO (
GEN_LIB_Id			bigint    not null,
GEN_LIB_Nombre     varchar(12) not null,
constraint gen_lib_pk primary key (GEN_LIB_Id)
);

create table APLICACION (
APL_Id       	bigint 		 NOT null,
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
EMP_Id     bigint			not null,
EMP_Sitio_Web text					,
EMP_Correo    varchar(256) 			,
EMP_LUG_Id		bigint				,
constraint emp_pk primary key (EMP_Id)
);

create table LUGAR(
LUG_ID				bigint			not nulL,
LUG_Nombre			varchar(100)	not null,
LUG_Tipo			varchar(100)	not null,
LUG_Descripcion		varchar(500),
LUG_LUG_Id			bigint,
constraint	lug_pk primary key (LUG_ID));

create table CARGO_EMP (
CAR_EMP_Id		bigint			not null,
CAR_EMP_Nombre	varchar(100)	not null,
CAR_EMP_Salario bigint			not null,
CAR_EMP_EMP_Id	bigint					,
constraint car_emp_pk primary key (CAR_EMP_Id)
);

create table TIPO_SO(
TI_Id           bigint			not null,
TI_Nombre		varchar(100)	not null,
constraint ti_pk primary key (TI_Id)
);


create table SISTEMA_OPERATIVO (
SO_Id		bigint			not null,
SO_Nombre	varchar(100)	not null,
SO_Fecha_Lanz date			not null,
SO_EMP_Id		bigint				,
SO_TI_Id			bigint				,
constraint so_pk primary key (SO_Id)
);

create table FACTURA (
FAC_Id		bigint			not null,
FAC_Fecha_Emi date     		not null,
FAC_TC_Id		bigint		not null,
constraint fac_pk primary key (FAC_Id, FAC_TC_Id)
);


create table VERSION(
VER_Id             	bigint       	not null,
VER_Nombre		   	varchar(100)	not null,
VER_Fecha_Dis	   	date         	not null,
VER_Caracteristicas text                    ,
VER_SO_Id			bigint			not null,
constraint ver_pk primary key (VER_Id, VER_SO_Id));

create table CARACTERISTICA(
CARAC_Id		    bigint		    not null,
CARAC_Nombre		varchar(100)	not null,
CARAC_Descripcion   text                ,
constraint carac_pk primary key (CARAC_Id)
);

create table VIDEO(
VID_Id              bigint          not null,
VID_Url             varchar(200)	not null, 
VID_APL_Id			bigint          ,    
VID_CONT_Id			bigint         ,    
constraint vid_pk primary key (VID_Id)
);

create table IMAGEN(
IMG_Id              bigint          not null,
IMG_Url             varchar(200)	not null, 
IMG_APL_Id			bigint          ,    
IMG_CONT_Id			bigint          ,    
constraint img_pk primary key (IMG_Id)
);

create table CALIFICACION (
CAL_Id 				bigint     not null,
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
PRO_CONT_Id			bigint   not null,
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
F_C_P_CONT_Id			bigint 				,
F_C_P_FACT_Id			bigint 		not null,
F_C_P_PRO_CONT_Id		bigint				,
F_C_P_PRO_CONT_PRO_Id	bigint				,
F_C_P_PRO_CONT_SO_APL_APL_Id		bigint				,
F_C_P_PRO_CONT_SO_APL_VER_Id		bigint				,
F_C_P_PRO_CONT_SO_APL_VER_SO_Id  bigint				,
constraint f_c_p primary key(F_C_P_FACT_Id)
);





