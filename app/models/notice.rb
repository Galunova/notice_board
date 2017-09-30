class Notice < ApplicationRecord
  belongs_to :user
  belongs_to :category

	validates :title, 
						presence: true, 
						length: {maximum: 140}
	validates :content, :contact_details,
						presence: true
end
