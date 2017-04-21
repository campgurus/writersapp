class Writing < ApplicationRecord
  mount_uploader :document, DocumentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true
  has_many :paragraphs  
  has_many :comments, through: :paragraphs
end
