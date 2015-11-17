class Operation

  attr_accessor :name, :order, :role

  def initialize(role, name, order)
    @role = role
    @name = name
    @order = order
  end

  def isBelongToBaseLine
    !@order.empty?
  end
end