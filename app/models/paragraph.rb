class Paragraph < ApplicationRecord
	has_many :comments, as: :commentable
	belongs_to :writing

	accepts_nested_attributes_for :comments
end
