library(IMIFA)
#load mcmc file
dataname <- 'Q25P226'
runname <- 'i1e3Q30'
drname <- paste(dataname,runname, sep='_')
mcmcfolder <- 'mcmc'
mcmcfile <- paste('mcmc', drname, '.Rdata', sep='')
load(file.path(mcmcfolder, mcmcfile))

#get results
res <- get_IMIFA_results(mcmc)

#save results file
resfolder <- 'res'
resfile <- paste('res', drname, '.Rdata', sep='')
save(file=file.path(resfolder, resfile), 'res')
