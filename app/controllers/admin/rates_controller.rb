module Admin
  class RatesController < ApplicationController
    def create
      developer = Developer.find(params[:developer_id])
      rate_params_h = rate_params
      developer.update_columns(rate_params_h)
      developer.update_columns(rate: rate_params_h.values.sum)
      redirect_to developers_path, notice: "Rate is done, thanks."
    end

    def rate_params
      params.require(:rate).permit(:rate_a, :rate_b, :rate_c, :rate_d, :rate_e, :rate_f, :rate_g, :rate_h, :rate_i, :rate_j).to_h.transform_values { |v| v.to_i }
    end
  end
end
