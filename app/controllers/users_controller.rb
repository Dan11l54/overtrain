class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    user_params = params.require(:user).permit(:user_id, :password)
    User.create(user_params)

    redirect_to '/', notice:'Вы успешно зарегистрировались! '
  end
end
