class AddBodyToParagraphs < ActiveRecord::Migration[5.0]
  def change
    add_column :paragraphs, :body, :text
  end
end
