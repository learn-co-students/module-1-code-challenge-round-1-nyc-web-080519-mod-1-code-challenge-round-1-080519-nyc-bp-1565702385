require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("dan")
v2 = Viewer.new("lucie")
v3 = Viewer.new("yale")

m1 = Movie.new("Die Hard")
m2 = Movie.new("Drive")
m3 = Movie.new("Akira")
m4 = Movie.new("Die Hard 2")

q1 = QueueItem.new(v1, m1)
q2 = QueueItem.new(v2, m1)
q3 = QueueItem.new(v1, m2)
q4 = QueueItem.new(v3, m3)
q5 = QueueItem.new(v3, m1)

v1.rate_movie(m1, 4)
v2.rate_movie(m1, 1)
v3.rate_movie(m2, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
