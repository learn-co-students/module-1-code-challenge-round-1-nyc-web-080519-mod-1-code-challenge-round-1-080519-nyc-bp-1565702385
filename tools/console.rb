require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
movie1 = Movie.new("Lion King")
movie2 = Movie.new("Aladdin")
movie3 = Movie.new("Finding Nemo")
movie4 = Movie.new("Finding Dory")

viewer1 = Viewer.new("Amy")
viewer2 = Viewer.new("Steven")
viewer3 = Viewer.new("Howard")
viewer4 = Viewer.new("Caryn")
viewer5 = Viewer.new("Bob")

queueitem1 = QueueItem.new(viewer1, movie1)
queueitem2 = QueueItem.new(viewer1, movie2)
queueitem3 = QueueItem.new(viewer4, movie1)
queueitem4 = QueueItem.new(viewer3, movie1)
queueitem5 = QueueItem.new(viewer2, movie3)
queueitem6 = QueueItem.new(viewer2, movie3)



binding.pry
#leave this here to ensure binding.pry isn't the last line
