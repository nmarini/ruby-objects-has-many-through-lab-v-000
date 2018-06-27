class Artist
attr_accessor :name, :all_songs
@@all = []
  def initialize(name)
    @name = name
    @all_songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    @all_songs << Song.new(name, self, genre)
  end

  def songs
    Songs.all.select{|song| song.artist == self}
  end

  def genres
    songs.select{|song| song.genre}
  end


end
