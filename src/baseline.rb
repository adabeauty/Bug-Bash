class Baseline

  ADMIN_OPERATIONS_FILE = File.expand_path('../data/admin_options.txt', File.dirname(__FILE__))
  STUDENT_OPERATIONS_FILE = File.expand_path('../data/student_options.txt', File.dirname(__FILE__))
  FACULTY_OPERATIONS_FILE = File.expand_path('../data/faculty_options.txt', File.dirname(__FILE__))
  files = [ADMIN_OPERATIONS_FILE, FACULTY_OPERATIONS_FILE, STUDENT_OPERATIONS_FILE]

  def Baseline.get(operations)
    baseline = []
    operations.each { |operation| baseline << operation if operation.is_belong_to_baseLine }
    baseline
  end

  def Baseline.print
    files = [ADMIN_OPERATIONS_FILE, FACULTY_OPERATIONS_FILE, STUDENT_OPERATIONS_FILE]
    baseline = get(InputProcessor.get_operations(files))
    puts "Our baseline is: #{baseline.size}"
    baseline.each { |operation|  puts "#{operation.name}" }
  end
end