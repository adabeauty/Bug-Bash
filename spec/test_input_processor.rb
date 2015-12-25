require './spec_helper'

describe InputProcessor do

  describe 'when invoke getInputs method,' do

    before do
      ADMIN_OPERATIONS_FILE = File.expand_path('../data/admin_options.txt', File.dirname(__FILE__))
      STUDENT_OPERATIONS_FILE = File.expand_path('../data/student_options.txt', File.dirname(__FILE__))
      FACULTY_OPERATIONS_FILE = File.expand_path('../data/faculty_options.txt', File.dirname(__FILE__))
      SUPPORT_OPERATIONS_FILE = File.expand_path('../data/support_admin.txt', File.dirname(__FILE__))
      files = [SUPPORT_OPERATIONS_FILE, ADMIN_OPERATIONS_FILE, FACULTY_OPERATIONS_FILE, STUDENT_OPERATIONS_FILE]
      @operations = InputProcessor.get_operations(files)
    end

    it 'should return 133 operations' do
      @operations.size.must_equal 133
    end

    it 'everyone in array should be a instance of Operation' do
      @operations.each do |operation|
        operation.must_be_instance_of Operation
      end
    end
  end
end
