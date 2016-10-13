# Exercise 7: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
setwd('~/Desktop/Informatics/m8-dataframes/exercise-7')
husky.games.2015 <- read.csv("data/huskies_2015.csv")

# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- as.vector(husky.games.2015$opponent)

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2015$uw_score

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2015$rushing_yards
passing.yards <- husky.games.2015$passing_yards

# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- rushing.yards + passing.yards

# What is the score of the game where the Huskies had the most combined yards?
husky.scores[combined.yards == max(combined.yards)]

# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played
MostYardsScore <- function(games){
  combined.yards <- games$passing_yards + games$rushing_yards
  index <- combined.yards == max(combined.yards)
  sentence.to.return <- "In the game that had the most yards scored, the huskies"
  if (games$uw_win[index] == 1){
    sentence.to.return <- paste(sentence.to.return, "won")
  } else {
    sentence.to.return <- paste(sentence.to.return, "lost")
  }
  sentence.to.return <- paste(sentence.to.return, "against the", games$opponent[index], "and scored", games$uw_score[index], "points, while the")
  sentence.to.return <- paste(sentence.to.return, games$opponent[index], "scored", games$opponent_score[index], "points.")
  return (sentence.to.return)
}

MostYardsScore(husky.games.2015)

# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
