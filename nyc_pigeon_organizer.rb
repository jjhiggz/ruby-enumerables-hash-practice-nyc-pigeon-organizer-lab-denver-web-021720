require 'pry'
data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}



#def nyc_pigeon_organizer(data)
  # write your code here!
newHash = {}
color = data[:color]
gender = data[:gender]
lives = data[:lives]
a = color.reduce({}) do |memo,(key, value)|
  i = 0
  while i<color[key].length
#binding.pry
    if newHash[value[i].to_sym]
      newHash[value[i].to_sym][:color].push(key.to_s)
    else
    #  binding.pry
      newHash[value[i].to_sym] = {:color =>[key.to_s] }
    end
    i=i+1
  end
i=0
  while i<gender[key].length
#binding.pry
    if newHash[value[i].to_sym]
      newHash[value[i].to_sym][:gender].push(key.to_s)
    else
    #  binding.pry
      newHash[value[i].to_sym] = {:gender =>[key.to_s] }
    end
    i=i+1
  end

end
  puts newHash

#end
