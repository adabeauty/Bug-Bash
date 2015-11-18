require 'minitest/autorun'

require '../src/optional_operation'
require '../src/operation'
require '../src/input_processor'

describe OptionalOperation do

  describe 'when invoke get method of OptionalOperations' do

    before do
      operations = InputProcessor.get_operations
      @optionalOperations = OptionalOperation.get(operations)
    end

    it 'should should return a array with 57 optional operations' do
      @optionalOperations.size.must_equal 57
    end

    it 'should should return a array of optional operations' do
      @optionalOperations.each do |operation|
        operation.must_be_instance_of Operation
      end
    end
  end

  describe 'when invoke assignOperations method with 3 people' do

    before do
      operations = InputProcessor.get_operations

      optionalOperations = OptionalOperation.get(operations)
      @arrayWithThreePeople = OptionalOperation.assignOperations(optionalOperations, 3)
    end

    it 'should return array of operations with 3 elements' do
      @arrayWithThreePeople.size.must_equal 3
    end

    it 'every element in operation array is array of operations' do
      @arrayWithThreePeople[0].size.must_equal 19
      @arrayWithThreePeople[1].size.must_equal 19
      @arrayWithThreePeople[2].size.must_equal 19
    end
  end
end
