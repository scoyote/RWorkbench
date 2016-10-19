#install.packages("miniCRAN", type="source")
install.packages("miniCRAN")

library("miniCRAN")
sessionInfo()
install.packages('data.table', dependencies=T)
install.packages('dplyr', dependencies=T)
install.packages('ggvis', dependencies=T)
install.packages('tidyr', dependencies=T)
install.packages('ggplot2', dependencies=T)
install.packages('igraph',dependencies = T)
install.packages('PMML',dependencies = T)


pkgs <- c("data.table", "dplyr", "ggvis", "tidyr", "ggplot2")

pkgDep(pkgs, enhances=TRUE)

p <- makeDepGraph(pkgs, enhances = TRUE)

set.seed(1)
plot(p, cex=1, vertex.size=15)

pth <- "C:\\Users\\sacrok\\Documents\\minicran"
makeRepo(pkgDep(pkgs), path=pth, download=TRUE)