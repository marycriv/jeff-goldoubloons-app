class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def directory
    @pressings = Pressing.all
  end
end
