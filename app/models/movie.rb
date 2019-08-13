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

  def queue_items
    QueueItem.all.select { |q_item| q_item.movie == self }
  end

  def viewers
    queue_items.map { |q_item| q_item.viewer }
  end

  # helper method to get the ratings for a specific movie
  def all_ratings
    queue_items.map { |q_item| q_item.rating }
  end

  def average_rating
    if self.all_ratings.include?(nil)
      puts "You did not rate all your movies.."
      # unless we want to get the average rating for movies that are only
      # rated
    else
      total_score = self.all_ratings.sum
      num_movies = self.all_ratings.length
      (total_score) / (num_movies)
    end
  end


  # go through all the movies and check their queue_items
  # use max_by to get the 
  def self.highest_rated
    rated_movies = Movie.all.reject { |movie| movie.average_rating.nil? }
    rated_movies.
  end

end
