require 'pry'
class Song

    
    attr_reader :name, :artist, :genre

    @@count=0
    @@artists=[]
    @@genres=[]
    
    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count+=1
        @@artists<<artist
        @@genres<<genre
    end

    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        @@genres.map {|key| [key, @@genres.count(key)]}.to_h
    end
    def self.artist_count
        @@artists.map {|key| [key, @@artists.count(key)]}.to_h
    end

end
