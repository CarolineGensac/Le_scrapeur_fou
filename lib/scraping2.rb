require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
puts page.class   # => Nokogiri::HTML::Document


my_array = []

crypto_array = page.xpath('//tbody/tr').map do |row|
             name = row.xpath('td[3]/div').text
             price = row.xpath('td[5]/div/a').text
             { name => price }
end

my_array = crypto_array

p my_array