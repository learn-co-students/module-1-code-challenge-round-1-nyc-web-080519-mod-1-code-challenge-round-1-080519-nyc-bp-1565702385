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
    QueueItem.all.select { |item| item.viewer == self }
  end

  def queue_movies
    queue_items.map { |item| item.movie }
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, new_rating)

    to_rate = QueueItem.all.find { |item| item.movie == movie }

    if to_rate == nil
      QueueItem.new(self, movie, new_rating)
    else
      to_rate.rating = new_rating
    end
  end


end