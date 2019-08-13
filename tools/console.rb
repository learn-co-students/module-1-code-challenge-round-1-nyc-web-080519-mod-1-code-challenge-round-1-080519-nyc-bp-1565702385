require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# ADD Viewers
tom = Viewer.new("Tom User")
joe = Viewer.new("Joe User")
bill = Viewer.new("Bill User")
bob = Viewer.new("Bob User")
john = Viewer.new("John User")

# ADD MOVIES
lotr = Movie.new("The Lord of the Rings")
hobbit = Movie.new("The Hobbit")
spider_man = Movie.new("Spider Man")
mask = Movie.new("The Mask")
dumb_and_dumber = Movie.new("Dumb and Dumber")
omen = Movie.new("The Omen")

# ADD Queue Items
q1 = QueueItem.new(lotr, tom)
q2 = QueueItem.new(hobbit, tom)
q3 = QueueItem.new(spider_man, tom)
q4 = QueueItem.new(lotr, joe)
q5 = QueueItem.new(lotr, john)
q6 = QueueItem.new(lotr, bill)
q7 = QueueItem.new(mask, bill)
q8 = QueueItem.new(dumb_and_dumber, bob)
q9 = QueueItem.new(omen, joe)

# Rate Movies
# tom.rate_movie(lotr, 10)
# joe.rate_movie(lotr, 9)
# bill.rate_movie(lotr, 6)
# john.rate_movie(lotr, 2)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
