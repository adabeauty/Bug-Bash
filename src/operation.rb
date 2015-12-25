class Operation

  attr_accessor :operations, :type, :index, :key_feature

  def initialize(row)
    @operations = row[0]
    @type = row[1]
    @index = row[2]
    @key_feature = row[3]
  end

  def is_belong_to_baseLine
    @type == 'base'
  end
end
