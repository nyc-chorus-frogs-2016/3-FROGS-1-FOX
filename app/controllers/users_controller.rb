get '/' do
  erb :'index'
end


get '/users/new' do
  erb :'users/new'
end


get '/users/login' do
  erb :'users/login'
end

get '/users/:id' do
  @user = User.find_by(id: params[:id])
  erb :'users/show'
end


post '/users' do
  @user = User.new(params[:user])
  if @user.save
    @success = true
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = "There was an error!"
    redirect '/oops'
  end

end
