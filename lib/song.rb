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
    @name = name
    @artist_name = artist_name
    @@all << self
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
