class AddAttachmentImageToAsks < ActiveRecord::Migration
  def self.up
    change_table :asks do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :asks, :image
  end
end
