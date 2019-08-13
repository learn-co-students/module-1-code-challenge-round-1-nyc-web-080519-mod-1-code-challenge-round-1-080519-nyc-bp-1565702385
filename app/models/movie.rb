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
    self.queue_items.map do |item|
      item.viewer
    end
  end

  def average_rating
    ratings = self.queue_items.map do |item|
      item.rating
    end

    ratings.each 

  end

  def self.highest_rated
    #look through array of all Movie instances

  end



end
