library(GGMselect)
itest=6
# +++++++++++++++++++++++++++++++++++++++++++++++++
p=50
n=30
eta=0.1
dmax=4
iG = 7
iS = 9
set.seed(iG)
Gr <- simulateGraph(p,eta)
set.seed(iS*(pi/3.1415)**iG)
X <- rmvnorm(n, mean=rep(0,p), sigma=Gr$C)

K=2.5
# ptm <- proc.time()
print( selectFast(X, dmax, K, family=c("EW","LA","C01")))
# cat("Elapsed time ",  proc.time()-ptm,"\n")
cat ("End of test ", itest)

