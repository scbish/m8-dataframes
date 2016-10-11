# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
points.for <- c(3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
points.against <- c(9, 18, 17)

# Combine your two vectors into a dataframe
seahawks.points <- data.frame(points.for = points.for, points.against = points.against)

# Create a new column "diff" that is the difference in points
seahawks.points$diff <- seahawks.points$points.for - seahawks.points$points.against

# Create a new column "won" which is TRUE if the Seahawks wom
seahawks.points$won <- seahawks.points$diff > 0

# Create a vector of the opponents
opponents <- c("Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents
seahawks.points$opponents <- opponents
