class Match < ApplicationRecord
	validates_presence_of :title
	has_many :rubies
end
