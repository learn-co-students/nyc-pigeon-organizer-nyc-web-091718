require "pry"

pigeon_data = {
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

def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  pigeon_data.each_with_object({}) { |(a, b), pigeon_list|
      b.each do |attribute, pigeons|
        pigeons.each do |name|
          pigeon_list[name] ||= {}
          pigeon_list[name][a] ||= []
          pigeon_list[name][a] << attribute.to_s
      end
    end
  }
end

