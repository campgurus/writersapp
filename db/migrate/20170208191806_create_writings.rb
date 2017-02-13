class CreateWritings < ActiveRecord::Migration[5.0]
  def change
    create_table :writings do |t|
      t.string :name
      t.string :document

      t.timestamps
    end
  end
end
