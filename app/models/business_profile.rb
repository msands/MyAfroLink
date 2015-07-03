class BusinessProfile < ActiveRecord::Base
  searchkick word_middle: [:name]

  CATEGORIES = ["Beauty", "Construction & Home Repair", "Education", "Financial Services", "Auto Repair", "Legal Services", "Health & Medical Services", "Catering Services", "Fashion", "Entertainment", "Professional Services", "Real Estate", "Restaurants/Food & Dining", "Marketing Services", "Web Development", "Transportation", "Travel & Tourism", "Event Coordination", "Other"]

  belongs_to :user

  has_attached_file :image, :styles => { large: "600x600>", medium: "400x400>", small: "200x200>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :name, :address, :city, :category, presence: true
end
