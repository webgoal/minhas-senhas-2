require 'rails_helper'

RSpec.describe PasswordsController, type: :controller do
	describe "GET #passwords" do
		it "assigns all tests as @tests" do
			test = Test.create! valid_attributes
			get :index, {}, valid_session
			expect(assigns(:tests)).to eq([test])
		end
	end
end
