class StoriesController < ApplicationController
	before_action :authenticate_developer!

	def create
		@story = Story.new(story_params)
		if @story.save
      redirect_to project_path(story_params[:project_id])
    end 
	end

		# def destroy
	# 	@story = Story.find(params[:id])   
 #    if @story.delete   
 #      redirect_to project_path(params[:id])   
 #    else   
 #      render :destroy   
 #    end   
	# end

	private

	def story_params
		params.require(:story).permit(:name, :hours, :project_id)
	end
end
