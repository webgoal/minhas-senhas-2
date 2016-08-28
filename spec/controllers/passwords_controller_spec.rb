require 'rails_helper'

RSpec.describe PasswordsController, type: :controller do
	describe "GET #passwords" do
		it "assigns all passwords as @password" do
			password = create(:password_1)
			get :index, {}, valid_session
			expect(assigns(:passwords)).to eq([password])
		end
	end
end
