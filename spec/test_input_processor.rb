require './spec_helper'

describe InputProcessor do

  describe 'when invoke getInputs method,' do

    before do
      @operations = InputProcessor.get_operations
    end

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