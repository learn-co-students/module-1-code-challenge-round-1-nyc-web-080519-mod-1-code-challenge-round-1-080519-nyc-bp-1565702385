require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

amanda = Viewer.new("Amanda")
marisa = Viewer.new("Marisa")
danny = Viewer.new("Danny")
sophia = Viewer.new("Sophia")






harry_potter = Movie.new("Harry Potter")
  # viewer.queue_item
usual_suspects = Movie.new("Usual Suspects")
the_departed = Movie.new("The Departed")
toy_story = Movie.new("Toy Story")
the_godfather = Movie.new("The Godfather")

QueueItem.new(danny, the_departed, 5)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
