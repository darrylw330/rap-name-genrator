require "sinatra"
require "sinatra/reloader"

def generate_rap_name(name, last_purchase)
  adjectives = ['Lil', 'Big', 'Young', 'Savage', 'Crazy', 'Fresh', 'King', 'Queen', 'G', 'Baby', 'Super', 'Red', 'Blue', 'Black', 'White', 'Wavy', 'Wild', 'Lazy', 'Hazy', 'French', 'Spicy', 'Purple']

  adjective = adjectives.sample

  "#{adjective} #{last_purchase.capitalize}"
end

get '/' do
  erb :form
end

post '/' do
  name = params[:name]
  last_purchase = params[:last_purchase]
  rap_name = generate_rap_name(name, last_purchase)
  "Your rap name is: #{rap_name}"
end
