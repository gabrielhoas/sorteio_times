# Definindo semente para geracao aleatoria dos times
rm(list=ls(all=TRUE))
graphics.off()
options(encoding="latin1")
options(repos=structure(c(CRAN="https://cran.r-project.org/")))
set.seed(20260119)

# Selecionando aleatoriamente jogadores por funcao
goleiro <- c(sample(x=c("Andre","Gabriel"), size=2),"","","","")[1:4]
fixo <- c(sample(x=c("Jesus","Leandro","Salazar"), size=3),"","","","")[1:4]
ala_direita <- c(sample(x=c("Maike","Mauricio","Thiago"), size=3),"","","","")[1:4]
ala_esquerda <- c(sample(x=c("Cantoni","Reginaldo","Teves"), size=3),"","","","")[1:4]
meia <- c(sample(x=c("Caua","Fisico","Pedro"), size=3),"","","","")[1:4]
pivo <- c(sample(x=c("Gabriel Henrique","Juninho","Miguel"), size=3),"","","","")[1:4]

# Alocando jogadores selecionados nos times
time_azul <- c(goleiro[1],fixo[1],ala_direita[1],ala_esquerda[1],meia[1],pivo[1])
time_vermelho <- c(goleiro[2],fixo[2],ala_direita[2],ala_esquerda[2],meia[2],pivo[2])
time_primeira_de_fora <- c(goleiro[3],fixo[3],ala_direita[3],ala_esquerda[3],meia[3],pivo[3])
time_segunda_de_fora <- c(goleiro[4],fixo[4],ala_direita[4],ala_esquerda[4],meia[4],pivo[4])

# Gerando resultado para divulgacao no grupo da pelada
if("gridExtra" %in% rownames(installed.packages())==FALSE)
{
  install.packages(pkgs="gridExtra")
}
library("gridExtra")
times_pelada <- matrix(data=c(time_azul,time_vermelho,time_primeira_de_fora,time_segunda_de_fora), nrow=4, ncol=6, byrow=TRUE, dimnames=list(c("time_azul","time_vermelho","time_primeira_de_fora","time_segunda_de_fora"),c("goleiro","fixo","ala_direita","ala_esquerda","meia","pivo")))
windows(width=90, height=15, pointsize=12, rescale="fit")
grid.table(noquote(obj=times_pelada), theme=ttheme_minimal())