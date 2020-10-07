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
    return s
  end

  def self.create_by_name(n)
    s = self.new
    s.name = n
    @@all << s
    return s
  end

  def self.find_by_name(name)
    @@all.find { |value| value.name == name}
  end

  def self.find_or_create_by_name(name)
    if (find_by_name(name) != nil)
      return find_by_name(name)
    else
      create_by_name(name)
    end
  end
  def self.alphabetical
    tmparray = @@all.sort_by {|value| value.name}
    return tmparray
  end
  def self.new_from_filename(str)
    tmparry = str.split(/[-.]/)
    s = self.new
    s.artist_name = tmparry[0].delete_suffix(" ")
    s.name = tmparry[1].delete_prefix(" ")
    return s
  end

  def self.create_from_filename(str)
    tmparry = str.split(/[-.]/)
    s = self.new
    s.artist_name = tmparry[0].delete_suffix(" ")
    s.name = tmparry[1].delete_prefix(" ")
    @@all << s

  end
  def self.destroy_all
    self.all.clear
  end
end
