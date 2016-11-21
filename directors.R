main_director_rating <- ddply(
  movies_set,
  c("director_name"),
  summarise,
  M = mean(imdb_score, na.rm = T),
  SE = sd(imdb_score, na.rm = T) / sqrt(length(na.omit(imdb_score))),
  N = length(na.omit(imdb_score))
)
main_director_ratings <-
  main_director_rating[which(main_director_rating$N >= 10 &
                               !(main_director_rating$director_name == '')), ]

# make director into an ordered factor, ordering by mean rating:
main_director_ratings$director_name <-
  factor(main_director_ratings$director_name)
main_director_ratings$director_name <-
  reorder(main_director_ratings$director_name,
          main_director_ratings$M)