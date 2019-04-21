require(ggplot2);

source("multiplot.R");
source("funcoes_plot_tg.R");

# Plot das quantidades de dados após filtro manual 
gesto <- c("Desculpa", "Amigo", "Telefone");

# Ordenando os dados
## Grupo 1
quantidade <- c(160 + 19, 168 + 38, 151 + 38);
dados <- data.frame(gesto, quantidade);
dados$gesto <- factor(dados$gesto, levels=dados$gesto[order(dados$quantidade)]);

plot_dados_grupo1 <- plot_barra_filtro(dados, "Gestos", "Quantidade de imagens", 0.3, "Grupo Treino/Teste");
## Grupo 2
quantidade <- c(18, 19, 10);

dados <- data.frame(gesto, quantidade);
dados$gesto <- factor(dados$gesto, levels=dados$gesto[order(dados$quantidade)]);

plot_dados_grupo2 <- plot_barra_filtro(dados, "Gestos", "Quantidade de imagens", 0.3, "Grupo Validação");
## Plot unificando os dois grupos
multiplot(plot_dados_grupo1, plot_dados_grupo2, cols = 1);

# Plot dos dados após separação de dados de treino e teste
dados_treino <- c(168, 160, 151);
dados_teste <- c(38, 19, 38);

dados <- data.frame(tipo = c("Treino", "Teste"), quantidade = c(sum(dados_treino), sum(dados_teste)));
dados$tipo <- factor(dados$tipo, levels = dados$tipo[order(dados$quantidade, decreasing=TRUE)]); 

plot_barra_separacao(dados, "Tipo", "Quantidade de imagens", 0.3);

# Plot das quantidades após aplicação do Data Augmentation
amigo <- 249;
desculpa <- 226;
telefone <- 225;

gesto <- c("Desculpa", "Amigo", "Telefone");
quantidade <- c(desculpa, amigo, telefone);

# Ordenando os dados
dados <- data.frame(gesto, quantidade);
dados$gesto <- factor(dados$gesto, levels=dados$gesto[order(dados$quantidade)]);

plot_barra_filtro(dados, "Gestos", "Quantidade de imagens", 0.3, "")
