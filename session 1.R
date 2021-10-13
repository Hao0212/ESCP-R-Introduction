# Load and view Data
library(MASS)
View(quine)

#Get unique values
unique(quine$Days)

#Categorical data: Summary table
table(quine$Eth)
table(quine$Eth) / sum(table(quine$Eth))

#Categorical data: contingency table
table(quine$Eth, quine$Sex)
table(quine$Eth, quine$Sex) / rowSums(table(quine$Eth, quine$Sex))
t(t(table(quine$Eth, quine$Sex)) / colSums(table(quine$Eth, quine$Sex))) 
table(quine$Eth, quine$Sex) / sum(table(quine$Eth, quine$Sex)) 
addmargins(table(quine$Eth, quine$Sex))

#Numerical data: sort values (Ordered Array)
sort(quine$Days)
sort(quine$Days, decreasing=T)

#Numerical data: frequency distribution
bin <- table(cut(quine$Days, c(-10, 0, 10, 20, 30, 40, 50, 60, 70, 90)))

# Numerical data: cumulative frequency distribution
cumsum(bin)

#Numerical data: percentage distribution
bin / sum(bin)

# Numerical data: cumulative percentage distribution
cumsum(bin) / sum(bin)
