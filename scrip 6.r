
# Adriana Concepción Garza Pérez ------------------------------------------


# 1912963 -----------------------------------------------------------------


# 20/02/2020 --------------------------------------------------------------



library(plyr)


# act 1 ------------------------------------------------------------------


accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc
#Agregar una nueva columna a la 80 "acc" y agregar la formula de 
#simple para calcular el porcentaje

(acc$freq/sum(acc$freq)*100)
acc

acc$rf<- acc$freq/sum(acc$freq)*100
acc

barplot(acc$freq, names.arg = acc$x, main= "accidentes en al aserradero",
        col = "pink")

mean(accidentes)
sum(accidentes)
boxplot(accidentes)


# act 2 -------------------------------------------------------------------
especies <- c("F", "H", "F", "C", "F", "A", "H", "F",
              "H", "C", "A", "C", "F", "H", "H", "H",
              "F", "H", "A", "C", "F", "H", "H", "F")
esp <- count(especies)
esp

(esp$freq/sum(esp$freq)*100)
esp

esp$rf<- esp$freq/sum(esp$freq)*100
esp

barplot(esp$freq, names.arg = esp$x, main= "frecuencia relativa",
        col = "pink")
esp$abs<- esp$freq/sum(esp$freq)*100
esp
barplot(esp$freq, names.arg = esp$y, main= "frecuencia absoluta",
        col = "red")


# ¿Que especie presenta mayor proporción? ---------------------------------
R= 
  
  
  
  # Act 3 -------------------------------------------------------------------


library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1") 

#encontrar la frecuencia de las variables vecinos y especie

vecyesp <- table(conjunto$Vecinos,conjunto$Especie)
vecyesp  
.vc <- table(conjunto$Vecinos, conjunto$Especie)
.vc1 <-addmargins(as.table(.vc))

barplot(table(conjunto$Vecinos, conjunto$Especie), main = "cantidad de especies",
        col = "blue")
mean(conjunto$Vecinos)
sum(conjunto$Altura)



# Act 4 -------------------------------------------------------------------


altura <- conjunto$Altura
range(altura)


intervalo <- seq(7.5, 22.5, by=5)
intervalo



altura.table <- cut(altura, intervalo)
table(altura.table)


par(mfrow=c(1,2))
hist(conjunto$Altura, breaks = intervalo, 
     main = "Datos con intervalo definido")
hist(altura, main = "Datos sin intervalo definido")
par(mfrow=c(1,2))


# act 5 -------------------------------------------------------------------

Diametro <- conjunto$Diametro
range(Diametro)


Intervalo <- seq(7.5, 25.5, by=2.5)
Intervalo

par(mfrow=c(1,2))
hist(conjunto$Diametro, col = "black",   main = "Sin modificar", xlab = "Diametro")
hist(conjunto$Diametro, breaks = Intervalo, col = "brown",   main = "Datos intervalos")
par(mfrow=c(1,1))


