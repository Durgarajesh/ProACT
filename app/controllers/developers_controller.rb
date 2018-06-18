class DevelopersController < ApplicationController
	before_action :authenticate_developer!

	def edit
		@developer = Developer.find(params[:id])
	end

	def update
		@developer = Developer.find(params[:id])
		if @developer.update(developer_params)
			redirect_to admin_dashboard_path 
		else
			render :edit
		end
	end

	def destroy
		@Developer = Developer.find(params[:id])   
    if @Developer.delete   
      redirect_to admin_dashboard_path   
    else   
      render :destroy   
    end 
	end

	private
	def developer_params
		params.require(:developer).permit(:email, :is_admin, :name)
	end
end
