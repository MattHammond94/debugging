def get_most_common_letter(text)
  counter = Hash.new(0)
  text.gsub(/\W/, "").chars.each do |char|
    counter[char] += 1
  end
  counter.sort_by { |k, v| v }[-1][0]
end

get_most_common_letter("the roof, the roof, the roof is on fire!")
# get_most_common_letter("the paddling pool, the paddling pool, the paddler is on fire!")
# get_most_common_letter("A tester string")
