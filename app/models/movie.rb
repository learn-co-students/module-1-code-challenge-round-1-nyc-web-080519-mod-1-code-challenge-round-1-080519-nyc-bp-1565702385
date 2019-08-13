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

  def self.highest_rated
    #go through all movie instances and get max_by their average rating
    Movie.all.max_by do |movie|
      movie.average_rating if movie.average_rating 
    end
  end
  #this works right now only if every movie instance has an average rating
  #some movies won't have an average rating, how to deal with those (if the movie doesn't have an average rating the #average_rating method returns NaN, which I thought was falsy)

  def queue_items
    QueueItem.all.select do |qi|
      qi.movie == self
    end
  end

  def viewers
    queue_items.map do |qi|
      qi.viewer
    end
  end

  def average_rating 
    ratings_total = 0
    divisor = 0
    queue_items.each do |qi|
      ratings_total += qi.rating if qi.rating
      divisor += 1
    end
    ratings_total / divisor.to_f
  end
  #doesn't specify integer/float, I went with float



end


# Movie.all
# ✅returns an array of all Movie
# Movie#queue_items
# ✅returns an array of all the QueueItem instances that contain this movie
# Movie#viewers
# ✅returns an array of all of the Viewers with this Movie instance in their queue
# Movie#average_rating
# ✅returns the average of all ratings for this instance of Movie
# Movie.highest_rated
# ⭕️returns the instance of Movie with the highest average rating