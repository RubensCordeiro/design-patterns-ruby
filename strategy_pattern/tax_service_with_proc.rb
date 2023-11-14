# frozen_string_literal: true

# Class to calculate taxes in a product price in Brazil
class TaxServiceWithProc
  attr_reader :product_price

  def initialize(product_price)
    @product_price = product_price
  end

  def calculate_taxes(&state_tax_calculator)
    state_tax_calculator.call(@product_price)
  end
end
