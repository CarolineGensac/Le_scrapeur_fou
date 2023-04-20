require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/95/frepillon.html"))
puts page.class   # => Nokogiri::HTML::Document

mail = page.xpath('//tbody/tr').map do |cheval|
    name = cheval.xpath('td[contains(text(), ".fr")]').text.strip
    puts name
    end
