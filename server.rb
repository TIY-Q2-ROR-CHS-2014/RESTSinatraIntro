require 'sinatra'

get '/' do
  "Hello World"
end

get '/index' do
  erb :index
end

get '/test_data' do
  @hello_world = "Hello World!"
  erb :test_data
end

get '/layout_test' do
  # Default is views/layout.erb
  @data = "This is some data!"
  erb :layout_test, layout: :test_layout
end

# get 'hello/:name' do |name|
#   @name = name
#   erb :hello_name
# end

get '/hello/:name' do
  @name = params[:name]
  erb :hello_name
end

get '/posts' do
  @posts = [{name: "Nick", content: "Dude OMG"},
            {name: "HEY DUDEMAN", content: "Dude OMG SUP"}]
  erb :posts
end

