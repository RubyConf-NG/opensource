# frozen_string_literal: true

# V1 doctors controller
module V1
  class DoctorsController < UsersController
    def create
      doctor = super
      doctor.add_role(:patient) if doctor.roles.blank?
      json_response(
        object: doctor,
        status: :created,
        options: { root: "doctor" }
      )
    end
  end
end