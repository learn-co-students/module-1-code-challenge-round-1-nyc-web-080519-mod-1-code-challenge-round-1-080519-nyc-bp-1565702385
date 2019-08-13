require 'pry'
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
    QueueItem.all.select{|queue_item| queue_item.movie == self}
  end

  def viewers
    queue_items.map{|queue_item| queue_item.viewer}
  end

  # Find the average rating of this movie instance
  # Excludes movie instances with rating = nil
  def average_rating
    non_nil_rating = queue_items.select{|queue_item| queue_item.rating != nil}
    sum = non_nil_rating.map{|queue_item| queue_item.rating}.reduce(:+).to_f
    average = (sum/non_nil_rating.length).to_f
  end

  def self.highest_rated
    unique_movies = QueueItem.all.map{|queue_item| queue_item.movie}.uniq
    max_rated = unique_movies.max{|movie_a, movie_b| movie_a.average_rating <=> movie_b.average_rating}.rating
  end


end
