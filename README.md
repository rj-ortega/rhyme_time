# BFF - Brewery Favorite Finder

## App to help users write rhyming poetry

Project by [@foggybrains](https://github.com/foggybrains) and [@rjortega](https://github.com/rjortega)

Thanks for checking it out!

[Video of app rundown](https://www.)

## Basic flow of app

### Welcome Menu
   * Login, Sign Up, and view all poems
   * Get inspired by a random Shakespeare Sonnet!
   * Visit the app github page and Flatiron School website through the links in the top right corner


   ![Welcome Menu](./assets/images/welcome.png)

### User Menu
   * Access to Favorites menu
   * Ability to look up brewery by city or name


   ![User Menu](./assets/user_menu.png)

### Favorite menu
   * Ability to see favorite breweries
   * Lets you query API for up to date information on brewery
   * Allows you to delete a brewery from database linked to current user
   * Allows you to delete ALL breweries from both:
      * the database linked to the user
      * the associated brewery table


   ![Favorites Menu](./assets/favorites_menu.png)

### API Brewery Query
   * Built method to accept user input and query API for information using either:
      * City
      * Name of brewery
   * After query user is prompted with the choice to save to favorites list


   ![Brewery Query](./assets/API_brewery_query.png)
   ![Add To Favorites Prompt](./assets/add_to_favorites.png)

### Model

   | User |>---------| Favorite Brewery |------------<| Brewery |   

### Assets used:
   * Ruby
   * jQuery
   * Sinatra
   * ActiveRecord
   * Sqlite3
   * JSON
   * Rake
   * Rest-Client
   * Binding.pry

#### Credits
   * API : thanks to Open Brewery DB for giving open access to their api
      * created and maintained by Chris J Mears and Wandering Leaf Studios LLC.
      * [link to API!](https://www.openbrewerydb.org)
   * Thanks to Flatiron Schools for guided support
