class Operation

  attr_accessor :name, :order, :role

  def initialize(role, name, order)
    @role = role
    @name = name
    @order = order
  end

  def is_belong_to_baseLine
    !@order.empty?
  end
end