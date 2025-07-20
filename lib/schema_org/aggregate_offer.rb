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
  # - highPrice?: (Integer) - Optional. The highest price of all offers included in this aggregate.
  # - offerCount?: (String) - Optional. The number of individual offers included in this aggregate.
  # - offers?: (Array) - Optional. A list of individual offers that are part of this aggregate group.
  # - availability?: (Types::String) - Optional. The availability status of the item (e.g., "InStock", "OutOfStock", etc.).
  # - itemCondition?: (Types::String) - Optional. The condition of the items in this aggregate offer (e.g., "NewCondition", "UsedCondition").
  # - validFrom?: (Types::String) - Optional. The date when the offers in this aggregate becomes valid.
  # - validThrough?: (Types::String) - Optional. The date after which the offers in this aggregate are no longer valid.
  # - priceValidUntil?: (Types::String) - Optional. The date when the price is no longer available.
  # - seller?: (Types::Any) - Optional. The seller of the offers in this aggregate (Organization or Person).
  # - offeredBy?: (Types::Any) - Optional. The organization or person making the offers in this aggregate (Organization or Person).
  # - areaServed?: (Types::Any) - Optional. The geographic area where the offers in this aggregate are valid.
  # - eligibleRegion?: (Types::Any) - Optional. The region(s) for which the offers in this aggregate are valid.
  # - acceptedPaymentMethod?: (Types::String) - Optional. The payment method(s) accepted by the seller.
  # - availableDeliveryMethod?: (Types::String) - Optional. The delivery method(s) available for the offers in this aggregate.
  # - deliveryLeadTime?: (Types::Any) - Optional. The typical delay between the receipt of the order and the goods leaving the warehouse.
  # - eligibleCustomerType?: (Types::String) - Optional. The type(s) of customers for which the given offers are valid.
  # - eligibleDuration?: (Types::Any) - Optional. The duration for which the given offers are valid.
  # - eligibleQuantity?: (Types::Any) - Optional. The interval and unit of measurement of ordering quantities for which the offers are valid.
  # - eligibleTransactionVolume?: (Types::Any) - Optional. The transaction volume, in a monetary unit, for which the offers are valid.
  # - warranty?: (Types::Any) - Optional. The warranty promise for the products.
  #
  class AggregateOffer < Base
    # === required attributes
    attribute :lowPrice, Types::Integer
    attribute :priceCurrency, Types::String

    # === optional attributes
    attribute :highPrice?, Types::Integer
    attribute :offerCount?, Types::String
    attribute :offers?, Types::Array
    attribute :availability?, Types::String
    attribute :itemCondition?, Types::String
    attribute :validFrom?, Types::String
    attribute :validThrough?, Types::String
    attribute :priceValidUntil?, Types::String
    attribute :seller?, Types::Any
    attribute :offeredBy?, Types::Any
    attribute :areaServed?, Types::Any
    attribute :eligibleRegion?, Types::Any
    attribute :acceptedPaymentMethod?, Types::String
    attribute :availableDeliveryMethod?, Types::String
    attribute :deliveryLeadTime?, Types::Any
    attribute :eligibleCustomerType?, Types::String
    attribute :eligibleDuration?, Types::Any
    attribute :eligibleQuantity?, Types::Any
    attribute :eligibleTransactionVolume?, Types::Any
    attribute :warranty?, Types::Any
  end
end
