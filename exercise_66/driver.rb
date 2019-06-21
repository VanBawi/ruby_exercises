require 'open-uri'
require 'nokogiri'


# page = Nokogiri::HTML(open("./html-samples/"))
# puts page.css('p')

# <h1 class="menu-list-item-entree-name">Salisbury Steak</h1>
# page.css("li[data-category='news']")

class MenuList

    def initialize
 
    end
end

class Menu

end


class FoodItem


end


class Price
    

end




menu_list = Nokogiri::HTML(open("./html-samples/cafeteria.html"))
p menu_list.css('.menu-list-item-entree-name')[0].text
p menu_list.css(".menu-list-item_price")[0].text