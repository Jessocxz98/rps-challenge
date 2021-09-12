require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @user_name = params[:user_name]
    erb :pre_play
  end

  run! if app_file == $0
end