genres <- cSplit(movies_set, "genres", "|")

# Subset all possible genres, within all possible values (1:8)
genres_action <-
  subset(
    genres,
    genres$genres_1 == "Action" |
      genres$genres_2 == "Action" |
      genres$genres_3 == "Action" |
      genres$genres_4 == "Action" |
      genres$genres_5 == "Action" |
      genres$genres_6 == "Action" |
      genres$genres_7 == "Action" | genres$genres_8 == "Action"
  )
genres_adventure <-
  subset(
    genres,
    genres$genres_1 == "Adventure" |
      genres$genres_2 == "Adventure" |
      genres$genres_3 == "Adventure" |
      genres$genres_4 == "Adventure" |
      genres$genres_5 == "Adventure" |
      genres$genres_6 == "Adventure" |
      genres$genres_7 == "Adventure" |
      genres$genres_8 == "Adventure"
  )
genres_animation <-
  subset(
    genres,
    genres$genres_1 == "Animation" |
      genres$genres_2 == "Animation" |
      genres$genres_3 == "Animation" |
      genres$genres_4 == "Animation" |
      genres$genres_5 == "Animation" |
      genres$genres_6 == "Animation" |
      genres$genres_7 == "Animation" |
      genres$genres_8 == "Animation"
  )
genres_biography <-
  subset(
    genres,
    genres$genres_1 == "Biography" |
      genres$genres_2 == "Biography" |
      genres$genres_3 == "Biography" |
      genres$genres_4 == "Biography" |
      genres$genres_5 == "Biography" |
      genres$genres_6 == "Biography" |
      genres$genres_7 == "Biography" |
      genres$genres_8 == "Biography"
  )
genres_comedy <-
  subset(
    genres,
    genres$genres_1 == "Comedy" |
      genres$genres_2 == "Comedy" |
      genres$genres_3 == "Comedy" |
      genres$genres_4 == "Comedy" |
      genres$genres_5 == "Comedy" |
      genres$genres_6 == "Comedy" |
      genres$genres_7 == "Comedy" | genres$genres_8 == "Comedy"
  )
genres_crime <-
  subset(
    genres,
    genres$genres_1 == "Crime" |
      genres$genres_2 == "Crime" |
      genres$genres_3 == "Crime" |
      genres$genres_4 == "Crime" |
      genres$genres_5 == "Crime" |
      genres$genres_6 == "Crime"  |
      genres$genres_7 == "Crime"  | genres$genres_8 == "Crime"
  )
genres_documentary <-
  subset(
    genres,
    genres$genres_1 == "Documentary" |
      genres$genres_2 == "Documentary" |
      genres$genres_3 == "Documentary" |
      genres$genres_4 == "Documentary" |
      genres$genres_5 == "Documentary" |
      genres$genres_6 == "Documentary" |
      genres$genres_7 == "Documentary" |
      genres$genres_8 == "Documentary"
  )
genres_drama <-
  subset(
    genres,
    genres$genres_1 == "Drama" |
      genres$genres_2 == "Drama" |
      genres$genres_3 == "Drama" |
      genres$genres_4 == "Drama" |
      genres$genres_5 == "Drama" |
      genres$genres_6 == "Drama" |
      genres$genres_7 == "Drama" | genres$genres_8 == "Drama"
  )
genres_family <-
  subset(
    genres,
    genres$genres_1 == "Family" |
      genres$genres_2 == "Family" |
      genres$genres_3 == "Family" |
      genres$genres_4 == "Family" |
      genres$genres_5 == "Family" |
      genres$genres_6 == "Family" |
      genres$genres_7 == "Family" | genres$genres_8 == "Family"
  )
genres_tantasy <-
  subset(
    genres,
    genres$genres_1 == "Fantasy" |
      genres$genres_2 == "Fantasy" |
      genres$genres_3 == "Fantasy" |
      genres$genres_4 == "Fantasy" |
      genres$genres_5 == "Fantasy" |
      genres$genres_6 == "Fantasy" |
      genres$genres_7 == "Fantasy" | genres$genres_8 == "Fantasy"
  )
genres_film_noir <-
  subset(
    genres,
    genres$genres_1 == "Film-Noir" |
      genres$genres_2 == "Film-Noir" |
      genres$genres_3 == "Film-Noir" |
      genres$genres_4 == "Film-Noir" |
      genres$genres_5 == "Film-Noir" |
      genres$genres_6 == "Film-Noir" |
      genres$genres_7 == "Film-Noir" |
      genres$genres_8 == "Film-Noir"
  )
genres_game_show <-
  subset(
    genres,
    genres$genres_1 == "Game-Show" |
      genres$genres_2 == "Game-Show" |
      genres$genres_3 == "Game-Show" |
      genres$genres_4 == "Game-Show" |
      genres$genres_5 == "Game-Show" |
      genres$genres_6 == "Game-Show" |
      genres$genres_7 == "Game-Show" |
      genres$genres_8 == "Game-Show"
  )
genres_history <-
  subset(
    genres,
    genres$genres_1 == "History" |
      genres$genres_2 == "History" |
      genres$genres_3 == "History" |
      genres$genres_4 == "History" |
      genres$genres_5 == "History" |
      genres$genres_6 == "History" |
      genres$genres_7 == "History" | genres$genres_8 == "History"
  )
genres_horror <-
  subset(
    genres,
    genres$genres_1 == "Horror" |
      genres$genres_2 == "Horror" |
      genres$genres_3 == "Horror" |
      genres$genres_4 == "Horror" |
      genres$genres_5 == "Horror" |
      genres$genres_6 == "Horror" |
      genres$genres_7 == "Horror" | genres$genres_8 == "Horror"
  )
genres_music <-
  subset(
    genres,
    genres$genres_1 == "Music" |
      genres$genres_2 == "Music" |
      genres$genres_3 == "Music" |
      genres$genres_4 == "Music" |
      genres$genres_5 == "Music" |
      genres$genres_6 == "Music" |
      genres$genres_7 == "Music" | genres$genres_8 == "Music"
  )
genres_musical <-
  subset(
    genres,
    genres$genres_1 == "Musical" |
      genres$genres_2 == "Musical" |
      genres$genres_3 == "Musical" |
      genres$genres_4 == "Musical" |
      genres$genres_5 == "Musical" |
      genres$genres_6 == "Musical" |
      genres$genres_7 == "Musical" | genres$genres_8 == "Musical"
  )
genres_mystery <-
  subset(
    genres,
    genres$genres_1 == "Mystery" |
      genres$genres_2 == "Mystery" |
      genres$genres_3 == "Mystery" |
      genres$genres_4 == "Mystery" |
      genres$genres_5 == "Mystery" |
      genres$genres_6 == "Mystery" |
      genres$genres_7 == "Mystery" | genres$genres_8 == "Mystery"
  )
genres_romance <-
  subset(
    genres,
    genres$genres_1 == "Romance" |
      genres$genres_2 == "Romance" |
      genres$genres_3 == "Romance" |
      genres$genres_4 == "Romance" |
      genres$genres_5 == "Romance" |
      genres$genres_6 == "Romance" |
      genres$genres_7 == "Romance" | genres$genres_8 == "Romance"
  )
genres_sci_fi <-
  subset(
    genres,
    genres$genres_1 == "Sci-Fi" |
      genres$genres_2 == "Sci-Fi" |
      genres$genres_3 == "Sci-Fi" |
      genres$genres_4 == "Sci-Fi" |
      genres$genres_5 == "Sci-Fi" |
      genres$genres_6 == "Sci-Fi" |
      genres$genres_7 == "Sci-Fi" | genres$genres_8 == "Sci-Fi"
  )
genres_thriller <-
  subset(
    genres,
    genres$genres_1 == "Thriller" |
      genres$genres_2 == "Thriller" |
      genres$genres_3 == "Thriller" |
      genres$genres_4 == "Thriller" |
      genres$genres_5 == "Thriller" |
      genres$genres_6 == "Thriller" |
      genres$genres_7 == "Thriller" | genres$genres_8 == "Thriller"
  )
genres_western <-
  subset(
    genres,
    genres$genres_1 == "Western" |
      genres$genres_2 == "Western" |
      genres$genres_3 == "Western" |
      genres$genres_4 == "Western" |
      genres$genres_5 == "Western" |
      genres$genres_6 == "Western" |
      genres$genres_7 == "Western" | genres$genres_8 == "Western"
  )

genres_list <- list(
  action = genres_action,
  adventure = genres_adventure,
  animation = genres_animation,
  biography = genres_biography,
  comedy = genres_comedy,
  crime = genres_crime,
  documentary = genres_documentary,
  drama = genres_drama,
  family = genres_family,
  tantasy = genres_tantasy,
  noire = genres_film_noir,
  show = genres_game_show,
  history = genres_history,
  horror = genres_horror,
  music = genres_music,
  musical = genres_musical,
  mystery = genres_mystery,
  romance = genres_romance,
  scifi = genres_sci_fi,
  thriller = genres_thriller,
  western = genres_western
)

movies_per_year <- data.frame(year = c(), frequency = c())

tdf <- as.data.frame(movies_set)
for (i in 1:nrow(tdf)) {
  row <- tdf[i,]
  x <- as.numeric(row$title_year)
  if (!is.na(x)) {
    exists <- FALSE
    for (y in movies_per_year$year) {
      if (as.numeric(y) == x) {
        exists <- TRUE
      }
    }
    if (exists) {
      movies_per_year[movies_per_year$year == x, 2] <-
        as.numeric(movies_per_year[movies_per_year$year == x, ]$frequency) + 1
    } else{
      newRow <- data.frame(year = c(x), frequency = c(1))
      movies_per_year <-
        rbind(movies_per_year, newRow)
    }
  }
}

movies_per_year <-
  movies_per_year[order(movies_per_year$year, decreasing = TRUE),]