class PagesController < ApplicationController
  def home
    # if current_user
    #   redirect_to projects_path
    # end
    @projects = Project.all
  end
end
