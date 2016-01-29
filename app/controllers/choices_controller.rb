get '/questions/:id/choices/new' do
  @question = Question.find_by(id: params[:id])
  erb :'/choices/new'
end

post '/choices' do
  choice = Choice.create(params[:choice])
  question = choice.question
  # binding.pry
  if request.xhr?
    erb :'/choices/_one_choice_form', layout: false, locals: {question: question}
  else
    redirect "/questions/#{choice.question_id}/choices/new"
  end
end
