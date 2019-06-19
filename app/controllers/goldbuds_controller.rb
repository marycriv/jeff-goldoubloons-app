class GoldbudsController < ApplicationController
  def add_goldbud
    @user = User.find(params[:id])
    current_user.goldbuders << @user
    @user.goldbuders << current_user
    redirect_to current_user
  end

  def destroy
    @user = User.find(params[:id])
    goldbuder = Goldbud.find_by(goldbuder_id: @user.id, goldbudee_id: current_user.id)
    goldbudee = Goldbud.find_by(goldbuder_id: current_user.id, goldbudee_id: @user.id)
    goldbuder.delete
    goldbudee.delete
    redirect_to @user
  end
end
