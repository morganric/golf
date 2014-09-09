class Hole < ActiveRecord::Base

has_many :tees
belongs_to :course
has_many :coords
end
