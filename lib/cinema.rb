class Cinema < Product
attr_reader :director, :created,:name
  def initialize(params)
    super
    @director = params[:director]
    @created = params[:created]
    @name = params[:name]
  end
  def self.from_file(file_path)
    file = File.readlines(file_path, encoding: 'UTF-8').map {|l| l.chomp }
    self.new(name: file[0],
             director: file[1],
             created: file[2],
             price: file[3].to_i,
             amount: file[4].to_i
    )
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