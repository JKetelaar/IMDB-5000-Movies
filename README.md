# Individual Visualisation Assignment
Dear reader,

This is the introduction file for the Individual Visualisation Assignment.  
This includes an quick explanation of the views, the code and some other useful information

### Author
This project is made by Jeroen Ketelaar, with studentnumber: `0931915`.

### Code
The code is split among files to make sure it's easy to read.  
It also includes a few classes, which makes this sort of OOP coded, eventhough it's not quite easy in R.

An example is the following:

```
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
```

This creates an S4 class for an actor, which can be used to populate or get/set data in it.

### Views
The views are split in three menu items; 

- Introduction
- Movie actors
- Movie directors

Each plot has its own selectors, making it very user interactive and dynamic!

##### Introduction
This is a quick introduction for just the views of the project

##### Movie actors
This contains a set of four views; providing information of:

- The amount of movies made per actor  
The amount of movies made per year, categorised per actor
- Movies made per year, the distribution  
The distibution of movies made per year
- The mean rating of the main actors of movies  
Adds the ability to see which actors has which mean of rating
- The mean rating of the main actors of movies, per genre  
Allows you to view the mean rating of actors, filterable on genres with the dropdown

##### Movie directors
This is a extra feature I added, because it looked fun and was easy to implement with a few changes from the actor side.

It allows you to see which actor has which mean rating on IMDB.

### Structure
The project is within a folder, separeted within subfolders, to clear the overview.

The dataset (movie_metadata.csv) is located in `./data/movie_metadata.csv`.