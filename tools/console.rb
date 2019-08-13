require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tracie = Viewer.new("tracie")
chris = Viewer.new("chris")
megan = Viewer.new("megan")
sarah = Viewer.new("sarah")
ruby = Viewer.new("ruby")

jurassic_park = Movie.new("Jurassic Park")
tommy_boy = Movie.new("Tommy Boy")
waynes_world = Movie.new("Wayne's World")
english_patient = Movie.new("The English Patient")
mrs_doubtfire = Movie.new("Mrs. Doubtfire")

qi1 = QueueItem.new(tracie, jurassic_park, 5)
qi2 = QueueItem.new(chris, waynes_world)
qi3 = QueueItem.new(megan, jurassic_park, 4)
qi4 = QueueItem.new(ruby, mrs_doubtfire)
qi5 = QueueItem.new(tracie, waynes_world, 5)
#qi6 = QueueItem.new(tracie, tommy_boy, 5)
qi7 = QueueItem.new(tracie, english_patient, 1)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
