class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project created successfully"
      redirect_to  project_path(@project) # project_path is set in the routes.rb file, from # get "/projects/:id", to: "projects#show", as: "project"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "Project updated successfully"
      redirect_to  project_path(@project) # project_path is set in the routes.rb file, from # get "/projects/:id", to: "projects#show", as: "project"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
    @project = Project.find(params[:id])
  end 

  def project_params
    params.expect(project: [:name])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project deleted successfully"
    redirect_to projects_path
  end

end
