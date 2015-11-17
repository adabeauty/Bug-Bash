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

  public
  def Baseline.print
    operations = InputProcessor.getOperations
    baseline = get(operations)

    puts "Our baseline is: #{baseline.size}"
    baseline.each do |operation|
      puts "#{operation.name}"
    end
  end
end