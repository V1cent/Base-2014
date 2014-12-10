//ANDREA
alter table EMPRESA add constraint	fk_EMP_LUG 	foreign key (EMP_LUG_Id) references LUGAR (LUG_ID) on delete cascade;
alter table CARGO_EMP add constraint fk_CAR_EMP_EMP foreign key(CAR_EMP_EMP_Id) references EMPRESA (EMP_Id) on delete cascade;
alter table LUGAR add constraint fk_LUG_LUG foreign key (LUG_LUG_Id) references LUGAR (LUG_ID) on delete cascade;
alter table SISTEMA_OPERATIVO add constraint fk_SO_EMP foreign key (SO_EMP_Id) references EMPRESA (EMP_ID) on delete cascade;
alter table SISTEMA_OPERATIVO add constraint fk_SO_TI foreign key (SO_TI_Id) references TIPO_SO (TI_ID) on delete cascade;
alter table FACTURA add constraint fk_FAC_TC foreign key (FACT_TC_Id) references TARJETA_CREDITO (TC_ID) on delete cascade;
alter table VERSION add constraint fk_VER_SO foreign key (VER_SO_Id) references SISTEMA_OPERATIVO (SO_Id) on delete cascade;
alter table VIDEO add constraint fk_VID_APL foreign key (VID_APL_Id) references APLICACION (APL_ID) on delete cascade;
alter table VIDEO add constraint fk_VID_CONT foreign key (VID_CONT_Id) references CONTENIDO (CONT_Id) on delete cascade;
alter table IMAGEN add constraint fk_IMG_APL foreign key (IMG_APL_Id) references APLICACION (APL_ID) on delete cascade;
alter table IMAGEN add constraint fk_IMG_CONT foreign key (IMG_CONT_Id) references CONTENIDO (CONT_ID) on delete cascade;
alter table CALIFICACION add constraint fk_CAL_F_C_P foreign key (CAL_F_C_P_Id) references F_C_P (F_C_P_Id) on delete cascade;
alter table GEN_MU_DISC_MU add constraint fk_GEN_MU_DISC_MU foreign key (GEN_MU_DISC_MU_CONT_Id) references CONTENIDO (CONT_Id) on delete cascade;
alter table GEN_MU_DISC_MU add constraint fk_GEN_MU_DISC_MU_GE_MU foreign key (GEN_MU_DISC_MU_GE_MU_Id) references GENERO_MUSICA (GE_MU_Id) on delete cascade;
alter table GEN_LIB_LIB add constraint fk_GEN_LIB_LIB_CONT foreign key (GEN_LIB_LIB_CONT_Id ) references CONTENIDO (CONT_Id) on delete cascade;
alter table GEN_LIB_LIB add constraint fk_GEN_LIB_LIB_GEN_LIB foreign key (GEN_LIB_LIB_GEN_LIB_Id ) references GENERO_LIBRO(GEN_LIB_Id) on delete cascade;
alter table CARAC_SO add constraint fk_CARAC_SO_CARAC foreign key (CARAC_SO_CARAC_Id ) references CARACTERISTICA (CARAC_Id) on delete cascade;
alter table CARAC_SO add constraint fk_CARAC_SO_SO foreign key (CARAC_SO_SO_Id ) references SISTEMA_OPERATIVO (SO_Id) on delete cascade;
alter table CARAC_VER add constraint fk_CARAC_VER_CARAC foreign key (CARAC_VER_CARAC_Id) references CARACTERISTICA(CARAC_Id) on delete cascade;
alter table CARAC_VER add constraint fk_CARAC_VER_VER foreign key (CARAC_VER_VER_Id) references VERSION (VER_Id) on delete cascade;
alter table SO_APL add constraint fk_SO_APL_APL foreign key (SO_APL_APL_Id) references APLICACION (APL_ID) on delete cascade;
alter table SO_APL add constraint fk_SO_APL_VER foreign key (SO_APL_VER_Id) references VERSION (VER_Id) on delete cascade;
alter table SO_APL add constraint fk_SO_APL_VER_SO foreign key (SO_APL_VER_SO_Id) references VERSION (VER_SO_Id) on delete cascade;
alter table PRO_CONT add constraint fk_PRO_CONT_CONT foreign key (PRO_CONT_CONT_Id) references CONTENIDO (CONT_Id) on delete cascade;
alter table PRO_CONT add constraint fk_PRO_CONT_PRO foreign key (PRO_CONT_PRO_Id) references PROMOCION (PRO_Id) on delete cascade;
alter table PRO_CONT add constraint fk_PRO_CONT_SO_APL_VER foreign key (PRO_CONT_SO_APL_VER_Id) references SO_APL (SO_APL_VER_Id) on delete cascade;
alter table PRO_CONT add constraint fk_PRO_CONT_SO_APL_VER_SO foreign key (PRO_CONT_SO_APL_VER_SO_Id) references SO_APL (SO_APL_VER_SO_Id) on delete cascade;
alter table PRO_CONT add constraint fk_PRO_CONT_SO_APL_APL foreign key (PRO_CONT_SO_APL_APL_Id) references SO_APL (SO_APL_APL_Id) on delete cascade;
alter table F_C_P add constraint fk_F_C_P_CONT foreign key (F_C_P_CONT_Id) references CONTENIDO (CONT_Id) on delete cascade;
alter table F_C_P add constraint fk_F_C_P_FACT foreign key (F_C_P_FACT_Id) references FACTURA (FACT_Id) on delete cascade;
alter table F_C_P add constraint fk_F_C_P_PRO_CONT foreign key (F_C_P_PRO_CONT_Id) references PRO_CONT(PRO_CONT_Id) on delete cascade;
alter table F_C_P add constraint fk_F_C_P_PRO_CONT_PRO foreign key (F_C_P_PRO_CONT_PRO_Id) references PRO_CONT(PRO_CONT_PRO_Id) on delete cascade;
alter table F_C_P add constraint fk_F_C_P_PRO_CONT_SO_APL_APL foreign key(F_C_P_PRO_CONT_SO_APL_APL_Id) references PRO_CONT (PRO_CONT_SO_APL_APL_Id) ON delete cascade;
alter table F_C_P add constraint fk_F_C_P_PRO_CONT_SO_APL_VER foreign key(F_C_P_PRO_CONT_SO_APL_VER_Id) references PRO_CONT (PRO_CONT_SO_APL_VER_Id) ON delete cascade;
alter table F_C_P add constraint fk_F_C_P_PRO_CONT_SO_APL_VER_SO foreign key(F_C_P_PRO_CONT_SO_APL_VER_SO_Id) references PRO_CONT (PRO_CONT_SO_APL_VER_SO_Id) ON delete cascade;
alter table CONTENIDO add constraint fk_DISC_MU_DISQ foreign key (DISC_MU_DISQ_Id) references DISQUERA (DISQ_Id) on delete cascade;
alter table CONTENIDO add constraint fk_LIB_EDIT foreign key (LIB_EDIT_Id) references EDITORIAL (EDIT_Id) on delete cascade;
alter table CANT_DISC_MUS add constraint fk_CANT_DISC_MUS_CANT foreign key (CANT_DISC_MUS_CANT_Id) references CANTANTE (CANT_Id) on delete cascade;
alter table CANT_DISC_MUS add constraint fk_CANT_DISC_MUS_CONT foreign key (CANT_DISC_MUS_CONT_Id) references CONTENIDO (CONT_Id) on delete cascade;
alter table AUT_LIB add constraint fk_AUT_LIB_AUT foreign key (AUT_LIB_AUT_Id) references AUTOR (AUT_Id) on delete cascade;
alter table AUT_LIB add constraint fk_AUT_LIB_CONT foreign key (AUT_LIB_CONT_Id) references CONTENIDO (CONT_Id) on delete cascade;
alter table PEL_CAT_PEL add constraint fk_PEL_CAT_PEL_CAT_PEL foreign key (PEL_CAT_PEL_CAT_PEL_Id) references CATEGORIA_PEL (CAT_PEL_Id) on delete cascade;
alter table PEL_CAT_PEL add constraint fk_PEL_CAT_PEL_CONT foreign key (PEL_CAT_PEL_CONT_Id) references CONTENIDO (CONT_Id) on delete cascade;
alter table PERSONA add constraint fk_Empl_Car foreign key (EMPL_CAR_EMP_Id) references CARGO_EMP(CAR_EMP_Id) on delete cascade;
alter table USUARIO add constraint fk_Usu_Per foreign key (USU_PER_Ci) references PERSONA (PER_Ci) on delete cascade;
alter table USUARIO add constraint fk_Usu_Rol foreign key (USU_ROL_Id) references ROL (ROL_Id) on delete cascade;
alter table TARJETA_CREDITO add constraint fk_TC_Ban foreign key (TC_BAN_Id) references BANCO (BAN_Id) on delete cascade;
alter table TARJETA_CREDITO add constraint fk_TC_TTC foreign key (TC_TTC_Id) references TIPO_TC (TTC_Id) on delete cascade;
alter table COMENTARIO add constraint fk_COM_PER foreign key (COM_PER_Ci) references PERSONA (PER_Ci) on delete cascade;
alter table COMENTARIO add constraint fk_COM_APL foreign key (COM_APL_Id) references APLICACION (APL_ID) on delete cascade;
alter table COMENTARIO add constraint fk_COM_CONT foreign key (COM_CONT_Id) references CONTENIDO (CONT_ID) on delete cascade;
alter table HISTORIAL add constraint fk_HIST_USU foreign key (HIST_USU_Id) references USUARIO (USU_Id) on delete cascade;
alter table HISTORIAL add constraint fk_HIST_ACC foreign key (HIST_ACC_Id) references ACCION (ACC_Id) on delete cascade;
alter table HISTORIAL add constraint fk_HIST_MOD_USU foreign key (HIST_MOD_USU_Id) references USUARIO (USU_Id) on delete cascade;
alter table HISTORIAL add constraint fk_HIST_MOD_PRO foreign key (HIST_MOD_PRO_Id) references PROMOCION (PRO_Id) on delete cascade;
alter table HISTORIAL add constraint fk_HIST_MOD_APL foreign key (HIST_MOD_APL_Id) references APLICACION (APL_ID) on delete cascade;
alter table HISTORIAL add constraint fk_HIST_MOD_CONT foreign key (HIST_MOD_CONT_Id) references CONTENIDO (CONT_ID) on delete cascade;
alter table PEL_SUB add constraint fk_PS_PEL foreign key (PS_PEL_Id) references CONTENIDO (CONT_ID) on delete cascade;
alter table PEL_SUB add constraint fk_PS_SUB foreign key (PS_SUB_Id) references SUBTITULO (SUB_Id) on delete cascade;
alter table PEL_LEN add constraint fk_PL_PEL foreign key (PL_PEL_Id) references CONTENIDO (CONT_ID) on delete cascade;
alter table PEL_LEN add constraint fk_PL_LEN foreign key (PL_LENG_Id) references LENGUAJE (LENG_ID) on delete cascade;
alter table PEL_ACT add constraint fk_PA_PEL foreign key (PA_PEL_Id) references CONTENIDO (CONT_ID) on delete cascade;
alter table PEL_ACT add constraint fk_PA_ACT foreign key (PA_ACT_Id) references ACTOR (ACT_Id) on delete cascade;
alter table PEL_DIR add constraint fk_PD_PEL foreign key (PD_PEL_Id) references CONTENIDO (CONT_ID) on delete cascade;
alter table PEL_DIR add constraint fk_PD_DIR foreign key (PD_DIR_Id) references DIRECTOR (DIR_Id) on delete cascade;



 



