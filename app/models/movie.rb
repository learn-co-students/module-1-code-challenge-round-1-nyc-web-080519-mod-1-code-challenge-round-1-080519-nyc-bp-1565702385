class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select do |queueItem|
      queueItem.movie == self
    end
  end

  def viewers
    queue_items.map do |queueItem|
      queueItem.viewer
    end
  end

  # def average_rating
  #   queue_items.map do |queueItem|
  #     queueItem.rating
  #   end.sum / queue_items.length
  # end
  def remove_nil_ratings
    queue_items.select do |queueItem|
      queueItem.rating != nil
    end 
  end

  def average_rating
    total = remove_nil_ratings.map do |queueItem|
      queueItem.rating
    end.sum
    return total / remove_nil_ratings.length
  end

  def self.all
    @@all
  end


  def self.highest_rated
    my_arr = all.select do |movie|
      movie.remove_nil_ratings.count > 0
    end
    my_arr.max_by do |movie|
      movie.average_rating
    end
  end

end
