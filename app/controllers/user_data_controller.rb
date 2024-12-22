class UserDataController < ApplicationController
  def new
    @user_data = current_user.build_user_data
  end

  def create
    @user_data = current_user.build_user_data(user_data_params)
    if @user_data.save
      redirect_to root_path, notice: "User Data was successfully created"
    else
      render :new
    end
  end

  private

  def user_data_params
    params.require(:user_data).permit(:name, :surname, :age, :driving_licence, :position)
  end
end
