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
    return total / (queue_items.length - nil_count) unless nil_count == queue_items.length
    0
  end


  def self.highest_rated
    self.all.map{|m| m.average_rating}.max
  end
    
end


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

m1 = Movie.new("Jaws")
m2 = Movie.new("The_Godfather")
m3 = Movie.new("Rocky")
m4 = Movie.new("Oceans 11")


v1 = Viewer.new("me")
v2 = Viewer.new("you")
v3 = Viewer.new("someone_else")


q1 = QueueItem.new(m1,v1)
q2 = QueueItem.new(m2,v1,3.0)
q3 = QueueItem.new(m2,v2)
q4 = QueueItem.new(m1,v2)
q5 = QueueItem.new(m2,v3,4)

# p v1.rate_movie(m4,5)
p  Movie.highest_rated
