class AddUserIdToDiscernings < ActiveRecord::Migration
  def change
    add_column :discernings, :user_id, :integer
  end
end
