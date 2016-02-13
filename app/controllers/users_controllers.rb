get '/' do
  erb :"static/index"
end

post '/signup' do
	@user = User.new(params[:user])
  	if @user.save
      session[:current_user_id] = @user.id # logging in the user
       erb :"static/example"
  	else
      erb :"static/error"
  	end
end

post '/login' do

 if @user= User.authenticate(params[:user][:email], params[:user][:password])  #If it is authenticate
  session[:current_user_id] = @user.id
  redirect '/'
 else
  redirect '/'
 end
end

get '/signout' do
  @_current_user = session[:current_user_id] = nil   # Remove the user id from the session
  redirect '/'
end

# @user = User.find_by(email: params[:email])

#   if @user && @user.authenticate(params[:user][:password]) # means the user email is found in database, and the password is authenticated
#     redirect '/'
#   else
#     redirect '/'
#   end