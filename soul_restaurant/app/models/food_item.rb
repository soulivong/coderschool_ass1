class FoodItem < ActiveRecord::Base
	belongs_to :section

	def self.search(search)
		where("name ILIKE ?", "%#{search}%") 
	end

end
