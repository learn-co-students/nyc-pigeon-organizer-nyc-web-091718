def nyc_pigeon_organizer(data)
new_pigeon_hash = {}

 data.each do |property, hash|
   hash.each do |attribute, array|
     array.each do |name|
       if !new_pigeon_hash.has_key?(name)
         new_pigeon_hash[name] = {}
       end

       if !new_pigeon_hash[name].has_key?(property)
         new_pigeon_hash[name][property] = []
       end

       if !new_pigeon_hash[name][property].include?(attribute)
         new_pigeon_hash[name][property] << attribute.to_s
       end
     end
   end
 end

 new_pigeon_hash
end
