class CreateParagraphs < ActiveRecord::Migration[5.0]
  def change
    create_table :paragraphs do |t|
      t.integer :writing_id
      t.integer :par_num

      t.timestamps
    end
  end
end
