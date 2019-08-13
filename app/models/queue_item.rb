class QueueItem

    attr_reader :viewer, :movie
    attr_accessor :rating

    @@all = []

    def initialize(viewer, movie, rating = nil)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

end