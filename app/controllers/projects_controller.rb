class ProjectsController < ApplicationController
	before_action :authenticate_developer!
	
	def new 
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.developers.build
		if @project.save   
      redirect_to admin_dashboard_path 
    else
      render :new
    end   
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(project_params)
			redirect_to admin_dashboard_path 
		else
			render :edit
		end
	end

	def destroy
		@project = Project.find(params[:id])   
    if @project.delete   
      redirect_to admin_dashboard_path   
    else   
      render :destroy   
    end   
	end

	private
	def project_params
		params.require(:project).permit(:name, :developer_ids)
	end
end
