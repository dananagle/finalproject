class CreateDiscernings < ActiveRecord::Migration
  def change
    create_table :discernings do |t|
      t.integer :walk
      t.integer :presence
      t.integer :personality
      t.integer :posture
      t.integer :carriage
      t.string :bone
      t.integer :structure
      t.integer :smile
      t.integer :appearance
      t.integer :distinctiveness
      t.integer :jenesaisquoi
      t.text :comment

      t.timestamps null: false
    end
  end
end
