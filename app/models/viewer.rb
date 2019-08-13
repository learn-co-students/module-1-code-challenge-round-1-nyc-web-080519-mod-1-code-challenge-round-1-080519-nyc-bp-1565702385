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

  # Viewer#queue_items`
  # + this method should return an array of `QueueItem` instances associated with this instance of `Viewer`.

  def queue_items
    QueueItem.all.select do |item|
      item.viewer == self 
    end 
  end 

  # Viewer#queue_movies`
  # + this method should return an array of `Movie` instances in the `Viewer`'s queue.

  def queue_movies
    queue_items.select do |item|
      item.movie
    end 
  end 

  # Viewer#add_movie_to_queue(movie)`
  # + this method should receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue
  
  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end 

  # Viewer#rate_movie(movie, rating)`
  # + given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's 

  def rate_movie(movie, rating)
  end 


end
