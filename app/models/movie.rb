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

  #returns an array of queue items where the movie is myself
  def queue_items
    QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end
  end

  #returns an array of the viewers with this movie in their queue
  def viewers
    #look through all of the queue_items for this movie (using self.queue_items method)
    self.queue_items.map do |queue_item|
      #and map the viewers
      queue_item.viewer
      #note - can do `queue_item.viewer.username` if would prefer to have username instead of instance of viewers
    end
  end

  def average_rating
    #look through all of our queue items and select those with a rating
    rated_queue_items = self.queue_items.select do |queue_item|
      queue_item.rating
    end
    #of those queue items that have been rated, sum the ratings
    total_rating = rated_queue_items.sum do |queue_item|
      #and sum them
      queue_item.rating
    end
    #find average by dividing total rating for this movie (as a float) by the number of rated queue items for this movie
    total_rating.to_f / rated_queue_items.count
  end

  #returns movie instance with the highest average rating
  def self.highest_rated
    #select all of the movie instances that have a rating
    rated_movies = self.all.select do |movie|
      movie.average_rating != 0
    end
    #look through all of those movie instances and find the max by the average rating
    rated_movies.max_by do |movie|
      movie.average_rating
    end
  end

end
