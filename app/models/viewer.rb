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
    QueueItem.all.select { |q_item| q_item.viewer == self }
  end

  def queue_movies
    queue_items.map { |q_item| q_item.movie }
  end

  def add_movie_to_queue(movie)
    QueueItem.new(viewer, movie)
  end

  # helper method that returns an array of any ratings the user has
  # that is nil
  def nil_ratings
    queue_items.select { |q_item| q_item.rating.nil? }
  end

  #find the movie instance
  def find_movie(movie)
    queue_items.find { |q_item| q_item.movie == movie }
  end

  def rate_movie(movie, rating)
    if nil_ratings.empty?
      QueueItem.new(viewer, movie, rating)
    else
      find_movie(movie).rating = rating
    end
  end

end
