# Iris dataset is available with standard R installation
data(iris)
iris

# Check the dimensions of the dataset
# There are 5 columns and 150 examples
dim(iris)

# Have a look at the first & last few rows
head(iris)
tail(iris)

# Summary of the labels
summary(iris$Species)

# Separate summary of every independent feature
summary(iris$Sepal.Length)
summary(iris$Sepal.Width)
summary(iris$Petal.Length)
summary(iris$Petal.Width)

# You can also use summary for the whole dataframe
summary(iris)

# Plot the bar chart for labels
library(ggplot2)
ggplot(iris, aes(Species)) +
  geom_bar(aes(fill=Species))

# Distributions for the independent variables

# --- Sepal.Length ---
# Histogram
sl.plot <- ggplot(iris, aes(Sepal.Length))
sl.plot + geom_histogram(bins=20)

# Histogram - frequency polygons by Species
sl.plot + geom_histogram(bins=20, aes(fill=Species))

# Density
sl.density <- ggplot(iris, aes(Sepal.Length, colour = Species))
sl.density + geom_density()

# Box plots by Species
sl.boxplot <- ggplot(iris, aes(x=Species, y=Sepal.Length))
sl.boxplot + geom_boxplot(aes(fill=Species))

# --- Sepal.Width ---
# Histogram
sw.plot <- ggplot(iris, aes(Sepal.Width))
sw.plot + geom_histogram(bins=20)

# Histogram - frequency polygons by Species
sw.plot + geom_histogram(bins=20, aes(fill=Species))

# Density
sw.density <- ggplot(iris, aes(Sepal.Width, colour = Species))
sw.density + geom_density()

# Box plots by Species
sw.boxplot <- ggplot(iris, aes(x=Species, y=Sepal.Width))
sw.boxplot + geom_boxplot(aes(fill=Species))

# --- Petal.Length ---
# Histogram
pl.plot <- ggplot(iris, aes(Petal.Length))
pl.plot + geom_histogram(bins=20)

# Histogram - frequency polygons by Species
pl.plot + geom_histogram(bins=20, aes(fill=Species))

# Density
pl.density <- ggplot(iris, aes(Petal.Length, colour = Species))
pl.density + geom_density()

# Box plots by Species
pl.boxplot <- ggplot(iris, aes(x=Species, y=Petal.Length))
pl.boxplot + geom_boxplot(aes(fill=Species))

# --- Petal.Width ---
# Histogram
pw.plot <- ggplot(iris, aes(Petal.Width))
pw.plot + geom_histogram(bins=20)

# Histogram - frequency polygons by Species
pw.plot + geom_histogram(bins=20, aes(fill=Species))

# Density
pw.density <- ggplot(iris, aes(Petal.Width, colour = Species))
pw.density + geom_density()

# Box plots by Species
pw.boxplot <- ggplot(iris, aes(x=Species, y=Petal.Width))
pw.boxplot + geom_boxplot(aes(fill=Species))

# Bivariate plots for all the independent features
point.g <- ggplot(iris, aes(col=Species))

point.g + geom_point(aes(Sepal.Length, Sepal.Width))
point.g + geom_point(aes(Sepal.Length, Petal.Length))
point.g + geom_point(aes(Sepal.Length, Petal.Width))
point.g + geom_point(aes(Petal.Width, Petal.Length))

# Check the correlations
cor(iris[,-5])
cor(iris[iris$Species == "setosa",-5])
cor(iris[iris$Species == "versicolor",-5])
cor(iris[iris$Species == "virginica",-5])
