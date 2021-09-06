require "./food"
require "./drink"
require "date"

puts "Pilih menu makanan, diskon hari Jum'at!"

food1 = Food.new(name: "Mie Ayam", price:13000,calorie:200)
food2 = Food.new(name: "Mie Bakso", price:15000,calorie:1500)
drink1 = Drink.new(name: "Es Kelapa", price:6000,volume:10)
drink2 = Drink.new(name: "Dewegan", price:15000,volume:20)

menus = [food1,food2,drink1,drink2]

index = 0
hari = Date.today

puts "--------------------------------------------"
puts "Selamat datang, silahkan mau pesan apa?"
puts "Diskon!!!!"
puts "--------------------------------------------"
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index +=1  
end

puts "--------------------------------------------"

order = gets.chomp.to_i

selected_menu = menus[order]

puts "Anda telah memesan: #{selected_menu.name}"
puts "Berapa yang ingin anda pesan?"

count = gets.chomp.to_i

puts "--------------------------------------------"
puts "------------------INVOICE-------------------"
puts "Kasir: Lerian Febriana, A.Md.Kom"
puts "--------------------------------------------"
puts "Tanggal: #{hari}"
puts "-------------MENU YANG DIPESAN--------------"
puts "Pesanan: #{selected_menu.name}"
puts "Harga satuan: Rp#{selected_menu.price}"
puts "Jumlah: #{count}"
puts "--------------------------------------------"
puts "Harga totalnya adalah Rp#{selected_menu.get_total_price(count)}"
puts "--------------------------------------------"