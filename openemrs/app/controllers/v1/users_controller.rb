# frozen_string_literal: true

# V1 Users controller

module V1
  class UsersController < ApplicationController
    def create
      User.create!(user_params)
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
