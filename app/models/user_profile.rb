class UserProfile < ActiveRecord::Base
  GENDERS = ["male", "female"]
  TRIBES = ["Tribe 1", "Tribe 2", "Tribe 3", "Other"]

  belongs_to :user
  has_attached_file :image, :styles => { large: "600x600>", medium: "400x400>", small: "200x200>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :first_name, :last_name, :image, presence: true

  delegate :email, to: :user
end
