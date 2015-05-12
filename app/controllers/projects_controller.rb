class ProjectsController < ApplicationController
  
    def index
      @project = Project.all
  end
  def new
    @project=Project.new
   
  end
  def create
    @project=Project.create(project_params)
    if @project.save
      redirect_to new_project_path
    end
  end
  
  private

  def project_params
  params.require(:project).permit(:name,  :description)
end
end
