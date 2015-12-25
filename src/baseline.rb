require File.expand_path('../src/file_definition', File.dirname(__FILE__))

class Baseline

  extend FileDefinition

  def Baseline.get(operations)
    baseline = []
    operations.each { |operation| baseline << operation if operation.is_belong_to_baseLine }
    baseline
  end

  def Baseline.print
    baseline = get(InputProcessor.get_operations(FileDefinition.getFiles))
    puts "Our baseline is: #{baseline.size}"
    baseline.each { |operation|  puts "#{operation.operations}: #{operation.index} #{operation.key_feature}" }
  end
end
