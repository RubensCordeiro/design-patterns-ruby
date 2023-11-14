# frozen_string_literal: true

# Class to calculate taxes in a product price in Brazil
class BrazilTaxService
  attr_reader :product_price

  def initialize(product_price, state_tax_calculator)
    @product_price = product_price
    @state_tax_calculator = state_tax_calculator
  end

  def calculate_taxes
    @state_tax_calculator.calculate_taxes(self)
  end
end
