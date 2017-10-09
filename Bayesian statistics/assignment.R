library(foreign)
dat <- read.table("http://www.stat.ufl.edu/~winner/data/pgalpga2008.dat")
colnames(dat) <- c("drive_dist", "perc_fairway", "female")
dat$female <- as.factor(as.integer(dat$female==2))
datF <- subset(dat, female==1, select=1:2)
plot(tab$drive_dist[tab$female==2], tab$perc_fairway[tab$female==2])
predict(model, data.frame(drive_dist=260))
64.2-qt(p = 0.975, df = 155)*5.246*(1+1/157+(260-mean(datF$drive_dist))^2/(156*var(datF$perc_fairway)))^0.5


dat <- read.table("http://www.stat.ufl.edu/~winner/data/pgalpga2008.dat")
colnames(dat) <- c("drive_dist", "perc_fairway", "female")
dat$female <- as.factor(as.integer(dat$female==2))
model <- lm(perc_fairway ~ ., data = dat)
