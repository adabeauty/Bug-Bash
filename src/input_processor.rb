require 'csv'

class InputProcessor
  def self.get_operations(files)
    inputs_array = []
    files.each do |file|
      csv_file = CSV.read(file, headers: true).to_a.tap {|data| data.shift}
      csv_file.each_with_index { |row, index| inputs_array << Operation.new(row.to_a) }
    end
    inputs_array
  end
end