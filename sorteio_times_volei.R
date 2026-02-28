# Definindo semente para geracao aleatoria dos times
rm(list=ls(all=TRUE))
graphics.off()
options(encoding="latin1")
options(repos=structure(c(CRAN="https://cran.r-project.org/")))
set.seed(20260301)

# Selecionando aleatoriamente jogadores por funcao
atleta1 <- c(sample(x=c("Bruno","Italo","Tarcio"), size=3),"","","","")[1:4]
atleta2 <- c(sample(x=c("Marcus","Matheusinho","Sabryna"), size=3),"","","","")[1:4]
atleta3 <- c(sample(x=c("Gabriel","Matheus","Pedro"), size=3),"","","","")[1:4]
atleta4 <- c(sample(x=c("Eduardo","Jesse","Walter"), size=3),"","","","")[1:4]
atleta5 <- c(sample(x=c("Aline","Giulya","Lais"), size=3),"","","","")[1:4]
atleta6 <- c(sample(x=c("Leticia","Mayara","Yasmin"), size=3),"","","","")[1:4]

# Alocando jogadores selecionados nos times
time1 <- c(atleta1[1],atleta2[1],atleta3[1],atleta4[1],atleta5[1],atleta6[1])
time2 <- c(atleta1[2],atleta2[2],atleta3[2],atleta4[2],atleta5[2],atleta6[2])
time3 <- c(atleta1[3],atleta2[3],atleta3[3],atleta4[3],atleta5[3],atleta6[3])
time4 <- c(atleta1[4],atleta2[4],atleta3[4],atleta4[4],atleta5[4],atleta6[4])

# Gerando resultado para divulgacao no grupo do volei
if("gridExtra" %in% rownames(installed.packages())==FALSE)
{
  install.packages(pkgs="gridExtra")
}
library("gridExtra")
times_volei <- matrix(data=c(time1,time2,time3,time4), nrow=4, ncol=6, byrow=TRUE, dimnames=list(c("time1","time2","time3","time4"),c("atleta1","atleta2","atleta3","atleta4","atleta5","atleta6")))
windows(width=90, height=15, pointsize=12, rescale="fit")
grid.table(noquote(obj=times_volei), theme=ttheme_minimal())