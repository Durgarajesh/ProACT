class Project < ApplicationRecord

	validates :name, presence: true

	has_many :assignments, dependent: :destroy 
	has_many :developers, through: :assignments
	has_many :stories

	# accept_nested_attributes_for :assignments

end
