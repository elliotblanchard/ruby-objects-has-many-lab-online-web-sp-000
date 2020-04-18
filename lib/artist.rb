require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
    binding.pry
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
end
