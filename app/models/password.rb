class Password < ActiveRecord::Base
	validates_presence_of :description, :password
end
