class ProfileController < ApplicationController
	def profile
	end

	def student
		if params[:id] == "student"
	  		@locals = YAML.load_file('app/helpers/home/student.yml').deep_symbolize_keys
	  	else
	  		@locals = YAML.load_file('app/helpers/home/instagram.yml').deep_symbolize_keys
	  	end
	end
end