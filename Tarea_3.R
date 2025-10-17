library(readxl)

info<- read.csv("C:/Users/rodri/OneDrive/Documentos/Maestria/Cuarto_trimestre/Mineria de datos/Fp_growth/violencia_intrafamiliar.csv")
summary(info)

info_fp<- info[, c("HEC_RECUR_DENUN", "INST_DENUN_HECHO" , "HEC_MES", "HEC_DEPTO", "VIC_EDAD", "VIC_ESCOLARIDAD", "VIC_EST_CIV", "VIC_GRUPET", "VIC_TRABAJA", "VIC_DEDICA", "MEDIDAS_SEGURIDAD", "HEC_AREA")]

reglas_fp <- fim4r(info_fp, method="fpgrowth", target ="rules", supp =.2, conf=.5)
rf <- as(reglas_fp, "data.frame")


info_fp1<-info[info$MEDIDAS_SEGURIDAD == 1 ,c("HEC_RECUR_DENUN", "INST_DENUN_HECHO", "HEC_MES", "HEC_DEPTO", "VIC_EDAD", "VIC_ESCOLARIDAD", "VIC_EST_CIV", "VIC_GRUPET", "VIC_TRABAJA", "VIC_DEDICA", "MEDIDAS_SEGURIDAD", "HEC_AREA")]
summary(info_fp1$INST_DENUN_HECHO)
reglas_fp_1<- fim4r(info_fp1, method="fpgrowth", target ="rules", supp =.2, conf=.5)
rf_1<- as(reglas_fp_1, "data.frame")
rf_1

unique(info_fp1$INST_DENUN_HECHO)

info_fp2<-info[info$MEDIDAS_SEGURIDAD == 1 ,c("HEC_RECUR_DENUN", "INST_DENUN_HECHO", "HEC_MES", "HEC_DEPTO", "VIC_EDAD", "VIC_ESCOLARIDAD", "VIC_EST_CIV", "VIC_GRUPET", "VIC_TRABAJA", "VIC_DEDICA", "MEDIDAS_SEGURIDAD", "HEC_AREA")]
reglas_fp_2<- fim4r(info_fp2, method="fpgrowth", target ="rules", supp =.2, conf=.5)
rf_2<- as(reglas_fp_2, "data.frame")
rf_2

unique(info_fp1$INST_DENUN_HECHO)
