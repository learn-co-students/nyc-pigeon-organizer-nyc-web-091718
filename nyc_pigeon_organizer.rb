require 'pry'
def nyc_pigeon_organizer(data)
  output_hash = {}
  data.each do |description, info_hash|
    info_hash.each do |sub_description, pigeons|
      pigeons.each do |pigeon|
        if output_hash.include?(pigeon)
          if output_hash[pigeon].include?(description)
            output_hash[pigeon][description] << sub_description.to_s
          else
            output_hash[pigeon][description] = [sub_description.to_s]
          end
        else
          output_hash[pigeon] = {description => [sub_description.to_s]}
        end
      end
    end
  end
  output_hash
end
