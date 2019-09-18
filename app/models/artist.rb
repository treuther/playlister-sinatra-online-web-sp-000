class Artist < ActiveRecord::because
  has_many :songs
  has_many :genres, :through => :songs
end
