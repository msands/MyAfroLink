class UserProfile < ActiveRecord::Base
  GENDERS = ["male", "female"]
  TRIBES = ["Zulu", "Maasai", "Igbo", "San Bushmen", "Yoruba", "Xhosa", "Hausa", "Himba", "Oromo", "Kalenjin", "Chaga", "Ashanti", "Mole-Dagbon", "Fante", "Ewe", "Ga-Adangbe", "Guan", "Dagomba", "Kusasi", "TRIBE NOT LISTED"]

  belongs_to :user
  has_many :tribes
  accepts_nested_attributes_for :tribes

  has_attached_file :image, :styles => { large: "600x600>", medium: "400x400>", small: "200x200>", thumb: "100x100#" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :first_name, :last_name, :gender, presence: true

  delegate :email, to: :user

  def thumbnail_image_url
    if image.present?
      image.url(:thumb)
    else
      'missing.png'
    end
  end

  def medium_image_url
    if image.present?
      image.url(:medium)
    else
      'missing.png'
    end
  end
end
