# frozen_string_literal: true

# V1 patients controller
module V1
  class PatientsController < UsersController
    def create
      patient = super
      patient.add_role(:patient) if patient.roles.blank?
      json_response(
        object: patient,
        status: :created,
        options: { root: "patient" }
      )
    end
  end
end