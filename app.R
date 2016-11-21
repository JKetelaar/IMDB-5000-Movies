# Make sure we have the right locale
Sys.setlocale(category = "LC_ALL", locale = "English_United States.1252")

# Packages we need
source("./common/common.R")
loadPackages(c("splitstackshape", "MASS"))

# Creating the variables
movies_set <- read.csv("./data/movie_metadata.csv")
actors <- c()

# Helpers
cat("Step 1/10")
source("./movies.R")
source("./actors.R")
source("./directors.R")

# Creating the actor class
createActorClass()

# Merging the existing actors
all_actors <- c(actors, apply(movies_set, 1, actorsItsMovies))

# Removing the duplicate actors
for (new_actor in all_actors) {
  found <- FALSE
  index <- 0
  for (actor in actors) {
    index <- index + 1
    if (actor@name == new_actor@name) {
      # Updating the actor his/her movies
      actors[[index]] <- addMovies(actor, new_actor@movies)
      found <- TRUE
      break
    }
  }
  
  if (!found) {
    # We didn't find an actor in our vector, so we'll add one
    actors <- c(actors, c(new_actor))
  }
}