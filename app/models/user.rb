class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  before_create :build_empty_profile
  delegate :introduction, to: :profile

  private

  def build_empty_profile
    build_profile
  end
end
