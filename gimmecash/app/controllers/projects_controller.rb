class ProjectsController < ApplicationController
	def index
		@projects= Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(projects_params)
		@project.user_id = 1.to_i
		if @project.save
			redirect_to projects_path
		else
			render :new
		end
		end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])

		if @project.update_attributes(projects_params)
			redirect_to projects_path
		else
			render :edit
		end
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end

	private
	def projects_params
		params.require(:project).permit(:title,:description,:start_date, :end_date, :goal, :active)
	end


end
