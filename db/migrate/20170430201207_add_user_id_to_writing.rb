class AddUserIdToWriting < ActiveRecord::Migration[5.0]
  def change
    add_column :writings, :user_id, :integer
  end
end
