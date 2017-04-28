class Paragraph < ApplicationRecord
	has_many :comments, as: :commentable
	belongs_to :writing
end
