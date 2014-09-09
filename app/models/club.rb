class Club < ActiveRecord::Base

geocoded_by :address
after_validation :geocode

has_many :courses
has_many :holes, :through => :courses


end
