class QueueItem
    attr_accessor :viewer, :movie, :rating
    @@all = []

    #not initializing rating, since it will be nil by default until a user rates it
    #instead only making an accessor for rating so it can be updated
    def initialize(viewer, movie)
        @viewer = viewer
        @movie = movie
        @@all << self
    end

    def self.all
        @@all
    end

end
