# frozen_string_literal: true

#
# Model the Schema.org `MonetaryAmount`. See https://schema.org/MonetaryAmount
#
module SchemaOrg
  #
  # Model the Schema.org `MonetaryAmount`. See https://schema.org/MonetaryAmount
  #
  # === Attributes
  #
  # - currency: (String) - The currency in which the monetary amount is expressed (in ISO 4217 format)
  # - value: (QuantitativeValue) - The quantitative value of the amount
  # - validFrom?: (Types::Date) - Optional. The date when the monetary amount becomes valid
  # - validThrough?: (Types::Date) - Optional. The date after when the monetary amount is not valid
  # - maxValue?: (Types::Number) - Optional. The upper value of the monetary amount
  # - minValue?: (Types::Number) - Optional. The lower value of the monetary amount
  # - valueReference?: (Types::String) - Optional. A secondary value that provides additional information on the original value
  # - description?: (Types::String) - Optional. A description of the monetary amount
  # - identifier?: (Types::String) - Optional. The identifier property represents any kind of identifier
  # - name?: (Types::String) - Optional. The name of the monetary amount
  # - additionalType?: (Types::String) - Optional. An additional type for the monetary amount, typically used for adding more specific types
  #
  class MonetaryAmount < Base
    # === required attributes
    attribute :currency, Types::String
    attribute :value, QuantitativeValue

    # === optional attributes
    attribute :validFrom?, Types::Date
    attribute :validThrough?, Types::Date
    attribute :maxValue?, Types::Integer
    attribute :minValue?, Types::Integer
    attribute :valueReference?, Types::String
    attribute :description?, Types::String
    attribute :identifier?, Types::String
    attribute :name?, Types::String
    attribute :additionalType?, Types::String
  end
end
