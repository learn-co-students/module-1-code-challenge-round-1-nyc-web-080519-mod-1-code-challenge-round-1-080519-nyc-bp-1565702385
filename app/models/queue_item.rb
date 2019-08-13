class QueueItem

  attr_reader :viewer, :movie, :rating

  @@all = [] 

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie 
    @rating = rating 
    self.class.all << self
  end

  def self.all
    @@all
  end

  def rating
    if @rating == nil 
      puts nil 
    else
      @rating
    end
  end

end
