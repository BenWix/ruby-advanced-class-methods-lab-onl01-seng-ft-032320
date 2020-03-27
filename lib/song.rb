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
    if self.find_by_name(name) == nil 
      self.create_by_name(name)
    else 
      self.find_by_name(name)
    end 
  end 
  
  def self.alphabetical
    self.all.sort_by{|song| song.name}.uniq 
  end

  def self.new_from_filename(file_name)
    parsed_file = file_name.split(/[-.]/).chomp 
    name = 
    
  end 
  
  def self.create_from_filename
    
  end 
  
  def self.destroy_all
    self.all.clear
  end 
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
