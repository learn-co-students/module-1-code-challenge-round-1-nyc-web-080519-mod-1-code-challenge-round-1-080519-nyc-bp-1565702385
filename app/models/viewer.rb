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

  # def queue_items
  #   QueueItem.select{ |item| item.}
  # end

  def add_movie_to_queue(movie)
    QueueItem.new(movie)
  end
  
end #class end


# - [ + ]`Viewer.all`
#       + returns all of the viewers
# - [ ]`Viewer#queue_items`
#       + this method should return an array of `QueueItem` instances associated with this instance of `Viewer`.
# - [ ]`Viewer#queue_movies`
#       + this method should return an array of `Movie` instances in the `Viewer`'s queue.
# - [ ] `Viewer#add_movie_to_queue(movie)`
#       + this method should receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue
# - [ ] `Viewer#rate_movie(movie, rating)`
#       + given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's `QueueItem` for that movie. If the movie is not already in the viewer's queue, this method should add a new `QueueItem` with the viewer, movie, and rating. If the movie is already in the queue, this method should not create a new `QueueItem`.
