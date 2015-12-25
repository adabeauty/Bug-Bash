require './spec_helper'

describe OptionalOperation do

  ADMIN_OPERATIONS_FILE = File.expand_path('../data/admin_options.txt', File.dirname(__FILE__))
  STUDENT_OPERATIONS_FILE = File.expand_path('../data/student_options.txt', File.dirname(__FILE__))
  FACULTY_OPERATIONS_FILE = File.expand_path('../data/faculty_options.txt', File.dirname(__FILE__))
  SUPPORT_OPERATIONS_FILE = File.expand_path('../data/support_admin.txt', File.dirname(__FILE__))

  describe 'when invoke get method of OptionalOperations' do
    before do
      files = [ADMIN_OPERATIONS_FILE, FACULTY_OPERATIONS_FILE, STUDENT_OPERATIONS_FILE]
      operations = InputProcessor.get_operations(files)
      @optionalOperations = OptionalOperation.get(operations)
    end

    it 'should should return a array with 78 optional operations' do
      @optionalOperations.size.must_equal 78
    end

    it 'should should return a array of optional operations' do
      @optionalOperations.each do |operation|
        operation.must_be_instance_of Operation
      end
    end
  end

  describe 'when invoke assignOperations method with 3 people' do

    before do
      files = [ADMIN_OPERATIONS_FILE, FACULTY_OPERATIONS_FILE, STUDENT_OPERATIONS_FILE]
      operations = InputProcessor.get_operations(files)
      optionalOperations = OptionalOperation.get(operations)
      @arrayWithThreePeople = OptionalOperation.assign_operations(optionalOperations, 3)
    end

    it 'should return array of operations with 3 elements' do
      @arrayWithThreePeople.size.must_equal 3
    end

    it 'every element in operation array is array of operations' do
      @arrayWithThreePeople[0].size.must_equal 26
      @arrayWithThreePeople[1].size.must_equal 26
      @arrayWithThreePeople[2].size.must_equal 26
    end
  end
end
