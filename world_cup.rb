require 'nokogiri'
require 'pry'
require 'open-uri'

soccer_scores = Nokogiri::HTML('http://www.fifa.com/worldcup/matches/index.html')
binding.pry