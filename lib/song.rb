class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(n)
    song = self.new
    song.name = n
    @@all << song
  end

  def self.new_by_name(n)
    s = self.new
    s.name = n
    @@all << s
  end

  def self.destroy_all
    @@all = []
    return @@all
  end
end
