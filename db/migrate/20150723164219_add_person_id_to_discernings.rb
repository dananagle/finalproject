class AddPersonIdToDiscernings < ActiveRecord::Migration
  def change
    add_column :discernings, :person_id, :integer
  end
end
