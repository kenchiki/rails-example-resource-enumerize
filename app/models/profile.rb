class Profile < ApplicationRecord
  extend Enumerize
  belongs_to :user

  validates :introduction, :sex, presence: true, on: :update

  enumerize :sex, in: { male: 1, female: 2 }
end
