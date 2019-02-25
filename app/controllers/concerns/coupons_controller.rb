class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        single_coupon
    end

    def new
    end

    def create
        @coupon = Coupon.create(store: params[:coupon][:store],coupon_code: params[:coupon][:coupon_code])
        redirect_to coupon_path(@coupon)
    end

end

def single_coupon
    @coupon = Coupon.find(params[:id])
end
