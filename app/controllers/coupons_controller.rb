class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    # byebug
  end
  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    # byebug
    redirect_to coupon_path(@coupon)
  end


  private

  def coupon_finder
    Coupon.find(params[:id])
  end
end
