# Graph test data star wars

#installation des packages

install.packages("tidyverse")
install.packages('tinytex')
install.packages("ggplot2")
install.packages("ggalt")


#installation du package pour régler les conflits inter library
install.packages("devtools")
devtools::install_github("r-lib/conflicted")

#import données et library

library(ggplot2)
library(dplyr)
library(tidyverse)

data("starwars") #choix des data star wars
names(starwars)
starwars       #permets de voir les données
d <- starwars

# test premier graphique avec graph exemple prof

##Variable couleur cheveux
hc <- starwars$hair_color
hc
##Variable poids
pds <- starwars$mass
pds

#graphique histograme avec variable numérique poids

par(mfrow=c(3,3))
hist(x = pds)
hist(pds)

plot(pds)
plot(x=starwars[,1], y=starwars[,2])

boxplot(starwars$mass~starwars$hair_color)

#Utilisation de ggplot2 comparaison poids et couleur cheveux

ggplot(d) +
  aes(x = hc) +
  geom_histogram() +
  ggtitle("couleur de cheveux selon le poids") +
  xlab("couleur cheveux") +
  ylab("poids")

##test extension ggalt comparaison couleur cheveux et poids

library(ggalt)
ggplot(d) +
  aes(x = hc, y = pds) +
  geom_lollipop() +
  xlab("couleur de cheveux") +
  ylab("poids") +
  coord_flip()


