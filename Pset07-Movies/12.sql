-- In 12.sql, write a SQL query to list the titles of all movies in which both Johnny Depp and Helena Bonham Carter starred.

SELECT movies.title FROM people
   ...> JOIN stars ON people.id = stars.person_id
   ...> JOIN movies ON stars.movie_id = movies.id
   ...> WHERE people.name = "Johnny Depp" AND movies.title IN (
   ...> SELECT movies.title FROM people
   ...> JOIN stars ON people.id = stars.person_id
   ...> JOIN movies ON stars.movie_id = movies.id
   ...> WHERE people.name = "Helena Bonham Carter");
-- +------------------------------------------------+
-- |                     title                      |
-- +------------------------------------------------+
-- | Corpse Bride                                   |
-- | Charlie and the Chocolate Factory              |
-- | Sweeney Todd: The Demon Barber of Fleet Street |
-- | Alice in Wonderland                            |
-- | Dark Shadows                                   |
-- | Alice Through the Looking Glass                |
-- +------------------------------------------------+