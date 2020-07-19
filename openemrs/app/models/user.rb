class User < ApplicationRecord
  include GenerateUid

  rolify
  has_secure_password

  self.primary_key = :uid

  # validations
  validates_date :date_of_birth
  validates_presence_of :name, :email, :date_of_birth
  validates_uniqueness_of :email

  # callbacks
  before_create :set_uid

  # scopes
  scope :doctors, -> { includes(:roles).where(roles: { name: "doctor" }) }
  scope :patients, -> { includes(:roles).where(roles: { name: "patient" }) }

  private

  def set_uid
    self.uid = generate_uid
  end
end
