require 'pry'
class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        #@artist
    end

    def self.new_by_filename(file_name)
        name_str = file_name.split(' - ')[1]
        song = self.new(name_str)
        song.artist = file_name.split(' - ')[0]
        song
        #binding.pry
        # song.artist.name = file_name.split(' - ')[0]
        
        #binding.pry
    end


    def self.all
        @@all
    end


end