# frozen_string_literal: true

#
# Model the Schema.org `Thing > Intangible > Offer`.  See https://schema.org/Offer
#
module SchemaOrg
  #
  # Represents the Schema.org `Thing > Intangible > Offer` entity, defining characteristics
  # related to commercial offers such as pricing, availability, and associated links.
  # See https://schema.org/Offer for more details.
  #
  # === Attributes
  #
  # - priceCurrency: (String) - Currency of the offer's price, represented in ISO 4217 format (e.g., "USD").
  # - price: (Integer) - The price of the offer as a numeric value.
  # - availability?: (String) - Identifies the availability status of the offer (e.g., "InStock").
  # - url?: (String) - Optional. A URL associated with the offer, such as a product or service page.
  #
  class Offer < Base
    attribute :priceCurrency, Types::String
    attribute :price, Types::Integer
    attribute :availability?, Types::String
    attribute :url?, Types::WebUrl
  end
end
