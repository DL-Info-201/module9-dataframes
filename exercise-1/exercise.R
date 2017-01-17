# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)

  seahawks.scored.points <- c(12, 3, 37, 27, 26, 6, 20, 31, 31, 26, 5, 40, 10, 26)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
  
  seahawks.allowed.points <- c(10, 9, 18, 17, 24, 6, 25, 25, 24, 15, 14, 7, 38, 6)

# Combine your two vectors into a dataframe
  
  data <- data.frame(seahawks.scored.points, seahawks.allowed.points, stringsAsFactors = FALSE)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!

  data$diff <- seahawks.scored.points - seahawks.allowed.points

# Create a new column "won" which is TRUE if the Seahawks won

  data$won <- data$diff > 0

# Create a vector of the opponent names corresponding to the games played
  
  opponents <- c("Dolphins", "Rams", "49ers", "Jets", "Falcons", 
                 "Cardinals", "Saints", "Bills", "Pats", "Eagles", 
                 "Bucs", "Panthers", "Packers", "Lions")

# Assign your dataframe rownames of their opponents

  rownames(data) <- opponents

# View your data frame to see how it has changed!
  
  View(data)
