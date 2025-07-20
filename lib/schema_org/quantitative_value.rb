# frozen_string_literal: true

#
# Model the Schema.org `QuantitativeValue`. See https://schema.org/QuantitativeValue
#
module SchemaOrg
  #
  # Model the Schema.org `QuantitativeValue`. See https://schema.org/QuantitativeValue
  #
  # === Attributes
  #
  # - maxValue?: (Integer) - Optional. The upper value of some characteristic or property
  # - minValue?: (Integer) - Optional. The lower value of some characteristic or property
  # - unitText?: (String) - Optional. A string or text indicating the unit of measurement
  # - value?: (Nil) - Optional. The value of the quantitative value
  # - unitCode?: (String) - Optional. The unit of measurement given using the UN/CEFACT Common Code (3 characters)
  # - valueReference?: (Types::Any) - Optional. A secondary value that provides additional information about the original value
  # - additionalProperty?: (Types::Array) - Optional. Additional property-value pairs for characteristics not covered by other properties
  # - url?: (Types::WebUrl) - Optional. URL of the item
  # - description?: (Types::String) - Optional. A description of the item
  # - name?: (Types::String) - Optional. The name of the item
  # - alternateName?: (Types::String) - Optional. An alias for the item
  #
  class QuantitativeValue < Base
    attribute :maxValue?, Types::Integer
    attribute :minValue?, Types::Integer
    attribute :unitText?, Types::String
    attribute :value?, Types::String
    attribute :unitCode?, Types::String
    attribute :valueReference?, Types::Any
    attribute :additionalProperty?, Types::Array
    attribute :url?, Types::WebUrl
    attribute :description?, Types::String
    attribute :name?, Types::String
    attribute :alternateName?, Types::String
  end
end
