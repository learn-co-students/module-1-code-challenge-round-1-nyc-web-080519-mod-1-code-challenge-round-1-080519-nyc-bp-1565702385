require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

viewer_1 = Viewer.new('Username_1')
viewer_2 = Viewer.new('Username_2')
viewer_3 = Viewer.new('Username_3')
viewer_4 = Viewer.new('Username_4')
viewer_5 = Viewer.new('Username_5')
viewer_6 = Viewer.new('Username_6')
viewer_7 = Viewer.new('Username_7')
viewer_8 = Viewer.new('Username_8')


movie_1 = Movie.new('Title_1')
movie_2 = Movie.new('Title_2')
movie_3 = Movie.new('Title_3')
movie_4 = Movie.new('Title_4')
movie_5 = Movie.new('Title_5')
movie_6 = Movie.new('Title_6')
movie_7 = Movie.new('Title_7')

queue_item_1 = QueueItem.new({viewer: viewer_1, movie: movie_1})
queue_item_2 = QueueItem.new({viewer: viewer_1, movie: movie_2})
queue_item_3 = QueueItem.new({viewer: viewer_2, movie: movie_2, rating: 4})
queue_item_4 = QueueItem.new({viewer: viewer_3, movie: movie_2, rating: 5})
queue_item_5 = QueueItem.new({viewer: viewer_4, movie: movie_2, rating: 6})
queue_item_6 = QueueItem.new({viewer: viewer_5, movie: movie_2, rating: 7})










binding.pry
0 #leave this here to ensure binding.pry isn't the last line
