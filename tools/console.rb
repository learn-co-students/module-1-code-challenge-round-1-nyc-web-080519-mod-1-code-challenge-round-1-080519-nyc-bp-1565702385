require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

movie1 = Movie.new("movie1")
movie2 = Movie.new("movie2")
movie3 = Movie.new("movie3")
movie4 = Movie.new("movie4")
movie5 = Movie.new("movie5")

viewer1 = Viewer.new("viewer1")
viewer2 = Viewer.new("viewer2")
viewer3 = Viewer.new("viewer3")
viewer4 = Viewer.new("viewer4")
viewer5 = Viewer.new("viewer5")

queue1 = QueueItem.new(viewer1, movie1, 3)
queue2 = QueueItem.new(viewer1, movie2, 4)
queue3 = QueueItem.new(viewer2, movie4, 5)
queue4 = QueueItem.new(viewer2, movie1, 2)
queue5 = QueueItem.new(viewer3, movie1, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
