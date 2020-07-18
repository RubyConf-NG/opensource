class User < ApplicationRecord
  include GenerateUid

  rolify
  has_secure_password

  self.primary_key = :uid

  # validations
  validates_date :date_of_birth

  # callbacks
  before_create :set_uid

  private

  def set_uid
    self.uid = generate_uid
  end
end
