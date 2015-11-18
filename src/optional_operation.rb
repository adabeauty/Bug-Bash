module OptionalOperation

  def self.get(operations)
    optional_operations = []
    operations.each { |operation| optional_operations << operation unless operation.is_belong_to_baseLine }
    optional_operations
  end

  def self.assign_operations(optional_operations, account_of_people)
    assignment = []
    (0..account_of_people-1).each {|i| assignment << assign_to_one_people(i, optional_operations, account_of_people)}
    assignment
  end

  def self.print(account_of_people)
    optional_operations = get(InputProcessor.get_operations)
    assignments = assign_operations(optional_operations, account_of_people)
    (0..account_of_people-1).each {|i| print_assignments_of_one_person(assignments[i], i)}
  end

  private
  def self.print_assignments_of_one_person(assignments, index_of_person)
    puts "Person_#{index_of_person + 1} has #{assignments.size} test points:"
    assignments.each { |assignment| puts "#{assignment.role}: " + "#{assignment.name}" }
    puts ''
  end

  private
  def self.assign_to_one_people(index_of_person, optional_operations, account_of_people)
    operations = []
    round = 0
    number = index_of_person
    while number < optional_operations.size do
      round += 1
      operations << optional_operations[number]
      number = index_of_person + account_of_people * round
    end
    operations
  end
end