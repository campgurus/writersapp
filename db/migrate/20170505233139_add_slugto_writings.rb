class AddSlugtoWritings < ActiveRecord::Migration[5.0]
  def change
  	unless column_exists?(:writings, :slug)
	  	add_column :writings, :slug, :string
	end
  end
end
