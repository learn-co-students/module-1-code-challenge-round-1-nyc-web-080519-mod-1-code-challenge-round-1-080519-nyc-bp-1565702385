require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

viewer1 = Viewer.new("Jason Beneducci")
viewer2 = Viewer.new("Jared Beneducci")
viewer3 = Viewer.new("Joe Beneducci")
viewer4 = Viewer.new("Jessica Beneducci")

movie1 = Movie.new("Step Brothers")
movie2 = Movie.new("Avatar")
movie3 = Movie.new("Star Wars")
movie4 = Movie.new("Lord of the Rings")

qi1 = QueueItem.new("Jason Beneducci", "Star Wars", 4)
qi2 = QueueItem.new("Joe Beneducci", "Lord of the Rings", 5)
qi3 = QueueItem.new("Jessica Beneducci", "Avatar", 1)
qi4 = QueueItem.new("Jason Beneducci", "Lord of the Rings", 2)
qi5 = QueueItem.new("Jason Beneducci", "Avatar", 3)
qi6 = QueueItem.new("Jared Beneducci", "Step Brothers", 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
