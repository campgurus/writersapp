class Paragraph < ApplicationRecord
	has_many :comments
	belongs_to :writing
end
