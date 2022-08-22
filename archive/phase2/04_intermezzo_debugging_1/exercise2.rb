# 17-Aug-2022
# Navigator: Lili
# Driver: Jovi
# Unable to understand/debug code within 10 minute time limit

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  return plaintext_chars.join
end

encode("theswiftfoxjumpedoverthelazydog", "secretkey")
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")



# # ORIGINAL CODE / EXERCISE:

# def encode(plaintext, key)
#   cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
#   ciphertext_chars = plaintext.chars.map do |char|
#     (65 + cipher.find_index(char)).chr
#   end
#   return ciphertext_chars.join
# end

# def decode(ciphertext, key)
#   cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
#   plaintext_chars = ciphertext.chars.map do |char|
#     cipher[65 - char.ord]
#   end
#   return plaintext_chars.join
# end

# # Intended output:
# #
# # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
# #
# # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# # => "theswiftfoxjumpedoverthelazydog"