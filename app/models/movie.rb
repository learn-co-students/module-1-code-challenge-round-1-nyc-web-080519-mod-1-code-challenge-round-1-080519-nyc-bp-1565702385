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
    QueueItem.all.select do |my_queue|
      my_queue.movie == self
    end
  end

  def viewers
    queue_items.map do |my_queue|
      my_queue.viewers
    end
  end

  def average_rating
    (queue_items.reduce(:+) / queue_items.length).to_f
  end
  #doesn't understand reduce's +
  #would require reduce(0) with a |sum, n| and to sum + n
  #0 being the starting point and adding each element of the array to
  #each other to reduce to one value, then divide by the queue_item length and make a float

  def self.highest_rated
    all_my_queue = QueueItem.all.select do |my_queue|
      my_queue.movie == self
    end
    all_my_queue.max_by do |my_queue_movies|
      my_queue_movies.rating
    end
  end
  #continue to get nil for highest rating? although set to default in join table

end
