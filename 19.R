library(plyr)

# act 1 -------------------------------------------------------------------


accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc

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
mean(especies)
sum(especies)
boxplot(especies)

# ¿Que especie presenta mayor proporción? ---------------------------------
R= 


# Act 3 -------------------------------------------------------------------

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?d1=1")
  
