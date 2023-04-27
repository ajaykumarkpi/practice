class Ruby < ApplicationRecord
	validates_presence_of :title, :percent
	belongs_to :match
end
