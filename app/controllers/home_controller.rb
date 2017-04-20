class HomeController < ApplicationController
  def index
     if user_signed_in?
	redirect_to tasks_path
     else
	redirect_to new_user_registration_url 
     end
  end
end
