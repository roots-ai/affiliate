class ProfileController < ApplicationController
	  def profile
	  	if params[:id] == 'student'
	  		@locals=YAML.load_file('app/helpers/home/student.yml').deep_symbolize_keys
	  	end
	  end
end


