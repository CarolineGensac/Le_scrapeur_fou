require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))
puts page.class   # => Nokogiri::HTML::Document



get_names = page.xpath('//*[@class="txt"]').map{ |tri| tri.text }

get_mails = page.xpath('*[@id="email"]').map{ |tri| tri.text }

puts get_names.inspect
puts get_mails.inspect

#pas ça qu'on cherchait ! 