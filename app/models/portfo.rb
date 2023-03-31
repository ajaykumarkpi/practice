class Portfo < ApplicationRecord
	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "http://placehold.co/600x400"
		self.thumb_image ||= "http://placehold.co/300x250"
	end

	if self.main_image == nil
		self.main_image = "http://placehold.co/600x400"
end