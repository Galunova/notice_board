class Category < ApplicationRecord
	validates :title, presence: true, length: {maximum: 140}

	has_many :notices
end
