get '/questions/:id/choices/new' do
  @question = Question.find_by(id: params[:id])
  erb :'/choices/new'
end

post '/choices' do
  @choice = Choice.create(params[:choice])
  redirect "/questions/#{@choice.question_id}/choices/new"
end
