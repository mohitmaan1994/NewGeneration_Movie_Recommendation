# NewGeneration_Movie_Recommendation

Framework Used: Spring MVC
Back-end language : Java
Front end languages used: HTML, CSS, Bootstrap, Javascript
Database : MariaDB, Galera2 cluster


## Project Overview:

Our entire web application(Movie recommendation system) is divided into 3 screens.

Screen 1 : Takes the user id as input to display the the movie recommendations for a particular user.
Screen 2 : This screen displays the all the movies that are previously tagged by the entered userId for which the mapping is already present in the database.
Screen 3 : This is the screen where we provide movie recommendations on the basis of inputs from screen 1 and screen 2. The user is provided three types of recommendations. These are recommendations on the basis of tags and ratings, location and age-group

## Recommendation on the basis of tags and ratings:

The recommendation system works based on ratings and tags of the initial movie chosen by the user. The initial part of the query aims to join the relevant tables needed to have this query pull the recommended movies list. The query first reduces the overall movies in the recommended list to a list of movies between 0.5 rating variation of the original movie chosen. The query then isolates the tags associated to this movie and further filters the recommended movies list on the basis of the highest count of tags that a movie has received. 
For es., if the movie chosen has a rating of 4.5 and is tagged most frequently as “funny”, then the recommendation engine will shortlist all movies between 4 and 5 which are tagged funny.

## Recommendation on the basis of location:

The type of recommendation provides recommendation of the most watched movies in the user's state of residence.

## Recommendation on the basis of age-group:

The type of recommendation provides recommendation of the most watched movies in the user's age group across the country .
