library(IMIFA)
X <- sim_IMIFA_data(N=500, P=10000, Q=100)
save(file='../data/sim/simQ1e2P1e4.Rdata','X')
