get '/surveys/new' do
  erb :'/surveys/new'
end

get '/surveys/:id' do
  # erb :'/surveys/show'
end

post '/surveys' do
  survey = Survey.create(params[:survey])
  redirect "/surveys/#{survey.id}/questions/new"
end
