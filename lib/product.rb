class Product
  attr_reader :price, :amount
def initialize(params)
  @price = params[:price]
  @amount = params[:amount]
end
  def to_s
    return "цена: #{price} (остаток: #{@amount}"
  end
  def update(params)
    @price = params[:price] if params[:price]
    @amount = params[:amount]if params[:amount]
  end
  def from_file

  end
end