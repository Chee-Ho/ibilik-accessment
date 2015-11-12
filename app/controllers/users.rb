get "/signup" do
	erb :"users/signup"
end

post "/signup" do
	@user = User.new(params[:user])

	if @user.save 
		@successful_signup = "Congratulations! You have successfully create an account. Login to proceed"
	redirect to "/?successful_signup=#{@successful_signup}"
	else
		erb :"users/signup"
	end
end


delete "/logout" do 
	session[:user_id] = nil
	redirect to "/"
end
