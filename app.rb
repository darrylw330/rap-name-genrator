require "sinatra"
require "sinatra/reloader"
require "faker"

def generate_rap_name(name, last_purchase)
  adjective_one = ['Lil', 'Big', 'Young', 'Old', 'Savage', 'Crazy', 'Fresh', 'King', 'Queen', 'G', 'OG', 'Baby', 'Super', 'Red', 'Blue', 'Black', 'White', 'Wavy', 'Wild', 'Lazy', 'Hazy', 'French', 'Spicy', 'Purple', 'Pink', 'Yellow', 'Loud', 'Heavy', 'Bad', 'Gentle', 'Soft', 'Juicy', 'Trill', 'Dirty', 'Hot', 'Shady', 'Slim', 'The', 'Tiny', 'Cheesy', 'Silky', 'Happy', 'Sad', 'Mad', 'Prince', 'Princess']
  adjective_one = adjective_one.sample
  adjective = Faker::Hipster.word.capitalize
  "#{adjective_one} #{adjective} #{last_purchase.capitalize}"
end

get "/navbar" do
  erb :navbar
end

get '/' do
  erb :form
end

post '/' do
  @name = params[:name]
  last_purchase = params[:last_purchase]
  @rap_name = generate_rap_name(@name, last_purchase)
  "Hey! #{@name}, your new rap name is '#{@rap_name}'. Enjoy!"
  erb :result, layout: :layout
end
