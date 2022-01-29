class HomeController < ApplicationController
  def welcome
    @projects = Project.paginate(page: params[:page], per_page: 10)
  end
end
