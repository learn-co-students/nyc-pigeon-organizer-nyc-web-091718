require "pry"

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
  pigeon_list = {}

  data.each do |descriptor,descriptor_hash|
    descriptor_hash.each do |color, name|
      name.each do |ind_name|
        pigeon_list[ind_name] ||= {}
        pigeon_list[ind_name][descriptor] ||= []
        pigeon_list[ind_name][descriptor] << color.to_s

      end
    end
  end
pigeon_list
end
