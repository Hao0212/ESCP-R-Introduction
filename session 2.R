#1 Load and view data
library(MASS)
View(quine)

#2 Mean and median:
mean(quine$Days)
median(quine$Days)

#3 Mode

getmode <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
getmode(quine$Eth)


#4 Geometric mean:
library(psych) 
geometric.mean(c(0.5, 2))

#5 Range, variance and standard deviation:
range(quine$Days)
var(quine$Days)
sd(quine$Days)

#6 Coefficient of variation (CV):
sd(quine$Days)/mean(quine$Days)*100

#7 Z-score:
(15-mean(quine$Days))/sd(quine$Days)

#8 Skewness and kurtosis:
install.packages("moments")
library(moments)
skewness(quine$Days)
kurtosis(quine$Days)

#9 Quartile:
quantile(quine$Days) #type? quantile(quine$Days, probs=seq(0,1,0.1))


#10 Five-number summary:
summary(quine$Days)
summary(quine)

#11 Boxplot:
boxplot(quine$Days, outline=F, horizontal=T)

#12 Covariance and coefficient of correlation
newDays <- quine$Days + sample(1:50, length(quine$Days), replace=T) 
cov(quine$Days, newDays)
cor(quine$Days, newDays)
