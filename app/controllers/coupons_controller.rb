class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    my_coupon = Coupon.create(coupon_params)

    redirect_to(coupon_path(my_coupon))
  end

  def show
    set_coupon
  end

  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
end
