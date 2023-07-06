class Api::V1::UsersController < ApplicationController
  before_action :getUser, :only [:updateUser, :deleteUser]

  # get
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

  # put
  def updateUser
    if @user
      if @user.update(userparams)
        render json: @user, status: :ok
      else
        render json: { msg: "Update Failed" }, status: :unprocessable_entity
      end
    else
      render json: { msg: "User not Found" }, status: :unprocessable_entity
    end
  end

  # delete
  def deleteUser

  end

  private
    def userparams
      params.permit(:username, :email, :password_digest)
    end

    def getUsers
      @user = User.find(params[:id])
    end

end
