#######Con los datos de la Tabla 2, grafique T_f en función de 1/m ##########
#creando la tbl2
tf2 <- c(295.16, 294.16, 293.82, 293.65, 293.55)
m2 <- c(20, 10, 6.67, 5, 4)
#creando la tabla con los dos vectores y sera guardado en tbl2
tbl2 <- data.frame(m2 = m2, TF2=tf2)
tbl2
#graficando la tabla 2, y se observa tambien que es una recta, entonces se puede hacer su regresion lineal.
plot(tbl2)
#haciendo la regresion para la tabla 2 (y~x, data)
regresion2 <- lm(tf2 ~ m2, data = tbl2)
#mostrando el resumen de la regresion 2 donde se vera el intercepto y la pendiente.
summary(regresion2)
#graficando, y tabien se añadira la recta de la regresion
plot(tbl2, xlab="Inverso de las masas de agua (1/kg)", ylab="Temperaturas finales (K)", main="Temperaturas finales en función del inverso de las masas de agua", 
     font.main=7, pch=16, lwd=7, col="blue")
abline(regresion2, col="red")