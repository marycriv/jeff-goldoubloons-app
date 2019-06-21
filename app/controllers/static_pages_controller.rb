class StaticPagesController < ApplicationController
  before_action :home_screen?, only: [:home]

  def home
  end

  def help
  end

  def directory
    @pressings = Pressing.all
  end

  def bepis
  end
end
