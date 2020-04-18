class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(name)
    song = Song.new(name)
    add_song(song)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
end
