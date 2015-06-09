class BusinessProfile < ActiveRecord::Base
  searchkick

  CATEGORIES = ["Food", "Jewelry", "Clothing", "Grocery"]

  belongs_to :user

  has_attached_file :image, :styles => { large: "600x600>", medium: "400x400>", small: "200x200>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :name, :address, :city, :category, presence: true
end
