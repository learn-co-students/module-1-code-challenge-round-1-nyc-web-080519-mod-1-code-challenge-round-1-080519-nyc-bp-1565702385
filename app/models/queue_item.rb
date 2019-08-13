class QueueItem
    
    attr_accessor :movie, :viewer, :rating
  
    @@all = []
  
    def initialize(movie, viewer, rating = 0)
      @movie = movie
      @viewer = viewer
      @rating = rating
      self.class.all << self
    end
  
    def self.all
      @@all
    end
    
  end
