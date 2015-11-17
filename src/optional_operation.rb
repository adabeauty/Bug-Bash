class OptionalOperation

  public
  def self.get(operations)
    optionalOperations = Array.new

    operations.each do |operation|
      if !operation.isBelongToBaseLine
        optionalOperations.push(operation)
      end
    end

    optionalOperations
  end
end