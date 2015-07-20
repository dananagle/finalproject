class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :address
      t.integer :user_id
      t.string :website
      t.string :firstname
      t.string :lastname
      t.text :description
      t.string :eyecolor
      t.string :haircolor
      t.integer :height
      t.integer :waist
      t.integer :bust
      t.integer :hips
      t.boolean :availability, default: true

      t.timestamps null: false
    end
  end
end
