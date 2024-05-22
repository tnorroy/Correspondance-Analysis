library(FactoMineR)
library(Factoshiny)

#Importation
data.election <- read.table("path", header = TRUE, sep = ";", 
                           dec =",", row.names = 1)
data.election <-  data.election[,-13]

summary(data.election)
res1 <- Factoshiny(data.election)

#AFC and Graph
res.CA<-CA(data.election,col.sup=c(14,15),quanti.sup=c(16,17,18,19,20,21,22,23,24,25,26,27,28,29),graph=FALSE)
plot.CA(res.CA,selectCol='cos2 0.2',selectRow='cos2 0.75',unselect=0,cex=0.8,cex.main=0.8,cex.axis=0.8)
plot.CA(res.CA, choix='quanti.sup',title="Supplementary quantitative variables")
