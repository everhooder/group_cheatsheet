require 'sinatra'
require 'mongoid'
require 'pony'
require 'json'

## Mongoid setup
## =============

Mongoid.load!("mongoid.yml", :development)

class Drinks
  include Mongoid::Document

  field :name
end

## Email setup
## ===========

Pony.options = { 
  :via => 'smtp',
  :via_options => {
      :address              => 'smtp.gmail.com',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => ENV['USER_NAME'],
      :password             => ENV['PASSWORD'],
      :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
      :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
    }
  }


## Sinatra app
## ===========

get '/' do
  @drinks = Drinks.all 
  erb :index
end

post '/' do
  @name = params[:drinks_name]
  email = params[:email]
  d = Drinks.new(:name => @name)
  d.save
  Pony.mail(:to => email, :subject => "Congratulations, you added your desired drink!", :body => erb(:email, :layout => false))
  @drinks = Drinks.all
  erb :index
end