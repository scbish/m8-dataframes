# Exercise 6: Popular Baby Names Over Time

# Read in the female baby names csv file into a variable called `female.names`
setwd('~/Desktop/Informatics/m8-dataframes/exercise-6')
female.names <- read.csv('data/female_names.csv', stringsAsFactors = F)

# Create a vector `year` as the year column of the dataset
year <- female.names$year

# Create a vector `name` as the name column of the datset
# As in the last exercise, you'll need to convert this column to a vector
name <- female.names$name
is.vector(name)

# Create a vector `prop` as the proportion column of the dataset
prop <- female.names$prop

# Create a vector `names.2013` as your name vector where your year vector is 2013
names.2013 <- name[female.names$year == 2013]

# Create a vector `prop.2013` as the your prop vector where your year vecctor is 2013
prop.2013 <- prop[female.names$year == 2013]

# What was the most popular female name in 2013?
names.2013[prop.2013 == max(prop.2013)]

# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 
MostPopular <- function(my.year){
  names.year <- female.names$name[female.names$year == my.year]
  prop.year <- female.names$prop[female.names$year == my.year]
  return (paste('The most popular name in the year', my.year, 'was', names.year[prop.year == max(prop.year)]))
}

# What was the most popular female name in 1994?
MostPopular(1994)

### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
HowPopular <- function(name, year){
  names.year <- female.names$name[female.names$year == year]
  prop.year <- female.names$prop[female.names$year == year]
  proportion.name <- prop.year[names.year == name]
  return (paste('in', year, 'about', round(proportion.name * 100, digits = 2), '% of people were named', name))
}

# How popular was the name 'Laura' in 1995
HowPopular('Laura', 1995)