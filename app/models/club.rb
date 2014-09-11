class Club < ActiveRecord::Base

extend FriendlyId
friendly_id :name, use: :slugged

mount_uploader :logo, ImageUploader
mount_uploader :banner, ImageUploader

geocoded_by :address
after_validation :geocode

has_many :courses
has_many :holes, :through => :courses


end
