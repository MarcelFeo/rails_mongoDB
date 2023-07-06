class Api::V1::UsersController < ApplicationController
  #get
  def getUsers
    user = User.all
    if user
      render json: user, status: :ok
    else
      render json: { msg: "user empty" }, status: :unprocessable_entity
    end
  end

  # post
  def addUser
    user = User.new(userparams)

    if user.save()
      render json: user, status: :ok
    else
      render json: { msg: "User not added" }, status: :unprocessable_entity
    end

  end

  private
  def userparams
    params.permit(:username, :email, :password_digest)
  end

end
