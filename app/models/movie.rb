class Movie

  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    # @@all << self
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItems.all.select do |queued_items| # use select since you want that specific instance
      queued_items.movie == self
    end
  end


  def viewers
    queue_items.map do |queue_items| 
      queue_items.viewer # return the array of the viewer for that movie
    end
  end

  # helper average method
  def average
    # average = (queue_items.reduce():+)/(queue_items.length) - syntax error
    sum = 0 
    queue_items.map { |a| sum+=a }

    average = sum/queue_items.count

  end

  # average rating for all the instances fo the movie  
  def average_rating
    queue_items.map do |movies|
      movies.average
    end
  end

  def highest_rated
    queue_items.max
  end

end