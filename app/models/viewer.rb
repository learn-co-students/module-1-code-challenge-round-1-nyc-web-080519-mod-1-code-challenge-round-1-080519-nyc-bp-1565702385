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

  def queue_items_iterator
    QueueItem.all.select do |queue_item|
      queue_item.viewer == self.username
    end
  end

  def queue_items
    queue_items_iterator
  end

  def queue_movies
    queue_items_iterator.each.map do |item|
      item.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    queue_items_iterator.each do |item|
      if item.movie == movie && item.include?(rating)
        "This movie has already been rated"
      else
        item.rating = rating
      end
    end
  end
end
