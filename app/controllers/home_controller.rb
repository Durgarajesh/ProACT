class HomeController < ApplicationController
	before_action :authenticate_developer!

	def index
		if developer_signed_in?
      redirect_to admin_dashboard_path and return if current_developer.is_admin?
      # redirect_to dashboard_path
    else
      redirect_to new_developer_session_path
    end
	end

	def admin
		@developers = Developer.all
		@projects =  Project.all
	end
end
