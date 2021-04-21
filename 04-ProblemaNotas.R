# Script 1 - Nota de Alunos

# Definindo a pasta de trabalho
# Substituindo o caminho abaixo pela pasta do computador

setwd("D:/DSA_PowerBI/Cap12")
getwd()

# Carregando o dataset
Notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(Notas)
str(Notas)
summary(Notas)

# Média de nota
meanA <- mean(Notas$TurmaA)
meanB <- mean(Notas$TurmaB)
print(meanA)
print(meanB)

# Variância das notas
varA <- var(Notas$TurmaA)
varB <- var(Notas$TurmaB)
print(varA)
print(varB)

# Desvio padrão das notas
sdA <- sd(Notas$TurmaA)
sdB <- sd(Notas$TurmaB)
print(sdA)
print(sdB)

# Coeficiente de variação das notas
cvA <- (sdA/meanA)*100
cvB <- (sdB/meanB)*100
print(cvA)
print(cvB)

# Cálculo do valor que mais aparece entre as notas (moda)
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

modaA <- moda(Notas$TurmaA)
modaB <- moda(Notas$TurmaB)
print(modaA)
print(modaB)