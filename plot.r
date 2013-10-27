# The working directory should be set to the directory containing the 'laws.r' file
# setwd()

#Load the loads from the 'laws.r' file
source('laws.r')

x <-seq(0,500,0.5)
plot(x=x, y=f_netwon_stefan(T=x,Ta=400,Tr=350,h=0.1,k=1e-9), type="l", col="red")
