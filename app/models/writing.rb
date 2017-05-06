class Writing < ApplicationRecord
  mount_uploader :document, DocumentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true
  validates_presence_of :document
  validates_processing_of :document

  has_many :paragraphs  
  has_many :comments, through: :paragraphs

  belongs_to :user
  
  after_save :create_paragraphs #what if article is edted and a new document added?

  extend FriendlyId
  friendly_id :name, use: :slugged

  protected
    def create_paragraphs
    	url = self.document.url
	    doc = Docx::Document.open(open(url).path)

	    doc.paragraphs.compact.each_with_index do |p, i|
	    	Paragraph.create(:writing_id => self.id, :par_num => i, :body => p.to_html)
	    end
    end
end
