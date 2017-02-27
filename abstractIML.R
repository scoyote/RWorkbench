

fit <- lm(df,formula=fmla)

fit.diag  <- cbind(fit$residuals,fit$fitted.values)

print(summary(fit))  