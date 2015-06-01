class AddAttachmentImageToBusinessProfiles < ActiveRecord::Migration
  def self.up
    change_table :business_profiles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :business_profiles, :image
  end
end
