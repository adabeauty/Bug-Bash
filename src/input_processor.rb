require 'csv'

class InputProcessor

  # ADMIN_OPERATIONS_FILE = '../data/admin_options.txt'
  # STUDENT_OPERATIONS_FILE = '../data/student_options.txt'
  # FACULTY_OPERATIONS_FILE = '../data/faculty_options.txt'

  def self.get_operations(files)
    # files = [ADMIN_OPERATIONS_FILE, FACULTY_OPERATIONS_FILE, STUDENT_OPERATIONS_FILE]
    inputs_array = []
    files.each do |file|
      csv_file = CSV.read(file, headers: true).to_a.tap {|data| data.shift}
      csv_file.each_with_index { |row, index| inputs_array << Operation.new(row.to_a) }
    end
    inputs_array
  end
end