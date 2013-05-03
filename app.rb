require 'bundler'
Bundler.require

set :port, 3000

get '/' do
  slim :index
end

get "/js/application.js" do
  coffee :application
end

get "/css/application.css" do
  sass :application
end
