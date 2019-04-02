require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/puppy' do
    name  = params[:name]
    age   = params[:age]
    breed = params[:breed]
    newpuppy = Puppy.new(name,breed,age)
    @name = newpuppy.name
    @age  = newpuppy.months_old
    @breed = newpuppy.breed
    erb :display_puppy

  end

   get '/new' do

    erb :create_puppy

  end
end
