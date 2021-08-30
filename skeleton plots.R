#Master Cipres

# skeleton plot
require(dplR)

#master <- read.rwl("10.txt")
#master.rwi<- detrend(master, method="ModNegExp")#standardize
#master.crn <- chron(master.rwi,prefix = "10",prewhiten = F)
#x <-  master.crn[,1]
#x.yrs <- as.numeric(rownames(master.crn))
#x.name <- colnames( master.crn)[1]

## para muestras

x <- read.rwl("7.txt")
x <- x[4]
x.yrs <- as.numeric(rownames(x))
x.name <- colnames(x)
x.name
pdf("102a1.pdf",width = 10, height = 7.5, paper = 'USr')

skel.plot(x, yr.vec = x.yrs, sname= "102a1", master=FALSE)
dev.off()

#eps

  rwl.stats(master)
  rwi.stats(master.rwi)
  rwi.stats.running(master.rwi)