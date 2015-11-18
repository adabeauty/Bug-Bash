module OptionalOperation

  public
  def self.get(operations)
    optionalOperations = Array.new

    operations.each do |operation|
      if !operation.isBelongToBaseLine
        optionalOperations.push(operation)
      end
    end

    optionalOperations
  end

  public
  def self.assignOperations(optionalOperations, accountOfPeople)
    assignment = Array.new

    for i in 0..(accountOfPeople-1)
      assignment.push(assignToOnePeople(i, optionalOperations, accountOfPeople))
    end

    assignment
  end

  public
  def self.print(accountOfPeople)

    operations = InputProcessor.getOperations
    optionalOperations = get(operations)

    assignments = assignOperations(optionalOperations, accountOfPeople)
    for i in 0..(accountOfPeople-1)
      printAssignmentsOfOnePerson(assignments[i], i)
    end
  end

  private
  def self.printAssignmentsOfOnePerson(assignments, indexOfPerson)
    puts "Person_#{indexOfPerson+1} has #{assignments.size} test points:"

    assignments.each do |assignment|
      puts "#{assignment.role}: " + "#{assignment.name}"
    end

    puts ''
  end

  private
  def self.assignToOnePeople(indexOfPerson, optionalOperations, accountOfPeople)

    operations = Array.new

    round = 0
    number = indexOfPerson + accountOfPeople*round
    while number < optionalOperations.size do
      operations.push(optionalOperations[number])

      round += 1
      number = indexOfPerson + accountOfPeople * round
    end

    operations
  end
end