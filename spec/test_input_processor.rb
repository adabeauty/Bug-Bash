require 'minitest/autorun'

require '../src/input_processor'
require '../src/operation'

describe InputProcessor do

  before do
    @operations = InputProcessor.getOperations
  end

  describe 'when invoke getInputs method,' do
    it 'should return 106 operations' do
      @operations.size.must_equal 106
    end

    it 'everyone in array should be a instance of Operation' do
      @operations.each do |operation|
        operation.must_be_instance_of Operation
      end
    end
  end
end