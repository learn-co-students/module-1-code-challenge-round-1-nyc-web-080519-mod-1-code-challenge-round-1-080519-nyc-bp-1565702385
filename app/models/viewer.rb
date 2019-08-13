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

  def queue_items #an array of queue instances
    QueueItem.all.select do |item|
      item.viewer == self 
    end
  end

  def queue_movies #an array of queue's movie instances
    queue_items.map do |item|
      item.movie 
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie, nil)
  end

  def rate_movie(movie, rating)
    #if the movie instance is not found in the viewers queue, QueueItem.new 
    #else ignore and don't do anything
    !queue_movies.include?(movie)
    QueueItem.new(self, movie, rating)

  end




  
end #end of class
