module Admin
  class ImpersonatesController < ApplicationController
    def create
      email = params[:email]
      if email.include?("@")
        user = User.find_by!(email: params[:email])
      else
        splitted = email.split("_")
        biz_or_dev = splitted[0]
        id = splitted[1]
        user = biz_or_dev == "dev" ? Developer.find(id.to_i).user : Business.find(id.to_i).user
      end
      impersonate_user(user)
      redirect_to root_path
    end

    def show
    end

    def destroy
      stop_impersonating_user
      redirect_to root_path
    end
  end
end
