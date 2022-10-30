class HomeController < ApplicationController
  def show
    @developers = Developer
      .visible
      .includes(:role_type).with_attached_avatar
      .actively_looking.rate_first
      .limit(3)
  end
end
