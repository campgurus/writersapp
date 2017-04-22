class Writing < ApplicationRecord
  mount_uploader :document, DocumentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true
  validates_presence_of :document
  validates_processing_of :document

  has_many :paragraphs  
  has_many :comments, through: :paragraphs
end
