class UsersController < ApplicationController
  def edit
    @user = current_user
    redirect_to login_path unless @user
  end

  def update
    @user = current_user
    redirect_to login_path unless @user

    @user.update(user_params)
    if @user.save
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
