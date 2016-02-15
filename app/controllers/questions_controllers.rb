get '/questions/new' do
  erb :"static/questions"
end

post '/questions' do
  @question = Question.new(params[:question].merge(user_id: session[:current_user_id]))
  if @question.save
    erb :"static/user_questions"
  else
    redirect '/questions/new'
  end
end

