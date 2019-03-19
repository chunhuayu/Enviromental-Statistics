# Simple Random Sample Design
data=read.csv("C:/Users/Phoebe/Desktop/Environmental statistics/HW1.csv")
x=sample(1:100,20)
x
SRS=data[x,2]
SRS
sd.srs=sd(SRS)
n=20
N=100
se.srs=(sd.srs/n^0.5)*(1-n/N)^0.5
se.srs
mean.SRS=mean(SRS)
est.tol=N*mean.SRS
est.tol

