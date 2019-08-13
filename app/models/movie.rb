class Movie
  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end 

  def self.all
    @@all
  end

  #returns an array of all the QueueItem instances that contain this movie
  def queue_items
    QueueItem.all.select {|queue| queue.movie == self}
  end

  #returns an array of all of the Viewers with this
  #Movie instance in their queue
  def viewers
    self.queue_items.map {|queue| queue.viewer}
  end

  #returns the average of all ratings for this instance of Movie
  def average_rating
    total = 0.0
    self.queue_items.each { |queue| total += queue.rating }
    (total/(self.queue_items.count)).round(2)
  end

  #returns the instance of Movie with the highest average rating
  def self.highest_rated
    rating_hash = Hash.new(0)

    Movie.all.each do |movie| 
      if movie.average_rating.to_f.nan?
        rating_hash[movie] = 0
      else
        rating_hash[movie] = movie.average_rating
      end
    end
    rating_hash.max_by {|k, v| v}[0]
  end

end
