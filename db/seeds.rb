adludio_array = ["O","D","I","D","U","L","A"]
sorted = adludio_array.permutation.to_a.sort
unique_sorted = sorted.uniq

unique_sorted.each do | permutation |
  Permutation.create(name: permutation.join(" "))
end