class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @artist
    end

    def self.new_by_filename(file_name)
        song = self.new
        song.name = file_name.split(' - ')[1]
    end

    def self.all
        @@all
    end


end