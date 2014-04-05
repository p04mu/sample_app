# encoding: UTF-8
class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			#Залогинить и перенаправить
			sign_in user
			redirect_to user
		else
		      flash.now[:error] = 'Неверный адрес или пароль!' # Not quite right!
      		      render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to :back
	end
end
