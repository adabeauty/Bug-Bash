class Baseline

  def Baseline.get(operations)
    baseline = []
    operations.each { |operation| baseline << operation if operation.is_belong_to_baseLine }
    baseline
  end

  def Baseline.print
    baseline = get(InputProcessor.get_operations)
    puts "Our baseline is: #{baseline.size}"
    baseline.each { |operation|  puts "#{operation.name}" }
  end
end