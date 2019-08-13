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
    QueueItem.all.select{|qi| qi.movie == self}
  end

  def viewers
    queue_items.map{|qi| qi.viewer}
  end

  def average_rating
    total = 0
    nil_count = 0
    queue_items.map do |qi| 
      if qi.rating == nil
        nil_count +=1 
      else
        total += qi.rating 
      end 
    end
    return total / ((queue_items.length - nil_count)*1.0) unless nil_count == queue_items.length
    "no ratings yet"
  end


  def self.highest_rated
    array = self.all.map{|m| m.average_rating}
    self.all.find_by{|m|m.average_rating ==  array.max}
  end

end
