class StaticPagesController < ApplicationController
  def home
  end

  def pageclub
    @users = User.all
  end

end
