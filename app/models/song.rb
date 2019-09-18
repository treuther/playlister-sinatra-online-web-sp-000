class Song < ActiveRecord::Base
  belongs_to :artists
  has_many :song_genres
  has_many :genres, :through => :song_genres

  attr_accessor :name, :artist_id, :genre_id
  
end
