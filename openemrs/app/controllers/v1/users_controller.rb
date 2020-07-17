# frozen_string_literal: true

# V1 Users controller

module V1
  class UsersController < ApplicationController
    def create
      user = User.create!(user_params)
      json_response(object: user, status: :created)
    end

    private

    def user_params
      params.permit(
        :name, :email, :phone_number, :gender, :date_of_birth,
        :password, :password_confirmation, :uid
      )
    end
  end
end
