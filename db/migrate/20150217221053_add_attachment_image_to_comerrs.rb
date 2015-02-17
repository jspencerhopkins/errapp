class AddAttachmentImageToComerrs < ActiveRecord::Migration
  def self.up
    change_table :comerrs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :comerrs, :image
  end
end
