library(IMIFA)
#load data file
datafolder <- file.path('..','data', 'sim')
dataname <- 'simQ25P226'
load(file.path(datafolder,paste(dataname,'.Rdata', sep='')))

#run mcmc
#assumes data is stored in a variable called 'X'
mcmc <- mcmc_IMIFA(X, method="IFA", n.iters=1000, range.Q=30)

#save file
runname <- 'i1e3Q30'
savefolder <- 'mcmc'
filename <- paste('mcmc', dataname,'_',runname,'.Rdata', sep='')
filename <- sub('mcmcsim', 'mcmc', filename)
save(file=file.path(savefolder,filename), 'mcmc')
