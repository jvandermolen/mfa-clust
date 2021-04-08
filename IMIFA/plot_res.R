library(IMIFA)
#load results file
dataname <- 'Q25P226'
runname <- 'i1e3Q30'
drname <- paste(dataname,runname, sep='_')
resfolder <- 'res'
resfile <- paste('res', drname, '.Rdata', sep='')
load(file.path(resfolder, resfile))

#print results for number of factors
plot(res, plot.meth='Q')
#print predictive checks and covariance matrix errors
plot(res, plot.meth='error')
