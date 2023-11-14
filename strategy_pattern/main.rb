require_relative('brazil_tax_service')
require_relative('tax_service_with_proc')
require_relative('./state_taxes/sao_paulo')
require_relative('./state_taxes/rio_de_janeiro')

tax_calc = BrazilTaxService.new(100, StateTaxes::SaoPaulo)
puts tax_calc.calculate_taxes
tax_calc = BrazilTaxService.new(100, StateTaxes::RioDeJaneiro)
puts tax_calc.calculate_taxes

tax_calc_two = TaxServiceWithProc.new(100)
tax_proc = proc { |price| price + 10_000 }
puts(tax_calc_two.calculate_taxes(&tax_proc))
