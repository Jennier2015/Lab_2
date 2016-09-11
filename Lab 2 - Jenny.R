download.file("http://www.openintro.org/stat/data/kobe.RData", destfile = "kobe.RData")
load("kobe.RData")
head(kobe)
kobe$basket[1:9]

# Exercise 1
kobe_streak <- calc_streak(kobe$basket)
barplot(table(kobe_streak))

# Exercise 2
outcomes <- c("heads", "tails")
sample(outcomes, size = 1, replace = TRUE)
sim_fair_coin <- sample(outcomes, size = 100, replace = TRUE)
sim_fair_coin
table(sim_fair_coin)
sim_unfair_coin <- sample(outcomes, size = 100, replace = TRUE, prob = c(0.2, 0.8))

# Exercise 3
?sample
outcomes <- c("H", "M")
sim_basket <- sample(outcomes, size = 1, replace = TRUE)

# Exercise 4
kobe$basket
sim_basket

# On Your Own
# Simulating the independent shooter
outcomes <- c("H", "M")
sim_basket <- sample(outcomes, size = 133, replace = TRUE, prob = c(0.45, 0.55))
table(sim_basket)
sim_streak <- calc_streak(sim_basket)
barplot(table(sim_streak))
max(sim_streak)

# 1. The distribution is skewed right. Typical streak length is 0. Longest streak is 6.

# 2. I would expect the similar distribution, since the probability is the same. The shape of the distribution 
#should still be right skewed.

# Kobe's distribution would be very similar because the probability is the same. I would not conclude that the 
#hot hand model fits Kobe's shooting pattern. It appears to me that shooting is more independent than dependent.  