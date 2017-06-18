class CurrencyUtil
  def self.to_currency(number)
    ActionController::Base.helpers.number_to_currency(number, precision: 0, unit: "VND ", separator: ",", delimiter: ",", format: "%n %u")
  end
end
