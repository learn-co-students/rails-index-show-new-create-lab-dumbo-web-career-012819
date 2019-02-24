class CouponsController < ApplicationController

  def index
    #code
    @coupons = Coupon.all
  end

  def show
    #code
    @coupon = Coupon.find(params[:id])
  end

  def new
    #code
  end

  def create
    @coupon = Coupon.create(c_params)
    redirect_to coupon_path(@coupon)
    #code
  end

  private

  def c_params
      params.require(:coupon).permit(:coupon_code, :store)
  end


end
