#Vecctors
#Logical

vtr1 = c(TRUE,FALSE)

#Numeric
vtr2 = c(12,123,33.22,1419999)

#Integer
vtr3 = c(35L,58L,146L)# Only with L is integer

vtr5 = c(TRUE,35L,3.14)
vtr6 = c("Hello", FALSE, 65L)

#Matrix
mtr = matrix(c(5:29), 5,5)

#Array
arr = array(c(1:9), dim = c(3, 3,4, 2))
arr2 = array(c(1:6), dim = c(3, 3,4, 2))

#List
vtr7 = c(5.678,32,95,31.6)
vtr8 = c("Hi","ok","tks")
mylist = list(vtr8,vtr7,vtr1)

#DataFrame
vtrr1 = c(1:5)
vtrr2 = c("a","b","c","d","e")
vtrr3 = c(15,16,17,18,19)
data.frame(vtrr1,vtrr2,vtrr3)
