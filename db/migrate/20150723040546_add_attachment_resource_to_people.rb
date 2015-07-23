class AddAttachmentResourceToPeople < ActiveRecord::Migration
  def self.up
    change_table :people do |t|
      t.attachment :resource
    end
  end

  def self.down
    remove_attachment :people, :resource
  end
end
