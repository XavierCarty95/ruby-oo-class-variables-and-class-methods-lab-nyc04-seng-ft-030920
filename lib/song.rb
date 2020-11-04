class Song 
  
   attr_accessor :name, :artist, :genre
   @@count = 0
   @@artists = []
   @@genres = []
  def initialize(name,artist,genre)

    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
  
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
  
  def self.artist_count
    hash = Hash.new(0)
   
    @@artists.each do |values| 
    
      if hash.has_key?(values)
          hash[values] = hash[values] + 1
      else 
        hash[values] = 1
    end
   end 
   hash
  end 

  def self.genre_count
    hash = Hash.new(0)
   
    @@genres.each do |values| 
    
      if hash.has_key?(values)
          hash[values] = hash[values] + 1
      else 
        hash[values] = 1
    end
   end 
   hash
  end 
end 