require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# need to test out the seed data for methods

v1 = Viewer.new("Jack")
v2 = Viewer.new("Jill")
v3 = Viewer.new("Mary")
v4 = Viewer.new("Anne")
v5 = Viewer.new("Hue")

m1 = Movie.new("Digimon")
m2 = Movie.new("Pokemon")
m3 = Movie.new("Cardcaptor")
m4 = Movie.new("Escaflowne")
m5 = Movie.new("Monster Rancher")

q_i_1 = QueueItem.new("Jack", "Digimon")
q_i_2 = QueueItem.new("Jack", "Pokemon")
q_i_3 = QueueItem.new("Mary", "Cardcaptor")
q_i_4 = QueueItem.new("Hue", "Escaflowne")
q_i_5 = QueueItem.new("Anne", "Escaflowne")
q_i_6 = QueueItem.new("Jill", "Monster Rancher")
q_i_7 = QueueItem.new("Mary", "Digimon")
q_i_8 = QueueItem.new("Jill", "Pokemon")
q_i_9 = QueueItem.new("Hue", "Cardcaptor")
q_i_10 = QueueItem.new("Anne", "Monster Rancher")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
