data<-read.csv2("data/tailles-castaneus.csv", sep=";")
library(ggplot2)
# plot data

plot<-ggplot(data, aes(x = factor(Sampling), 
                     y = TL)) + 
  # plotting
  geom_violin(fill = "lightBlue", color = "#473e2c") + 
  labs(x = "Méthodes", y = "Longueur total (mm)")

summary(data$TL[data$Sampling=="ARMS"])
summary(data$TL[data$Sampling=="BIOTAS"])
