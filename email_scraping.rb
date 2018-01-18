require 'rubygems'
require 'nokogiri'
require 'open-uri'
def getemail (adresse)
page = Nokogiri::HTML(open(adresse))
return page.css('td.style27 p.Style22 font')[6].text
end
page = Nokogiri::HTML(open("https://annuaire-des-mairies.com/val-d-oise.html"))
cities = ""
page.css('a.lientxt').each do |town|
	site = "https://annuaire-des-mairies.com" + town['href'][1..-1]
	cities = town.text
	#puts getemail(site)

list={:name => cities, :email=> getemail(site)}

puts list

end
