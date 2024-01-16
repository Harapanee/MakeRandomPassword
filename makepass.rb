require 'securerandom'

def generate_password(length, use_special_chars, additional_chars)
  characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  special_chars = ['@', '#', '$', '%', '&']

  if use_special_chars
    password = additional_chars + special_chars.sample + Array.new(length - additional_chars.length - 1) { characters.sample(random: SecureRandom) }.join
  else
    password = additional_chars + Array.new(length - additional_chars.length) { characters.sample(random: SecureRandom) }.join
  end
end

def generate_multiple_passwords(num_passwords, length, use_special_chars, additional_chars)
  passwords = []
  num_passwords.times { passwords << generate_password(length, use_special_chars, additional_chars) }
  passwords
end

# パスワードの個数を指定
num_passwords = 5

# パスワードの長さを取得
print 'Enter the password length: '
length = gets.chomp.to_i

# 特殊文字の使用を確認
print 'Use special characters? (y/n): '
use_special_chars = gets.chomp.downcase == 'y'

# 任意の文字列を取得
print 'Enter any additional characters you want to include (leave empty if none): '
additional_chars = gets.chomp

# 5つのパスワードを生成
passwords = generate_multiple_passwords(num_passwords, length, use_special_chars, additional_chars)

puts "Generated Passwords:"
passwords.each_with_index { |password, index| puts "#{index + 1}. #{password}" }

# ユーザーに選択させる
print 'Choose a password (enter the number): '
chosen_password_index = gets.chomp.to_i - 1

if chosen_password_index >= 0 && chosen_password_index < num_passwords
  chosen_password = passwords[chosen_password_index]
  puts "You chose: #{chosen_password}"
else
  puts 'Invalid selection.'
end
