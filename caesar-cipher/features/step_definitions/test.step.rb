require './caesar_cipher.rb'

Given(/^I provide the string (.*) and a shift value of (.*), I expect the encrypted string to be (.*)$/) do
  |string, shift, encrypted_string|

  raise 'Bad Encryption!!' unless encrypted_string == CaesarCipher.encrypt(string, shift.to_i)
end
