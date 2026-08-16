# Questão 1
# a)
usuarios <- c(101, 102, 103, 104, 105, 106, 107, 108)
tempo <- c(45, 72, NA, 38, 91, 0/0, 56, 2/0)
print(usuarios)
print(tempo)

# b)
is.na(tempo)
is.nan(tempo)
is.infinite(tempo)
is.finite(tempo)

# c)
sum(is.na(tempo))
sum(is.nan(tempo))
sum(is.infinite(tempo))

# Questão 2
# a)
id <- 1001:1020
print(id)

# b)
id <- seq(1001,1020)
print(id)

# c)
id2 <- seq(2000, 2050, by=5)
print(id2)

# d)
id2 <- seq(2000, 2050, len=11)
print(id2)

# Desafio 1
desafio1 <- seq(0, 100, len=15)
print(desafio1)

# Questão 3
# a)
set.seed(123)
tempo_sessao <- round(
  runif(20, min = 5, max = 120),
  digits = 1
)
tempo_sessao

min(tempo_sessao)
max(tempo_sessao)
mean(tempo_sessao)
median(tempo_sessao)
var(tempo_sessao)
sd(tempo_sessao)
range(tempo_sessao)
summary(tempo_sessao)

# b)
# Média aritmética dos 20 valores entre 5 e 120 armazenados em 'tempo_sessao'

# Questão 4
usuario <- paste0("USR", 1:20)
usuario

# a)
sessao_60 <- tempo_sessao > 60
sessao_60

# b)
usuario[sessao_60]

# c)
sum(sessao_60)

# d)
sessao_30_90 <- tempo_sessao >= 30 & tempo_sessao <= 90
usuario[sessao_30_90]

# Desafio 2
sessao_atipica <- dados$tempo_sessao < 15 | dados$tempo_sessao > 100
sessao_atipica

usuarios_atipicos = dados$usuario[sessao_atipica]
usuarios_atipicos

# Questão 5
set.seed(321)
origem <- sample(
  c("Web", "Android", "iOS"),
  size = 30,
  replace = TRUE
)
origem

# a)
freq <- table(origem)
freq

# b) Android
# c) Web

# Desafio 3
set.seed(2026)

plataformas <- c("Web", "Android", "IOS")
probabilidades <- c(0.60, 0.25, 0.15)

# Simulação 100
acessos <- sample(plataformas, 100, TRUE, probabilidades)

tabela_d3 <- table(acessos)
tabela_d3

# Os resultados não ficam exatamente em 60%, 25% e 15% devido à variabilidade
# amostral inerente a um processo aleatório. Em uma amostra finita de apenas
# 100 observações, a frequência observada flutua ao redor da probabilidade
# teórica. Pela Lei dos Grandes Números, a proporção só se aproximará com
# exatidão dos percentuais definidos conforme o tamanho da amostra aumentar.

# Questão 6
servidor <- c("DB01", "DB02", "DB03", "DB04", "DB05")
tempo_resposta <- c(125, 87, 210, 95, 87)

# a)
sort(tempo_resposta)

# b)
servidores_ordenados <- servidor[order(tempo_resposta)]
servidores_ordenados

# c)
rank(tempo_resposta)

# d) Ficaram com 1.5 cada, já que o ties.method default de rank é "average"

# e)
rank(tempo_resposta, ties.method = "first")
# Agora o critério de desempate ficou pela ordem em que aparece

# Desafio 4
servidores_ordenados[1:3]

# Questão 7
set.seed(2026)
vendas <- round(
  runif(30, min = 50, max = 1000),
  digits = 2
)
vendas

# a)
max(vendas)

# b)
min(vendas)

# c)
sum(vendas)

# d)
vendas_media <- round(mean(vendas),2)
vendas_media

# e)
vendas_acima_media <- vendas > vendas_media
sum(vendas_acima_media)

# f)
sort(vendas, decreasing = TRUE)[1:5]

# g)
order(vendas, decreasing = TRUE)[1]

# h)
classificacao <- rep("abaixo_ou_igual_media", length(vendas))
classificacao[vendas > mean(vendas)] <- "acima_da_media"
freq_classificacao <- table(classificacao)
freq_classificacao


