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

get '/questions/:question_id' do
  @question = Question.find_by(id: params[:question_id])
  erb :'/questions/show'
end

post '/questions/:question_id/votes' do
  @question = Question.find_by(id: params[:question_id])
  @vote = Vote.create(question_id: params[:question_id], choice_id: params[:choice], user_id: current_user.id)
  following_question = @question.next_question(@question.id)
  if following_question
    redirect "/questions/#{following_question.id}"
  else
    redirect "/surveys/done"
  end
end
