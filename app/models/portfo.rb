class Portfo < ApplicationRecord
	include Placeholder
	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600',width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '300',width: '250')
	end

end