require 'minitest/autorun'
require '../src/input_processor'

describe InputProcessor do

  before do
    @operations = InputProcessor.getInputs
  end

  describe 'when invoke getInputs method' do
    it 'should return a array of all operations' do
      @operations.size.must_equal 106
    end
  end
end