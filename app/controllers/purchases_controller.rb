class PurchasesController < ApplicationController

  before_action :ensure_logged_in

  def new
    @purchase = Purchase.new
  end

  def create
    puts "********"
    puts params
    @purchase = Purchase.new(purchase_params)
    @purchase.user_id = current_user.id
    if @purchase.save
      redirect_to projects_path
    else
      @project = Project.find(params[:purchase][:project_id])
      render 'projects/show'
    end
  end

  private
  def purchase_params
    params.require(:purchase).permit(:number_of_shares, :share_id, :project_id)
  end
end
