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

		if @project.save
			redirect_to projects_path
		else
			render :new
		end
		end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

	private
	def projects_params
		params.require(:project).permit(:title,:description,:start_date, :end_date, :goal, :active)
	end


end
