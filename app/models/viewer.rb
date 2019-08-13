class Viewer

  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def queue_items
      QueueItem.all.select do |queued_items| # use select since you want that specific instance
          queued_items.viewer == self
      end

  end

  def queue_movies
      queue_items.map do |queue_items|
        queue_items.movie
      end
  end

  def add_movie_to_queue(movie)
      queue_movies.push(movie)
  end

  def rate_movie(movie, rating)
    # if movie not in viewer's queue  
    if queue_movies.include? movie == false
    # add a new QueueItem 
      QueueItem.new(self, movie, rating)
    else
      # assign the rating 
    end

  end

  def self.all
    @@all
  end

end