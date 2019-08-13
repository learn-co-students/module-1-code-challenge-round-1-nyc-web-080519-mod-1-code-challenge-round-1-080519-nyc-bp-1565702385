require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

naruto = Movie.new("Naruto")
imitation_game = Movie.new("Imitation Game")
twilight = Movie.new("Utter Trash")


darrow = Viewer.new("Darrow")
adam = Viewer.new("Adam")


qi1 = QueueItem.new(darrow, naruto, 4)
qi2 = QueueItem.new(adam, naruto, 2)
# qi7 = QueueItem.new(darrow, twilight, 1)
qi3 = QueueItem.new(darrow, imitation_game, 5)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
