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

  def queue_items_iterator
    QueueItem.all.select do |queue_item|
      queue_item.movie == self.title
    end
  end

  def queue_items
    queue_items_iterator
  end

  def viewers
    queue_items_iterator.each.map do |item|
      item.viewer
    end
  end

  def average_rating
    count = 0
    queue_items_iterator.each do |item|
      count += item.rating
    end
    return (count/(queue_items_iterator.length))
  end

  def highest_rated
    #sort through all the movies using the Queue_items.all function and just do a max_by function on the arrayto get biggest
  end

end
