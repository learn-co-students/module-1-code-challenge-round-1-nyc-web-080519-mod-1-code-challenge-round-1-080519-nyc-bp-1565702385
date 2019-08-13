require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ryan = Viewer.new("ryan")
dan = Viewer.new("dan")
tracie = Viewer.new("tracie")
dana = Viewer.new("dana")
gabbie = Viewer.new("gabbie")
evans = Viewer.new("evans")
steven = Viewer.new("steven")
justin = Viewer.new("justin")

godfather = Movie.new("The Godfather")
toy_story = Movie.new("Toy Story")
shrek = Movie.new("Shrek")
inception = Movie.new("Inception")
ferris_bueller = Movie.new("Ferris Bueller's Day Off")
antz = Movie.new("Antz")
lalaland = Movie.new("La La Land")


item1 = QueueItem.new(ryan, ferris_bueller)
item2 = QueueItem.new(dan, toy_story)
item3 = QueueItem.new(gabbie, toy_story)
item4 = QueueItem.new(evans, inception)
item5 = QueueItem.new(dana, lalaland)
item6 = QueueItem.new(ryan, inception)
item7 = QueueItem.new(dan, godfather)
item8 = QueueItem.new(steven, shrek)
item9 = QueueItem.new(dan, lalaland)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
