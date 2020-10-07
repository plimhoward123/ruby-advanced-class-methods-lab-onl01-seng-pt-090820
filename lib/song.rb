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
    song = self.new
    @@all << song
    return song
  end

  def self.new_by_name(n)
    s = self.new
    s.name = n
    @@all << s
    return s
  end

  def self.destroy_all
    @@all = []
    return @@all
  end
end
