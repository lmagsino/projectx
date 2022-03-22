class HomeController < ApplicationController

  DEFAULT_PATH = '/super_admin'

  def index
    redirect_to get_default_url
  end



  private

  def get_default_url
    if current_user.super_admin?
      url = DEFAULT_PATH
    elsif current_user.admin?
      url = DEFAULT_PATH + '/user/new'
    else
      url = DEFAULT_PATH + '/user/' + current_user.id.to_s
    end

    url
  end


end
