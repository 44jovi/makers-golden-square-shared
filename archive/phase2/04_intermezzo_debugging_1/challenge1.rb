# 17-Aug-2022
# Navigator: Lili
# Driver: Jovi
# added .delete() but perhaps there's a way to debug without adding methods?

def get_most_common_letter(text)
  counter = Hash.new(0)
  text.delete(" ,!").chars.each do |char|
    counter[char] += 1
  end
  p counter
  counter.to_a.sort_by { |k, v| v }[-1][0]
end

 p get_most_common_letter("the roof, the roof, the roof is on fire!")


# ORIGINAL CHALLENGE CODE/TEXT:
# def get_most_common_letter(text)
#   counter = Hash.new(0)
#   text.chars.each do |char|
#     counter[char] += 1
#   end
#   counter.to_a.sort_by { |k, v| v }[0][0]
# end

# # Intended output:
# # 
# # > get_most_common_letter("the roof, the roof, the roof is on fire!")
# # => "o"