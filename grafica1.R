

##########Con los datos de la Tabla 1, grafique T_f en función de M################
tf1 <- c(293.62, 293.81, 293.92, 294.06, 294.25)
M <- c(20, 28, 33, 39, 47)
plot(M, tf1)
tbl1 <- data.frame(M = M, TF1 = tf1)
pairs(tbl1)
#"cor" (matriz de coeficientes de correlación), significa el grado  de relación lineal
cor(tbl1)
#Creando la regresión notacion(y~x, data)
regresion1 <- lm(TF1 ~ M, data = tbl1)
#Haciendo un resumen de la informacion que contiene regresion1, comando summary(regresion)
summary(regresion1)
#graficando la tabla 1
plot(tbl1,xlab="Masas de la Pesa (kg)", ylab="Temperaturas Finales (K)",main = "Temperaturas Finales en función de las Masas de la Pesa",
     pch=16, col="green", lwd=7, font.main= 7)
#Poniendo la recta de la regresion
abline(regresion1, col="orange")
#haciendo una leyeda, para que de mas información