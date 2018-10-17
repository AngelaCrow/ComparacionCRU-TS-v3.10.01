library("raster")

maskprec<-raster("prec_mx/1910-1949/01.tif")
ppt_t1<-stack(list.files("F:/COBERTURAS/CLIMA_ANGELA/PeriodosClimaticos_tif/Meses/Precipitacion/Ppt_1910-1949", 
                         pattern = ".tif$",full.names = TRUE))

ppt_t1.r<-resample(ppt_t1, maskprec)
plot(ppt_t1.r)
