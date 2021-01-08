class Article < ApplicationRecord
	belongs_to :user
	
	validates :title, presence: true, length: {minimum: 5, maximum: 100} 
	#make sure that the title is present in order for an article to be saved, minimum length is 5 chars 
	validates :description, presence: true, length: {minimum: 10, maximum: 300}
end 