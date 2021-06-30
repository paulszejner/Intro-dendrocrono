
install.packages("measuRing")
library(measuRing) 
image1 <- system.file("ALT04A.tif", package = "measuRing")
image1
detect1 <- ringDetect(image1, segs = 3)
detect1 <- update(detect1, origin = -0.03)   
detect1 <- update(detect1, last.yr=2018)
Toinc <- ringSelect(detect1)
detect2 <- update(detect1, inclu = Toinc)
Toexc <- ringSelect(detect2,any.col = FALSE)
detect3 <- update(detect2,exclu=Toexc)
str(detect3)
rings <- detect3$'ringWidths'
row.names(rings) <- rings$year

rings$year <- NULL

graphics.off()

plot(x=row.names(rings), y=rings[,1],type='l',col = 'red',main = "Ring Width TEST", xlab = 'Year',ylab = 'Width (mm)') 

# Guardar al formato Tucson
library(dplR)
write.rwl(rings, fname = "C:/R/ALT04A.rwl", format="tucson", prec=0.001)
