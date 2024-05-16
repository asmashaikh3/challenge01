ghosts = [{name: 'Inky', age: 4, loves: 'reindeers', net_worth: 25},
          {name: 'Pinky', age: 5, loves: 'garden tools', net_worth: 14},
          {name: 'Blinky', age: 7, loves: 'ninjas', net_worth: 18.03},
          {name: 'Clyde', age: 6, loves: 'yarn', net_worth: 0}]

        ghosts.each do |ghost|
          ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
          ghost_info += "loves #{ghost[:loves]} and "
          ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
          puts ghost_info
      end

    # third
    require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) 

dog_breeds['message'].each do |breed, sub_breeds|
  if sub_breeds.empty?
    puts "* #{breed.capitalize}"
  else
    puts "* #{breed.capitalize}"
    sub_breeds.each do |sub_breed|
      puts "  * #{sub_breed.capitalize}"
    end
  end
end
# last 
require 'net/http'
require 'json'
require 'pp'

# URL for the subset of the tree dataset
require 'net/http'
require 'json'
 
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
tree_data = JSON.parse(response)
 
ash_tree_count = 0
 
tree_data.each_with_index do |tree, index|
  if tree['common_name']&.downcase.include?('ash') || tree['botanical_name']&.downcase.include?('fraxinus')
    ash_tree_count += 1
  end
end
 
puts "Number of Ash trees in the dataset: #{ash_tree_count}"
