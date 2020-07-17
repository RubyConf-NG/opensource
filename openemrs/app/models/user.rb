class User < ApplicationRecord
  rolify
  has_secure_password

  self.primary_key = :uid

  after_create :assign_default_role

  private

  def assign_default_role
    self.add_role(:patient) if self.roles.blank?
  end
end
