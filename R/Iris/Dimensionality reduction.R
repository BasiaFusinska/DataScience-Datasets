# Created a dataset for the 'areas' of Sepal and Petal
iris.areas <- data.frame(Species = iris$Species)
iris.areas$Sepal <- iris$Sepal.Length * iris$Sepal.Width
iris.areas$Petal <- iris$Petal.Length * iris$Petal.Width

iris.areas <- iris.areas[,c(2,3,1)]

# Have a look at the data
head(iris.areas)
summary(iris.areas)

library(ggplot2)
library(GGally)
ggpairs(iris.areas, aes(colour = Species, alpha=0.4), lower=list(combo=wrap("facethist", bins=20)))
