require 'http'

puts "Front End Test:"
puts "Urls test:"

=begin
Xget "/products" => "products#index"

X get "/products/:id" => "products#show"

post "/products" => "products#create"

patch "/products/:id" => "products#update"
=end

puts "Gets Products"
pp response = HTTP.get("http://localhost:3000/api/products").parse
puts "Gets Product of Choice: Please input ID number"
id = gets.chomp
pp response = HTTP.get("http://localhost:3000/api/products/#{id}").parse
# p response = HTTP.get("http://localhost:3000/api/products/1")