class UserProfile < ActiveRecord::Base
  GENDERS = ["male", "female"]
  TRIBES = ["Tribe 1", "Tribe 2", "Tribe 3", "Other"]

  belongs_to :user
  has_attached_file :image, :styles => { medium: "300x300>", thumb: "100x100>" }

  validates :first_name, :last_name, presence: true

  delegate :email, to: :user
end
