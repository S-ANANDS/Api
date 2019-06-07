require 'net/http'
require 'json'
require 'pry'
puts "Enter the Number"
a=gets.chomp()
uri = URI('https://pokeapi.co/api/v2/pokemon/'"#{a}")
response = Net::HTTP.get(uri)
q= JSON.parse(response)
# binding.pry
puts " Name = #{q["forms"][0]["name"].capitalize}, Index_Number = #{q["game_indices"][0]["game_index"]},Weight=#{q["weight"]}"



