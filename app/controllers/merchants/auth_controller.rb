class Merchants::AuthController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    merchant = user.merchant if user
    if merchant && merchant.authenticate(params[:password])
      token = JWT.encode({ merchant_id: merchant.id }, ENV['SECRET_KEY'], 'HS256')
      render json: { token: token, merchant: merchant }
    else
      render json: { errors: "Invalid email or password" }, status: :unauthorized
    end
  end
end
