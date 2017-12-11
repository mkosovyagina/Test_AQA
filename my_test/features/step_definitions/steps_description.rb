Given(/^Открыть в браузере yandex.ru$/) do
    @driver.get('http://yandex.ru')
    @driver.manage().window().maximize()
end

When (/^Перейти в Яндекс.Маркет$/) do
    element = @driver.find_element(:link_text, "Маркет")
    element if element && element.displayed?
    element.click
end

And (/^Подождать 2 секунды$/) do
    sleep 2
end

And (/^Перейти в раздел Электроника$/) do
    element = @driver.find_element(:link_text, "Электроника")
    element if element && element.displayed?
    element.click
end

And (/^Выбрать раздел Наушники$/) do
    element = @driver.find_element(:partial_link_text, "Наушники")
    element.click
end

And (/^Выбрать раздел Мобильные телефоны$/) do
    element = @driver.find_element(:link_text, "Мобильные телефоны")
    element.click
end

And (/^Выбрать сортировку по цене$/) do
    element = @driver.find_element(:link_text, "по цене")
    element if element && element.displayed?
    element.click
end

And (/^Отобрать товар со стоимостью от 5000 рублей$/) do 
    element = @driver.find_element(:id, "glf-pricefrom-var")
    element.clear
    element.send_keys "5000"
end

And (/^Отобрать товар со стоимостью от 20000 рублей$/) do 
    element = @driver.find_element(:id, "glf-pricefrom-var")
    element.clear
    element.send_keys "20000"
end

And (/^Выбрать производителя Beats$/) do 
    element = @driver.find_element(:link_text, "Beats")
    element if element && element.displayed?
    element.click
end

And (/^Выбрать производителя Apple$/) do 
    element = @driver.find_element(:link_text, "Apple")
    element if element && element.displayed?
    element.click
end

And (/^Выбрать производителя Samsung$/) do 
    element = @driver.find_element(:link_text, "Samsung")
    element if element && element.displayed?
    element.click
end

And (/^Нажать кнопку Применить$/) do
    el = @driver.find_element(xpath: ".//*[text()='Применить']/..")
    el if el && el.displayed?
    el.click
end
   