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


end
