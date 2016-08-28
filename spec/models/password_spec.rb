require 'rails_helper'

RSpec.describe Password, type: :model do
  context "Cadastro de senhas" do
    it "Nao deve criar uma senha sem descricao" do
      new_password = Password.new({user: "usuario", url: "url teste", password: "password_teste"})
      expect(new_password.valid?).to be false
    end

    it "Nao deve criar uma senha sem password" do
      new_password = Password.new({user: "usuario", url: "url teste", description: "description"})
      expect(new_password.valid?).to be false
    end
  end

end
