plot_barra_filtro <- function(dados, x_label, y_label, width, title) {
  dados_filtrados_plot <- ggplot(data=dados, aes(y=quantidade, x=gesto)) + 
                          geom_bar(stat="identity", width=width) + 
                          theme_bw() + coord_flip();
  
  dados_filtrados_plot <- dados_filtrados_plot + theme(legend.position = "none")
  dados_filtrados_plot <- dados_filtrados_plot + 
                            labs(y = y_label, x = x_label);
  dados_filtrados_plot <- dados_filtrados_plot + ggtitle(title);
  
  return(dados_filtrados_plot);
}

plot_barra_separacao <- function(dados, x_label, y_label, width) {
  dados_filtrados_plot <- ggplot(data=dados, aes(y=quantidade, x=tipo)) + 
    geom_bar(stat="identity", width=width) + 
    theme_bw()
  
  dados_filtrados_plot <- dados_filtrados_plot + theme(legend.position = "none")
  dados_filtrados_plot <- dados_filtrados_plot + 
    labs(y = y_label, x = x_label);
  
  return(dados_filtrados_plot);
}
