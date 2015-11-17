require 'minitest/autorun'

require '../src/baseline'
require '../src/operation'
require '../src/input_processor'

describe Baseline do

  describe 'when invoke get method of Baseline' do

    before do
      operations = InputProcessor.getOperations
      @baseline = Baseline.get(operations)
    end

    it 'should return a array with 49 elements' do
      @baseline.size.must_equal 49
    end

    it 'should should return a array of baseline operations' do
      @baseline.each do |operation|
        operation.must_be_instance_of Operation
      end
    end
  end
end
