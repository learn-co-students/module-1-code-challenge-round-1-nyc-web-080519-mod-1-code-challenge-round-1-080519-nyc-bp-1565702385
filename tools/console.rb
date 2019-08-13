require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


wall_street = Movie.new("Wall Street")
the_hours = Movie.new("The Hours")
jaws = Movie.new("Jaws")
the_notebook = Movie.new("The Notebook")
the_avengers = Movie.new("The Avengers")
the_avengers_2 = Movie.new("The Avengers 2")

tim_smith = Viewer.new("Tim Smith")
suzanne_maietta = Viewer.new("Suzanne Maietta")
jonathan_louey = Viewer.new("Jonathan Louey")
cj_louey = Viewer.new("CJ Louey")
linda_louey = Viewer.new("Linda Louey")

item_1 = QueueItem.new(wall_street, tim_smith, 10)
item_2 = QueueItem.new(the_hours, suzanne_maietta, 9)
item_3 = QueueItem.new(jaws, jonathan_louey, 8)
item_4 = QueueItem.new(the_notebook, cj_louey, 7)
item_5 = QueueItem.new(the_avengers, linda_louey, 6)
item_6 = QueueItem.new(the_avengers_2, linda_louey, 7)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
