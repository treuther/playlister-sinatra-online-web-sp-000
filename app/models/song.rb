class Song < ActiveRecord::because
  belongs_to :artists
  has_many :song_genres
  has_many :genres, :through => :song_genres

end
