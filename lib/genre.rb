class Genre
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    self.songs << song
    song.genre = self
  end
  def self.songs
    @songs
  end
  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end
