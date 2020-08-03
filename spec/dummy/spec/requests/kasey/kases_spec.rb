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

RSpec.describe "/kasey/kases", type: :request do
  # Admin::Case. As you add validations to Admin::Case, be sure to
  # adjust the attributes here as well.
  let(:kase) { create :kase }
  # before { sign_in FactoryBot.create(:admin_user) }

  describe "GET /index" do
    it "renders a successful response" do
      kase # exists
      get kases_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      get kase_url(kase)
      expect(response).to be_successful
    end
  end

  describe "DELETE /destroy" do

    it "destroys the requested admin_case" do
      kase.review!

      delete kase_url(admin_case)
      expect(kase.reload.aasm.current_state).to equal(:closed)
    end
  end
end