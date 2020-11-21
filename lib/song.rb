require 'pry'
class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        #@artist
    end

    def artist_name=(name)
        @artist = Artist.find_or_create_by_name(name)
    end


    def self.new_by_filename(file_name)
        name_str = file_name.split(' - ')[1]
        song = self.new(name_str)
        song.artist = Artist.find_or_create_by_name(file_name.split(' - ')[0])
        song
    end

    def self.all
        @@all
    end


end