actorsItsMovies <- function(row) {
  # Remove the weird string after the movie title
  movie = gsub('\302\240', '', as.character(row['movie_title']))
  
  for (col in c('actor_1_name', 'actor_2_name', 'actor_3_name')) {
    actorName <- row[[col]]
    p <- new("Actor", name = actorName, movies = c(movie))
    return(p)
  }
}

findMostMakingActors <- function(actors, offset) {
  return_actors <- c()
  
  bigger <- TRUE
  biggest <- NULL
  
  while (bigger) {
    possible_bigger <- FALSE
    
    for (actor in actors) {
      if (is.null(biggest) ||
          length(actor@movies) > length(biggest@movies)) {
        possible_bigger <- TRUE
        biggest <- actor
        break
        
      }
    }
    
    if (!possible_bigger) {
      bigger <- FALSE
    }
  }
  
  for (actor in actors) {
    if (length(actor@movies) >= length(biggest@movies) - offset) {
      return_actors <- c(return_actors, actor)
    }
  }
  
  return(return_actors)
}

createActorClass <- function() {
  setClass("Actor", representation(name = "character", movies = "vector"))
  setGeneric(
    name = "addMovies",
    def = function(theObject, movies)
    {
      standardGeneric("addMovies")
    }
  )
  
  setMethod(
    f = "addMovies",
    signature = "Actor",
    definition = function(theObject, movies)
    {
      theObject@movies <- c(theObject@movies, movies)
      validObject(theObject)
      return(theObject)
    }
  )
  
  setGeneric(
    name = "movies",
    def = function(theObject)
    {
      standardGeneric("movies")
    }
  )
  
  setMethod(
    f = "movies",
    signature = "Actor",
    definition = function(theObject)
    {
      return(length(theObject@movies))
    }
  )
}

createMainActorRatingForGenre <- function(genre_set) {
  main_actor_rating <- ddply(
    genre_set,
    c("actor_1_name"),
    summarise,
    M = mean(imdb_score, na.rm = T),
    SE = sd(imdb_score, na.rm = T) / sqrt(length(na.omit(imdb_score))),
    N = length(na.omit(imdb_score))
  )
  
  main_actor_ratings <-
    main_actor_rating[which(main_actor_rating$N >= 5), ]
  
  # make actor into an ordered factor, ordering by mean rating:
  main_actor_ratings$actor_1_name <-
    factor(main_actor_ratings$actor_1_name)
  main_actor_ratings$actor_1_name <-
    reorder(main_actor_ratings$actor_1_name, main_actor_ratings$M)
  
  return (main_actor_ratings)
}

main_actor_rating <- ddply(
  movies_set,
  c("actor_1_name"),
  summarise,
  M = mean(imdb_score, na.rm = T),
  SE = sd(imdb_score, na.rm = T) / sqrt(length(na.omit(imdb_score))),
  N = length(na.omit(imdb_score))
)

main_actor_ratings <-
  main_actor_rating[which(main_actor_rating$N >= 15), ]

# make actor into an ordered factor, ordering by mean rating:
main_actor_ratings$actor_1_name <-
  factor(main_actor_ratings$actor_1_name)
main_actor_ratings$actor_1_name <-
  reorder(main_actor_ratings$actor_1_name, main_actor_ratings$M)
