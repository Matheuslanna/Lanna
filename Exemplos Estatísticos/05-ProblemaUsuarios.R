# Script 2 - Tabela de Frequ�ncia

# Definindo a pasta de trabalho
# Substituindo o caminho abaixo pela pasta do computador

setwd("D:/DSA_PowerBI/Cap12")
getwd()

# Carregando o dataset
dados <- read.csv("Usuarios.csv",
                  dec = ".",            # Ponto como decimal
                  sep = ",",            # V�rgula como separador de dados
                  h = T,                # Primeira linha como cabe�alho
                  fileEncoding = "windows-1252")


# Visualizando e sumarizando os dados
View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)

# Tabela de Frequ�ncia Absolutas 
freq <- table(dados$grau_instrucao)    # Contador de frequ�ncia
View(freq)

# Tabela de Frequ�ncia Relativas
freq_rel <- prop.table(freq)           # Frequ�ncia relativa entre 0 e 1
View(freq_rel)

# Porcentagem (100*freq_rel)
p_freq_rel <- 100*prop.table(freq_rel) # Frequ�ncia relativa em %
View(p_freq_rel)

# Adiciona linhas de total
View(freq)
freq <- c(freq, sum(freq))             # Adiciona uma �ltima linha com total
names(freq)[4] <- "Total"              # Adiciona um r�tulo pra �ltima linha
View(freq)

# Tabela Final com Todos Valores

# Calculamos frequ�ncia relativa e frequ�ncia proporcional
freq_rel <- c(freq_rel, sum(freq_rel)) # Adiciona uma �ltima linha com total
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel)) # Adiciona uma �ltima linha com total

# Tabela final com todos vetores
tabela_final <- cbind(freq,
                     freq_rel = round(freq_rel, digits = 2),
                     p_freq_rel = round(p_freq_rel, digits = 2))
View(tabela_final)

