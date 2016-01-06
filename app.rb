require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble.rb')

get('/') do
  erb(:index)
end

get('/scrabble') do
  @scrabble = params.fetch('scrabble').scrabble()
  erb(:scrabble)
end
