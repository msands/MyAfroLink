class UserProfile < ActiveRecord::Base
  GENDERS = ["male", "female"]

  belongs_to :user

  validates :first_name, :last_name, presence: true

  delegate :email, to: :user
end
