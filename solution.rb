require 'sinatra'

get '/' do
  erb :index
end

get '/grannysays' do
	@value = params[:value]
  apples = "<h1>Ahhh si, manzanas!</h1>"
  speakhard = "<h1>Habla más duro mijito</h1>"
  ihearyou =  @value == @value.upcase
	(ihearyou ? apples : speakhard)
end
