library(FactoMineR)

library(psych)

### Take the psy_in <- Consolidated_Psy data only

fit <- fa(psy_in[,4:13], nfactors=2, rotate="varimax",fm="pa")
fit # print results
plot(fit)
text(fit$scores[,1],fit$scores[,2],cex= 0.7, pos=3)


load <- fit$loadings[,1:2] 
plot(load,type="n",xlab="Component 1",ylab = "Component 2") # set up plot 
text(load,labels=names(psy_in[,4:13]),cex=0.8)
abline(h = 0, v = 0, col = "gray60")

write.csv(round(fit$scores,2),"C:\\Users\\karthik\\Google Drive\\IEQ Insite\\Data Management Team_\\Cannon Douglass Psychological Data\\factor_scores.csv")