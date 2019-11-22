require_relative './lib/product.rb'
require_relative './lib/book.rb'
require_relative './lib/cinema'
require_relative './lib/collection'

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

current_path = File.dirname(__FILE__)
film = Collection.fromdir(current_path + '/data/cinema/01.txt')
book = Collection.fromdir(current_path + '/data/book/01.txt')
puts "прайс"
puts film.to_a
puts book.to_a

begin
  Product.from_file(current_path + '/data/films/01.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end

