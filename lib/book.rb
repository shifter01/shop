class Book < Product
  attr_reader :author, :written, :name
  def initialize(params)
    super
    @author = params[:author]
    @written = params[:written]
    @name = params[:name]
  end
  # этот участок вызывает данные из файла
  def self.from_file(file_path)
    file = File.readlines(file_path, encoding: 'UTF-8').map {|l| l.chomp }
    self.new(name: file[0],
             author: file[1],
             written: file[2],
             price: file[3].to_i,
             amount: file[4].to_i
    )
  end
  def to_s
    return "Название #{@name}, автор #{@author}, год написания #{@written}, #{super}"
  end
  def update(params)
    @author = params[:author] if params[:author]
    @written = params[:written] if params[:written]
    @name = params[:name] if params[:name]
  end

end