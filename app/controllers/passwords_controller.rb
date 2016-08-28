class PasswordsController < ApplicationController
	def new
		@password = Passwords.new

	end

	def create
    @password = Passwords.new(password_param)

    respond_to do |format|
      if @password.save
        format.html { redirect_to @password, notice: 'Senha cadastrada com sucesso.' }
        format.json { render :show, status: :created, location: @password }
      else
        format.html { render :new }
        format.json { render json: @password.errors, status: :unprocessable_entity }
      end
    end
  end

	def index
		@passwords = Password.all
  end

	def password_params
		params.require(:password).permit(:user, :description, :password, :password_confirm, :url)
	end
end
