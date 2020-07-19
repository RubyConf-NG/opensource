# frozen_string_literal: true

# patients request spec

require "rails_helper"

RSpec.describe "V1::PatientsController", type: :request do
  let(:params) { attributes_for(:user) }

  describe "#create" do
    context "when user passes in valid patient params" do
      it "should create a patient with a default role" do
        expect do
          post v1_patients_path, params: params
          returned_patient = json["data"]["patient"]
          expect(response).to have_http_status 201
          expect(returned_patient["name"]).to eq params[:name]
          expect(returned_patient["email"]).to eq params[:email]
          expect(returned_patient["date_of_birth"]).to eq params[:date_of_birth].to_s
          expect(returned_patient["roles"]).to include "Patient"
        end.to change(User, :count).by 1
      end
    end

    context "when invalid params are passed" do
      before do
        params.delete :date_of_birth
        post v1_patients_path, params: params
      end

      it "returns an error" do
        errors = json["errors"].first
        expect(response).to have_http_status 422
        expect(errors["date_of_birth"]).to include("can't be blank")
      end
    end

    context "when email already exists" do
      before { post v1_patients_path, params: params }

      it "returns an error" do
        post v1_patients_path, params: params
        errors = json["errors"].first
        expect(response).to have_http_status 422
        expect(errors["email"]).to include("has already been taken")
      end
    end
  end
end
