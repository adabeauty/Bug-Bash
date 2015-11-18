module OptionalOperation

  def self.get(operations)
    optionalOperations = []
    operations.each { |operation| optionalOperations << operation unless operation.is_belong_to_baseLine }
    optionalOperations
  end

  def self.assign_operations(optionalOperations, accountOfPeople)
    assignment = []

    for i in 0..(accountOfPeople-1)
      assignment << assign_to_one_people(i, optionalOperations, accountOfPeople)
    end

    assignment
  end

  def self.print(accountOfPeople)

    optionalOperations = get(InputProcessor.get_operations)

    assignments = assign_operations(optionalOperations, accountOfPeople)
    for i in 0..(accountOfPeople-1)
      print_assignments_of_one_person(assignments[i], i)
    end
  end

  private
  def self.print_assignments_of_one_person(assignments, indexOfPerson)
    puts "Person_#{indexOfPerson+1} has #{assignments.size} test points:"
    assignments.each { |assignment| puts "#{assignment.role}: " + "#{assignment.name}" }
    puts ''
  end

  private
  def self.assign_to_one_people(indexOfPerson, optionalOperations, accountOfPeople)
    operations = []
    round = 0
    number = indexOfPerson
    while number < optionalOperations.size do
      round += 1
      operations << optionalOperations[number]
      # number += accountOfPeople * round
      number = indexOfPerson + accountOfPeople * round
    end
    operations
  end
end