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
    QueueItem.all.select{|queue_item| queue_item.viewer == self}
  end

  def queue_movies
    queue_items.map{|queue_item| queue_item.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new({viewer: self, movie: movie})
  end
  
  # def rate_movie(movie, rating)
  #   if rating < 1 || rating > 5
  #     puts 'Rating must be a number between 1 and 5. Please try again.'
  #     break
  #   end
    
  # end
  
end
