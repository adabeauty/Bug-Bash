module OptionalOperation

  def self.get(operations)
    optionalOperations = []

    operations.each { |operation| optionalOperations << operation unless operation.isBelongToBaseLine }

    optionalOperations
  end

  def self.assignOperations(optionalOperations, accountOfPeople)
    assignment = []

    for i in 0..(accountOfPeople-1)
      assignment << assignToOnePeople(i, optionalOperations, accountOfPeople)
    end

    assignment
  end

  def self.print(accountOfPeople)

    optionalOperations = get(InputProcessor.getOperations)

    assignments = assignOperations(optionalOperations, accountOfPeople)
    for i in 0..(accountOfPeople-1)
      printAssignmentsOfOnePerson(assignments[i], i)
    end
  end

  private
  def self.printAssignmentsOfOnePerson(assignments, indexOfPerson)
    puts "Person_#{indexOfPerson+1} has #{assignments.size} test points:"
    assignments.each { |assignment| puts "#{assignment.role}: " + "#{assignment.name}" }
    puts ''
  end

  private
  def self.assignToOnePeople(indexOfPerson, optionalOperations, accountOfPeople)
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