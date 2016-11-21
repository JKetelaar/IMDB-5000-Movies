# Packages we need
source("./common/common.R")
loadPackages(
  c(
    "shiny",
    "plotly",
    "plyr",
    "ggplot2",
    "lubridate",
    "data.table",
    "shinythemes",
    "shinydashboard",
    "splitstackshape"
  )
)

genres_list_ui <- list(
  "Action" = "action",
  "Adventure" = "adventure",
  "Animation" = "animation",
  "Biography" = "biography",
  "Comedy" = "comedy",
  "Crime" = "crime",
  "Documentary" = "documentary",
  "Drama" = "drama",
  "Family" = "family",
  "Tantasy" = "tantasy",
  "Film Noire" = "noire",
  "Game Show" = "show",
  "History" = "history",
  "Horror" = "horror",
  "Music" = "music",
  "Musical" = "musical",
  "Mystery" = "mystery",
  "Romance" = "romance",
  "Sci-fi" = "scifi",
  "Thriller" = "thriller",
  "Western" = "western"
)

shinyUI(dashboardPage(
  skin = "red",
  
  dashboardHeader(title = "IMDB 5000 Project"),
  dashboardSidebar(sidebarMenu(
    menuItem("Introduction", tabName = "introduction"),
    menuItem("Movie Actors", tabName = "movie_actors"),
    menuItem("Movie Directors", tabName = "movie_directors")
  )),
  dashboardBody(tabItems(
    tabItem(tabName = "introduction",
            
            h2("Introduction"),
            fluidRow(
              div(
                style = "margin-left:5%",
                id = "introduction_text",
                p(
                  p("Hello,"),
                  div("Welcome to the IMDB 5000 actor plots!"),
                  div("This is a short introduction to this interface."),
                  br(),
                  div("On the left you have two types of views, the actors and the directors."),
                  div("Actors is the focus of this project, but directors contains some extra work I thought would be fun to show too."),
                  br(),
                  div("This interface is written in R and is using the following packages:"),
                  div(paste(
                    c(
                      "splitstackshape",
                      "MASS",
                      "shiny",
                      "plotly",
                      "plyr",
                      "ggplot2",
                      "lubridate",
                      "data.table",
                      "shinythemes",
                      "shinydashboard",
                      "splitstackshape"
                    ),
                    collapse = ", "
                  )),
                  br(),
                  div("The actors all have a S4 class, which is OOP coded within R."),
                  div(
                    "All functions, actions and stuff are also separeted in their apropiate classes, which makes it easy to reference."
                  ),
                  br(),
                  div("If there are any questions, please contact me!"),
                  br(),
                  div("Yours sincerely,"),
                  div("Jeroen Ketelaar"),
                  div("0931915")
                )
              )
            )),
    tabItem(
      tabName = "movie_actors",
      h2("Movie Actors"),
      
      h3("Actors movies amount"),
      fluidRow(box(
        width = 3,
        status = "success",
        sliderInput(
          "slider2",
          label = h4("Select amount of actors to be shown"),
          min = 2,
          max = 36,
          value = c(0, 10),
          step = 2
        )
      ),
      fluidRow(
        box(
          title = tags$p("IMDB 5000 Dataset"),
          background = "navy",
          width = 8,
          status = "danger",
          plotOutput("actors_movie_amount_plot", height = 350)
        )
      )),
      
      br(),
      
      h3("Movies per year"),
      fluidRow(box(
        width = 3,
        status = "success",
        sliderInput(
          "slider5",
          label = h4("Select amount of actors to be shown"),
          min = 1900,
          max = 2016,
          value = c(2010, 2016),
          step = 10
        )
      ),
      fluidRow(
        box(
          title = tags$p("IMDB 5000 Dataset"),
          background = "navy",
          width = 8,
          status = "danger",
          plotOutput("movies_per_year", height = 350)
        )
      )),
      
      br(),
      
      h3("Actors mean rating"),
      fluidRow(box(
        width = 3,
        status = "success",
        sliderInput(
          "slider1",
          label = h4("Select amount of actors to be shown"),
          min = 2,
          max = 36,
          value = c(0, 10),
          step = 2
        )
      ),
      fluidRow(
        box(
          title = tags$p("IMDB 5000 Dataset"),
          background = "navy",
          width = 8,
          status = "danger",
          plotOutput("main_actor_rating", height = 350)
        )
      )),
      
      br(),
      
      h3("Actors mean rating for Genre"),
      fluidRow(box(
        width = 3,
        status = "success",
        sliderInput(
          "slider4",
          label = h4("Select amount of actors to be shown"),
          min = 2,
          max = 36,
          value = c(0, 10),
          step = 2
        ),
        selectInput("select", label = h3("Genre"), 
                    choices = genres_list_ui, 
                    selected = "action")
      ),
      fluidRow(
        box(
          title = tags$p("IMDB 5000 Dataset"),
          background = "navy",
          width = 8,
          status = "danger",
          plotOutput("main_actor_rating_genre", height = 350)
        )
      ))
    ),
    tabItem(
      tabName = "movie_directors",
      h2("Movie Directors"),
      h3("Directors mean rating"),
      fluidRow(box(
        width = 3,
        status = "success",
        sliderInput(
          "slider3",
          label = h4("Select amount of directors to be shown"),
          min = 2,
          max = 36,
          value = c(0, 10),
          step = 2
        )
      ),
      fluidRow(
        box(
          title = tags$p("IMDB 5000 Dataset"),
          background = "navy",
          width = 8,
          status = "danger",
          plotOutput("mean_director_rating", height = 350)
        )
      ))
    )
  ))
))