# H2O script

library(h2o);
h2o.connect(ip="localhost", port=54321)
df.hex <- as.h2o(df)
h2o.cor(df.hex,use='everything')
