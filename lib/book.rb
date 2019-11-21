class Book < Product
  attr_reader :author, :written
  def initialize(params)
    super
    @author = params[:author]
    @written = params[:written]
    @name = params[:name]
  end
  def from_file
    current_path = File.dirname(__FILE__)
    file = File.new(current_path + "/data/book/01.txt")
    params << file.readlines
    file.close
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