# H2O script

library(h2o);
h2o.connect(ip="localhost", port=54321)
h2o.init()
prosPath <- system.file("extdata", "prostate.csv", package="h2o")
prostate.hex <- h2o.uploadFile(path = prosPath)
h2o.cor(prostate.hex,use='everything')
