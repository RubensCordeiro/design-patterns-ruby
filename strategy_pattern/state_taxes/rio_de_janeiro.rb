# frozen_string_literal: true

module StateTaxes
  # Taxes for sao paulo
  class RioDeJaneiro
    STATE_TAX = 15.0 / 100

    def self.calculate_taxes(tax_service_instance)
      tax_service_instance.product_price * (1 + STATE_TAX)
    end
  end
end
