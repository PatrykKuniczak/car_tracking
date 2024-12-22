class UserDataController < ApplicationController
  def index
    if current_user.user_data
      @user_data = current_user.user_data
    else
      @user_data = current_user.build_user_data
    end
  end

  def create
    @user_data = current_user.build_user_data(user_data_params)
    if @user_data.save
      redirect_to root_path, notice: "User Data was successfully created"
    else
      render :index
    end
  end

  def update
    @user_data = current_user.user_data
    if @user_data.update(user_data_params)
      redirect_to root_path, notice: "User Data was successfully updated"
    else
      render :index
    end
  end

  private

  def user_data_params
    params.require(:user_data).permit(:name, :surname, :age, :driving_licence, :position)
  end
end
