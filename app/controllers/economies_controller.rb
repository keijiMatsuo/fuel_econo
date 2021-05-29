class EconomiesController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
    @economies = Economy.all.limit(5).order('created_at DESC')
  end

  def new
    @economy = Economy.new
  end

  def create
    @economy = Economy.new(economy_params)
    if @economy.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @economy = Economy.find(params[:id])
    if @economy.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def economy_params
    params.require(:economy).permit(:mileage, :amount).merge(user_id: current_user.id)
  end
end
