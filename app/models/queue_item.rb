class QueueItem

  attr_accessor :film, :user, :score 

  @@all = []

  def initialize(film, user)
    @film = film
    @user = user
    @@all << self
  end  # ends initialize method

  def self.all
    @@all
  end  # ends self.all method

  def viewer
    self.user
  end  # ends viewer method

  def movie
    self.film
  end  # ends movie method

  def rating
    self.score
  end  # ends rating method

end  # ends QueueItem class
