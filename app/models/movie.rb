class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

end #class end



# + Movie.all
#       returns an array of all Movie
# Movie#queue_items
#       returns an array of all the QueueItem instances that contain this movie
# Movie#viewers
#       returns an array of all of the Viewers with this Movie instance in their queue
# Movie#average_rating
#       returns the average of all ratings for this instance of Movie
# Movie.highest_rated
#       returns the instance of Movie with the highest average rating
