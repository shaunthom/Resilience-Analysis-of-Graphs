library(igraph)
#install.packages("igraphdata")
library(igraphdata)
data(karate)
head(karate)

#A Sub-part

# calculating the number of edges to be removed (which is 5%)
num_edges <- ecount(karate)
num_edges_to_delete <- ceiling(0.05 * num_edges)

# randomly selecting edges to be deleted!!!!

edges_to_delete <- sample(E(karate), size = num_edges_to_delete, replace = FALSE)

# delete selected edges
karate <- delete_edges(karate, edges_to_delete)
plot(karate)

#install.packages("statnet")
library(statnet)

# fit the model using MCMC

mcmc_karate <- hrg.fit(karate)
mcmc_karate
class(mcmc_karate)

#prob = 0.05
#deleting 5% of the edges
#deleted_edges <- E(karate)[runif(ecount(karate)) < prob]
#class(deleted_edges)
#head(deleted_edges)
#plot(deleted_edges)

#deleted_edges

#creating a noisy dataset
#karate_ndata <- delete.edges(karate, deleted_edges)
#rendering the deleted edges in required_edges variable
#required_edges <- E(karate) - E(karate_ndata)
#class(required_edges)
#plot(required_edges)

#B Sub-part

# calculating the number of edges to be removed (which is 5%)
data(kite)
num_edges_b <- ecount(kite)
num_edges_to_delete_b <- ceiling(0.05 * num_edges)

# randomly selecting edges to be deleted!!!!

edges_to_delete_b <- sample(E(kite), size = num_edges_to_delete_b, replace = FALSE)

# delete selected edges
kite <- delete_edges(kite, edges_to_delete_b)
plot(kite)

#install.packages("statnet")
library(statnet)

# fit the model using MCMC

mcmc_kite <- hrg.fit(kite)
mcmc_kite
class(mcmc_kite)

#C Sub-part

num_edges_sk <- ecount(karate)
num_edges_to_delete_sk <- ceiling(0.10 * num_edges_sk)

# randomly selecting edges to be deleted!!!!

edges_to_delete_sk <- sample(E(karate), size = num_edges_to_delete_sk, replace = FALSE)

# delete selected edges
karate_sk <- delete_edges(karate, edges_to_delete_sk)
plot(karate_sk)

#install.packages("statnet")
library(statnet)

# fit the model using MCMC

mcmc_karate_sk <- hrg.fit(karate_sk)
mcmc_karate_sk
class(mcmc_karate_sk)


# calculating the number of edges to be removed (which is 10%)
data(kite)
num_edges_sk <- ecount(kite)
num_edges_to_delete_sk <- ceiling(0.10 * num_edges_sk)

# randomly selecting edges to be deleted!!!!

edges_to_delete_sk <- sample(E(kite), size = num_edges_to_delete_sk, replace = FALSE)

# delete selected edges
kite_sk <- delete_edges(kite, edges_to_delete_sk)
plot(kite_sk)

#install.packages("statnet")
library(statnet)

# fit the model using MCMC

mcmc_kite_sk <- hrg.fit(kite_sk)
mcmc_kite_sk
class(mcmc_kite_sk)

####Now deleting 20% of the edges

num_edges_sk_20 <- ecount(karate)
num_edges_to_delete_sk_20 <- ceiling(0.20 * num_edges_sk)

# randomly selecting edges to be deleted!!!!

edges_to_delete_sk_20 <- sample(E(karate), size = num_edges_to_delete_sk_20, replace = FALSE)

# delete _selected edges
karate_sk_20 <- delete_edges(karate, edges_to_delete_sk_20)
plot(karate_sk_20)

#install.packages("statnet")
library(statnet)

# fit the model using MCMC

mcmc_karate_sk_20 <- hrg.fit(karate_sk_20)
mcmc_karate_sk_20
class(mcmc_karate_sk_20)


# calculating the number of edges to be removed (which is 10%)
data(kite)
num_edges_sk_20 <- ecount(kite)
num_edges_to_delete_sk_20 <- ceiling(0.20 * num_edges_sk_20)

# randomly selecting edges to be deleted!!!!

edges_to_delete_sk <- sample(E(kite), size = num_edges_to_delete_sk, replace = FALSE)

# delete selected edges
kite_sk <- delete_edges(kite, edges_to_delete_sk)
plot(kite_sk)

#install.packages("statnet")
library(statnet)

# fit the model using MCMC

mcmc_kite_sk <- hrg.fit(kite_sk)
mcmc_kite_sk
class(mcmc_kite_sk)
