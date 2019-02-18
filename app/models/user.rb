class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  delegate :introduction, to: :profile
end
