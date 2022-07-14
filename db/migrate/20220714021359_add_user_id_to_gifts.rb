class AddUserIdToGifts < ActiveRecord::Migration[6.1]
  def change
    add_column :gifts, :user_id, :integer
    add_index :gifts, :user_id
  end
end
