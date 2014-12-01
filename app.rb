require 'sinatra'
require_relative 'vendor/pig_latin'

get '/translate' do
	@title = "Pig Latin Translator"
	erb :translate
end

post '/translate' do
	@title = "Igpay Atinlay Esultsray"
	@phrase = params[:phrase].downcase.split(" ")
	@phrase = @phrase.map { |word|
		PigLatin.to_pig_latin(word)
	}
	@phrase = @phrase.join(" ")
	erb :result
end