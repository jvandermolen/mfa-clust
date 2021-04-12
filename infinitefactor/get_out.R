library(infinitefactor)
#load data file
datafolder <- file.path('..','data', 'sim')
dataname <- 'simQ25P226'
load(file.path(datafolder,paste(dataname,'.Rdata', sep='')))

#run mcmc with burn in and thinning as IMIFA and time it
#assumes data is stored in a variable called 'X'
X <- as.matrix(X)
nrun <- 1e3
system.time(out <- linearMGSP(X, nrun=nrun, burn=nrun/5, thin=2, kinit=30))

#save file
runname <- 'i1e3Q30'
savefolder <- 'out'
filename <- paste('out', dataname,'_',runname,'.Rdata', sep='')
filename <- sub('outsim', 'out', filename)
save(file=file.path(savefolder,filename), 'out')
