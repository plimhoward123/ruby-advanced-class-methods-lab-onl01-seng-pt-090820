class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    
  end

  def self.destroy_all
    @@all = []
    return @@all
  end
end
