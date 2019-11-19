require_relative './lib/product.rb'
require_relative './lib/book.rb'
require_relative './lib/cinema'

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

morphii = Book.new(price: 250, amount: 4)

puts "Книга Морфий, цена: #{morphii.price}"