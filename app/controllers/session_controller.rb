class SessionController < ApplicationController

	def new
	end
	
	def signin
		user = User.find_by_name(params[:name])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_path, notice: "Congratulations, you remembered your password!!"
		else
			session[:user_id] = nil
			redirect_to login_path, notice: "Incorrect login information. You have 2 more trys before your account is locked permanently."
		end
	end
	def signout
		session[:user_id] = nil
		redirect_to root_path, notice: "You just logged out."
	end

end
