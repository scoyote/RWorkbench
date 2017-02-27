
print("Look at columns from dataset provided by SAS")

fit <- lm(df,formula=MPG_Highway ~ EngineSize + Cylinders + Horsepower + Weight + Wheelbase + Length)

fit.diag  <- cbind(fit$residuals,fit$fitted.values)

