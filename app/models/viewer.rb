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
    #returns an array of QueueItem instances associated with this instance of viewer 
    QueueItem.all.select do |item|
      item.viewer == self
    end

  end

  def queue_movies
    #should return an array of Movie instances in the viewers queue

    self.queue_items.map do |item|
      item.movie
    end

  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    if self.queue_movies.include?(movie)
      self.queue_items.rating = rating
    end
    binding.pry
    QueueItem.new(self, movie, rating)
  end
  
end
