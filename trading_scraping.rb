require 'rubygems'

require 'nokogiri'

require 'open-uri'
=begin
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
name_list = page.css('a.currency-name-container')#.text
price_list = page.css('a.price')#['data-usd']
tab = Hash.new
while true
	i=0
	#puts fin = (name_list.lenght-1)
	while i <=1448
		tab[name_list[i].text] = [price_list[i]['data-usd']]
		i +=1
	end
sleep (1)

end
puts tab

=end

    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    name_list = page.css('a.currency-name-container')#.text
    price_list = page.css('a.price')#['data-usd']
    tab = Hash.new
		#puts fin = (name_list.lenght-1)
    for i in 0 .. (name_list.length-1)
        tab[name_list[i].text] = [price_list[i]['data-usd']]

				end
    puts tab
