class PressingsController < ApplicationController
  before_action :admin?

  def index
    @pressings = Pressing.all
  end

  def show
    @pressing = Pressing.find(params[:id])
  end

  def new
    @pressing = Pressing.new
  end

  def create
    @pressing = Pressing.create(pressing_params)
    redirect_to @pressing
  end

  def edit
    @pressing = Pressing.find(params[:id])
  end

  def update
    @pressing = Pressing.update(pressing_params)
    redirect_to pressing_path
  end

  def destroy
    @pressing = Pressing.find(params[:id])
    @pressing.delete
    redirect_to pressings_path
  end

  private

  def pressing_params
    params.require(:pressing).permit(:name, :image_url)
  end

end
