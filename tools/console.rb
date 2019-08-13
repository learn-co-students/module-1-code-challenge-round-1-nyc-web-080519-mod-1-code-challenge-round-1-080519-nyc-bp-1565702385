require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("RutgerM")
v2 = Viewer.new("JohnJ")
v3 = Viewer.new("StevenR")
v4 = Viewer.new("SarahH")
v5 = Viewer.new("MeghanJ")

m1 = Movie.new("Princess Bride")
m2 = Movie.new("Star Wars")
m3 = Movie.new("Enter the Dragon")
m4 = Movie.new("Raiders of the Lost Arc")
m5 = Movie.new("Pulp Fiction")

qi1 = QueueItem.new(m1, v1, 3)
qi2 = QueueItem.new(m3, v2, 3)
qi3 = QueueItem.new(m3, v3, 3)
qi4 = QueueItem.new(m5, v5, 3)
qi5 = QueueItem.new(m4, v5)
qi1 = QueueItem.new(m1, v3, 5)
qi2 = QueueItem.new(m3, v4, 2)
qi3 = QueueItem.new(m3, v1, 4)
qi4 = QueueItem.new(m5, v1, 2)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
