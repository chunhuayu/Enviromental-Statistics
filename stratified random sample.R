# Stratified Random Sample Design 
data=read.csv("C:/Users/Phoebe/Desktop/Environmental statistics/hw.csv")
N=100
x=sample(1:100,20)
x
[1] 80 28  5  2 53 51 38 57 48 60 56 75 66 98  8 90 52 73 18 32
stem(x,scale=2)
 The decimal point is 1 digit(s) to the right of the |

  0 | 258
  1 | 8
  2 | 8
  3 | 28
  4 | 8
  5 | 12367
  6 | 06
  7 | 35
  8 | 0
  9 | 08

x.1=c(2,5,32)
x.2=c(8,18,28,38)
x.3=c(51,52,53,56,66,73,75)
x.4=c(48,57,60,80,90,98)
n=c(3,4,7,6)
StRS.1=data[x.1,2]
StRS.2=data[x.2,2]
StRS.3=data[x.3,2]
StRS.4=data[x.4,2]
sd.strs1=sd(StRS.1)
sd.strs2=sd(StRS.2)
sd.strs3=sd(StRS.3)
sd.strs4=sd(StRS.4)
sd.strsi=c(sd.strs1,sd.strs2,sd.strs3,sd.strs4)
M=c(24,16,36,24)
se.strsi=(sd.strsi/n^0.5)*(1-(n/M))^0.5
se.strs=(sum((M/N)^2*se.strsi^2))^0.5
se.strs
mean.strsi=c(mean(StRS.1),mean(StRS.2),mean(StRS.3),mean(StRS.4))
mean.strs=sum(mean.strsi*M/N)
est.tol.strs=round(N*mean.strs,0)
est.tol.strs
