class Artist

  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song_instance)
    @songs << song_instance if !(@songs.include?(song_instance))
    song_instance.artist = self
    song_instance.genre.artists << self
    @genres << song_instance.genre
  end

end
