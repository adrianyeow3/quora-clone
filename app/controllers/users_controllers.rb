post '/signup' do 
	user = User.new(params[:user])
	if user.save
	else
	end
end