module Baseline

  public
  def Baseline.get(operations)
    baseline = Array.new

    operations.each { |operation|
      if operation.isBelongToBaseLine
        baseline.push(operation)
      end
    }

    baseline
  end
end