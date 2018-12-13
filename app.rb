require 'sinatra/base'

# Creating our own subclass of Sinatra::Base - Modular application style.
class Battle < Sinatra::Base
  # Defining route
  get '/' do
    'Hello Battle!'
  end

  # run! starts a server.
  # Only start a server if the file has been executed directly with __FILE__
  # being the current file and $0 being the executed file.
  # DON'T QUITE UNDERSTAND THE IF STATEMENT - NEED TO RESEARCH FURTHER.
  run! if app_file == $0
end
