class Artist < ActiveRecord::Base
  # include Slugifiable::InstanceMethods
  # extend Slugifiable::ClassMethods
  has_many :songs
  has_many :genres, :through => :songs

  def slug
    self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end

  def self.find_by_slug(slug)
    self.all.find{|instance| instance.slug == slug}
  end

end
