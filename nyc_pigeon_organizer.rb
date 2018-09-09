

def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |key, value|
    value.each do |sub_key, names|
      names.each do |name|
        if new_hash.include?(name)
          if new_hash[name].include?(key)
            new_hash[name][key] << sub_key.to_s
          else
            new_hash[name][key] = [sub_key.to_s]
          end
        else
          new_hash[name] = {key => [sub_key.to_s]}
        end
      end
    end
  end
  new_hash
end
