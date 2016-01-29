get '/surveys/:id/questions/new' do
  @survey = Survey.find_by(id: params[:id])
  erb :'/questions/new'
end

get '/questions/:id' do
  @question = Question.find_by(id: question[:id])
  erb :'/questions/show'
end

post '/questions' do
  @question = Question.create(params[:question])
  redirect "/questions/#{@question.id}/choices/new"
end

post '/questions/:id/responses' do
  @question = Question.find_by(id: question[:id])
  @choice = Choice.find_by(id: choice[:id])
  response = Response.create(user_id: current_user.id, choice_id: @choice.id, question_id: @question.id)
  redirect '/surveys/done'
end
