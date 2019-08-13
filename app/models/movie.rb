class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select { |qi| qi.film == self }
  end 

  def viewers
    queue_items.collect { |qi| qi.user }
  end  # ends viewers method

  def average_rating
    this_mov = queue_items.select { |qi| qi.film == self }
    #. collect { |mov| mov.score }
    binding.pry
  end  # ends average_rating method

end
