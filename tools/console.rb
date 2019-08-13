require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Viewers
v1 = Viewer.new("dan")
v2 = Viewer.new("bob")
v3 = Viewer.new("sara")

# Movies
m1 = Movie.new("m1")
m2 = Movie.new("m2")
m3 = Movie.new("m3")

# Queue Items
q1 = QueueItem.new(v1, m1, 5)
q2 = QueueItem.new(v1, m2, 4)
q3 = QueueItem.new(v1, m3)

q4 = QueueItem.new(v2, m1, 5)
q5 = QueueItem.new(v2, m2, 4)
q6 = QueueItem.new(v2, m3, 2)

q7 = QueueItem.new(v3, m1)
q8 = QueueItem.new(v3, m2, 1)
q9 = QueueItem.new(v3, m3, 2)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
