require File.dirname(__FILE__) + '/src/optional_operation'
require File.dirname(__FILE__) + '/src/operation'
require File.dirname(__FILE__) + '/src/baseline'
require File.dirname(__FILE__) + '/src/input_processor'

puts '------------------------------------------------- baseline -------------------------------------------------'
Baseline.print

puts '------------------------------------------------- optional operation -------------------------------------------------'
OptionalOperation.print(3)
