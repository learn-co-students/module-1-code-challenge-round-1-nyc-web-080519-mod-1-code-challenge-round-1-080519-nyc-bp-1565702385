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
    QueueItem.all.select { |item| item.movie == self }
  end

  def viewers
    queue_items.map { |item| item.viewer }
  end

  def average_rating
    total = 0
    queue_items.each{ |item| total += item.rating if item.rating != nil }
    (total*1.0) / queue_items.count
  end

  def self.highest_rated 
    rated = QueueItem.all.select { |item| item.rating != nil }
    rated.sort_by{ |rated_item| rated_item.rating }[-1]
  end
end