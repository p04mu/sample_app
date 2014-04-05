# encoding: UTF-8
class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user =User.new
  end


  def create
  	@user = User.new(user_params)
  	if @user.save
  		sign_in @user
  		flash[:success] = "Регистрация прошла успешно! ДОБРОПОЖАЛОВАТЬ!"
  		redirect_to @user 	#Пользователь удачно добавлен
  	else
  		render 'new'		#какие-то ошибки
  	end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
  

end
