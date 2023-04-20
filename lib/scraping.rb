require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))   
puts page.class   # => Nokogiri::HTML::Document

crypto_name_array = page.xpath('//tbody/tr/td/div/a[@class="cmc-table__column-name--name cmc-link"]').map{ |tri| tri.text }

crypto_price_array = page.xpath('//tbody/tr/td/div/a[@class="cmc-link"]').map{ |tri| tri.text }

my_new_array = [crypto_name_array,crypto_price_array].transpose.to_h

puts my_new_array

#puts crypto_name_array.inspect

#puts crypto_price_array.inspect

#{ name => price }