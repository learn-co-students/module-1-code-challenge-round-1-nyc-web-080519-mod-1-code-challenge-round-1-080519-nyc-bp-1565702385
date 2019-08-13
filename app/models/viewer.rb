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
    QueueItem.all.select do |queueItem|
      queueItem.viewer == self
    end
  end

  def queue_movies
    queue_items.map do |queueItem|
      queueItem.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    if queue_movies.include?(movie)
      the_movie = queue_items.find do |queueItem|
        queueItem.movie == movie
      end
      the_movie.rating = rating
    else
      QueueItem.new(self, movie, rating)
    end
  end
end
