# frozen_string_literal: true

module StateTaxes
  # Taxes for sao paulo
  class SaoPaulo
    STATE_TAX = 50.0 / 100

    def self.calculate_taxes(tax_service_instance)
      tax_service_instance.product_price * (1 + STATE_TAX)
    end
  end
end
