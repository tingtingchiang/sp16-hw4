class Dog < ActiveRecord::Base

	validates :name, presence: true
	validates :age, presence: true, numericality: true
end
