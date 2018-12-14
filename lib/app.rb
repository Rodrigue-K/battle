require 'sinatra/base'
require 'player'

# Creating our own subclass of Sinatra::Base - Modular application style.
class Battle < Sinatra::Base
  # enable :sessions
  # Defining route
  get '/' do
    # 'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  get '/p1_attacks' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:p1_attacks)
  end

  get '/p2_attacks' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:p2_attacks)
  end

  # run! starts a server.
  # Only start a server if the file has been executed directly with __FILE__
  # being the current file and $0 being the executed file.
  # DON'T QUITE UNDERSTAND THE IF STATEMENT - NEED TO RESEARCH FURTHER.
  run! if app_file == $0
end
