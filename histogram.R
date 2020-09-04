library(ggplot2)

rpkm_table <- read.table("06.Cuffnorm/genes.fpkm_0.3.txt", header = T)
dim(rpkm_table)
head(rpkm_table, 3)
summary(rpkm_table)

# Density(probability)
# ??????
hist(rpkm_table$Shoot_Control_6h, label = T, breaks = 10, col = "salmon")

# log2??
hist(log(rpkm_table$Shoot_Control_6h, 2), label = T, breaks = 10, col = "salmon")

# log2(n+1)
hist(log(rpkm_table$Shoot_Control_6h+1, 2), label = T, breaks = 10, probability = T, col = "salmon")
hist(log(rpkm_table$Shoot_Control_12h+1, 2), label = T, breaks = 10, probability = T, col = "skyblue")
hist(log(rpkm_table$Shoot_Control_24h+1, 2), label = T, breaks = 10, probability = T, col = "yellowgreen")

hist(log(rpkm_table$Shoot_PA01_6h+1, 2), label = T, breaks = 10, probability = T, col = "pink")
hist(log(rpkm_table$Shoot_PA01_12h+1, 2), label = T, breaks  = 10, probability = T, col = "lightblue2")
hist(log(rpkm_table$Shoot_PA01_24h+1, 2), label = T, breaks = 10, probability = T, col = "darkseagreen2")


# Frequency
hist(log(rpkm_table$Shoot_Control_6h+1, 2), label = T, breaks = 10, col = "salmon")
hist(log(rpkm_table$Shoot_Control_12h+1, 2), label = T, breaks = 10, col = "skyblue")
hist(log(rpkm_table$Shoot_Control_24h+1, 2), label = T, breaks = 10, col = "yellowgreen")

hist(log(rpkm_table$Shoot_PA01_6h+1, 2), label = T, breaks = 10, col = "pink")
hist(log(rpkm_table$Shoot_PA01_12h+1, 2), label = T, breaks = 10, col = "lightblue2")
hist(log(rpkm_table$Shoot_PA01_24h+1, 2), label = T, breaks = 10, col = "darkseagreen2")


#histogram

hist(rpkm_table$Shoot_Control_6h, breaks = 10)
hist(log(rpkm_table$Shoot_Control_6h, 2), breaks = 10)
hist(log(rpkm_table$Shoot_Control_6h+1, 2), breaks = 10)
# hist(rpkm_table$Shoot_Control_6h, breaks = 10)

par(mfrow=c(3,2))
hist(log(rpkm_table$Shoot_Control_6h, 2), breaks = 10, probability = T)
hist(log(rpkm_table$Shoot_Control_12h, 2), breaks = 10, probability = T)
hist(log(rpkm_table$Shoot_Control_24h, 2), breaks = 10, probability = T)
hist(log(rpkm_table$Shoot_PA01_6h, 2), breaks = 10, probability = T)
hist(log(rpkm_table$Shoot_PA01_12h, 2), breaks = 10, probability = T)
hist(log(rpkm_table$Shoot_PA01_24h, 2), breaks = 10, probability = T)
par(mfrow=c(1,1))

par(mfrow=c(2,3))
hist(log(rpkm_table$Shoot_Control_6h, 2), breaks = 10, probability = T)
hist(log(rpkm_table$Shoot_Control_12h, 2), breaks = 10, probability = T)
hist(log(rpkm_table$Shoot_Control_24h, 2), breaks = 10, probability = T)
hist(log(rpkm_table$Shoot_PA01_6h, 2), breaks = 10, probability = T)
hist(log(rpkm_table$Shoot_PA01_12h, 2), breaks = 10, probability = T)
hist(log(rpkm_table$Shoot_PA01_24h, 2), breaks = 10, probability = T)
par(mfrow=c(1,1))

#
plot(rpkm_table$)
