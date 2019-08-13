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

  #return an array of QueueItem instances associated with this instance of Viewer
  def queue_items
    QueueItem.all.select {|queue| queue.viewer == self}
  end

  #return an array of Movie instances in the Viewer's queue
  def queue_movies
    self.queue_items.map {|queue| queue.movie}
  end
  
  #receive a Movie instance as its only argument and add it to the Viewer's queue
  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  #given a movie and a rating (a number between 1 and 5), 
  #this method should assign the rating to the viewer's QueueItem for that movie. 
  #If the movie is not already in the viewer's queue,
  #this method should add a new QueueItem with the viewer, movie, and rating. 
  #If the movie is already in the queue, this method should not create a new QueueItem.
  def rate_movie(movie, rating)
    if QueueItem.all.find {|queue| queue.viewer == self && queue.movie == movie}
      QueueItem.all.select do |queue|
        if queue.viewer == self && queue.movie == movie
          queue.rating = rating
        end
      end
    else
      QueueItem.new(self, movie, rating)
    end
    QueueItem.all.find {|queue| queue.viewer == self && queue.movie == movie}
  end


end
