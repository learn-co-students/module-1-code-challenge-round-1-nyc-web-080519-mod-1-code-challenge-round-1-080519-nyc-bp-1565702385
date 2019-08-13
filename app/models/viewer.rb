class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select{|qi| qi.viewer == self}
  end

  def queue_movies
    queue_items.map{|qi| qi.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie,self)
  end

  def rate_movie(movie, rating)
    changed = false
    rating = 5 if rating > 5
    rating = 1 if rating < 1 
    QueueItem.all.each do |qi|
      if qi.movie == movie and qi.viewer == self
        qi.rating = rating
        changed = true
      end #ends if
    end #ends do
    if changed == false 
      add_movie_to_queue(movie)
      rate_movie(movie,rating)
    end#ends if 
  end #ends method
  
end
