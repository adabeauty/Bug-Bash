require './spec_helper'

describe Baseline do

  describe 'when invoke get method of Baseline' do

    before do
      ADMIN_OPERATIONS_FILE = File.expand_path('../data/admin_options.txt', File.dirname(__FILE__))
      STUDENT_OPERATIONS_FILE = File.expand_path('../data/student_options.txt', File.dirname(__FILE__))
      FACULTY_OPERATIONS_FILE = File.expand_path('../data/faculty_options.txt', File.dirname(__FILE__))

      files = [ADMIN_OPERATIONS_FILE, FACULTY_OPERATIONS_FILE, STUDENT_OPERATIONS_FILE]

      operations = InputProcessor.get_operations(files)
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
