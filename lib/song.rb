class Song
  attr_accessor :name, :artist_name
  @@all = []

  def create
    save
    
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
