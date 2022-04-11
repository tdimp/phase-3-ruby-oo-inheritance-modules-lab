require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def self.find_by_name(name)
    @@songs.detect{|s| s.name == name}
  end

  def artist=(artist)
    @artist = artist
  end
end
