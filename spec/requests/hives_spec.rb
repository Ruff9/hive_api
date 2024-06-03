require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/hives", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Hive. As you add validations to Hive, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      name: "test_name",
      weight: 15,
      description: "test description"
    }
  }

  let(:invalid_attributes) {
    {
      name: "short",
      weight: 15,
      description: "test description"
    }
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # HivesController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do
      Hive.create! valid_attributes
      get hives_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      hive = Hive.create! valid_attributes
      get hive_url(hive), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Hive" do
        expect {
          post hives_url,
               params: { hive: valid_attributes }, headers: valid_headers, as: :json
        }.to change(Hive, :count).by(1)
      end

      it "renders a JSON response with the new hive" do
        post hives_url,
             params: { hive: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Hive" do
        expect {
          post hives_url,
               params: { hive: invalid_attributes }, as: :json
        }.to change(Hive, :count).by(0)
      end

      it "renders a JSON response with errors for the new hive" do
        post hives_url,
             params: { hive: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested hive" do
      hive = Hive.create! valid_attributes
      expect {
        delete hive_url(hive), headers: valid_headers, as: :json
      }.to change(Hive, :count).by(-1)
    end
  end
end
