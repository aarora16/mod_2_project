class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
  end

  private
    def user_params
      params.require(:user).permit(:name, :age, :type_of_car)
    end
end
