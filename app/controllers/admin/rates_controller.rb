module Admin
  class RatesController < ApplicationController
    def create
      developer = Developer.find(params[:developer_id])
      redirect_to developers_path, notice: t(".created")
    end
  end
end
