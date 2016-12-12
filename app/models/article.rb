class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	belongs_to :category
	validates :title, presence: true,
                    length: { minimum: 5 }
    def self.search(search)
    	if search
    		self.find("name LIKE ?", "%#{search}%")
    	else
			self.find.all
		end
	end                
end
