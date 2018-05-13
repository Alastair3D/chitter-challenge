require 'sinatra/base'
require './lib/peep'

class Chitter < Sinatra::Base

  enable :sessions

  get '/' do
    @peeps = Peep.new
    erb :index
  end

  run! if app_file == $0

end
