class PasswordsController < ApplicationController
	def new
		@password = Password.new

	end

	def create
    @password = Password.new(password_params)

    respond_to do |format|
      if @password.save
				@passwords = Password.all
        format.html { render :index, notice: 'Senha cadastrada com sucesso.' }
        format.json { render :index, status: :created, location: @password }
      else
        format.html { render :index }
        format.json { render json: @password.errors, status: :unprocessable_entity }
      end
    end
  end

	def index
		@passwords = Password.all
		@password = Password.new

  end

	def password_params
		params.require(:password).permit(:user, :description, :password, :password_confirm, :url)
	end
end
