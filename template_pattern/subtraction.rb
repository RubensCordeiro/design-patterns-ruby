require './operation.rb'
class Sum < Operation
  attr_reader :operands

  def initialize(operands)
    @operands = operands
    @title = 'Subtraction'
  end

  def perform_operation
    output_header
    output_title
    output_operands
    output_result
    output_footer
  end

  private

  def calculate
    @operands.reduce(0) { |acumulator, operand| acumulator -= operand }
  end
end