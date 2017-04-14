# Iris dataset is available with standard R installation
iris

# Check the dimentions of the dataset
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
