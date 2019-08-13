class QueueItem

    attr_reader :viewer, :movie, :rating
    @@all = []
    
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end
end
