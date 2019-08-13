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
    QueueItem.all.select do |my_queue|
      my_queue.viewer == self
    end
  end

  def queue_movies
    queue_items.map do |my_queue|
      my_queue.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  def rate_movie(movie, rating)
    if rating <= 5 && rating >= 1
      QueueItem.new(movie, self, rating)
    end
  end
  
  
end
