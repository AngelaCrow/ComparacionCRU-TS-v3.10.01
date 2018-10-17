library("raster")

setwd("C:/Proyectos/ClimaPeriodos/")

months <- 1:12
months

##Precipitacion####
#1910-1949
lapply(months, function(x){
  year<-stack(Sys.glob(paste0("prec_mx/1910-1949/*_",x,".tif")))
  print(year)
  ymean<-mean(year)
  plot(ymean, main = x)
  writeRaster(ymean,paste0("prec_mx/1910-1949/0",x), format = "GTiff", overwrite=TRUE)
  return(year)
})

#1950-1979
lapply(months, function(x){
  year<-stack(Sys.glob(paste0("prec_mx/1950-1979/*_",x,".tif")))
  print(year)
  ymean<-mean(year)
  plot(ymean, main = x)
  writeRaster(ymean,paste0("prec_mx/1950-1979/0",x), format = "GTiff", overwrite=TRUE)
  return(year)
})

#1980-2009
lapply(months, function(x){
  year<-stack(Sys.glob(paste0("prec_mx/1980-2009/*_",x,".tif")))
  print(year)
  ymean<-mean(year)
  plot(ymean, main = x)
  writeRaster(ymean,paste0("prec_mx/1980-2009/0",x), format = "GTiff", overwrite=TRUE)
  return(year)
})

##Temperatura M?xima####
#1910-1949
lapply(months, function(x){
  year<-stack(Sys.glob(paste0("tmax_mx/1910-1949/*_",x,".tif")))
  print(year)
  ymean<-mean(year)
  plot(ymean, main = x)
  writeRaster(ymean,paste0("tmax_mx/1910-1949/0",x), format = "GTiff", overwrite=TRUE)
  return(year)
})

#1950-1979
lapply(months, function(x){
  year<-stack(Sys.glob(paste0("tmax_mx/1950-1979/*_",x,".tif")))
  print(year)
  ymean<-mean(year)
  plot(ymean, main = x)
  writeRaster(ymean,paste0("tmax_mx/1950-1979/0",x), format = "GTiff", overwrite=TRUE)
  return(year)
})

#1980-2009
lapply(months, function(x){
  year<-stack(Sys.glob(paste0("tmax_mx/1980-2009/*_",x,".tif")))
  print(year)
  ymean<-mean(year)
  plot(ymean, main = x)
  writeRaster(ymean,paste0("tmax_mx/1980-2009/0",x), format = "GTiff", overwrite=TRUE)
  return(year)
})

##Temperatura M?nima####
#1910-1949
lapply(months, function(x){
  year<-stack(Sys.glob(paste0("tmin_mx/1910-1949/*_",x,".tif")))
  print(year)
  ymean<-mean(year)
  plot(ymean, main = x)
  writeRaster(ymean,paste0("tmin_mx/1910-1949/0",x), format = "GTiff", overwrite=TRUE)
  return(year)
})

#1950-1979
lapply(months, function(x){
  year<-stack(Sys.glob(paste0("tmin_mx/1950-1979/*_",x,".tif")))
  print(year)
  ymean<-mean(year)
  plot(ymean, main = x)
  writeRaster(ymean,paste0("tmin_mx/1950-1979/0",x), format = "GTiff", overwrite=TRUE)
  return(year)
})

#1980-2009
lapply(months, function(x){
  year<-stack(Sys.glob(paste0("tmin_mx/1980-2009/*_",x,".tif")))
  print(year)
  ymean<-mean(year)
  plot(ymean, main = x)
  writeRaster(ymean,paste0("tmin_mx/1980-2009/0",x), format = "GTiff", overwrite=TRUE)
  return(year)
})
