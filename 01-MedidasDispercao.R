# Estatística Básica

# Parte 2 - Medidas de Disperção

# Definindo a pasta de trabalho
# Substituindo o caminho abaixo pela pasta do computador

setwd("D:/DSA_PowerBI/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset 
View(vendas)
str(vendas)
summary(vendas$Valor)

# Variância
var(vendas$Valor)

# Desvio Padrão
sd(vendas$Valor)