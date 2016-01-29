get '/surveys/:id/questions/new' do
  @survey = Survey.find_by(id: params[:id])
  erb :'/questions/new'
end

post '/questions' do
  @question = Question.create(params[:question])
  redirect "/questions/#{@question.id}/choices/new"
end
