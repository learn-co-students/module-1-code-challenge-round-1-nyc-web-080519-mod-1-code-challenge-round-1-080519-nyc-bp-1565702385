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
    QueueItem.all.select do |item|
      item.movie == self 
    end
  end

  def viewers
    queue_items.map do |item|
      item.viewer
    end
  end

  def average_rating #for this instance of Movie
    rating_arr=queue_items.map do |item| 
      item.rating 
    end
    rating_arr.sum / rating_arr.length
  end 

  def self.highest_rated 
    #go through all the instances of Movie and max_by the average rating within those instances 
    self.all.max_by do |movie|
      movie.average_rating
    end
  end

  
end #end of class