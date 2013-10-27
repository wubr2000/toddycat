class PasswordController < ApplicationController
	


	def edit
		@user = User.find_by(code: params[:code])
		
		if @user && @user.expires_at < Time.now
			render :edit
		else
			redirect_to login_url, error: "Sorry, your code has expired. Please try again."
		end
	end	

	def update
		@user = User.find_by(code: params[:code])

		if @user.update_attributes(user_params)
			@user.code = nil
			@user.expires_at = nil
			@user.save

			session[:user_id] = @user.user_id
			redirect_to root_url, notice: "Your password has been updated."
		else
			flash.now[:error] = "Something went wrong. Please check your passwords and try again."
			render :edit
		end

	end

	private


	def user_params
		#strong parameters
		params.require(:user).permit(
			:password,
			:password_confirmation
		)
	end

end