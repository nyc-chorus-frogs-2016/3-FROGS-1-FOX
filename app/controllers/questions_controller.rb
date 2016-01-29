get '/surveys/:id/questions/new' do
  @survey = Survey.find_by(id: params[:id])
  erb :'/questions/new'
end

post '/questions' do
  question = Question.create(params[:question])

  Choice.create(text: params[:choice][:choice_1], question_id: question.id)
  Choice.create(text: params[:choice][:choice_2], question_id: question.id)
  Choice.create(text: params[:choice][:choice_3], question_id: question.id)
  redirect "/surveys/#{question.survey_id}/questions/new"
end
