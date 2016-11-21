# Include the total handler
source("./app.R")

plot_movie_amount_actors <- data.frame(actor = c(), frequency = c())

for (a in actors) {
  newRow <- data.frame(actor = a@name, frequency = length(a@movies))
  plot_movie_amount_actors <-
    rbind(plot_movie_amount_actors, newRow)
}

plot_movie_amount_actors <-
  plot_movie_amount_actors[order(plot_movie_amount_actors$frequency, decreasing = TRUE),]

shinyServer(function(input, output) {
  output$actors_movie_amount_plot <- renderPlot({
    ggplot(plot_movie_amount_actors[input$slider2[1]:input$slider2[2],],
           aes(
             x = reorder(factor(actor), frequency),
             y = frequency,
             alpha = frequency
           )) +
      geom_bar(stat = "identity",
               fill = "green") +
      geom_text(aes(x = actor, y = frequency, label = frequency),
                color = "black",
                alpha = 1) +
      xlab("Name of the actor") +
      ylab("Number of Movies") +
      coord_flip() +
      theme_bw() +
      ggtitle("Amount of movies per actor, ordered on frequency") +
      theme(plot.title = element_text(face = "bold", hjust = 0.5)) +
      theme(legend.position = "none")
  })
  
  output$main_actor_rating <- renderPlot({
    ggplot(main_actor_ratings[input$slider1[1]:input$slider1[2],],
           aes(
             x = M,
             xmin = M - SE,
             xmax = M + SE,
             y = actor_1_name
           )) +
      geom_point() +
      geom_segment(aes(
        x = M - SE,
        xend = M + SE,
        y = actor_1_name,
        yend = actor_1_name
      )) +
      theme(axis.text = element_text(size = 8)) +
      ylab("Name of the actor") +
      xlab("Mean rating") +
      ggtitle("Mean rating for the main actors") +
      theme(plot.title = element_text(face = "bold", hjust = 0.5)) +
      theme(legend.position = "none")
  })
  
  output$movies_per_year <- renderPlot({
    ggplot(movies_per_year[movies_per_year$year >= input$slider5[1] &
                             movies_per_year$year <= input$slider5[2],],
           aes(x = year,
               y = frequency,
               alpha = frequency)) +
      geom_line() +
      geom_bar(stat = "identity",
               fill = "red") +
      geom_text(aes(x = year, y = frequency, label = frequency),
                color = "black",
                alpha = 1) +
      xlab("Year") +
      ylab("Number of Movies") +
      theme_bw() +
      ggtitle("Amount of movies per made per year") +
      theme(plot.title = element_text(face = "bold", hjust = 0.5)) +
      theme(legend.position = "none")
  })
  
  output$mean_director_rating <- renderPlot({
    ggplot(main_director_ratings[input$slider3[1]:input$slider3[2],],
           aes(
             x = M,
             xmin = M - SE,
             xmax = M + SE,
             y = director_name
           )) +
      geom_point() +
      geom_segment(aes(
        x = M - SE,
        xend = M + SE,
        y = director_name,
        yend = director_name
      )) +
      theme(axis.text = element_text(size = 8)) +
      ylab("Name of the director") +
      xlab("Mean rating") +
      ggtitle("Mean rating for the directors") +
      theme(plot.title = element_text(face = "bold", hjust = 0.5)) +
      theme(legend.position = "none")
  })
  
  output$main_actor_rating_genre <- renderPlot({
    set <-
      createMainActorRatingForGenre(genres_list[input$select][[input$select]])
    set <- set[input$slider4[1]:input$slider4[2],]
    ggplot(set,
           aes(
             x = M,
             xmin = M - SE,
             xmax = M + SE,
             y = actor_1_name
           )) +
      geom_point() +
      geom_segment(aes(
        x = M - SE,
        xend = M + SE,
        y = actor_1_name,
        yend = actor_1_name
      )) +
      theme(axis.text = element_text(size = 8)) +
      ylab("Name of the actor") +
      xlab("Mean rating") +
      ggtitle("Mean rating for the main actors") +
      theme(plot.title = element_text(face = "bold", hjust = 0.5)) +
      theme(legend.position = "none")
  })
})