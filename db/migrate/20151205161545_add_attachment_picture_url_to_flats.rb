class AddAttachmentPictureUrlToFlats < ActiveRecord::Migration
  def self.up
    change_table :flats do |t|
      t.attachment :picture_url
    end
  end

  def self.down
    remove_attachment :flats, :picture_url
  end
end
