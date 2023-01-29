-- In 11.sql, write a SQL query to list the titles of the five highest rated movies (in order) that Chadwick Boseman starred in, starting with the highest rated.
-- You may assume that there is only one person in the database with the name Chadwick Boseman.
SELECT movies.title FROM people -- seleciona o que vai ser printado (movies.title) e especifica de onde começa as JOIN (FROM people)
JOIN stars ON people.id = stars.person_id -- junta people com stars
JOIN movies ON stars.movie_id = movies.id -- junta stars com movies
JOIN ratings ON movies.id = ratings.movie_id -- junta movies com ratings
WHERE people.name = "Chadwick Boseman" -- aplica a condição
ORDER by rating DESC -- organiza a ordem
LIMIT 5; -- limita o numero de seleções
-- +--------------------------+
-- |          title           |
-- +--------------------------+
-- | 42                       |
-- | Black Panther            |
-- | Marshall                 |
-- | Ma Rainey's Black Bottom |
-- | Get on Up                |
-- +--------------------------+