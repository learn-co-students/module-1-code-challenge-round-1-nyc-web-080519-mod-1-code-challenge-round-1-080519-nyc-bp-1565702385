class QueueItem

    attr_reader :movie, :viewer
    attr_accessor :rating

    @@all = []

    def initialize(movie, viewer, rating=nil)
        @movie  = movie
        @viewer = viewer
        @rating = rating
        @@all << self 
    end

    def self.all
        @@all
    end

    def rating=(new_rating)
    new_rating = 5 if rating > 5
    new_rating = 1 if rating < 1 
    self.rating = new_rating
    end


end
