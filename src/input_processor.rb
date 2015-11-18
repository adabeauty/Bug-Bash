class InputProcessor

  ADMIN_OPERATIONS_FILE = '../data/admin_options.txt'
  STUDENT_OPERATIONS_FILE = '../data/student_options.txt'
  FACULTY_OPERATIONS_FILE = '../data/faculty_options.txt'


  def self.get_operations
    files = [ADMIN_OPERATIONS_FILE, FACULTY_OPERATIONS_FILE, STUDENT_OPERATIONS_FILE]
    inputsArray = []
    files.each {|file| inputsArray.concat(read_file(file)) }
    inputsArray
  end

  private
  def self.read_file(fileName)
    lines = IO.readlines(fileName)
    options = []
    lines.each {|line| options << splite_line(line)}
    options
  end

  private
  def self.splite_line(line)
    array = line.split(',')
    Operation.new(array[0], array[1], array[2])
  end
end