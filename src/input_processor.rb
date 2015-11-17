class InputProcessor

  public
  def self.getOperations
    inputsArray = Array.new

    inputsArray.concat(readFile('../data/admin_options.txt'))
    inputsArray.concat(readFile('../data/faculty_options.txt'))
    inputsArray.concat(readFile('../data/student_options.txt'))

    inputsArray
  end

  private
  def self.readFile(fileName)
    lines = IO.readlines(fileName)

    options = Array.new
    lines.each do |line|
      option = spliteLine(line)
      options.push(option)
    end

    options
  end

  private
  def self.spliteLine(line)
    array = line.split(',')
    Operation.new(array[0], array[1], array[2])
  end
end