# Created a dataset for the 'areas' of Sepal and Petal
iris.areas <- data.frame(Species = iris$Species)
iris.areas$Petal <- iris$Petal.Length * iris$Petal.Width
iris.areas$Sepal <- iris$Sepal.Length * iris$Sepal.Width

iris.areas <- iris.areas[,c(2,3,1)]

# Have a look at the data
head(iris.areas)
summary(iris.areas)

# Plot the pairs
library(ggplot2)
library(GGally)
ggpairs(iris.areas, aes(colour = Species, alpha=0.4), lower=list(combo=wrap("facethist", bins=20)))

# Using PCA for dimensionality reduction
install.packages("caret")
library(caret)

# Use PCA
pca.parameters <- preProcess(iris[,1:4], method=c("pca"))
iris.pca <- predict(pca.parameters, iris[,1:4])
iris.pca$Species <- iris$Species

# Have a look on the data
head(iris.pca)
summary(iris.pca)

# Plot the pairs
ggpairs(iris.pca, aes(colour = Species, alpha=0.4), lower=list(combo=wrap("facethist", bins=20)))
