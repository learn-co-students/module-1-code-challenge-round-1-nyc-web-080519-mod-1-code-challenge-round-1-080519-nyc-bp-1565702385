class QueueItem

    @@all = []

    attr_accessor :viewer, :movie

    def initialize(viewer, movie, rating = 0)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self

    end

    def self.all
        @@all
    end

    def rating
        if @rating == 0
            return nil
        end
        @rating
    end




end
