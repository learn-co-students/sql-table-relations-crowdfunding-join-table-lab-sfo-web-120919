# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT projects.title, SUM(pledges.amount)
  FROM projects
  INNER JOIN pledges 
  ON projects.id = pledges.project_id
  GROUP BY projects.id
  ORDER by projects.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT users.name, users.age, SUM(pledges.amount)
  FROM users
  INNER JOIN pledges
  ON users.id = pledges.user_id
  GROUP BY users.id
  ORDER by users.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  
  "SELECT projects.title, SUM(pledges.amount) - projects.funding_goal AS result
  FROM pledges,projects
  WHERE pledges.project_id = projects.id 
  GROUP BY projects.title
  HAVING SUM(pledges.amount) - projects.funding_goal >= 0;"
  
  
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "SELECT users.name, SUM(pledges.amount) AS total_pledges FROM users
  INNER JOIN pledges
  ON users.id = pledges.user_id
  GROUP BY users.name
  ORDER BY total_pledges"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT projects.category, pledges.amount FROM projects
  INNER JOIN pledges
  ON projects.id = pledges.project_id
  WHERE category = 'music' "
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT projects.category, SUM(pledges.amount) AS total_pledges FROM pledges
  INNER JOIN projects
  ON projects.id = pledges.project_id
  WHERE category = 'books'
  "
end
# -----------------------------------------------------------------------------------------------------

# def selects_all_female_bears_return_name_and_age
#   "SELECT name,age FROM bears WHERE gender = 'F'"
# end

# def selects_all_bears_names_and_orders_in_alphabetical_order
#   "SELECT name FROM bears ORDER BY name ASC;"
# end

# def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
#   "SELECT name,age FROM bears WHERE alive = 1 ORDER BY age ASC;"
# end

# def selects_oldest_bear_and_returns_name_and_age
#   "SELECT name, age FROM bears ORDER BY age DESC LIMIT 1"
# end

# def select_youngest_bear_and_returns_name_and_age
#   "SELECT name,age FROM bears ORDER BY age ASC LIMIT 1"
# end

# def selects_most_prominent_color_and_returns_with_count
#   "SELECT color, COUNT(color) FROM bears GROUP by color ORDER BY COUNT(color) DESC LIMIT 1"
# end

# def counts_number_of_bears_with_goofy_temperaments
#   'SELECT COUNT(temperament) FROM bears WHERE temperament = "goofy"'
# end

# def selects_bear_that_killed_Tim
#   "SELECT * FROM bears WHERE name is null"
# end
