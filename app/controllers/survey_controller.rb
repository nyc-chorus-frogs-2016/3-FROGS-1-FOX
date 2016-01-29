get '/surveys/new' do
  erb :'/surveys/new'
end

get '/surveys/:id' do
  @survey = Survey.find_by(id: params[:id])
  erb :'/surveys/show'
end

post '/surveys' do

  survey = Survey.create(params[:survey])
  if request.xhr?
    erb :'/questions/_question_form', layout: false, locals: {survey: survey}
  else
    redirect "/surveys/#{survey.id}/questions/new"
  end
end



