require 'pry'

class Viewer
  attr_accessor :username 

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def queue_items
    QueueItem.all.select { |qi| qi.user == self }
  end  # ends queue_items method

  ###########NEEEEDS WORDK!!!!!!!!!!!!
  def queue_movies
    queue_items.collect { |q| q.film }
  end  # ends queue_movies method

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end  # ends add_movie_to_queue method


  def rate_movie(movie, rating)  
    mov = queue_items.select { |qi| qi.film == movie }
    binding.pry 
    mov[score] = rating
  end  # ends rate_movie method

  def self.all
    @@all
  end
  
end
