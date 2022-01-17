class ProjectsController < ApplicationController
  require 'will_paginate/array'
  before_action :set_project, only: %i[show]

  def index
    @projects = Project.paginate(page: params[:page], per_page: 2)
  end

  def new; end

  def create
    @project = Project.new(project_params)
    @project.schedule = GeneratePairsService.call(@project.users, @project.sprints)
    if @project.save
      flash[:notice] = 'Project saved successfully'
      redirect_to project_path(@project)
    else
      flash[:alert] = 'Something went wrong'
      redirect_to projects_path
    end
  end

  def show
    @schedule = JSON.parse(@project.schedule).keys.paginate(page: params[:page], per_page: 2)
  end

  private

  def project_params
    params.permit(:sprints, users: [])
  end

  def set_project
    @project = Project.find_by(id: params[:id])
  end
end
