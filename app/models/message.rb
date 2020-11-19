class Message < ApplicationRecord
	belongs_to :user
	belongs_to :room
	has_one_attached :image, unless: :was_attached?

	validates :content, presence: true

	def was_attached?
		self.image.attached?
	end
end
