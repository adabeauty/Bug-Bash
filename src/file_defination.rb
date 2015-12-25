module FileDefination

  ADMIN_OPERATIONS_FILE = File.expand_path('../data/admin_options.txt', File.dirname(__FILE__))
  STUDENT_OPERATIONS_FILE = File.expand_path('../data/student_options.txt', File.dirname(__FILE__))
  FACULTY_OPERATIONS_FILE = File.expand_path('../data/faculty_options.txt', File.dirname(__FILE__))
  SUPPORT_OPERATIONS_FILE = File.expand_path('../data/support_admin.txt', File.dirname(__FILE__))

  def self.getFiles
    files = [SUPPORT_OPERATIONS_FILE, ADMIN_OPERATIONS_FILE, FACULTY_OPERATIONS_FILE, STUDENT_OPERATIONS_FILE]
  end
end
