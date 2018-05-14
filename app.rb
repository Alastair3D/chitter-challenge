require 'sinatra'
require 'sinatra/base'
require 'sinatra/flash'
require './lib/peep'
require 'pg'

class Chitter < Sinatra::Base

  enable :sessions
  register Sinatra::Flash

  get '/' do
    @peeps = Peep.all
    erb :index
  end

  post '/add' do
    Peep.create(params[:text2], params[:author])
    redirect('/')
  end

  run! if app_file == $0

end
