# frozen_string_literal: true

#
# Model the Schema.org `Thing > Intangible > Offer > AggregateOffer`.  See https://schema.org/Offer
#
module SchemaOrg
  # Model the Schema.org `Thing > Intangible > Offer > AggregateOffer`. See https://schema.org/AggregateOffer
  # Represents a structured data model for grouping multiple Offers within Schema.org.
  #
  # === Attributes
  #
  # - lowPrice: (Integer) - Required. The lowest price of all offers included in this aggregate.
  # - priceCurrency: (String) - Required. The currency used for all offers in this aggregate,
  # expressed in ISO 4217 format (e.g., "USD").
  # - highPrice: (Integer) - Optional. The highest price of all offers included in this aggregate.
  # - offerCount: (String) - Optional. The number of individual offers included in this aggregate.
  # - offers: (Array) - Optional. A list of individual offers that are part of this aggregate group.
  class AggregateOffer < Base
    attribute :lowPrice, Types::Integer
    attribute :priceCurrency, Types::String
    attribute :highPrice?, Types::Integer
    attribute :offerCount?, Types::String
    attribute :offers?, Types::Array
  end
end
