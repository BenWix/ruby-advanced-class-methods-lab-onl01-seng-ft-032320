class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new  
    song.save
    song 
  end 

  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song.save
    song 
  end 
  
  def self.create_by_name(name)
    #How is this supposed to be different from .new_by_name
    song = self.create 
    song.name = name 
    song.save
    song 
    #self.all.find{|i| i == name}
  end 
  
  def self.find_by_name(name)
    self.all.find{|i| i.name == name}
  end
  
  def self.find_or_create_by_name(name)
    make = true 
    self.all.each do |song|
      make = false if song.name == name
    end 
    make ? self.create_by_name(name) : self.find_by_name(name)
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
