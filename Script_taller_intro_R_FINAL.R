#TALLER DE INTRODUCCION A R

#SCRIPT1

# Ejercicio 1: Comandos básicos

1+3

3*15

10^2

# HELP usar ?
?plot

plot(sin,-2*pi,2*pi, col="magenta", main="Gráfica de sen(x)")

# Ejercicio 2: Graficos basico

datos1<-faithful

summary(datos1)

hist(datos1$eruptions, main="Erupciones", xlab = "Erupciones", col="green")

colnames(datos1)
colnames(datos1)<-c("Erupciones","Espera")
colnames(datos1)

boxplot(datos1$Erupciones,datos1$Espera, col=c("red","gold"),names=c("Erupciones","Espera"))
title("Comparación de tiempos")

boxplot(datos1$Erupciones,datos1$Espera, notch=TRUE, col=c("red","gold"),names=c("Erupciones","Espera"))
title("Comparación de tiempos")

subdatos1<-subset(datos1,datos1$Espera>70)

hist(subdatos1$Espera, col="blue")
hist(datos1$Espera, col="green")

#install.packages("vioplot")

library("vioplot")

vioplot(datos1$Erupciones,datos1$Espera,names=c("Erupciones","Espera"),col=c("red","gold"))

# Ejercicio 3: Datos categoricos

datos2<-read.csv("Datos_estudiantes.csv", header = TRUE)

hist(datos2$Edad)

plot(datos2)

boxplot(datos2$Edad,datos2$GastosMes)

par(mfrow=c(1,2))
boxplot(datos2$Edad, main="Edad")
boxplot(datos2$GastosMes, main="Gastos")

par(mfrow=c(1,1))

conteos<-table(datos2$Universidad)
barplot(conteos, legend=rownames(conteos), col=c("gold","red","green"))

barplot(conteos, legend=rownames(conteos), col=c("gold","red","green"), horiz=TRUE)

pie(conteos)

install.packages("plotrix")
library(plotrix)

pie3D(conteos)
pie3D(conteos, explode=0.1, labels=c("TEC","UCR","UNA"))


conteos2<-table(datos2$Sexo,datos2$Universidad)

barplot(conteos2, col=c("gold","red"),legend=rownames(conteos2))

plot(x=datos2$Edad,y=datos2$GastosMes, pch=17, cex=1.3, col="blue")

modelo<-lm(datos2$GastosMes~datos2$Edad)

modelo
abline(-913783, 55257)

summary(modelo)

install.packages("ncov2019")

library(nCov2019)

install.packages("maps")

x<- get_nCov2019(lang = 'en')


x

x['global',]


plot(x)


write.csv(datos1,file="Faithful_datos.csv")

pdf(file="PDF_imagen.pdf")
plot(x=datos2$Edad,y=datos2$GastosMes, pch=17, cex=1.3, col="blue")
dev.off()

jpeg(file="imagen.jpeg")
plot(x=datos2$Edad,y=datos2$GastosMes, pch=17, cex=1.3, col="blue")
dev.off()


?plot





