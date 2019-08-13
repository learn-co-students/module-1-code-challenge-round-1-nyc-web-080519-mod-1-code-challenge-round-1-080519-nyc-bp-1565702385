require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("blei95")
v2 = Viewer.new("annlei")
v3 = Viewer.new("lynnchao")

m1 = Movie.new("kill bill")
m2 = Movie.new("harry potter")
m3 = Movie.new("greatest showman")

q1 = QueueItem.new(v1, m3, 1)
q2 = QueueItem.new(v2, m2, 4)
q3 = QueueItem.new(v3, m2, 3)
q4 = QueueItem.new(v3, m1, 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
