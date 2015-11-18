module Baseline

  public
  def Baseline.get(operations)
    baseline = Array.new

    operations.each { |operation|
      if operation.is_belong_to_baseLine
        baseline.push(operation)
      end
    }

    baseline
  end

  public
  def Baseline.print
    operations = InputProcessor.get_operations
    baseline = get(operations)

    puts "Our baseline is: #{baseline.size}"
    baseline.each do |operation|
      puts "#{operation.name}"
    end
  end
end