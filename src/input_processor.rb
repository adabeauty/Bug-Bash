class InputProcessor

  ADMIN_OPERATIONS_FILE = '../data/admin_options.txt'
  STUDENT_OPERATIONS_FILE = '../data/student_options.txt'
  FACULTY_OPERATIONS_FILE = '../data/faculty_options.txt'

  def self.getOperations  
    inputsArray = []
    inputsArray.concat(readFile(ADMIN_OPERATIONS_FILE))
    inputsArray.concat(readFile(FACULTY_OPERATIONS_FILE))
    inputsArray.concat(readFile(STUDENT_OPERATIONS_FILE))
    inputsArray
  end

  private
  def self.readFile(fileName)
    lines = IO.readlines(fileName)
    options = Array.new
    lines.each {|line| options << spliteLine(line)}
    options
  end

  private
  def self.spliteLine(line)
    array = line.split(',')
    Operation.new(array[0], array[1], array[2])
  end
end