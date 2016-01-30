get '/surveys/:id/questions/new' do
  @survey = Survey.find_by(id: params[:id])
  erb :'/questions/new'
end

post '/questions' do
  question = Question.create(params[:question])
  if request.xhr?
    erb :'/choices/_choices_form', layout: false, locals: {question: question}
  else
    redirect "/questions/#{question.id}/choices/new"
  end
end

get '/surveys/:survey_id/questions/:question_id' do
  @question = Question.find_by(id: params[:question_id])
  erb :'/questions/show'
end

post '/questions/:question_id/answers' do
  @question = Question.find_by(id: params[:question_id])
  @vote = Vote.create(question_id: params[:question_id], choice_id: params[:choice], user_id: current_user.id)
  test = @question.next_question(@question.id)
  # binding.pry
  if test
    redirect "/surveys/#{@question.survey_id}/questions/#{test.id}"
  else
    redirect "/done"
  end
end
