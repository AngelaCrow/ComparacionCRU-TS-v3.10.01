library("raster")
setwd("C:/Proyectos/ClimaPeriodos/")

ppt_t1.CRU<-sum(stack(list.files("prec_mx/1910-1949/meses/",pattern = ".tif$",full.names = TRUE)))
ppt_t1.CRU<-ppt_t1.CRU*0.1
ppt_t2.CRU<-sum(stack(list.files("prec_mx/1950-1979/meses/",pattern = ".tif$",full.names = TRUE)))
ppt_t2.CRU<-ppt_t2.CRU*0.1
ppt_t3.CRU<-sum(stack(list.files("prec_mx/1980-2009/meses/",pattern = ".tif$",full.names = TRUE)))
ppt_t3.CRU<-ppt_t3.CRU*0.1

tmax_t1.CRU<-mean(stack(list.files("tmax_mx/1910-1949/meses/",pattern = ".tif$",full.names = TRUE)))
tmax_t1.CRU<-tmax_t1.CRU*0.1
tmax_t2.CRU<-mean(stack(list.files("tmax_mx/1950-1979/meses/",pattern = ".tif$",full.names = TRUE)))
tmax_t2.CRU<-tmax_t2.CRU*0.1
tmax_t3.CRU<-mean(stack(list.files("tmax_mx/1980-2009/meses/",pattern = ".tif$",full.names = TRUE)))
tmax_t3.CRU<-tmax_t3.CRU*0.1

tmin_t1.CRU<-mean(stack(list.files("tmin_mx/1910-1949/meses/",pattern = ".tif$",full.names = TRUE)))
tmin_t1.CRU<-tmin_t1.CRU*0.1
tmin_t2.CRU<-mean(stack(list.files("tmin_mx/1950-1979/meses/",pattern = ".tif$",full.names = TRUE)))
tmin_t2.CRU<-tmin_t2.CRU*0.1
tmin_t3.CRU<-mean(stack(list.files("tmin_mx/1980-2009/meses/",pattern = ".tif$",full.names = TRUE)))
tmin_t3.CRU<-tmin_t3.CRU*0.1

#Comparacion

dppt_t1<-ppt_t1.CRU-ppt_t1.r
plot(dppt_t1)
writeRaster(dppt_t1, "dppt_t1.tif")
dppt_t2<-ppt_t2.CRU-ppt_t2.r
plot(dppt_t2)
writeRaster(dppt_t2, "dppt_t2.tif")
dppt_t3<-ppt_t3.CRU-ppt_t3.r
plot(dppt_t3)
writeRaster(dppt_t3, "dppt_t3.tif")

dtmax_t1<-tmax_t1.CRU-tmax_t1.r
plot(dtmax_t1)
writeRaster(dtmax_t1, "dtmax_t1.tif")
dtmax_t2<-tmax_t2.CRU-tmax_t2.r
plot(dtmax_t2)
writeRaster(dtmax_t2, "dtmax_t2.tif")
dtmax_t3<-tmax_t3.CRU-tmax_t3.r
plot(dtmax_t3)
writeRaster(dtmax_t3, "dtmax_t3.tif")

dtmin_t1<-tmin_t1.CRU-tmin_t1.r
plot(dtmin_t1)
writeRaster(dtmin_t1, "dtmin_t1.tif")
dtmin_t2<-tmin_t2.CRU-tmin_t2.r
plot(dtmin_t2)
writeRaster(dtmin_t2, "dtmin_t2.tif")
dtmin_t3<-tmin_t3.CRU-tmin_t3.r
plot(dtmin_t3)
writeRaster(dtmin_t3, "dtmin_t3.tif")
