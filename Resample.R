library("raster")

#Precipitacion####
maskprec<-raster("prec_mx/1910-1949/01.tif")
ppt_t1<-stack(list.files("F:/COBERTURAS/CLIMA_ANGELA/PeriodosClimaticos_tif/Meses/Precipitacion/Ppt_1910-1949", 
                         pattern = ".tif$",full.names = TRUE))
ppt_t1.r<-resample(ppt_t1, maskprec)

ppt_t2<-stack(list.files("F:/COBERTURAS/CLIMA_ANGELA/PeriodosClimaticos_tif/Meses/Precipitacion/Ppt_1950-1979", 
                         pattern = ".tif$",full.names = TRUE))
ppt_t2.r<-resample(ppt_t2, maskprec)

ppt_t3<-stack(list.files("F:/COBERTURAS/CLIMA_ANGELA/PeriodosClimaticos_tif/Meses/Precipitacion/Ppt_1980-2009", 
                         pattern = ".tif$",full.names = TRUE))
ppt_t3.r<-resample(ppt_t3, maskprec)

rm(ppt_t1, ppt_t3, ppt_t2, maskprec)

#TemperaturaMaxima####
masktmax<-raster("tmax_mx/1910-1949/01.tif")
tmax_t1<-stack(list.files("F:/COBERTURAS/CLIMA_ANGELA/PeriodosClimaticos_tif/Meses/TemperaturaMaxima/tmax_1910-1949", 
                          pattern = ".tif$",full.names = TRUE))
tmax_t1.r<-resample(tmax_t1, maskprec)

tmax_t2<-stack(list.files("F:/COBERTURAS/CLIMA_ANGELA/PeriodosClimaticos_tif/Meses/TemperaturaMaxima/tmax_1950-1979", 
                          pattern = ".tif$",full.names = TRUE))
tmax_t2.r<-resample(tmax_t2, maskprec)

tmax_t3<-stack(list.files("F:/COBERTURAS/CLIMA_ANGELA/PeriodosClimaticos_tif/Meses/TemperaturaMaxima/tmax_1980-2009", 
                          pattern = ".tif$",full.names = TRUE))
tmax_t3.r<-resample(tmax_t3, maskprec)
rm(masktmax, tmax_t3, tmax_t2, tmax_t1)
#TemperaturaMinima####
maskprec<-raster("tmin_mx/1910-1949/01.tif")
tmin_t1<-stack(list.files("F:/COBERTURAS/CLIMA_ANGELA/PeriodosClimaticos_tif/Meses/TemperaturaMiniman/tmin_1910-1949", 
                          pattern = ".tif$",full.names = TRUE))
tmin_t1.r<-resample(tmin_t1, maskprec)

tmin_t2<-stack(list.files("F:/COBERTURAS/CLIMA_ANGELA/PeriodosClimaticos_tif/Meses/TemperaturaMiniman/tmin_1950-1979", 
                          pattern = ".tif$",full.names = TRUE))
tmin_t2.r<-resample(tmin_t2, maskprec)

tmin_t3<-stack(list.files("F:/COBERTURAS/CLIMA_ANGELA/PeriodosClimaticos_tif/Meses/TemperaturaMiniman/tmin_1980-2009", 
                          pattern = ".tif$",full.names = TRUE))
tmin_t3.r<-resample(tmin_t3, maskprec)
rm(masktmin, tmin_t1,tmin_t3, tmin_t2)
