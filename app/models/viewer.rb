require "pry"

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

  #returns an array of queue items where the viewer is myself
  def queue_items
    #look through all of the QueueItems
    QueueItem.all.select do |queue_item|
      #and select the ones where the viewer is myself
      queue_item.viewer == self
    end
  end

  #returns an array of movie instances in the viewers queue
  def queue_movies
    #look through all of our queue items (using queue_items method)
    self.queue_items.map do |queue_item|
      #and map the movie instance
      queue_item.movie
    end
  end

  #adds movie instance argument to the viewers queue
  def add_movie_to_queue(movie)
    #create a new queue item where viewer is myself and movie is argument given
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    #first check if the movie is in our queue
    if self.queue_movies.include?(movie)
      #find the queue item for that movie
      queue_item_to_rate = self.queue_items.find do |queue_item|
        queue_item.movie == movie
      end
      #and update its rating to the rating argument
      queue_item_to_rate.rating = rating
    else
      #otherwise, add a new queue item with the movie
      new_queue_item = add_movie_to_queue(movie)
      #and update its rating to the rating argument
      new_queue_item.rating = rating
    end
  end
  
end
