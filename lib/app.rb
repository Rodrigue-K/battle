require 'sinatra/base'

# Creating our own subclass of Sinatra::Base - Modular application style.
class Battle < Sinatra::Base
  # Defining route
  get '/' do
    # 'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:play)
  end

  # run! starts a server.
  # Only start a server if the file has been executed directly with __FILE__
  # being the current file and $0 being the executed file.
  # DON'T QUITE UNDERSTAND THE IF STATEMENT - NEED TO RESEARCH FURTHER.
  run! if app_file == $0
end
