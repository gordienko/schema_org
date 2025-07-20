# frozen_string_literal: true

#
# Model the Schema.org `PropertyValue`. See https://schema.org/PropertyValue
#
module SchemaOrg
  #
  # Model the Schema.org `PropertyValue`. See https://schema.org/PropertyValue
  #
  # === Attributes
  #
  # - name: (String) - The name of the property
  # - value: (String) - The value of the property
  # - description?: (String) - Optional. A description of the property
  # - propertyID?: (Types::Any) - Optional. A commonly used identifier for the property
  # - valueReference?: (Types::Any) - Optional. A secondary value that provides additional information on the original value
  # - minValue?: (Types::Float) - Optional. The lower value of some characteristic or property
  # - maxValue?: (Types::Float) - Optional. The upper value of some characteristic or property
  # - unitCode?: (Types::String) - Optional. The unit of measurement given using the UN/CEFACT Common Code (3 characters)
  # - unitText?: (Types::String) - Optional. A string or text indicating the unit of measurement
  # - url?: (Types::WebUrl) - Optional. URL of the item
  # - measurementTechnique?: (Types::String) - Optional. A technique or technology used for measuring the value
  #
  class PropertyValue < Base
    attribute :name, Types::String
    attribute :value, Types::String
    attribute :description?, Types::String
    attribute :propertyID?, Types::Any
    attribute :valueReference?, Types::Any
    attribute :minValue?, Types::Float
    attribute :maxValue?, Types::Float
    attribute :unitCode?, Types::String
    attribute :unitText?, Types::String
    attribute :url?, Types::WebUrl
    attribute :measurementTechnique?, Types::String
  end
end
