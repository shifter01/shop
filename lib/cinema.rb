class Cinema < Product

  def initialize(params)
    super
    @director = params[:director]
    @created = params[:created]
    @name = params[:name]
  end
  def self.from_file
    current_path = File.dirname(__FILE__)
    file = File.new(current_path + "/data/cinema/01.txt")
    params << file.readlines
    file.close
  end
  def to_s
    return "Название #{@name}, автор #{@director}, год съемки #{@created}, #{super}"
  end
  def update(params)
    @director = params[:director] if params[:director]
    @created = params[:created] if params[:created]
    @name = params[:name] if params[:name]
  end
end