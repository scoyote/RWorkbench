

fit <- lm(df,formula=fmla)

fit.diag  <- cbind(fit$residuals,fit$fitted.values)

summary(fit.diag)  