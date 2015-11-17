require 'minitest/autorun'

require '../src/optional_operation'
require '../src/operation'
require '../src/input_processor'

describe 'when invoke get method of OptionalOperations' do

  before do
    operations = InputProcessor.getOperations
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