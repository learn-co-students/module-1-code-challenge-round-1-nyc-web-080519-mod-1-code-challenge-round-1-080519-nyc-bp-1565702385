class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |qi|
      qi.viewer == self
    end
  end

  def queue_movies
    queue_items.map do |qi|
      qi.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    if !queue_movies.include?(movie)
      QueueItem.new(self, movie, rating)
    else
      QueueItem.all.find do |qi|
        qi.movie == movie && qi.viewer == self
      end.rating = rating
    end
  end
  #should we validate the rating to make sure it's between 1 and 5 (I ran out of time to try to do this)
  
end #end of Viewer class


# Viewer.all
# ✅returns all of the viewers
# Viewer#queue_items
# ✅this method should return an ARRAY of QueueItem instances associated with this instance of Viewer.
# Viewer#queue_movies
# ✅this method should return an ARRAY of Movie instances in the Viewer's queue.
# Viewer#add_movie_to_queue(movie)
# ✅this method should receive a Movie instance as its only argument and add it to the Viewer's queue
# Viewer#rate_movie(movie, rating)
# ✅given a movie and a rating (a number between 1 and 5), this method should assign the 
# rating to the viewer's QueueItem for that movie. If the movie is not already in the viewer's queue, 
# this method should add a new QueueItem with the viewer, movie, and rating. If the movie is already in
#  the queue, this method should not create a new QueueItem.