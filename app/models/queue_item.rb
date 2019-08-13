class QueueItem
  attr_reader :viewer, :movie
  attr_accessor :rating

  @@all = []

  def initialize(args)
    @viewer = args[:viewer]
    @movie = args[:movie]
    @rating = args[:rating]
    self.class.all << self
  end

  def self.all
    @@all
  end

end
