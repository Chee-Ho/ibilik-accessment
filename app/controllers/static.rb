get '/' do
  @successful_signup = params[:successful_signup]
  erb :"static/index"
end