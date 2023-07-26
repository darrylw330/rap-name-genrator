require "sinatra"
require "sinatra/reloader"

def generate_rap_name(name, last_purchase)
  adjectives = ['Lil', 'Big', 'Young', 'Savage', 'Crazy', 'Fresh', 'King', 'Queen', 'G', 'Baby', 'Super', 'Red', 'Blue', 'Black', 'White']

  adjective = adjectives.sample

  "#{adjective} #{last_purchase.capitalize}"
end

get '/rap_name' do
  erb :form
end

post '/rap_name' do
  name = params[:name]
  last_purchase = params[:last_purchase]
  rap_name = generate_rap_name(name, last_purchase)
  "Your rap name is: #{rap_name}"
end
