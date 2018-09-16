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

def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |symbol, hash_data|
    hash_data.each do |attribute, names|
      names.each do |bird|
      if hash[bird].nil?
        hash[bird] = {}
      end
        if hash[bird][symbol].nil?
        hash[bird][symbol] ||= []
        hash[bird][symbol] << attribute.to_s
        else
        hash[bird][symbol] << attribute.to_s
        end
      end
    end
  end
  hash
end

#def reformat_languages(languages)
#  new_hash = {}
#
#  languages.each do |style, style_hash|
#    style_hash.each do |language, type|
#      if new_hash.has_key?(language)
#        new_hash[language][:style].push(style)
#      else
#        new_hash[language] = type
#        new_hash[language][:style] = [style]
#      end
#    end
#  end
#  new_hash
#end
