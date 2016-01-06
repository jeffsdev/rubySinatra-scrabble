require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble.rb')

get('/') do
  File.read(File.join('public', 'main.css'))
  erb(:index)
end

get('/scrabble') do
  @scrabble = params.fetch('scrabble').scrabble()
  erb(:scrabble)
end
