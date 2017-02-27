
print("Look at columns from dataset provided by SAS")
fmla <- "MPG_Highway ~ EngineSize + Cylinders + Horsepower + Weight + Wheelbase + Length"

fit <- lm(df,formula=fmla)

fit.diag  <- cbind(fit$residuals,fit$fitted.values)

