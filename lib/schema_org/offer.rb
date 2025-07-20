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
  # - itemCondition?: (String) - Optional. The condition of the item being offered (e.g., "NewCondition", "UsedCondition").
  # - validFrom?: (String) - Optional. The date when the offer becomes valid.
  # - validThrough?: (String) - Optional. The date after which the offer is no longer valid.
  # - priceValidUntil?: (String) - Optional. The date when the price is no longer available.
  # - seller?: (Types::Any) - Optional. The seller of the offer (Organization or Person).
  # - acceptedPaymentMethod?: (Types::String) - Optional. The payment method(s) accepted by the seller.
  # - deliveryLeadTime?: (Types::Any) - Optional. The typical delay between the receipt of the order and the goods leaving the warehouse.
  # - warranty?: (Types::Any) - Optional. The warranty promise for the product.
  # - availableDeliveryMethod?: (Types::String) - Optional. The delivery method(s) available for the offer.
  # - inventoryLevel?: (Types::Integer) - Optional. The current approximate inventory level for the offer.
  # - offeredBy?: (Types::Any) - Optional. The organization or person making the offer (Organization or Person).
  # - addOn?: (Types::Any) - Optional. An additional offer that can only be obtained in combination with the first base offer.
  # - areaServed?: (Types::Any) - Optional. The geographic area where the offer is valid.
  # - eligibleCustomerType?: (Types::String) - Optional. The type(s) of customers for which the given offer is valid.
  # - eligibleDuration?: (Types::Any) - Optional. The duration for which the given offer is valid.
  # - eligibleQuantity?: (Types::Any) - Optional. The interval and unit of measurement of ordering quantities for which the offer is valid.
  # - eligibleRegion?: (Types::Any) - Optional. The region(s) for which the offer is valid.
  # - eligibleTransactionVolume?: (Types::Any) - Optional. The transaction volume, in a monetary unit, for which the offer is valid, e.g. for indicating a minimal purchasing volume.
  # - gtin?: (Types::String) - Optional. The GTIN-13 code of the product, or the product to which the offer refers.
  # - mpn?: (Types::String) - Optional. The Manufacturer Part Number of the product, or the product to which the offer refers.
  # - sku?: (Types::String) - Optional. The Stock Keeping Unit, a merchant-specific identifier for a product or service, or the product to which the offer refers.
  # - name?: (Types::String) - Optional. The name of the offer.
  # - description?: (Types::String) - Optional. A description of the offer.
  # - itemOffered?: (Types::Any) - Optional. An item being offered (or demanded).
  # - hasMerchantReturnPolicy?: (Types::Any) - Optional. Specifies a MerchantReturnPolicy that may be applicable.
  # - businessFunction?: (Types::String) - Optional. The business function of the offer (e.g., sell, lease, repair, dispose).
  # - category?: (Types::String) - Optional. A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
  # - aggregateRating?: (Types::Any) - Optional. The overall rating, based on a collection of reviews or ratings, of the item.
  # - review?: (Types::Any) - Optional. A review of the item.
  # - identifier?: (Types::String) - Optional. The identifier property represents any kind of identifier for the offer.
  # - image?: (Types::String) - Optional. An image of the item. This can be a URL or a fully described ImageObject.
  # - includesObject?: (Types::Any) - Optional. This links to a node or nodes indicating the exact quantity of the products included in the offer.
  # - ineligibleRegion?: (Types::Any) - Optional. The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, or the GeoShape for the geo-political region(s) for which the offer is not valid.
  # - serialNumber?: (Types::String) - Optional. The serial number or any alphanumeric identifier of a particular product.
  # - shippingDetails?: (Types::Any) - Optional. Indicates information about the shipping policies and options associated with an offer.
  # - deliveryTime?: (Types::Any) - Optional. The total delivery time for the supply or supplies of this offer.
  #
  class Offer < Base
    attribute :priceCurrency, Types::String
    attribute :price, Types::Integer
    attribute :availability?, Types::String
    attribute :url?, Types::WebUrl
    attribute :itemCondition?, Types::String
    attribute :validFrom?, Types::String
    attribute :validThrough?, Types::String
    attribute :priceValidUntil?, Types::String
    attribute :seller?, Types::Any
    attribute :acceptedPaymentMethod?, Types::String
    attribute :deliveryLeadTime?, Types::Any
    attribute :warranty?, Types::Any
    attribute :availableDeliveryMethod?, Types::String
    attribute :inventoryLevel?, Types::Integer
    attribute :offeredBy?, Types::Any
    attribute :addOn?, Types::Any
    attribute :areaServed?, Types::Any
    attribute :eligibleCustomerType?, Types::String
    attribute :eligibleDuration?, Types::Any
    attribute :eligibleQuantity?, Types::Any
    attribute :eligibleRegion?, Types::Any
    attribute :eligibleTransactionVolume?, Types::Any
    attribute :gtin?, Types::String
    attribute :mpn?, Types::String
    attribute :sku?, Types::String
    attribute :name?, Types::String
    attribute :description?, Types::String
    attribute :itemOffered?, Types::Any
    attribute :hasMerchantReturnPolicy?, Types::Any
    attribute :businessFunction?, Types::String
    attribute :category?, Types::String
    attribute :aggregateRating?, Types::Any
    attribute :review?, Types::Any
    attribute :identifier?, Types::String
    attribute :image?, Types::String
    attribute :includesObject?, Types::Any
    attribute :ineligibleRegion?, Types::Any
    attribute :serialNumber?, Types::String
    attribute :shippingDetails?, Types::Any
    attribute :deliveryTime?, Types::Any
  end
end
