# Solution for Challenge: Deaf Sinatra 1: Synchronous Forms. Started 2013-08-26T22:31:31+00:00
get '/' do
  @grandma = params[:grandma]
  puts params
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do

  answer = params[:user_input]

  if answer == answer.downcase
    @grandma = 'Speak up, kiddo!'
  else
    @grandma = 'Want cookies'
  end
  erb :index

end

