class Genre
attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, artist)
    Song.new(name. artist, self)
  end


end
