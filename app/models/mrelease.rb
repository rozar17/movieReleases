class Mrelease < ApplicationRecord
	#validation goes here...
	validates :title, presence: true
end
