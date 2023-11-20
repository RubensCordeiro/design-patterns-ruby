# frozen_string_literal: true

class Operation
  attr_reader :operands

  def initialize(operands)
    @operands = operands
    @title = 'Sum'
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
    raise NotImplementedError, 'An operation class must implement its calculate method'
  end

  def output_header
    puts 'Starting operation'
  end

  def output_title
    puts "Operatio type: #{@title}"
  end

  def output_operands
    puts "Operand list #{@operands}"
  end

  def output_result
    puts "Result: #{calculate}"
  end

  def output_footer
    'End of operation'
  end
end
