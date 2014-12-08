insert into CONTENIDO values(1,'Titanic','Pelicula',2066,nulL,null,nulL,nulL,null,null,null,null,null,null);
insert into CONTENIDO values(2,'Harry Potter y la Piedra Filosofal','Libro',210,nulL,null,nulL,nulL,null,null,null,null,null,null,null,null,null);
insert into CONTENIDO values(3,'Star Wars Episodio I','Pelicula',960,nulL,null,nulL,nulL,null,null,null,null,null,null,null,null,null);
insert into CONTENIDO values(4,'Apolo 13','Pelicula',900,nulL,null,nulL,nulL,null,null,null,null,null,null,null,null,null);
insert into CONTENIDO values(5,'Amor en los tiempos del colera','Libro',266,nulL,null,nulL,nulL,null,null,null,null,null,null,null,null,null);
commit;


insert into PROMOCION values(2,'Navidades Felices',15,null,null);
insert into PROMOCION values(2,'Black Friday',30,null,null);
insert into PROMOCION values(3,'2 X 1',nulL,null,null);
insert into PROMOCION values(4,'2 y el segundo a la mitad',null,null,null);
insert into PROMOCION values(5,'Nueva Coleccion',30,null,null);
commit;

insert into CANTANTE values(1,'Bob Marley');
insert into CANTANTE values(2,'Muse');
insert into CANTANTE values(3,'The Killers');
insert into CANTANTE values(4,'Gustavo Cerati');
insert into CANTANTE values(5,'Ben Howard');
commit;

insert into DISQUERA values(1,'Sony Music');
insert into DISQUERA values(2,'EMI');
insert into DISQUERA values(3,'Universal');
insert into DISQUERA values(4,'Warner');
insert into DISQUERA values(5,'Ark Music Factory');
commit;

insert into GENERO_MUSICA values(1,'Rock');
insert into GENERO_MUSICA values(2,'Metal');
insert into GENERO_MUSICA values(3,'Reggae');
insert into GENERO_MUSICA values(4,'Pop');
insert into GENERO_MUSICA values(5,'Alternativo');
commit;

insert into AUTOR values(1,'Gabriel Garcia Marquez', null);
insert into AUTOR values(2,'Paulo Coelho', null);
insert into AUTOR values(3,'Mario Benedetti', null);
insert into AUTOR values(4,'Julio Cortazar', null);
insert into AUTOR values(5,'J. K. Rowling', null);
commit;

insert into EDITORIAL values(1,'Santillana');
insert into EDITORIAL values(2,'Grijalbo');
insert into EDITORIAL values(3,'Salamandra');
insert into EDITORIAL values(4,'Tilibra');
insert into EDITORIAL values(5,'Neon');
commit;

insert into	GENERO_LIBRO values(1,'Fantasia');
insert into	GENERO_LIBRO values(2,'Manual');
insert into	GENERO_LIBRO values(3,'Novela');
insert into	GENERO_LIBRO values(4,'Romance');
insert into	GENERO_LIBRO values(5,'Poesia');
commit;

insert into APLICACION values(1,'Twitter',null,'2014-12-07', 64,null,235,null,0);
insert into APLICACION values(2,'Facebook',null,'2014-12-07', 320,null,235,null,5);
insert into APLICACION values(3,'Instagram',null,'2014-12-07', 80,null,235,null,8);
insert into APLICACION values(4,'Dropbox',null,'2014-12-07', 100,null,235,null,7);
insert into APLICACION values(5,'PicsArt',null,'2014-12-07', 504,null,235,null,9);
commit;

insert into EMPRESA values(1,'www.legendsoft.com','contacto@legendsoft.com.ve',null,'Legendsoft');
insert into EMPRESA values(2,'www.microsoft.com',null,null,'Microsoft');
insert into EMPRESA values(3,'www.gameloft.com',null,null,'GameLoft');
insert into EMPRESA values(4,'www.apple.com',null,null,'Apple');
insert into EMPRESA values(5,null,'contacto@google.com',null,'Google');
commit;

insert into	 LUGAR values(1,'Venezuela','Pais',null,null);
insert into	 LUGAR values(2,'Colombia','Pais',null,null);
insert into	 LUGAR values(3,'Caracas','Ciudad',1,null);
insert into	 LUGAR values(4,'Cartagena','Ciudad',2,null);
insert into	 LUGAR values(5,'Francia','Pais',null,null);
	commit;

insert into CARGO_EMP values(1,'Administrador',8000,null);
insert into CARGO_EMP values(2,'Gerente Web',7000,1);
insert into CARGO_EMP values(3,'Mantenimiento Web',6000,null);
insert into CARGO_EMP values(4,'Auditor',12000,1);
insert into CARGO_EMP values(5,'DiseÃ±ador',8400,null);
commit;

insert into TIPO_SO values(1,'DOS');
insert into TIPO_SO values(2,'UNIX');
insert into TIPO_SO values(3,'MacOs');
insert into TIPO_SO values(4,'Windws NT');
insert into TIPO_SO values(5,'OS/2');	
commit;

insert into	 SISTEMA_OPERATIVO values(1,'Windows','1990-10-03',2,1);
insert into	 SISTEMA_OPERATIVO values(2,'MacOs','1998-12-03',4,3);
insert into	 SISTEMA_OPERATIVO values(3,'Linux','1987-04-03',1,2);
insert into	 SISTEMA_OPERATIVO values(4,'Android','1999-09-03',5,1);
insert into	 SISTEMA_OPERATIVO values(5,'Solaris','2014-11-03',1,1);
commit;

insert into VERSION values(1,'XP','1987-04-03',null,1);
insert into VERSION values(2,'4.4 kitkat','2012-04-03',null,4);
insert into VERSION values(3,'0.95','1999-03-23',null,3);
insert into VERSION values(4,'2.3','2013-04-03',null,3);
insert into VERSION values(5,'8','1987-04-03',null,1);
commit;

insert into CARACTERISTICA values(1,'Actualizacion',nulL);
insert into CARACTERISTICA values(2,'Tamaño',nulL);
insert into CARACTERISTICA values(3,'Calificacion de contenido',nulL);
insert into CARACTERISTICA values(4,'Descargas',nulL);	
insert into CARACTERISTICA values(5,'Correo del Programador',nulL);
commit;


insert into VIDEO values(1,'https://www.youtube.com/watch?v=ZXiahojLbOw',nulL,null);
insert into VIDEO values(2,'https://www.youtube.com/watch?v=WbhuYOvDjAw',nulL,null);
insert into VIDEO values(3,'https://www.youtube.com/watch?v=NG2utrMwTyY',nulL,null);
insert into VIDEO values(4,'https://www.youtube.com/watch?v=_4Td9-fIPC4',nulL,null);
insert into VIDEO values(5,'https://www.youtube.com/watch?v=xkX8jKeKUEA',nulL,null);
commit;

insert into IMAGEN values(1,'C:\Users\andrea\Documents\Work\D1media\images\img2.jpg',1,null);
insert into IMAGEN values(2,'C:\Users\andrea\Documents\Work\D1media\images\img3.jpg',null,2);
insert into IMAGEN values(3,'C:\Users\andrea\Documents\Work\D1media\images\img1.jpg',1,null);
insert into IMAGEN values(4,'C:\Users\andrea\Documents\Work\D1media\images\img4.jpg',null,5);
insert into IMAGEN values(5,'C:\Users\andrea\Documents\Work\D1media\images\img6.jpg',4,null);
commit;

insert into GEN_MU_DISC_MU values(1,2);
insert into GEN_MU_DISC_MU values(3,1);
insert into GEN_MU_DISC_MU values(2,2);
insert into GEN_MU_DISC_MU values(5,3);
insert into GEN_MU_DISC_MU values(4,1);
commit;

insert into GEN_LIB_LIB values(1,2);
insert into GEN_LIB_LIB values(3,1);
insert into GEN_LIB_LIB values(2,2);
insert into GEN_LIB_LIB values(5,3);
insert into GEN_LIB_LIB values(4,1);
commit;

insert into CARAC_SO values(1,1);
insert into CARAC_SO values(1,2);
insert into CARAC_SO values(1,3);
insert into CARAC_SO values(1,4);
insert into CARAC_SO values(1,5);
commit;

insert into CARAC_VER values(1,2);
insert into CARAC_VER values(2,2);
insert into CARAC_VER values(3,2);
insert into CARAC_VER values(4,2);
insert into CARAC_VER values(5,2);
	commit;

insert into SO_APL values(1,4,1);
insert into SO_APL values(2,3,2);
insert into SO_APL values(3,4,3);
insert into SO_APL values(4,1,4);
insert into SO_APL values(5,1,5);
commit;

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

insert into PRO_CONT values(1,'2013-04-01','2014-01-03',1,nulL,null,null,null);
insert into PRO_CONT values(2,'2013-05-02','2014-02-05',3,nulL,null,null,null);
insert into PRO_CONT values(3,'2013-06-03','2014-03-07',1,nulL,null,null,null);
insert into PRO_CONT values(4,'2013-07-04','2014-04-01',3,nulL,null,null,null);
insert into PRO_CONT values(5,'2013-08-05','2014-05-05',2,nulL,null,null,null);
	commit;

insert into ACCION values(1,'Inicio Sesion','Entrada al sistema');
insert into ACCION values(2,'Cierre de Sesion','Salida del sistema');	
insert into ACCION values(3,'Cambio de Clave','Cambio de clave');
insert into ACCION values(4,'Calificación','Realizo una Calificación');
insert into ACCION values(5,'Publicación','ERealizó una Publicación');
	commit;

insert into ROL values(1,'Platinum','Gerencia de Proyectos');
insert into ROL values(2,'Administrador','Administrador Web');
insert into ROL values(3,'Mantenimiento','Mantenimiento Web');
insert into ROL values(4,'Ventas','Gerencia de Ventas');
insert into ROL values(5,'Usuario','Cliente');
	commit;


create table PERSONA (
PER_Ci				bigint			not null,
PER_Primer_nom		varchar(10)		not null,
PER_Segundo_nom		varchar(10)		not null,
PER_Primer_ape		varchar(10)		not null,
PER_Segundo_ape		varchar(10)		not null,
PER_Correo_ele		varchar(50)		not null,
PER_Fecha_nac		date			not null,
PER_Telefono_cont	varchar(10)		not null,
PER_Tipo			varchar(10)		not null,
EMPL_Fecha_ing		date,
EMPL_Fecha_cul		date,
EMPL_Grupo_san		varchar(3),
EMPL_CAR_EMP_Id		bigint,
CLI_Estado_civ		varchar(20),
CLI_Fecha_reg		date		,
constraint	Per_pk	primary key (PER_Ci)
);

insert into PERSONA values(6915768,'ricardo',null,'arteaga','molina','molinaricardo@gmail.com','1966-01-10','1274567890','Cliente',null,nulL,null,null,null,null);
insert into PERSONA values(19556927,'andrea','carolina','camacho','gonzalez','andrea.kmacho@gmail.com','1988-11-25','1234567891','Cliente',null,nulL,null,null,null,null);
insert into PERSONA values(21456378,'alexander',null,'perez','alarcon','a.p@gmail.com','1989-01-15','1234567820','Empleado',null,nulL,null,null,null,null);
insert into PERSONA values(17865429,'ramon','alejandro','casas','gonzalez','ramon.acg@gmail.com','1978-10-05','1244567890','Cliente',null,nulL,null,null,null,null);
insert into PERSONA values(9876906,'jennifer',null,'socorro','gil','jsocgil@gmail.com','1991-07-28','1234567690','Empleado',null,nulL,null,null,null,null);
commit;

insert into USUARIO values(1,'akmacho','akmacho123',1,2,19556927);
insert into USUARIO values(2,'jsocgil','jsoc123',0,1,9876906);
insert into USUARIO values(3,'rcasasg','ramon123',0,4,17865429);
insert into USUARIO values(4,'rarte','rarte123',1,5,6915768);
insert into USUARIO values(5,'aperez','aperez123',1,2,21456378);
commit;

insert into TIPO_TC values(1,'Visa');
insert into TIPO_TC values(2,'MasterCard');
insert into TIPO_TC values(3,'American Express');
insert into TIPO_TC values(4,'Diners Club');
insert into TIPO_TC values(5,'JCB');
commit;

insert into BANCO values(1,'Banesco');
insert into BANCO values(2,'Mercantil');
insert into BANCO values(3,'Bank of America');
insert into BANCO values(4,'Provincial');
insert into BANCO values(5,'BOD');
commit;

insert into TARJETA_CREDITO values(1,'ricardo arteaga','2018-12-01',4111111111111111,1,6915768,4);
insert into TARJETA_CREDITO values(2,'andrea camacho','2021-12-01',4111111111111151,1,19556926,2);
insert into TARJETA_CREDITO values(3,'alexander perez','2016-12-01',4111111111111211,1,21456378,4);
insert into TARJETA_CREDITO values(4,'ramon gonzalez','2018-12-01',4111111111111131,1,17865429,4);
insert into TARJETA_CREDITO values(5,'jennifer socorro','2015-12-01',4111111111114111,1,9876906,4);
commit;

create table COMENTARIO(
COM_Id				bigint			not null,
COM_Fechahora		DATETIME		not null,
COM_Comentario		varchar(200)	not null,
COM_PER_Ci			bigint			not null,
COM_APL_Id			bigint,
COM_CONT_Id			bigint,
constraint	Com_pk	primary key(COM_Id)
);

insert into COMENTARIO values(1,'2012-07-09 02:01','Esta aplicacion viene con un defecto de instalacion',19556927,2,nulL);
insert into COMENTARIO values(2,'2013-12-15 03:04','Recomiendo este contenido',19556927,null,4);
insert into COMENTARIO values(3,'2010-03-26 16:22','Esta aplicacion es genial',19556927,1,nulL);
insert into COMENTARIO values(4,'2013-12-15 03:04','Muy lenta',19556927,null,4);
insert into COMENTARIO values(5,'2010-03-26 16:22','Mejor que la version anterior',19556927,1,nulL);
commit;




create table HISTORIAL(
HIST_Id				bigint			not null,
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
SUB_Id				bigint			not null,
SUB_Nombre			varchar(20)		not null,
constraint	Sub_pk	primary key(SUB_Id)
);

create table LENGUAJE(
LENG_Id				bigint			not null,
LENG_Nombre			varchar(20)		not null,
constraint	Leng_pk	primary key(LENG_Id)
);

create table DIRECTOR(
DIR_Id				bigint			not null,
DIR_Nombre			varchar(30)		not null,
constraint	Dir_pk  primary key(DIR_Id)
);

create table ACTOR(
ACT_Id				bigint			not null,
ACT_Nombre			varchar(30)		not null,
constraint	Act_pk	primary key(ACT_Id)
);

create table CATEGORIA_PEL(
CAT_PEL_Id			bigint			not null,
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
FACT_Id		bigint			not null,
FACT_Fecha_Emi date     		not null,
FACT_TC_Id		bigint		not null,
constraint fac_pk primary key (FACT_Id, FACT_TC_Id)
);


create table F_C_P (
F_C_P_Id				bigint		not null,
F_C_P_CONT_Id			bigint 				,
F_C_P_FACT_Id			bigint 		not null,
F_C_P_PRO_CONT_Id		bigint				,
F_C_P_PRO_CONT_PRO_Id	bigint				,
F_C_P_PRO_CONT_SO_APL_APL_Id		bigint				,
F_C_P_PRO_CONT_SO_APL_VER_Id		bigint				,
F_C_P_PRO_CONT_SO_APL_VER_SO_Id  bigint				,
constraint f_c_p primary key(F_C_P_Id, F_C_P_FACT_Id)
);

insert into F_C_P values(1,1,1,nulL,nulL,null,null,null);
insert into F_C_P values(2,3,1,nulL,nulL,null,null,null);	
insert into F_C_P values(3,5,3,nulL,nulL,null,null,null);
insert into F_C_P values(4,1,2,nulL,nulL,null,null,null);
insert into F_C_P values(5,2,4,nulL,nulL,null,null,null);
	commit;

create table CALIFICACION (
CAL_Id 				bigint     not null,
CAL_Valor			varchar(1) not null,
CAL_Fechahora		DATETIME   not null,
CAL_F_C_P_Id        bigint		not null,
constraint cal_pk primary key(CAL_Id));

insert into CALIFICACION values(1,'5','2013-04-03',1);
insert into CALIFICACION values(2,'9','2013-04-03',2);
insert into CALIFICACION values(3,'6','2013-04-03',2);
insert into CALIFICACION values(4,'3','2013-04-03',6);
insert into CALIFICACION values(5,'0','2013-04-03',5);
commit;
