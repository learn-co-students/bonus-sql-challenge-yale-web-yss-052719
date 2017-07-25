## Daily Show Challenge

Here's a bonus real-world example lab. In this repo, we have a dataset collected by Five Thirty Eight, a popular online magazine that writes data-focused articles.

This dataset features a list of every guest Jon Stewart had as host of 'The Daily Show' and includes their name, the date they appeared on the show, occupation, and category of data.

## Instructions

1. First, in the `seed.rb` file, write a script to convert the rows of this CSV into a SQL database that we can run queries against. How you model the domain is up to you - think about what will make this easy. You will need to create a connection to your database in the `config/environment.rb` file.
2. Write methods to return SQL queries in the 'lib/queries.rb' file. Test them out by running `rake console`

### Questions

1. Who did Jon Stewart have on the Daily Show the most?
2. What was the most popular profession of guest for each year Jon Stewart hosted the Daily Show?
3. What profession was on the show most overall?
4. How many people did Jon Stewart have on with the first name of Bill?
5. What dates did Patrick Stewart appear on the show?
6. Which year had the most guests?
7. What was the most popular "Group" for each year Jon Stewart hosted?

### Double Bonus

Set up your DB using ActiveRecord. Write methods on your models to return instances of the correct classes. 

## Resources
+ [Five Thirty Eight on Github](https://github.com/fivethirtyeight)
+ [Stack Overflow - How to Parse a CSV into a database? ](http://stackoverflow.com/questions/11869039/how-do-i-import-a-csv-file-into-an-sqlite-database-with-the-sqlite3-gem-for-ruby)

<p class='util--hide'>View <a href='https://learn.co/lessons/bonus-sql-challenge'>BONUS: The Daily Show with Jon Stewart Challenge</a> on Learn.co and start learning to code for free.</p>
