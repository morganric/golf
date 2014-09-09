class Course < ActiveRecord::Base
	belongs_to :club
	has_many :holes 

	def total_tee_length(colour)

		length = 0

		self.holes.each.each do |hole|
			hole.tees.where(:colour => colour).each do |tee|
				length = length + tee.length
			end
		end

		return {:colour => colour, :length => length}

	end

	def total_tee_par(colour)

		par = 0

		self.holes.each.each do |hole|
			hole.tees.where(:colour => colour).each do |tee|
				par = par + tee.par
			end
		end

		return {:colour => colour, :par => par}

	end
end
