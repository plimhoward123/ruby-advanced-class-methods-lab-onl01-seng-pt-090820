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
  end
  def self.new_by_name(name)
    song = self.new
    song.name = name
    return song.name
  end

  def self.find_by_name(name)
    @@all.each do |val|
      if(val.name == name)
        return name
      else
        return false
      end
    end

  end

  def self.destroy_all
    @@all = []
    return @@all
  end
end
