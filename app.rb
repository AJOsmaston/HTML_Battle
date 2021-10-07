require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player_1_name = session[:player_1].name
    @player_2_name = session[:player_2].name
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:play)
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1_name])
    session[:player_2] = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/attack' do
    @player_1_name = session[:player_1].name
    @player_2_name = session[:player_2].name
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_1.attack(@player_2)
    erb(:attack)
  end

  run! if app_file == $0
end

